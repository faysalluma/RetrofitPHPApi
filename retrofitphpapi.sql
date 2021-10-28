-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 28 Octobre 2021 à 04:11
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `groupec`
--
CREATE DATABASE IF NOT EXISTS `groupec` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `groupec`;

-- --------------------------------------------------------

--
-- Structure de la table `applications`
--

CREATE TABLE `applications` (
  `applicationid` int(11) NOT NULL,
  `titre` varchar(300) NOT NULL,
  `description` text NOT NULL,
  `datecreationapp` date DEFAULT NULL,
  `lien` varchar(500) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `categorieid` int(11) DEFAULT NULL,
  `datecreation` date DEFAULT NULL,
  `datedernmodif` datetime NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `applications`
--

INSERT INTO `applications` (`applicationid`, `titre`, `description`, `datecreationapp`, `lien`, `image`, `categorieid`, `datecreation`, `datedernmodif`, `userid`) VALUES
(1, 'MANAGE', 'Application android qui vous permet de gérer en temps réel vos dépenses journalières en nature et/ou en espèces et d’avoir vos statistiques de dépenses suivant la période souhaitée afin de bien gérer votre portefeuille.', NULL, 'NULL', NULL, 2, '2017-03-15', '2017-03-15 00:00:00', 1),
(2, '2MAIN ', 'Plateforme web vous permettant de retrouver un produit quelconque rapidement et non loin de votre emplacement. Aller 10 fois plus vite dans la recherche d’un produit avec 2MAIN.', NULL, NULL, NULL, 1, '2017-03-15', '2017-03-15 00:00:00', 1),
(3, 'CSHOP', 'Boutique en ligne du GROUPE C vous permettant d\'acheter les matériels et accessoires informatiques de haute qualité à moindre prix. Achetez en gros ou en détail.', NULL, NULL, NULL, 1, '2017-03-15', '2017-03-15 00:00:00', 0);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `categorieid` int(11) NOT NULL,
  `titre` varchar(300) NOT NULL,
  `description` text NOT NULL,
  `dateajout` date NOT NULL,
  `datede'rnmodif` datetime NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`categorieid`, `titre`, `description`, `dateajout`, `datede'rnmodif`, `userid`) VALUES
(1, 'Site web', '', '2017-03-15', '2017-03-15 00:00:00', 1),
(2, 'Android', '', '2017-03-15', '2017-03-15 00:00:00', 1);

-- --------------------------------------------------------

--
-- Structure de la table `categoriecours`
--

