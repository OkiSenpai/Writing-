-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 02 juin 2025 à 17:20
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `idee_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `idees`
--

DROP TABLE IF EXISTS `idees`;
CREATE TABLE IF NOT EXISTS `idees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sujet` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `texte` text COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `idees`
--

INSERT INTO `idees` (`id`, `sujet`, `texte`, `created_at`) VALUES
(1, 'Omer', 'qsdqsdq', '2025-05-20 13:46:23'),
(2, 'Omer Aslani', 'Bonjour', '2025-05-20 13:46:52'),
(3, 'prica sa robijem', 'Kad sam isao u Pancevo zivot me prvi put naceo vojvode stepe jedan ar, otvorila mi matora sa licem aligatora i rekla mi hej pa to sam ja! a gomila decurlije gledala me iz avlije i pitala se sta mi je i sta ja trazim tu! da to sam ja malo sam se promenila! \n\njos je nisam ni poznao a pijani muz je pozvao, kurvo koji ti je taj! djavo me crni odneo sve sam to tesko podneo, sto kazu ljudi kakav ruzan kraj! \n', '2025-05-20 18:59:19');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
