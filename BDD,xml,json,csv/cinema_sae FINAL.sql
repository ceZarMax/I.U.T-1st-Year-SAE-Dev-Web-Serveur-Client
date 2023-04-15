-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 05, 2022 at 11:06 AM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinema_sae`
--

-- --------------------------------------------------------

--
-- Table structure for table `cinema`
--

CREATE TABLE `cinema` (
  `ID_cinema` int(11) NOT NULL,
  `Adresse` varchar(30) NOT NULL,
  `Ville` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cinema`
--

INSERT INTO `cinema` (`ID_cinema`, `Adresse`, `Ville`) VALUES
(1, '1 Rue du Trocadéro', 'Paris'),
(2, '5 Avenue du Sacré Coeur', 'Bordeaux'),
(3, '10 Avenue de Notre Dame', 'Toulon');

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `ID_film` decimal(10,0) NOT NULL,
  `Titre` varchar(30) NOT NULL,
  `Genre` varchar(30) NOT NULL,
  `Année` decimal(4,0) NOT NULL,
  `Réalisateur` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`ID_film`, `Titre`, `Genre`, `Année`, `Réalisateur`) VALUES
('1000', 'Le Seigneur des Anneaux 1', 'Fantasy', '2001', 'Jackson'),
('2000', 'Star Wars III', 'Science-Fiction', '2005', 'Lucas'),
('3000', 'Jurassic Park', 'Science-Fiction', '1993', 'Spielberg'),
('4000', 'Le Monde de Narnia', 'Fantasy', '2005', 'Adamson'),
('5000', 'Gladiator', 'Drame', '2000', 'Scott'),
('6000', 'Interstellar', 'Drame', '2014', 'Nolan'),
('7000', 'Forest Gump', 'Comédie dramatique', '1994', 'Zemeckis'),
('8000', 'Inception', 'Science-Fiction', '2010', 'Nolan'),
('9000', 'Avengers: Endgame', 'Super-Héros', '2019', 'Anthony'),
('10000', 'The Batman', 'Super-héros', '2022', 'Reeves');

-- --------------------------------------------------------

--
-- Table structure for table `salle`
--

