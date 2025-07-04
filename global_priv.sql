-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 04 juil. 2025 à 04:12
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
-- Base de données : `mysql`
--

-- --------------------------------------------------------

--
-- Structure de la table `global_priv`
--

CREATE TABLE `global_priv` (
  `Host` char(60) NOT NULL DEFAULT '',
  `User` char(80) NOT NULL DEFAULT '',
  `Priv` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '{}' CHECK (json_valid(`Priv`))
) ENGINE=Aria DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `global_priv`
--

INSERT INTO `global_priv` (`Host`, `User`, `Priv`) VALUES
('localhost', 'root', '{\"access\":18446744073709551615}'),
('localhost', 'exam', '{\"access\":15,\"plugin\":\"mysql_native_password\",\"authentication_string\":\"*7452967214B8D542D953C4B4BAE2CE40F7763E70\",\"password_last_changed\":1751594227,\"ssl_type\":0,\"ssl_cipher\":\"\",\"x509_issuer\":\"\",\"x509_subject\":\"\",\"max_questions\":0,\"max_updates\":0,\"max_connections\":0,\"max_user_connections\":0}'),
('127.0.0.1', 'root', '{\"access\":18446744073709551615}'),
('::1', 'root', '{\"access\":18446744073709551615}'),
('localhost', 'pma', '{\"access\":0,\"plugin\":\"mysql_native_password\",\"authentication_string\":\"\",\"password_last_changed\":1571661132}');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `global_priv`
--
ALTER TABLE `global_priv`
  ADD PRIMARY KEY (`Host`,`User`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
