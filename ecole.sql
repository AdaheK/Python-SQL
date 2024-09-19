-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 19 sep. 2024 à 14:49
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecole`
--

-- --------------------------------------------------------

--
-- Structure de la table `enseignants`
--

DROP TABLE IF EXISTS `enseignants`;
CREATE TABLE IF NOT EXISTS `enseignants` (
  `teacher_id` int NOT NULL AUTO_INCREMENT,
  `prenom` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nom` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `numero_salle` int DEFAULT NULL,
  `departement` varchar(100) DEFAULT NULL,
  `annee_obtention` year DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telephone` varchar(10) DEFAULT NULL,
  `numero_classe` int DEFAULT NULL,
  PRIMARY KEY (`teacher_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `enseignants`
--

INSERT INTO `enseignants` (`teacher_id`, `prenom`, `nom`, `numero_salle`, `departement`, `annee_obtention`, `email`, `telephone`, `numero_classe`) VALUES
(1, 'Jonas', 'Salk', NULL, 'biologie', NULL, 'jsalk@school.org', '777-555-43', 5),
(2, 'Jacques', 'Martin', 105, 'Mathématiques', '2002', 'jacques.martin@example.com', '0609876543', 1),
(3, 'Sophie', 'Durand', NULL, 'Histoire', '0000', NULL, '0676543210', 2),
(4, 'Laurent', 'Bernard', 202, 'Physique', '0000', 'laurent.bernard@example.com', '0612345678', 3),
(5, 'Claire', 'Lefevre', 305, 'Informatique', '2008', NULL, '0698765432', 4);

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

DROP TABLE IF EXISTS `etudiants`;
CREATE TABLE IF NOT EXISTS `etudiants` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `prenom` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nom` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `numero_salle` int DEFAULT NULL,
  `telephone` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `annee_obtention` year DEFAULT NULL,
  `numero_classe` int DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`student_id`, `prenom`, `nom`, `numero_salle`, `telephone`, `email`, `annee_obtention`, `numero_classe`) VALUES
(1, 'Mark', 'Watney', NULL, '777-555-12', NULL, '2035', 5),
(2, 'Jean', 'Dupont', NULL, '654-555-12', 'jean.dupont@example.com', '2030', 1),
(3, 'Marie', 'Martin', 101, '069-765-32', NULL, '2027', 2),
(4, 'Pierre', 'Durand', 202, '078-654-21', 'pierre.durand@example.com', '2030', 3),
(5, 'Lucie', 'Bernard', NULL, '071-345-78', NULL, '2029', 1),
(6, 'Sophie', 'Petit', 301, '062-456-89', 'sophie.petit@example.com', '2027', 4),
(7, 'Nicolas', 'Lemoine', 102, '060-234-67', 'nicolas.lemoine@example.com', '2028', 5),
(8, 'Camille', 'Lefevre', NULL, '069-876-43', NULL, '2026', 3),
(9, 'Antoine', 'Rousseau', 204, '067-543-10', 'antoine.rousseau@example.com', '2026', 4),
(10, 'Emma', 'Moreau', 305, '075-781-34', NULL, '2030', 1),
(11, 'Lucas', 'Fournier', NULL, '061-345-78', 'lucas.fournier@example.com', '2026', 2),
(12, 'Elodie', 'Girard', 101, '076-432-09', 'elodie.girard@example.com', '2032', 3),
(13, 'Mathieu', 'Perrin', NULL, '068-654-21', NULL, '2027', 4),
(14, 'Aline', 'Dubois', 205, '062-456-89', 'aline.dubois@example.com', '2032', 5),
(15, 'Thomas', 'Blanc', NULL, '074-210-87', 'thomas.blanc@example.com', '2028', 2),
(16, 'Alice', 'Muller', 302, '071-345-78', NULL, '2035', 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
