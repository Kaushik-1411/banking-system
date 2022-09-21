-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2022 at 07:49 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banksysphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Shreya ', 'Allan ', 2000, '2022-09-19 13:08:23'),
(2, 'Allan ', 'Digvijay', 6006, '2022-09-19 13:11:39'),
(3, 'sanskar', 'Nidhi', 5000, '2022-09-19 13:12:01'),
(4, 'Sayali ', 'Vilash', 10000, '2022-09-19 13:12:38'),
(5, 'Shivani', 'Shubhangani', 7236, '2022-09-19 13:13:50'),
(6, 'Akash', 'Allan ', 8000, '2022-09-19 13:14:31'),
(7, 'Digvijay', 'Vilash', 5009, '2022-09-19 13:15:58'),
(16, 'Allan ', 'Digvijay', 500, '2022-09-19 13:55:14'),
(17, 'Allan ', 'Shivani', 500, '2022-09-19 14:08:36'),
(18, 'Shreya ', 'Shivani', 2000, '2022-09-19 17:15:19'),
(19, 'Shreya ', 'Sushila', 1000, '2022-09-19 22:18:18'),
(20, 'Allan ', 'Akash', 9000, '2022-09-19 22:29:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `gender` varchar(155) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `gender`, `balance`) VALUES
(1, 'Shreya ', 'Shreya45@gmail.com', 'Female', 56500),
(2, 'Allan ', 'allan123@gmail.com', 'Male', 34644),
(3, 'Nidhi', 'nidhi18@gmail.com', 'Female', 119750),
(4, 'sanskar', 'sanskar@gmail.com', 'Male', 95005),
(5, 'Sayali ', 'sayali32@gmail.com', 'Female', 117350),
(6, 'Shivani', 'shivani99@gmail.com', 'Female', 76264),
(7, 'Akash', 'akash77@gmail.com', 'Male', 70005),
(8, 'Shubhangani', 'Humpty88@gmail.com', 'Female', 217536),
(9, 'Sushila', 'Sushi66@gmail.com', 'Female', 100000),
(10, 'Digvijay', 'vijay69@gmail.com', 'Male', 41497),
(19, 'Vilash', 'villu786@gmail.com', 'Male', 55009),
(20, 'Shikha', 'shikha@gmail.com', 'Female', 29610);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
