-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2026 at 10:01 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekt-lista-2`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`) VALUES
(1, 'epic hero'),
(2, 'character'),
(3, 'battleline'),
(4, 'infantry'),
(5, 'mounted'),
(6, 'vechicle'),
(7, 'dedicated transport'),
(8, 'fortification'),
(9, 'allied units'),
(10, 'all');

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE `keywords` (
  `id` int(11) NOT NULL,
  `keyword` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `size` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `size`, `points`, `category_id`) VALUES
(1, 'Captain', 1, 80, 2),
(2, 'Crusader Squad', 10, 150, 3),
(3, 'Hellblaster Squad', 5, 110, 4),
(4, 'Outrider Squad', 3, 80, 5),
(5, 'ancient in terminator armor', 1, 75, 2),
(6, 'captain in terminator armor', 1, 95, 2),
(7, 'castellan', 1, 70, 2),
(8, 'chaplain in terminator armor', 1, 75, 2),
(9, 'emperor\'s champion', 1, 100, 2),
(10, 'lieutenant', 1, 55, 2),
(11, 'marshal', 1, 80, 2),
(12, 'marshal', 1, 80, 2),
(13, 'chaplain grimaldus and retinue', 4, 110, 1),
(14, 'high marshal helbrecht', 1, 120, 1),
(15, 'crusader squad', 10, 150, 3),
(16, 'impulsor', 1, 85, 7),
(17, 'bladeguard veteran squad', 3, 80, 4),
(18, 'company heroes', 4, 105, 4),
(19, 'hellblaster squad', 5, 110, 4),
(20, 'inceptor squad', 3, 120, 4),
(21, 'inceptor squad', 3, 120, 4),
(22, 'sternguard veteran squad', 5, 85, 4),
(23, 'sword bretheren squad', 4, 105, 4),
(24, 'terminator assault squad', 5, 180, 4),
(25, 'terminator assault squad', 5, 180, 4),
(26, 'terminator squad', 5, 175, 4),
(27, 'ballistus dreadnought', 1, 150, 6),
(28, 'land raider crusader', 1, 220, 6),
(29, 'redemptor dreadnought', 1, 205, 6);

-- --------------------------------------------------------

--
-- Table structure for table `unit_keywords`
--

CREATE TABLE `unit_keywords` (
  `id` int(11) NOT NULL,
  `keyword_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`(1024));

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `keyword` (`keyword`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `unit_keywords`
--
ALTER TABLE `unit_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `keyword_id` (`keyword_id`,`unit_id`),
  ADD KEY `unit_id` (`unit_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `unit_keywords`
--
ALTER TABLE `unit_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `units`
--
ALTER TABLE `units`
  ADD CONSTRAINT `units_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `unit_keywords`
--
ALTER TABLE `unit_keywords`
  ADD CONSTRAINT `unit_keywords_ibfk_1` FOREIGN KEY (`keyword_id`) REFERENCES `keywords` (`id`),
  ADD CONSTRAINT `unit_keywords_ibfk_2` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