CREATE TABLE `salle` (
  `ID_salle` int(11) NOT NULL,
  `ID_cinema` int(11) NOT NULL,
  `Adresse` varchar(30) NOT NULL,
  `No_salle` int(11) NOT NULL,
  `Capacité` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salle`
--

INSERT INTO `salle` (`ID_salle`, `ID_cinema`, `Adresse`, `No_salle`, `Capacité`) VALUES
(11, 1, '1 Rue du Trocadéro', 4, 20),
(22, 1, '1 Rue du Trocadéro', 5, 40),
(33, 1, '1 Rue du Trocadéro', 6, 60),
(44, 1, '1 Rue du Trocadéro', 7, 80),
(55, 2, '5 Avenue du Sacré Coeur', 4, 20),
(66, 2, '5 Avenue du Sacré Coeur', 5, 40),
(77, 2, '5 Avenue du Sacré Coeur', 6, 60),
(88, 2, '5 Avenue du Sacré Coeur', 7, 80),
(99, 3, '10 Avenue de Notre Dame', 4, 20),
(111, 3, '10 Avenue de Notre Dame', 5, 40),
(112, 3, '10 Avenue de Notre Dame', 6, 60),
(113, 3, '10 Avenue de Notre Dame', 7, 80);

-- --------------------------------------------------------

--
-- Table structure for table `seance`
--

CREATE TABLE `seance` (
  `ID_film` int(11) NOT NULL,
  `ID_cinema` int(11) NOT NULL,
  `ID_salle` int(11) NOT NULL,
  `Adresse` varchar(30) NOT NULL,
  `Capacité` int(11) NOT NULL,
  `No_places` int(11) NOT NULL DEFAULT '1',
  `No_salle` int(11) NOT NULL,
  `No_séance` int(11) NOT NULL,
  `Heure_debut` decimal(4,2) NOT NULL,
  `Heure_fin` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seance`
--

INSERT INTO `seance` (`ID_film`, `ID_cinema`, `ID_salle`, `Adresse`, `Capacité`, `No_places`, `No_salle`, `No_séance`, `Heure_debut`, `Heure_fin`) VALUES
(1000, 1, 11, '1 Rue du Trocadéro', 20, 1, 4, 1, '9.00', '12.00'),
(2000, 1, 22, '1 Rue du Trocadéro', 40, 1, 5, 2, '9.00', '11.00'),
(3000, 1, 33, '1 Rue du Trocadéro', 60, 1, 6, 3, '9.00', '11.00'),
(4000, 1, 44, '1 Rue du Trocadéro', 80, 1, 7, 4, '9.00', '11.00'),
(5000, 1, 11, '1 Rue du Trocadéro', 20, 1, 4, 5, '13.00', '16.00'),
(6000, 1, 22, '1 Rue du Trocadéro', 40, 1, 5, 6, '12.00', '15.30'),
(7000, 1, 33, '1 Rue du Trocadéro', 60, 1, 6, 7, '11.00', '13.00'),
(8000, 1, 44, '1 Rue du Trocadéro', 80, 1, 7, 8, '11.00', '14.00'),
(9000, 1, 11, '1 Rue du Trocadéro', 20, 1, 4, 9, '17.00', '20.00'),
(10000, 1, 22, '1 Rue du Trocadéro', 40, 1, 5, 10, '16.00', '19.00'),
(1000, 2, 11, '5 Avenue du Sacré Coeur', 20, 1, 4, 21, '9.00', '12.00'),
(2000, 2, 22, '5 Avenue du Sacré Coeur', 40, 1, 5, 22, '9.00', '11.00'),
(3000, 2, 33, '5 Avenue du Sacré Coeur', 60, 1, 6, 23, '9.00', '11.00'),
(4000, 2, 44, '5 Avenue du Sacré Coeur', 80, 1, 7, 24, '9.00', '11.00'),
(5000, 2, 11, '5 Avenue du Sacré Coeur', 20, 1, 4, 25, '13.00', '16.00'),
(6000, 2, 22, '5 Avenue du Sacré Coeur', 40, 1, 5, 26, '12.00', '15.30'),
(7000, 2, 33, '5 Avenue du Sacré Coeur', 60, 1, 6, 27, '11.00', '13.00'),
(8000, 2, 44, '5 Avenue du Sacré Coeur', 80, 1, 7, 28, '11.00', '14.00'),
(9000, 2, 11, '5 Avenue du Sacré Coeur', 20, 1, 4, 29, '17.00', '20.00'),
(10000, 2, 22, '5 Avenue du Sacré Coeur', 40, 1, 5, 30, '16.00', '19.00'),
(1000, 3, 11, '10 Avenue de Notre Dame', 20, 1, 4, 31, '9.00', '12.00'),
(2000, 3, 22, '10 Avenue de Notre Dame', 40, 1, 5, 32, '9.00', '11.00'),
(3000, 3, 33, '10 Avenue de Notre Dame', 60, 1, 6, 33, '9.00', '11.00'),
(4000, 3, 44, '10 Avenue de Notre Dame', 80, 1, 7, 34, '9.00', '11.00'),
(5000, 3, 11, '10 Avenue de Notre Dame', 20, 1, 4, 35, '13.00', '16.00'),
(6000, 3, 22, '10 Avenue de Notre Dame', 40, 1, 5, 36, '12.00', '15.30'),
(7000, 3, 33, '10 Avenue de Notre Dame', 60, 1, 6, 37, '11.00', '13.00'),
(8000, 3, 44, '10 Avenue de Notre Dame', 80, 1, 7, 38, '11.00', '14.00'),
(9000, 3, 11, '10 Avenue de Notre Dame', 20, 1, 4, 39, '17.00', '20.00'),
(10000, 3, 22, '10 Avenue de Notre Dame', 40, 1, 5, 40, '16.00', '19.00');

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `ID` int(11) NOT NULL,
  `Utilisateur` varchar(15) NOT NULL,
  `Mot_de_passe` varchar(20) NOT NULL,
  `Nom` varchar(20) NOT NULL,
  `Prénom` varchar(20) NOT NULL,
  `Age` int(3) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Téléphone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `utilisateur` (`Utilisateur`, `Mot_de_passe`, `Nom`, `Prénom`, `Age`, `Email`, `Téléphone`) VALUES
('Toto75', 'test1234', 'Delaroche', 'Jackson', '19', 'toto75@gmail.com', '0612345678'),
('Bibi78', 'patruc78', 'Delatour', 'Lucas', '20', 'bibi78@gmail.com', '0712345678');
--
-- Indexes for dumped tables
--

--
-- Indexes for table `cinema`
--
ALTER TABLE `cinema`
  ADD PRIMARY KEY (`ID_cinema`);

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`ID_film`);

--
-- Indexes for table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`ID_salle`),
  ADD KEY `ID_cinema` (`ID_cinema`);

--
-- Indexes for table `seance`
--
ALTER TABLE `seance`
  ADD PRIMARY KEY (`No_séance`),
  ADD KEY `ID_film` (`ID_film`),
  ADD KEY `ID_cinema` (`ID_cinema`),
  ADD KEY `ID_salle` (`ID_salle`);

--
-- Indexes for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`ID`,`Email`,`Téléphone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `seance`
--
ALTER TABLE `seance`
  MODIFY `No_séance` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `salle`
--
ALTER TABLE `salle`
  ADD CONSTRAINT `salle_ibfk_1` FOREIGN KEY (`ID_cinema`) REFERENCES `cinema` (`ID_cinema`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
