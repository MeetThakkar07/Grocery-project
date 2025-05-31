-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2024 at 09:04 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocery`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(50) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Message` varchar(999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `Name`, `Email`, `Gender`, `Message`) VALUES
(1, 'Steve Jones', 'stevejones@123gmail.com', 'Male', '\"This Website is very useful to us for the grocery shopping.\"'),
(2, 'Harry Saw', 'harrysaw23@gmail.com', 'male', '\"It Is very Good\"');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(50) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Cno` varchar(10) NOT NULL,
  `Password` varchar(12) NOT NULL,
  `role` varchar(10) NOT NULL DEFAULT 'USER'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `Name`, `Email`, `Cno`, `Password`, `role`) VALUES
(1, 'Meet Thakkar', 'meetthakkar123@gmail.com', '1234567890', '1234', 'ADMIN'),
(3, 'isha', 'isha12@gmail.com', '1234567890', '9876', 'USER'),
(5, 'Avadh Solanki', 'avadhsolanki123@gmail.com', '1234567455', '12345', 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `price1` varchar(5) NOT NULL DEFAULT '25',
  `price2` varchar(5) NOT NULL DEFAULT '25',
  `price3` varchar(5) NOT NULL DEFAULT '25',
  `price4` varchar(5) NOT NULL DEFAULT '25',
  `price5` varchar(5) NOT NULL DEFAULT '25',
  `price6` varchar(5) NOT NULL DEFAULT '25'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`price1`, `price2`, `price3`, `price4`, `price5`, `price6`) VALUES
('12', '13', '14', '15', '16', '17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
