-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 07 Avril 2017 à 10:23
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `proverbdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `idPage` int(11) NOT NULL,
  `urlPage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `pages`
--

INSERT INTO `pages` (`idPage`, `urlPage`) VALUES
(1, 'http://www.unproverbe.com/?page=2&motc=homme&ok=Chercher'),
(2, 'http://www.unproverbe.com/?page=3&motc=homme&ok=Chercher'),
(3, 'http://www.unproverbe.com/?page=2&motc=homme&ok=Chercher'),
(4, 'http://www.unproverbe.com/?page=3&motc=homme&ok=Chercher'),
(5, 'http://www.unproverbe.com/?page=2&motc=homme&ok=Chercher&p=1&call=1'),
(6, 'http://www.unproverbe.com/?page=2&motc=homme&ok=Chercher&p=2&call=1'),
(7, 'http://www.unproverbe.com/?page=2&motc=homme&ok=Chercher&p=3&call=1'),
(8, 'http://www.unproverbe.com/?page=2&motc=homme&ok=Chercher&p=4&call=1'),
(9, 'http://www.unproverbe.com/?page=2&motc=homme&ok=Chercher&p=5&call=1'),
(10, 'http://www.unproverbe.com/?page=2&motc=homme&ok=Chercher&p=6&call=1'),
(11, 'http://www.unproverbe.com/?page=2&motc=homme&ok=Chercher&p=7&call=1'),
(12, 'http://www.unproverbe.com/?page=2&motc=homme&ok=Chercher&p=8&call=1'),
(13, 'http://www.unproverbe.com/?page=2&motc=homme&ok=Chercher&p=9&call=1'),
(14, 'http://www.unproverbe.com/?page=2&motc=homme&ok=Chercher&p=1&call=1'),
(15, 'http://www.unproverbe.com/?page=2&motc=homme&ok=Chercher&p=1&call=1'),
(16, 'http://www.unproverbe.com/?page=2&motc=homme&ok=Chercher&p=1&call=1'),
(17, 'http://www.unproverbe.com/?page=2&motc=homme&ok=Chercher&p=1&call=1'),
(18, 'http://www.unproverbe.com/?page=2&motc=homme&ok=Chercher&p=1&call=1'),
(19, 'http://www.unproverbe.com/?page=2&motc=homme&ok=Chercher&p=1&call=1'),
(20, 'http://www.unproverbe.com/?page=2&motc=homme&ok=Chercher&p=1&call=1'),
(21, 'http://www.unproverbe.com/?page=2&motc=homme&ok=Chercher&p=1&call=1'),
(22, 'http://www.unproverbe.com/?page=2&motc=homme&ok=Chercher&p=1&call=1'),
(23, 'http://www.unproverbe.com/?page=2&motc=homme&ok=Chercher&p=1&call=1'),
(24, 'http://www.unproverbe.com/?page=2&motc=homme&ok=Chercher&p=1&call=1'),
(25, 'http://www.unproverbe.com/?page=2&motc=homme&ok=Chercher&p=1&call=1'),
(26, 'http://www.unproverbe.com/?page=2&motc=homme&ok=Chercher&p=1&call=1'),
(27, 'http://www.unproverbe.com/?page=2&motc=homme&ok=Chercher&p=1&call=1'),
(28, 'http://www.unproverbe.com/?page=2&motc=homme&ok=Chercher&p=1&call=1'),
(29, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=1&call=1'),
(30, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=2&call=1'),
(31, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=3&call=1'),
(32, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=4&call=1'),
(33, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=5&call=1'),
(34, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=6&call=1'),
(35, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=7&call=1'),
(36, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=8&call=1'),
(37, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=9&call=1'),
(38, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=10&call=1'),
(39, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=11&call=1'),
(40, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=12&call=1'),
(41, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=13&call=1'),
(42, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=14&call=1'),
(43, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=15&call=1'),
(44, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=16&call=1'),
(45, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=17&call=1'),
(46, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=18&call=1'),
(47, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=19&call=1'),
(48, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=1&call=1'),
(49, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=2&call=1'),
(50, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=3&call=1'),
(51, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=4&call=1'),
(52, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=5&call=1'),
(53, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=6&call=1'),
(54, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=7&call=1'),
(55, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=8&call=1'),
(56, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=9&call=1'),
(57, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=10&call=1'),
(58, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=11&call=1'),
(59, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=12&call=1'),
(60, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=13&call=1'),
(61, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=14&call=1'),
(62, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=15&call=1'),
(63, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=16&call=1'),
(64, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=17&call=1'),
(65, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=18&call=1'),
(66, 'http://www.unproverbe.com/?page=2&motc=femme&ok=Chercher&p=19&call=1');

-- --------------------------------------------------------

--
-- Structure de la table `proverbes`
--

DROP TABLE IF EXISTS `proverbes`;
CREATE TABLE `proverbes` (
  `idProverbe` int(11) NOT NULL,
  `proverbeContent` varchar(255) NOT NULL,
  `idPage` int(11) NOT NULL,
  `lngProverbe` text NOT NULL,
  `idProverbeTraduction` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`idPage`);

--
-- Index pour la table `proverbes`
--
ALTER TABLE `proverbes`
  ADD PRIMARY KEY (`idProverbe`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `pages`
--
ALTER TABLE `pages`
  MODIFY `idPage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT pour la table `proverbes`
--
ALTER TABLE `proverbes`
  MODIFY `idProverbe` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
