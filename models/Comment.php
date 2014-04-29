<?php

use Blog\Model;

class Comment extends Model
{
	public function saveComment($idArticle, $comment)
	{
		$sql = 'INSERT INTO comments (id, content) VALUES (NULL, :comment)
		';

		$arg = array(
			':comment' => $comment
		);

		$this->app['sql']->prepareExec($sql, $arg)->fetchAll();

		$query = 'INSERT INTO comments_articles (
				id,
				id_comment,
				id_article
			)
			VALUES (
				NULL,
				:commentId,
				:idArticle
			)
		';

		$argument = array(
			':commentId' => $this->app['sql']->lastId(),
			':idArticle' => $idArticle
		);

		$this->app['sql']->prepareExec($query, $argument)->fetchAll();
	}

	public function getComments($idArticle)
	{
		$sql = 'SELECT *
		FROM comments, comments_articles
		WHERE comments.id = comments_articles.id_comment
		AND comments_articles.id_article = :id';

		$arg = array(
			':id' => $idArticle
		);

		return $this->app['sql']->prepareExec($sql, $arg)->fetchAll();
	}
}