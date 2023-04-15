-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 14, 2022 at 09:02 PM
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
  `id` decimal(10,0) NOT NULL,
  `Titre` varchar(30) NOT NULL,
  `Genre` varchar(30) NOT NULL,
  `Année` decimal(4,0) NOT NULL,
  `Réalisateur` varchar(20) NOT NULL,
  `description` varchar(500) NOT NULL,
  `image` varchar(100) NOT NULL,
  `prix` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id`, `Titre`, `Genre`, `Année`, `Réalisateur`, `description`, `image`, `prix`) VALUES
('1', 'Le Seigneur des Anneaux 1', 'Fantasy', '2001', 'Jackson', 'Cet anneau maléfique est une arme redoutable qui permettrait au seigneur du Mordor de régner sur la Terre du Milieu et de réduire tous ses peuples en esclavage. Gandalf relate alors à Frodon la malédiction de l\'Anneau et l\'informe que les serviteurs de Sauron sont déjà en route pour retrouver le précieux objet.', 'lotr.jpg', 5),
('2', 'Star Wars III', 'Science-Fiction', '2005', 'Lucas', 'La Guerre des Clones fait rage. Une franche hostilité oppose désormais le Chancelier Palpatine au Conseil Jedi. Anakin Skywalker, jeune Chevalier Jedi pris entre deux feux, hésite sur la conduite à tenir. Séduit par la promesse d\'un pouvoir sans précédent, tenté par le côté obscur de la Force, il prête allégeance au maléfique Darth Sidious et devient Dark Vador.', 'starwars.jpg', 5),
('3', 'Jurassic Park', 'Science-Fiction', '1993', 'Spielberg', 'Ne pas réveiller le chat qui dort... C\'est ce que le milliardaire John Hammond aurait dû se rappeler avant de se lancer dans le \"clonage\" de dinosaures. C\'est à partir d\'une goutte de sang absorbée par un moustique fossilisé que John Hammond et son équipe ont réussi à faire renaître une dizaine d\'espèces de dinosaures. ', 'jurassic.jpg', 5),
('4', 'Le Monde de Narnia', 'Fantasy', '2005', 'Adamson', 'Le Monde de Narnia : chapitre 1 conte la lutte entre le bien et le mal qui oppose le magnifique lion Aslan aux forces des ténèbres dans le monde magique de Narnia. Grâce à ses sombres pouvoirs, la Sorcière Blanche a plongé Narnia dans un hiver qui dure depuis un siècle, mais une prédiction révèle que quatre enfants aideront Aslan à rompre la malédiction.', 'narnia.jpg', 5),
('5', 'Gladiator', 'Drame', '2000', 'Scott', 'Le général romain Maximus est le plus fidèle soutien de l\'empereur Marc Aurèle, qu\'il a conduit de victoire en victoire avec une bravoure et un dévouement exemplaires. Jaloux du prestige de Maximus, et plus encore de l\'amour que lui voue l\'empereur, le fils de MarcAurèle, Commode, s\'arroge brutalement le pouvoir, puis ordonne l\'arrestation du général et son exécution. Maximus échappe à ses assassins mais ne peut empêcher le massacre de sa famille..', 'gladiator.jpg', 5),
('6', 'Interstellar', 'Drame', '2014', 'Nolan', 'Le film raconte les aventures d’un groupe d’explorateurs qui utilisent une faille récemment découverte dans l’espace-temps afin de repousser les limites humaines et partir à la conquête des distances astronomiques dans un voyage interstellaire. ', 'interstellar.jpg', 5),
('7', 'Forest Gump', 'Comédie dramatique', '1994', 'Zemeckis', 'Quelques décennies d\'histoire américaine, des années 1940 à la fin du XXème siècle, à travers le regard et l\'étrange odyssée d\'un homme simple et pur, Forrest Gump.', 'forest.jpg', 5),
('8', 'Inception', 'Science-Fiction', '2010', 'Nolan', 'Dom Cobb est un voleur expérimenté – le meilleur qui soit dans l’art périlleux de l’extraction : sa spécialité consiste à s’approprier les secrets les plus précieux d’un individu, enfouis au plus profond de son subconscient, pendant qu’il rêve et que son esprit est particulièrement vulnérable. Très recherché pour ses talents dans l’univers trouble de l’espionnage industriel, Cobb est aussi devenu un fugitif traqué dans le monde entier qui a perdu tout ce qui lui est cher. ', 'inception.jpg', 5),
('9', 'Avengers: Endgame', 'Super-Héros', '2019', 'Anthony', 'Thanos ayant anéanti la moitié de l’univers, les Avengers restants resserrent les rangs dans ce vingt-deuxième film des Studios Marvel, grande conclusion d’un des chapitres de l’Univers Cinématographique Marvel.', 'avengers.jpg', 5),
('10', 'The Batman', 'Super-héros', '2022', 'Reeves', 'Deux années à arpenter les rues en tant que Batman et à insuffler la peur chez les criminels ont mené Bruce Wayne au coeur des ténèbres de Gotham City. Avec seulement quelques alliés de confiance - Alfred Pennyworth, le lieutenant James Gordon - parmi le réseau corrompu de fonctionnaires et de personnalités de la ville, le justicier solitaire s\'est imposé comme la seule incarnation de la vengeance parmi ses concitoyens. ', 'batman.jpg', 5);

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
(1000, 1, 11, '1 Rue du Trocadéro', 20, 50, 4, 1, '9.00', '12.00'),
(2000, 1, 22, '1 Rue du Trocadéro', 40, 50, 5, 2, '9.00', '11.00'),
(3000, 1, 33, '1 Rue du Trocadéro', 60, 50, 6, 3, '9.00', '11.00'),
(4000, 1, 44, '1 Rue du Trocadéro', 80, 50, 7, 4, '9.00', '11.00'),
(5000, 1, 11, '1 Rue du Trocadéro', 20, 50, 4, 5, '13.00', '16.00'),
(6000, 1, 22, '1 Rue du Trocadéro', 40, 50, 5, 6, '12.00', '15.30'),
(7000, 1, 33, '1 Rue du Trocadéro', 60, 50, 6, 7, '11.00', '13.00'),
(8000, 1, 44, '1 Rue du Trocadéro', 80, 50, 7, 8, '11.00', '14.00'),
(9000, 1, 88, '1 Rue du Trocadéro', 20, 50, 4, 9, '17.00', '20.00'),
(10000, 1, 22, '1 Rue du Trocadéro', 40, 50, 5, 10, '16.00', '19.00'),
(1000, 2, 11, '5 Avenue du Sacré Coeur', 20, 50, 4, 21, '9.00', '12.00'),
(2000, 2, 22, '5 Avenue du Sacré Coeur', 40, 50, 5, 22, '9.00', '11.00'),
(3000, 2, 33, '5 Avenue du Sacré Coeur', 60, 50, 6, 23, '9.00', '11.00'),
(4000, 2, 44, '5 Avenue du Sacré Coeur', 80, 50, 7, 24, '9.00', '11.00'),
(5000, 2, 11, '5 Avenue du Sacré Coeur', 20, 50, 4, 25, '13.00', '16.00'),
(6000, 2, 22, '5 Avenue du Sacré Coeur', 40, 50, 5, 26, '12.00', '15.30'),
(7000, 2, 33, '5 Avenue du Sacré Coeur', 60, 50, 6, 27, '11.00', '13.00'),
(8000, 2, 44, '5 Avenue du Sacré Coeur', 80, 50, 7, 28, '11.00', '14.00'),
(9000, 2, 88, '5 Avenue du Sacré Coeur', 20, 50, 4, 29, '17.00', '20.00'),
(10000, 2, 22, '5 Avenue du Sacré Coeur', 40, 50, 5, 30, '16.00', '19.00'),
(1000, 3, 11, '10 Avenue de Notre Dame', 20, 50, 4, 31, '9.00', '12.00'),
(2000, 3, 22, '10 Avenue de Notre Dame', 40, 50, 5, 32, '9.00', '11.00'),
(3000, 3, 33, '10 Avenue de Notre Dame', 60, 50, 6, 33, '9.00', '11.00'),
(4000, 3, 44, '10 Avenue de Notre Dame', 80, 50, 7, 34, '9.00', '11.00'),
(5000, 3, 11, '10 Avenue de Notre Dame', 20, 50, 4, 35, '13.00', '16.00'),
(6000, 3, 22, '10 Avenue de Notre Dame', 40, 50, 5, 36, '12.00', '15.30'),
(7000, 3, 33, '10 Avenue de Notre Dame', 60, 50, 6, 37, '11.00', '13.00'),
(8000, 3, 44, '10 Avenue de Notre Dame', 80, 50, 7, 38, '11.00', '14.00'),
(9000, 3, 88, '10 Avenue de Notre Dame', 20, 50, 4, 39, '17.00', '20.00'),
(10000, 3, 22, '10 Avenue de Notre Dame', 40, 50, 5, 40, '16.00', '19.00');

-- --------------------------------------------------------

--
-- Table structure for table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `age` int(3) NOT NULL,
  `pseudo` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `token` text NOT NULL,
  `date_inscription` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `prenom`, `age`, `pseudo`, `email`, `password`, `token`, `date_inscription`) VALUES
(1, 'arvin', 'christophe', 45, 'tof', 'admin@gmail.com', '$2y$12$iHbhI95JzkyTy7EtOHXJQuIaGsAhlk8xFvXDDnrxd5S9hnGncdBHC', '6b524d044a1643bbf7da3d56c65949b5bd95ddd194d197a0859885115b6a3dd0fabd816e73d18ac749bacc578f359bf42015b7f790d47d106f6b78f54b6a13bc', '2022-06-13 00:53:46'),
(2, 'arvin', 'maxence', 45, 'maxou', 'maxou@gmail.com', '$2y$12$OmSrLYBrgINML4rkvpvzqOSPAGAkfLul6Ax3RKQmaTLgGgWyJEDOO', 'ec49adee35998b58545fc553ac33e39d2fb549d37da6373b1bef28614d296b0de56c69672df8f8b260db66ff5bfc681a009ffa8bcc7a7d041b3af9a6ee9caeff', '2022-06-13 00:58:25'),
(3, 'gautrot', 'nathan', 65, 'nathan56', 'gautrot@gmail.com', '$2y$12$owSAKifELropJLPycnjkueumeo9EpQMhDScUq8CoOgrdpScGL.kf2', '974796a1885189d1be2506dc63f3522c0ac79ab36af2c8a0cf7e68a6336c4035ab78e56f5c52c2fc823abf1bc3a501755cf5e6bdb589175982bdf936cc106665', '2022-06-13 01:10:10'),
(4, 'Hubert', 'Quentin', 18, 'quentinou', 'quentin@gmail.com', '$2y$12$vX/3szv.ft0zq8crcpv0Xe9bHfqUQYG9DaJquKqNOhvJTRlHLu8Fi', '2d6a9ffdc5558ad0426bd1450f98da7464c914fbf74fefb1c1097811eac2600bfb13a6c887c5a0ca0c0f79fb93a8e80f70eed05620d958936397e73b9bb2193c', '2022-06-13 16:07:39');

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
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `seance`
--
ALTER TABLE `seance`
  MODIFY `No_séance` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
