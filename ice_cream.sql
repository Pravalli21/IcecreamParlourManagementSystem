-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2021 at 12:20 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ice_cream`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_reg`
--

CREATE TABLE `admin_reg` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `contact` bigint(20) NOT NULL,
  `username` varchar(259) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `admin_reg`
--

INSERT INTO `admin_reg` (`id`, `name`, `address`, `contact`, `username`, `password`) VALUES
(1, 'Kirti', 'Bhagirathi', 1, 'e', 'e'),
(2, 'Kirti Salunkhe', 'Bhagirathi Nagar', 1243563456, 'Kirti', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `ambiance`
--

CREATE TABLE `ambiance` (
  `user` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `good` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `bad` varchar(250) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `ambiance`
--

INSERT INTO `ambiance` (`user`, `good`, `bad`) VALUES
('h', 'YES', 'NO'),
('h', 'NO', 'YES'),
('joshi', 'YES', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `user` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `good` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `bad` varchar(250) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`user`, `good`, `bad`) VALUES
('h', 'YES', 'NO'),
('h', 'NO', 'YES'),
('joshi', 'YES', 'NO'),
('pooja', 'YES', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `ice_cream_menu`
--

CREATE TABLE `ice_cream_menu` (
  `flavor` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `ice_cream_menu`
--

INSERT INTO `ice_cream_menu` (`flavor`, `price`) VALUES
('Strawberry', 50),
('Chocolate', 70),
('Venilla', 60),
('Mango', 70),
('Anjeer', 40),
('Sitaphal', 55);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `user` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `good` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `bad` varchar(250) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`user`, `good`, `bad`) VALUES
('h', 'YES', 'NO'),
('h', 'YES', 'NO'),
('h', 'NO', 'YES'),
('user', 'YES', 'NO'),
('user', 'NO', 'YES'),
('user', 'YES', 'NO'),
('user', 'YES', 'NO'),
('user', 'NO', 'YES'),
('joshi', 'NO', 'YES'),
('pooja', 'YES', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `user_history`
--

CREATE TABLE `user_history` (
  `flavor` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `user` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `user_history`
--

INSERT INTO `user_history` (`flavor`, `price`, `qty`, `user`, `date`) VALUES
('Chocolate', 70, 1, 'joshi', '2021-04-04'),
('Mango', 80, 2, 'joshi', '2021-04-04'),
('Chocolate', 70, 1, 'joshi', '2021-04-04'),
('Mango', 80, 2, 'joshi', '2021-04-04'),
('Coffee Bite', 400, 4, 'joshi', '2021-04-04'),
('Coffee Bite', 100, 1, 'joshi', '2021-04-04'),
('Mango', 70, 1, 'pooja', '2021-04-05'),
('Venilla', 60, 1, 'pooja', '2021-04-05'),
('Chocolate Coffee', 200, 2, 'pooja', '2021-04-05'),
('Cold Coffee', 60, 1, 'pooja', '2021-04-05'),
('Pineapple Shake', 120, 2, 'pooja', '2021-04-05'),
('Chocolate-Milk Shake', 100, 1, 'pooja', '2021-04-05');

-- --------------------------------------------------------

--
-- Table structure for table `user_reg`
--

CREATE TABLE `user_reg` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `contact` bigint(20) NOT NULL,
  `username` varchar(259) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `user_reg`
--

INSERT INTO `user_reg` (`id`, `name`, `address`, `contact`, `username`, `password`) VALUES
(1, 'sanchita Joshi', 'Kolhapur', 345784576, 'joshi', 'joshi'),
(2, 'Pooja Rupanwar', 'Shivaji Nagar', 1234567843, 'pooja', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_reg`
--
ALTER TABLE `admin_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_reg`
--
ALTER TABLE `user_reg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_reg`
--
ALTER TABLE `admin_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_reg`
--
ALTER TABLE `user_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
