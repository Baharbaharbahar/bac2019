-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 29 déc. 2023 à 12:16
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bdbac2019`
--

-- --------------------------------------------------------

--
-- Structure de la table `participant`
--

CREATE TABLE `participant` (
  `idparticipant` int(11) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `mdp` varchar(6) NOT NULL,
  `genre` enum('M','F') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `numq` int(11) NOT NULL,
  `nums` int(11) NOT NULL,
  `contenu` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`numq`, `nums`, `contenu`) VALUES
(1, 1, 'les informations partagees sur les reseaux sociaux sont fiables'),
(1, 2, 'les jeux vido contribuent au developpement de la pensee  logique '),
(2, 1, 'l\'usage des reseaux sociaux par les enfants doit etre sous le controle parental'),
(3, 1, 'les reseaux sociaux deviennent une necessite pour les citoyens ');

-- --------------------------------------------------------

--
-- Structure de la table `reponse`
--

CREATE TABLE `reponse` (
  `numq` int(11) NOT NULL,
  `nums` int(11) NOT NULL,
  `idpraticipant` int(11) NOT NULL,
  `rep` enum('O','N','S') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sondage`
--

CREATE TABLE `sondage` (
  `nums` int(11) NOT NULL,
  `theme` varchar(50) NOT NULL,
  `datedebut` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `sondage`
--

INSERT INTO `sondage` (`nums`, `theme`, `datedebut`) VALUES
(1, 'les reseaux sociaux', '2019-05-01'),
(2, 'les jeux video', '2019-06-01');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `participant`
--
ALTER TABLE `participant`
  ADD PRIMARY KEY (`idparticipant`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`numq`,`nums`);

--
-- Index pour la table `reponse`
--
ALTER TABLE `reponse`
  ADD PRIMARY KEY (`numq`,`nums`,`idpraticipant`);

--
-- Index pour la table `sondage`
--
ALTER TABLE `sondage`
  ADD PRIMARY KEY (`nums`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
