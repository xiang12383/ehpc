from flask import render_template, abort, request, redirect, url_for 
from . import article
from ..models import Article
from flask_babel import gettext
from .. import db

@article.route('/')
def index():
	article_list = Article.query.all()
	return render_template('article/index.html',title=gettext('Articles'),article_list=article_list)

@article.route('/<article_id>')
def detail(article_id):
	detail_article = Article.query.filter_by(id=article_id).first()
	detail_article.visitNum = detail_article.visitNum + 1
	db.session.commit()
	return render_template('article/detail.html',title=gettext('Articles:'+article_id),article=detail_article)

@article.route('/post',methods=['POST','GET'])
def post():
	if request.method == 'GET':
		return render_template('article/post.html',title=gettext('Articles'))
	if request.method == 'POST':
		title = request.form['title']
		content = request.form['content']
		post_article = Article(title=title,content=content)
		db.session.add(post_article)
		db.session.commit()
		return redirect(url_for('article.index'))




