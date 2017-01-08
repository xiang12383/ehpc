#! /usr/bin/env python
# -*- coding: utf-8 -*-

from flask import render_template, request, jsonify
from . import lab
from flask_babel import gettext
from flask_login import login_required, current_user
from ..models import Challenge, Question, Knowledge, Progress, Material
from ..lab.lab_util import get_question_and_type, check_if_correct
from .. import db


@lab.route('/')
@login_required
def index():
    knowledges = Knowledge.query.all()

    # 记录当前用户在每个knowledge上的进度百分比
    if current_user.is_authenticated:
        for k in knowledges:
            pro = Progress.query.filter_by(user_id=current_user.id).filter_by(knowledge_id=k.id).first()
            k.cur_level = pro.cur_progress if pro else 0
            k.all_levels = k.challenges.count()
            k.percentage = "{0:.0f}%".format(100.0 * k.cur_level / k.all_levels) if k.all_levels >= 1 else "100%"
    return render_template('lab/index.html',
                           title=gettext('Labs'),
                           knowledges=knowledges)


@lab.route('/knowledge/<int:kid>/', methods=['POST', 'GET'])
@login_required
def knowledge(kid):
    """ 根据用户进度记录以及请求中 progress 字段来决定给用户返回哪个 challenge.

    cur_progress: 用户请求的任务进度, 如果请求中没有提供, 则返回下一个需要完成的任务的编号
    """
    cur_knowledge = Knowledge.query.filter_by(id=kid).first_or_404()
    challenges_count = cur_knowledge.challenges.count()

    if request.method == 'GET':
        pro = Progress.query.filter_by(user_id=current_user.id).filter_by(knowledge_id=kid).first()
        if pro is None:     # 如果用户在此knowledge上无progress记录，则添加一条新纪录
            pro = Progress(user_id=current_user.id, knowledge_id=kid)
            db.session.add(pro)
            db.session.commit()

        cur_progress = pro.cur_progress + 1

        request_progress = request.args.get('progress', None)
        if not request_progress:
            pass
        elif int(request_progress) <= cur_progress:
            cur_progress = int(request_progress)
        else:
            # 前面还有任务没有完成, 不能直接到请求的任务页面, 这里返回一个简单的提示页面
            return render_template("lab/out_progress.html",
                                   title="Expired Progress",
                                   next_progress=cur_progress,
                                   kid=kid)

        # 获取当前技能中顺序为 cur_progress 的 challenge, 然后获取相应的详细内容
        cur_challenge = Challenge.query.filter_by(knowledgeId=kid).filter_by(knowledgeNum=cur_progress).first()
        if cur_challenge is None:
            return render_template('lab/finish_progress.html',
                                   title="Finish All",
                                   kid=kid)

        # 保证每个challenge都有一个题目, 可以是一般的选择题、填空题等或者在线编程题目
        question, question_type = get_question_and_type(cur_challenge)

        # challenge 可能没有相应的 material 存在, cur_material 对应为空。
        return render_template('lab/knowledge.html',
                               title=cur_challenge.title,
                               c_content=cur_challenge.content,
                               cur_material=cur_challenge.material,
                               practice=question,
                               question_type=question_type,
                               kid=kid,
                               next_progress=cur_progress+1)

    elif request.method == 'POST':
        # 判断用户是否通过当前challenge
        question_type = request.form['question_type']
        question_id = request.form['question_id']
        user_sol = request.form['user_sol']
        if question_type != 6:  # 暂不考虑编程题
            cur_question = Question.query.filter_by(id=question_id).first_or_404()
            if check_if_correct(cur_question, user_sol):    # 如果对则通过，且用户已通过的challenge加1
                pro = Progress.query.filter_by(user_id=current_user.id).filter_by(knowledge_id=kid).first()
                # 判断是否已经做完了所有的挑战
                if pro.cur_progress + 1 <= challenges_count:
                    pro.cur_progress += 1
                db.session.commit()
                return jsonify(status='success')
            else:
                return jsonify(status='fail')


@lab.route('/my_progress/<int:kid>/')
@login_required
def my_progress(kid):
    cur_knowledge = Knowledge.query.filter_by(id=kid).first_or_404()
    pro = Progress.query.filter_by(user_id=current_user.id).filter_by(knowledge_id=kid).first()
    if pro is None:  # 如果用户在此knowledge上无progress记录，则添加一条新纪录
        pro = Progress(user_id=current_user.id, knowledge_id=kid, cur_progress=0)
        db.session.add(pro)
        db.session.commit()

    all_challenges = cur_knowledge.challenges.all()
    all_challenges.sort(key=lambda k: k.knowledgeNum)
    return render_template('lab/show_progress.html',
                           kid=kid,
                           title=cur_knowledge.title,
                           challenges=all_challenges,
                           cur_level=pro.cur_progress)
