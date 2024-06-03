-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2023 at 07:23 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blockchain`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `message`) VALUES
(6, 'tushari', 'tushari@gmail.com', 'hello', 'hello how are you'),
(7, 'tushari', 'tushari@gmail.com', 'hello', 'hello how are you'),
(8, 'tushari', 'tushari@gmail.com', 'hello', 'hello how are you'),
(9, 'tushari', 'tushari@gmail.com', 'hello', 'hello how are you'),
(10, 'tushari', 'tushari@gmail.com', 'hello', 'hello how are you'),
(11, 'tushari', 'tushari@gmail.com', 'hello', 'hello how are you'),
(12, 'tushari', 'tushari@gmail.com', 'hello', 'hello how are you'),
(13, 'tushari', 'tushari@gmail.com', 'hello', 'hello how are you');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `mobile` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `cpassword` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `uname`, `mobile`, `email`, `password`, `cpassword`) VALUES
(1, 'afsf', 'dfsasfdsf', 2147483647, 'asd@co.in', '789456123', '123456789'),
(2, 'Rina', 'RinaP', 2147483647, 'rina@gmail.com', 'rina@123', 'rina@123'),
(3, 'vishal ', 'vishal', 2147483647, 'vishal1@gmail.com', '987654321', '987654321'),
(4, 'vishal', 'vishal', 2147483647, 'vishal18@gmail.com', '987654321', '987654321'),
(5, 'vishal ', 'vishal t', 2147483647, 'vishal00@gmail.com', '987654321', '987654321'),
(6, 'vishal ', 'vishu', 2147483647, 'vishal19@gmail.com', '987654321', '987654321'),
(7, 'vishal ', 'ram', 2147483647, 'vishal33@gmail.com', '987654321', '987654321');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
