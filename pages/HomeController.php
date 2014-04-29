<?php

use Blog\Controller;

Class HomeController extends Controller
{

    /**
     * Affiche la home page
     */
    public function getIndex($idTag = null)
    {
        $this->data['user'] = $this->isLogged();

        $article = new Article($this->app);
        $this->data['articles'] = $article->getAllArticles($idTag);

        return $this->app['twig']->render('home.twig', $this->data);
    }

    public function getArticle($idArticle)
    {
        $article = new Article($this->app);
        $this->data['article'] = $article->getArticle($idArticle);

        $tag = new Tag($this->app);
        $tags = $tag->getTagsByArticle($idArticle);
		
		$this->data['tags'] = $tags;
		
			$comment = new Comment($this->app);

			$comments = $comment->getComments($idArticle);

			$this->data['comments'] = $comments;

          

            return $this->app['twig']->render('article.twig', $this->data);
    }
	
	public function postComment($idArticle = null)
		{
			$this->data['user'] = $this->isLogged();

			if( $this->isLogged() ){
				// requete d'ajout de commentaire
				if ($idArticle) {
					$comment = new Comment($this->app);
					$comment->saveComment( $idArticle, $this->app['request']->get('comment'));
				}
			}

			
		return $this->redirect('article', array('idArticle' => $idArticle));
	
	}
}
