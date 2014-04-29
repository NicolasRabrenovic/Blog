-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le: Mar 29 Avril 2014 à 10:19
-- Version du serveur: 5.5.32
-- Version de PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`) VALUES
(1, 'Proin sed enim ut orci sodales cursus ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eleifend justo ut sem porttitor, vel scelerisque arcu porttitor. Phasellus nunc mauris, sagittis sed placerat vel, semper quis enim. Sed ac eros eget justo gravida viverra at a quam. Sed sit amet urna congue orci posuere laoreet. Praesent sed elit porta, ultrices purus scelerisque, suscipit eros. Vestibulum pellentesque eros nulla, et imperdiet tellus lobortis eu. Proin sed enim ut orci sodales cursus eget sollicitudin ligula. Suspendisse sollicitudin suscipit eros nec mattis. Fusce purus ligula, luctus vel scelerisque bibendum, placerat eu eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer tellus turpis, tristique fermentum dui eu, vulputate tincidunt ante.'),
(2, 'Suspendisse potenti', 'Suspendisse potenti. Etiam vestibulum dapibus nunc nec feugiat. Sed fringilla ultrices nisi, ut laoreet mi iaculis sed. Aliquam fringilla urna nec erat varius, quis dictum dui convallis. Curabitur interdum sed risus quis rutrum. Curabitur diam diam, scelerisque a lacus eget, vulputate cursus justo. Fusce metus est, dignissim a velit sed, semper bibendum magna.'),
(3, 'Praesent id volutpat nibh', 'Praesent id volutpat nibh. Pellentesque elementum ante ac quam suscipit, vitae imperdiet purus sagittis. Nunc volutpat vitae ipsum ac feugiat. Duis condimentum dictum urna, quis vehicula lectus convallis dapibus. Suspendisse luctus nisl vel leo vehicula, quis mollis magna commodo. Mauris adipiscing justo metus, eu laoreet risus adipiscing porta. Pellentesque at tellus quis tellus laoreet porta vitae in urna. Duis euismod dui non leo auctor vulputate. Donec a blandit erat. In turpis est, interdum sit amet libero ac, congue interdum urna. Mauris tempus eget urna sed commodo.'),
(4, 'Nulla facilisi', 'Curabitur lorem risus, tristique sed eleifend pharetra, rutrum gravida eros. Pellentesque velit nunc, dapibus ut imperdiet eget, lacinia in arcu. Nulla facilisi. Fusce a nunc quis neque semper eleifend sed ac erat. Nullam in sapien quis lectus mattis posuere rhoncus sed orci. Cras arcu purus, luctus quis pharetra eu, pharetra sit amet nisl. Vestibulum sit amet tortor a arcu scelerisque ultricies eget a lectus. Sed sed velit diam. Praesent malesuada suscipit nibh, at consectetur dolor ornare vel. Ut faucibus consectetur felis vel convallis. Praesent felis ante, lacinia sit amet aliquam id, sollicitudin quis augue.'),
(5, 'Fusce malesuada quam vel massa vulputate', 'Fusce malesuada quam vel massa vulputate, sit amet aliquam elit aliquam. Mauris dapibus velit diam, id malesuada lectus vestibulum non. Vestibulum metus diam, posuere in ultricies in, fermentum in libero. Aenean vitae turpis convallis, sollicitudin erat eu, ullamcorper orci. Fusce eu arcu semper, placerat purus vel, sagittis libero. Sed non viverra nisl, ac imperdiet tellus. Proin tortor nulla, iaculis nec pretium eget, tempor at purus. Aenean interdum, mi condimentum aliquam pharetra, nulla sem pellentesque odio, ut posuere felis tortor commodo risus.'),
(6, 'Aenean turpis leo, lobortis sit amet dictum ', 'Integer quis justo justo. Maecenas eget lacinia est, vel rutrum nibh. Pellentesque aliquet rutrum nisi, in gravida eros pellentesque nec. Mauris ut nunc eu urna gravida vulputate ut at ligula. Curabitur augue dui, feugiat id accumsan sed, convallis non felis. Praesent arcu mauris, convallis cursus faucibus et, pellentesque at orci. Morbi vehicula aliquam dolor nec vehicula. Quisque tincidunt dui ipsum, et lacinia dui vehicula in. Donec tellus nibh, elementum id porttitor euismod, gravida eu magna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse at enim tortor. Suspendisse fringilla, dui eget fringilla gravida, nulla magna ultrices dolor, ut pretium risus sem id leo. Integer pharetra, sapien nec faucibus facilisis, purus elit semper eros, ornare pretium nisl ligula ut nibh. Aenean turpis leo, lobortis sit amet dictum consectetur, pulvinar eget tellus. Donec venenatis convallis laoreet.');

-- --------------------------------------------------------

--
-- Structure de la table `articles_tags`
--

CREATE TABLE IF NOT EXISTS `articles_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_articles` int(11) NOT NULL,
  `id_tags` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_articles` (`id_articles`),
  KEY `id_tags` (`id_tags`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `articles_tags`
--

INSERT INTO `articles_tags` (`id`, `id_articles`, `id_tags`) VALUES
(1, 3, 2),
(2, 3, 1),
(3, 6, 1);

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Contenu de la table `comments`
--

INSERT INTO `comments` (`id`, `content`) VALUES
(1, 'test\r\n'),
(2, 'test\r\n'),
(3, 'test'),
(4, 'test'),
(5, 'test'),
(6, 'test'),
(7, 'test'),
(8, 'test 5\r\n'),
(9, 'test 6'),
(10, 'test 7'),
(11, 'test 7'),
(12, 'test 8'),
(13, 'test 8'),
(14, 'test'),
(15, 'Nicolas'),
(16, 'test'),
(17, 'Ceci est un commentaire'),
(18, 'Ceci est mon premier commentaire'),
(19, 'Ceci est mon premier commentaire');

-- --------------------------------------------------------

--
-- Structure de la table `comments_articles`
--

CREATE TABLE IF NOT EXISTS `comments_articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_comment` int(11) NOT NULL,
  `id_article` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Contenu de la table `comments_articles`
--

INSERT INTO `comments_articles` (`id`, `id_comment`, `id_article`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 3),
(4, 4, 3),
(5, 5, 3),
(6, 6, 3),
(7, 7, 3),
(8, 8, 3),
(9, 9, 3),
(10, 10, 3),
(11, 11, 3),
(12, 12, 3),
(13, 13, 3),
(14, 14, 3),
(15, 15, 3),
(16, 16, 3),
(17, 17, 2),
(18, 18, 6),
(19, 19, 6);

-- --------------------------------------------------------

--
-- Structure de la table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `tags`
--

INSERT INTO `tags` (`id`, `name`) VALUES
(1, 'tag 1'),
(2, 'tag 2'),
(3, 'Test Tag');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `password` (`password`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `salt`, `admin`) VALUES
(2, 'toto@toto.com', 'b0bbe48f21a2ceecbd7354975591271b2c81c1af', 'toto', '52e7d0edaab86', 0),
(3, 'admin@admin.com', 'dd22e4d6ca501e17e1514be77dbc8d24131b518b', 'admin', '52f10ac4663d4', 1);

-- --------------------------------------------------------

--
-- Structure de la table `users2`
--

CREATE TABLE IF NOT EXISTS `users2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `password` (`password`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `articles_tags`
--
ALTER TABLE `articles_tags`
  ADD CONSTRAINT `articles_tags_ibfk_1` FOREIGN KEY (`id_articles`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `articles_tags_ibfk_2` FOREIGN KEY (`id_tags`) REFERENCES `tags` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
