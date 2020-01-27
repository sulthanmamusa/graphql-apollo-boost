-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 27, 2020 at 07:46 PM
-- Server version: 5.7.28-0ubuntu0.18.04.4
-- PHP Version: 7.2.26-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bankdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `city` varchar(64) NOT NULL,
  `street` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `branch_id`, `city`, `street`, `status`) VALUES
(1, 'karthick', 1, 'blr', 'jayanagar', 1),
(2, 'sulthan', 1, 'blr', 'prakash nagar', 1),
(3, 'rajesh', 2, 'blr', 'e-city', 1),
(4, 'pawan', 2, 'blr', 'e-city', 1);

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `city` varchar(64) NOT NULL,
  `assets` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `city`, `assets`, `status`) VALUES
(1, 'rajesh', 'a', '10000', 1),
(2, 'test', 'test', 'test', 1),
(3, 'test', 'test', 'test', 1),
(4, 'test', 'test', 'test', 1),
(5, 'test', 'test', 'test', 1),
(6, 'test', 'test', 'test', 1),
(7, 'ecity', 'blr', 'test', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `creditdebit` enum('credit','debit') NOT NULL DEFAULT 'credit',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `account_id`, `amount`, `creditdebit`, `status`) VALUES
(1, 1, '25000.00', 'credit', 1),
(2, 1, '30000.00', 'credit', 1),
(3, 1, '30000.00', 'debit', 1),
(4, 1, '30000.00', 'debit', 1),
(5, 1, '50000.00', 'debit', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
