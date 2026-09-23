-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2026 at 10:11 PM
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
-- Database: `projekt-lista`
--

-- --------------------------------------------------------

--
-- Table structure for table `allied_units`
--

CREATE TABLE `allied_units` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `squad size` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `battleline`
--

CREATE TABLE `battleline` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `squad size` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `character`
--

CREATE TABLE `character` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `squad size` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dedicated transport`
--

CREATE TABLE `dedicated transport` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `squad size` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `epic_hero`
--

CREATE TABLE `epic_hero` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `squad size` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fortification`
--

CREATE TABLE `fortification` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `squad size` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `infantry`
--

CREATE TABLE `infantry` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `squad size` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mounted`
--

CREATE TABLE `mounted` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `squad size` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unitlist`
--

CREATE TABLE `unitlist` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `squad size` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unitlist`
--

INSERT INTO `unitlist` (`id`, `name`, `squad size`, `points`) VALUES
(1, 'intercessor', 5, 80),
(2, 'intercessor', 5, 80);

-- --------------------------------------------------------

--
-- Table structure for table `vechicle`
--

CREATE TABLE `vechicle` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `squad size` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allied_units`
--
ALTER TABLE `allied_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `battleline`
--
ALTER TABLE `battleline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `character`
--
ALTER TABLE `character`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dedicated transport`
--
ALTER TABLE `dedicated transport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `epic_hero`
--
ALTER TABLE `epic_hero`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fortification`
--
ALTER TABLE `fortification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `infantry`
--
ALTER TABLE `infantry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mounted`
--
ALTER TABLE `mounted`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unitlist`
--
ALTER TABLE `unitlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vechicle`
--
ALTER TABLE `vechicle`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allied_units`
--
ALTER TABLE `allied_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `battleline`
--
ALTER TABLE `battleline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `character`
--
ALTER TABLE `character`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dedicated transport`
--
ALTER TABLE `dedicated transport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `epic_hero`
--
ALTER TABLE `epic_hero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fortification`
--
ALTER TABLE `fortification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `infantry`
--
ALTER TABLE `infantry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mounted`
--
ALTER TABLE `mounted`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unitlist`
--
ALTER TABLE `unitlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vechicle`
--
ALTER TABLE `vechicle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