CREATE TABLE `categoriecours` (
  `categorieid` int(11) NOT NULL,
  `titre` varchar(300) NOT NULL,
  `description` text NOT NULL,
  `dateajout` date NOT NULL,
  `datedernmodif` datetime NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categoriecours`
--

INSERT INTO `categoriecours` (`categorieid`, `titre`, `description`, `dateajout`, `datedernmodif`, `userid`) VALUES
(1, 'Web', '', '2017-03-15', '2017-03-15 00:00:00', 1),
(2, 'Android', '', '2017-03-15', '2017-03-15 00:00:00', 0),
(3, 'Autres', '', '2017-03-15', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `coursid` bigint(20) NOT NULL,
  `titre` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `lien` varchar(500) NOT NULL,
  `type` varchar(50) NOT NULL,
  `categorieid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `datecreation` date DEFAULT NULL,
  `datedernmodif` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `cours`
--

INSERT INTO `cours` (`coursid`, `titre`, `description`, `lien`, `type`, `categorieid`, `userid`, `datecreation`, `datedernmodif`) VALUES
(1, 'MANIPULER EXCEL COMME UN PROFESSIONNEL  PARTIE 1', 'Ce cours vous permet de maîtriser Excel comme un vrai pro. Dans cette partie nous apprendrons le design en Excel', 'https://www.youtube.com/embed/YMMcXu7LM78"', 'video', 3, 1, '2017-03-15', '2017-03-15 00:00:00'),
(2, 'MANIPULER EXCEL COMME UN PROFESSIONNEL  PARTIE 2', 'Ce cours vous permet de maîtriser Excel comme un vrai pro. Dans cette partie nous apprendrons à gérer le code derrière vos formulaires et utiliser les formules.', 'https://www.youtube.com/embed/VabdCJx5-Io', 'video', 3, 1, '2017-03-15', '2017-03-15 00:00:00'),
(3, 'Versionner votre code avec Git et Github', 'Ce cours vous permettra de maîtriser git et github pour mieux gérer l\'évolution de vos projets web.', 'https://openclassrooms.com/courses/gerer-son-code-avec-git-et-github', 'pdf', 3, 1, '2017-03-15', '2017-03-15 00:00:00'),
(4, 'Créer son site web en 2 h de temps sans aucune connaissance en programmation avec Wordpress', '', 'https://www.youtube.com/embed/Mv-fjf2__xw', 'video', 1, 1, '2017-03-16', '2017-03-16 00:00:00'),
(5, 'Intégrer facilement Google Analytics à son site web', '', 'https://www.youtube.com/embed/tKp9zsurg8U', 'video', 1, 1, '2017-03-16', '2017-03-16 00:00:00'),
(6, 'S\'initier à la robotique', '', 'https://openclassrooms.com/courses/s-initier-a-la-robotique', 'pdf', 3, 1, '2017-03-16', '2017-03-16 00:00:00'),
(7, 'Découvrez le monde des start-ups', '', 'https://openclassrooms.com/courses/decouvrez-le-monde-des-start-ups', 'pdf', 3, 1, '2017-03-16', '2017-03-16 00:00:00'),
(8, 'Réaliser une application web en Java avec Sring', '', 'http://rpouiller.developpez.com/tutoriels/spring/application-web-spring-hibernate/', 'pdf', 1, 1, '2017-03-16', '2017-03-16 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

CREATE TABLE `formation` (
  `formationid` int(11) NOT NULL,
  `titre` varchar(300) NOT NULL,
  `description` text NOT NULL,
  `lieu` varchar(150) NOT NULL,
  `datedebut` date DEFAULT NULL,
  `duree` varchar(30) NOT NULL,
  `datelimiteins` date DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `dateajout` date DEFAULT NULL,
  `datemodif` datetime NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `formation`
--

INSERT INTO `formation` (`formationid`, `titre`, `description`, `lieu`, `datedebut`, `duree`, `datelimiteins`, `image`, `dateajout`, `datemodif`, `userid`) VALUES
(1, 'FORMATION ANDROID', 'Cette formation vous permettra de développer des applications Android très performantes et ergonomiques. Vous connaitrez et manipulez les outils essentielles pour créer une application android', 'Cotonou -Fifadji', '2017-05-15', '1 mois', '2017-05-01', 'android.png', '2017-03-15', '2017-03-15 00:00:00', 1),
(2, 'Conception Site web avec Java EE', 'Java EE est un outil moderne et très puissant vous permettant de créer des sites web dynamiques. Découvrez ici comment utiliser Java pour créer des sites web.', 'Cotonou - CEG-Gbegamey', '2017-04-26', '1 mois', '2017-04-19', 'web.png', '2017-03-15', '2017-03-15 00:00:00', 1);

-- --------------------------------------------------------

--
-- Structure de la table `formationins`
--

CREATE TABLE `formationins` (
  `formationinsid` int(11) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `prenoms` varchar(300) NOT NULL,
  `email` varchar(200) NOT NULL,
  `sexe` varchar(50) NOT NULL,
  `adresse` varchar(200) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `dateajout` datetime NOT NULL,
  `formationid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `formationins`
--

INSERT INTO `formationins` (`formationinsid`, `nom`, `prenoms`, `email`, `sexe`, `adresse`, `telephone`, `dateajout`, `formationid`) VALUES
(1, 'SANDA', 'Faysal', 'faysalgluma@gmail.com', 'Masculin', 'Cotonou', '67590465', '2017-03-15 10:45:21', 1);

-- --------------------------------------------------------

--
-- Structure de la table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(300) NOT NULL,
  `dateajout` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`, `dateajout`) VALUES
(1, 'faysalgluma@gmail.com', '2017-03-15'),
(2, 'fssd@dsd.com', '2017-03-15');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `nomprenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `datenais` date NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `privilege` varchar(11) NOT NULL,
  `actif` int(1) NOT NULL,
  `datecreation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`userid`, `nomprenom`, `email`, `password`, `datenais`, `adresse`, `tel`, `privilege`, `actif`, `datecreation`) VALUES
(34, 'SANDA Faysal', 'faysalgluma@gmail.com', 'ce8301668bee80fe0a07af3350a1b5b7eac3192f', '0000-00-00', 'Mr', '67590465', '2345', 1, '2017-03-02 16:39:59');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`applicationid`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`categorieid`);

--
-- Index pour la table `categoriecours`
--
ALTER TABLE `categoriecours`
  ADD PRIMARY KEY (`categorieid`);

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`coursid`);

--
-- Index pour la table `formation`
--
ALTER TABLE `formation`
  ADD PRIMARY KEY (`formationid`);

--
-- Index pour la table `formationins`
--
ALTER TABLE `formationins`
  ADD PRIMARY KEY (`formationinsid`);

--
-- Index pour la table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `applications`
--
ALTER TABLE `applications`
  MODIFY `applicationid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `categorieid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `categoriecours`
--
ALTER TABLE `categoriecours`
  MODIFY `categorieid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `coursid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `formation`
--
ALTER TABLE `formation`
  MODIFY `formationid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `formationins`
--
ALTER TABLE `formationins`
  MODIFY `formationinsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;--
-- Base de données :  `retrofitphpapi`
--
CREATE DATABASE IF NOT EXISTS `retrofitphpapi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `retrofitphpapi`;

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `from_users_id` int(11) NOT NULL,
  `to_users_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `sentat` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `messages`
--

INSERT INTO `messages` (`id`, `from_users_id`, `to_users_id`, `title`, `message`, `sentat`) VALUES
(1, 4, 1, 'blazz', 'je suis back', NULL),
(2, 1, 3, 'ddd', 'op', NULL),
(3, 1, 2, 'ddd', 'cxcsdsd', NULL),
(4, 5, 1, 'yes', 'papi', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `gender` varchar(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `gender`) VALUES
(1, 'Faysal 1er du nom', 'faysalgluma@gmail.com', '5ebe2294ecd0e0f08eab7690d2a6ee69', 'Male'),
(2, 'Faysal SANDA', 'faysalgluma2@gmail.com', '5ebe2294ecd0e0f08eab7690d2a6ee69', 'Male'),
(3, 'liko', 'liko@gmail.com', '5ebe2294ecd0e0f08eab7690d2a6ee69', 'Male'),
(4, 'totosave', 'toto@gmail.com', '5ebe2294ecd0e0f08eab7690d2a6ee69', 'Male'),
(5, 'test', 'test', '5ebe2294ecd0e0f08eab7690d2a6ee69', 'Female');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_users_from` (`to_users_id`),
  ADD KEY `messages_users_to` (`from_users_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
