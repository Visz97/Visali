-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2018 at 06:19 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `invoicedatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `phone_no` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL DEFAULT 'company',
  `user_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `address`, `email`, `phone_no`, `country`, `role`, `user_id`) VALUES
(2, 'Lisa', 'Penang', 'medusa@gmail.com', '121212121', 'Malaysia', 'company', NULL),
(3, 'han', 'kedah', 'han@gmail.com', '121212121', 'Malaysia', 'company', '1'),
(4, 'Unite', '16,Lorong 66,Taman Patani Jaya,08000,Sungai Petani,Kedah', 'unite@gmail.com', '174353910', 'Malaysia', 'company', NULL),
(5, 'intel company', '16,Lorong 66,Taman Patani Jaya,08000,Sungai Petani,Kedah', 'intel@gmail.com', '174353910', 'Malaysia', 'company', NULL),
(6, 'keysite', '16,Lorong 66', 'keysite@gmail.com', '174353910', 'Malaysia', 'company', '2'),
(7, 'Unite', 'kedah', 'uniteNew@gmail.com', '174353910', 'Malaysia', 'company', '3');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(1000) NOT NULL,
  `last_name` varchar(1000) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `age` varchar(100) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `address`, `age`, `password`, `email`) VALUES
(1, 'hau', 'han', 'kedah', '12', '123456', 'unite@gmail.com'),
(2, 'lisa', 'jsames', 'kedah', '12', '123456', 'lisa@gmail.com'),
(3, 'gaga', 'dsa', '212as', '21', '123456', 'Quas@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
