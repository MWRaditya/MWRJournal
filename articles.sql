-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2025 at 05:20 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mwra11202314948`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `date`, `image_url`) VALUES
(1, 'Article 1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Amet, laborum aut quod totam numquam veniam autem in!', '2021-10-01', 'https://shared.cloudflare.steamstatic.com/store_item_assets/steam/apps/1584090/header.jpg?t=1726319208'),
(2, 'Article 2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus odit iste itaque quibusdam iusto doloremque!', '2023-09-19', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1L6z6CmiInUjXobpLaotthgyUpDGyZoTbOg&s'),
(3, 'Article 3', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum pariatur commodi quasi eveniet consequatur adipisci dolor temporibus!', '2024-09-21', 'https://shared.cloudflare.steamstatic.com/store_item_assets/steam/apps/1601580/header.jpg?t=1729781025');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
