-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2024 at 08:44 PM
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
-- Database: `game`
--

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `scores` varchar(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`id`, `username`, `scores`) VALUES
(387, 'Hassaan', '0'),
(388, 'Ranasingha', '250'),
(389, 'aakila', '10'),
(390, 'Rayyan', '20'),
(393, 'Razor', '20'),
(394, 'Razorr', '0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(68, 'Hassaan', '$2y$10$Y01XCL7uNTGnEXN6PxCuiuRpd7hw2wdBm1PzQXlzFU7/Dp6wRyvRq', '2023-12-05 06:50:18'),
(69, 'Ranasingha', '$2y$10$oK0B1aQQRV99kjxnUURldukhNUJ3gzKyihazkeKa/GZl95snJN2ku', '2023-12-05 07:14:42'),
(70, 'aakila', '$2y$10$ov3Li/NabQ.WO7WS1GRcAuAqfkc33r0bJJfQI.iguumhC0k70SIWy', '2023-12-06 07:15:27'),
(71, 'Rayyan', '$2y$10$TJs57oOPNofAD2XY9aEq.OXB3pZNsj4xCxFHTy0WprXUfAL7nmD.e', '2023-12-07 15:57:07'),
(73, 'Razor', '$2y$10$vPhCWPz.wEgK601BVqWb9uBJwkK0RyqFalIv58R7HGnoAE.kPeJ9K', '2023-12-07 16:26:14'),
(74, 'Razorr', '$2y$10$5jTb8jsnzng3zI0fuv4.cu3GPELrSdcqGUndnAK/fo4QFs6B.J0h6', '2023-12-07 20:17:50'),
(75, 'dharmapala', '$2y$10$v/AqL/pCYeg.cKuLwPwaV.nC2KBWOLKLGrRp3rutwZqnRsJzw3SUi', '2024-05-05 20:01:53'),
(76, 'Haaland', '$2y$10$W9o5lOy/vcCVwK5D/rpY/ueE9P7a3ZNUJLQFVX.jksZyOPAk7cS0S', '2024-09-29 23:40:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `score`
--
ALTER TABLE `score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=395;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
