#! /usr/bin/env python
# -*- coding: utf-8 -*-
# @Author: xuezaigds@gmail.com
from flask import render_template, abort, jsonify, request, redirect, url_for
from flask_login import current_user, login_required
from datetime import datetime
from . import group
from ..models import Group, Topic, Post
from flask_babel import gettext
from ..group.group_util import user_in_group, user_not_in_group
from ..util.text_process import add_user_links_in_content
from .. import db


@group.route('/')
def index():
    latest_topics = Topic.query.order_by(Topic.createdTime.desc()).limit(10)
    hot_groups = Group.query.order_by(Group.memberNum.desc()).limit(12)
    return render_template('group/index.html',
                           title=gettext('Groups'),
                           groups=hot_groups, latest_topics=latest_topics)


@group.route('/all/')
def group_all():
    all_groups = Group.query.all()
    return render_template('group/group_all.html', title=gettext('All Groups'), groups=all_groups)


@group.route('/<int:gid>/')
def group_view(gid):
    cur_group = Group.query.filter_by(id=gid).first_or_404()
    # Get the hottest topics of the latest 100 topics and show them in the group index age.
    hot_topics = cur_group.topics[:100]
    hot_topics.sort(key=lambda x: (x.postNum, x.visitNum), reverse=True)
    hot_topics = hot_topics[:10]
    return render_template('group/group.html',
                           title=cur_group.title,
                           hot_topics=hot_topics,
                           group=cur_group)


@group.route('/<int:gid>/topic/all/')
def topic_all(gid):
    cur_group = Group.query.filter_by(id=gid).first_or_404()
    all_topics = cur_group.topics
    return render_template('group/topic_all.html',
                           title=cur_group.title,
                           topics=all_topics)


@group.route('/<int:gid>/topic/new/', methods=['GET', 'POST'])
@login_required
def topic_new(gid):
    cur_group = Group.query.filter_by(id=gid).first_or_404()

    if request.method == 'GET':
        return render_template('group/topic_new.html',
                               title=gettext('Create Topic'),
                               group=cur_group)
    elif request.method == 'POST':
        title = request.form['title']
        content = request.form['content']
        new_topic = Topic(current_user.id, title, content, gid)
        db.session.commit()

        # 更新用户和群组对应的话题
        current_user.topics.append(new_topic)
        current_user.topicNum += 1
        cur_group.topics.append(new_topic)
        cur_group.topicNum += 1
        db.session.commit()
        return redirect(url_for('group.topic_view', tid=new_topic.id))


@group.route('/topic/<int:tid>/')
def topic_view(tid):
    cur_topic = Topic.query.filter_by(id=tid).first_or_404()
    cur_topic.visitNum += 1
    db.session.commit()
    return render_template('group/topic_detail.html',
                           title=cur_topic.title,
                           topic=cur_topic)


@group.route('/topic/edit/<int:tid>/')
@login_required
def topic_edit(tid):
    cur_topic = Topic.query.filter_by(id=tid).first_or_404()
    if current_user.id != cur_topic.userID:
        abort(403)
    else:
        return render_template('group/topic_edit.html',
                               title=cur_topic.title,
                               topic=cur_topic)


@group.route('/topic/update/<int:tid>/', methods=['POST'])
@login_required
def topic_update(tid):
    cur_topic = Topic.query.filter_by(id=tid).first_or_404()
    if current_user.id != cur_topic.userID:
        abort(403)
    else:
        content = request.form['content']
        title = request.form['title']
        cur_topic.title = title
        cur_topic.content = content
        cur_topic.updatedTime = datetime.now()
        db.session.commit()

        return redirect(url_for('group.topic_view', tid=cur_topic.id))


@group.route('/topic/<int:tid>/comment/create/', methods=['POST'])
@login_required
def create_post(tid):
    cur_topic = Topic.query.filter_by(id=tid).first_or_404()
    post_content = request.form['content']
    post_content = add_user_links_in_content(post_content)

    new_post = Post(current_user.id, content=post_content)
    cur_topic.posts.append(new_post)
    cur_topic.postNum += 1

    current_user.postNum += 1
    db.session.add(new_post)
    db.session.commit()

    new_post_html = render_template('group/widget_post_detail.html',
                                    p=new_post,
                                    index=cur_topic.postNum)

    return jsonify(post_html=new_post_html,
                   post_cnt=cur_topic.postNum)


@group.route('/join/<int:gid>/')
@login_required
@user_not_in_group
def join_group(gid):
    cur_group = Group.query.filter_by(id=gid).first_or_404()
    cur_group.members.append(current_user)
    cur_group.memberNum += 1
    db.session.commit()

    members_html = render_template('group/widget_group_member.html', group=cur_group)
    groups_html = render_template('group/widget_sidebar_mygroup.html')
    return jsonify(status='success',
                   memberNum=cur_group.memberNum,
                   members_html=members_html,
                   groups_html=groups_html)


@group.route('/exit/<int:gid>/')
@login_required
@user_in_group
def exit_group(gid):
    cur_group = Group.query.filter_by(id=gid).first_or_404()
    cur_group.members.remove(current_user)
    cur_group.memberNum -= 1
    db.session.commit()

    members_html = render_template('group/widget_group_member.html', group=cur_group)
    groups_html = render_template('group/widget_sidebar_mygroup.html')

    return jsonify(status='success',
                   memberNum=cur_group.memberNum,
                   members_html=members_html,
                   groups_html=groups_html)
