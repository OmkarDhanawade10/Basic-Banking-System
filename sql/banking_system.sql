-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2021 at 08:01 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banking_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `c_id` int(3) NOT NULL,
  `c_name` varchar(20) NOT NULL,
  `c_mail` varchar(20) DEFAULT NULL,
  `c_balance` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`c_id`, `c_name`, `c_mail`, `c_balance`) VALUES
(1020, 'Sakshi Shinde', 'sakshis20@gmail.com', 60600),
(1021, 'Rohit Pawar', 'prohit71@gmail.com', 54500),
(1022, 'Nayara Khan', 'nkhan456@gmail.com', 28400),
(1023, 'Vinayak Mali', 'VnMali100@gmail.com', 60000),
(1024, 'Suresh Jadhav', 'sureshj200@gmail.com', 39510),
(1025, 'Suraj Naik', 'NSuraj89@gmail.com', 52000),
(1026, 'Madhuri Patil', 'madhup07@gmail.com', 36433),
(1027, 'Komal Dhuri', 'lavanya123@gmail.com', 74567),
(1028, 'Saurabh Dalal', 'DalalS45@gmail.co', 60000),
(1029, 'Meera Pawar', 'meerap239@gmail.com', 85000);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sr_no` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(10) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sr_no`, `sender`, `receiver`, `balance`, `date_time`) VALUES
(6, 'Vinayak Mali', 'Suresh Jadhav', 10000, '2021-08-19 17:52:07'),
(7, 'Meera Pawar', 'Suraj Naik', 10000, '2021-08-19 17:53:31'),
(8, 'Madhuri Patil', 'Komal Dhuri', 34567, '2021-08-19 17:54:25'),
(11, 'Saurabh Dalal', 'Suresh Jadhav', 20000, '2021-08-20 11:22:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`c_id`),
  ADD UNIQUE KEY `c_mail` (`c_mail`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `c_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1030;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sr_no` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
