-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2022 at 06:58 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `c2`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `uphoneno` int(15) NOT NULL,
  `uitmname` varchar(15) NOT NULL,
  `qty` int(5) NOT NULL,
  `subtotal` int(10) NOT NULL,
  `billdatetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`uphoneno`, `uitmname`, `qty`, `subtotal`, `billdatetime`) VALUES
(133, 'PanneerRoll', 2, 60, '2022-12-15 16:43:05'),
(133, 'SoftDrinks', 1, 20, '2022-12-15 16:43:05'),
(133, 'MasalaDosa', 1, 30, '2022-12-15 16:43:05'),
(133, 'Total', 4, 110, '2022-12-15 16:43:05'),
(92812, 'SoftDrinks', 1, 20, '2022-12-16 22:01:29'),
(92812, 'IceCream', 1, 10, '2022-12-16 22:01:29'),
(92812, 'Sandwich', 1, 30, '2022-12-16 22:01:29'),
(92812, 'PannerManchuri', 1, 50, '2022-12-16 22:01:29'),
(92812, 'Total', 4, 110, '2022-12-16 22:01:29'),
(832623, 'Pizza', 1, 50, '2022-12-16 22:03:13'),
(832623, 'VegBurger', 1, 40, '2022-12-16 22:03:13'),
(832623, 'AlooTikki', 1, 30, '2022-12-16 22:03:13'),
(832623, 'GobiManchurian', 1, 50, '2022-12-16 22:03:13'),
(832623, 'Mango Juice', 1, 20, '2022-12-16 22:03:13'),
(832623, 'BisibeleBath', 1, 40, '2022-12-16 22:03:14'),
(832623, 'Total', 6, 230, '2022-12-16 22:03:14'),
(9323782, 'Cake', 1, 20, '2022-12-16 22:03:47'),
(9323782, 'PannerPuff', 1, 20, '2022-12-16 22:03:47'),
(9323782, 'Apple Juice', 1, 20, '2022-12-16 22:03:47'),
(9323782, 'SetDosa', 1, 30, '2022-12-16 22:03:48'),
(9323782, 'Total', 4, 90, '2022-12-16 22:03:48'),
(732282, 'AlooTikki', 1, 30, '2022-12-16 22:04:11'),
(732282, 'GobiManchurian', 1, 50, '2022-12-16 22:04:11'),
(732282, 'Strawberry Juic', 1, 30, '2022-12-16 22:04:11'),
(732282, 'Parata', 1, 30, '2022-12-16 22:04:11'),
(732282, 'Total', 4, 140, '2022-12-16 22:04:11'),
(216218, 'RoomaliRoti', 2, 80, '2022-12-16 22:13:41'),
(216218, 'GobiManchurian', 1, 50, '2022-12-16 22:13:41'),
(216218, 'CholeBatura', 1, 40, '2022-12-16 22:13:41'),
(216218, 'Total', 4, 170, '2022-12-16 22:13:41'),
(21621, 'RoomaliRoti', 2, 80, '2022-12-16 22:13:58'),
(21621, 'GobiManchurian', 1, 50, '2022-12-16 22:13:58'),
(21621, 'CholeBatura', 1, 40, '2022-12-16 22:13:58'),
(21621, 'Total', 4, 170, '2022-12-16 22:13:58'),
(82363, 'ChocolateTart', 2, 60, '2022-12-16 22:22:39'),
(82363, 'IceCream', 3, 30, '2022-12-16 22:22:39'),
(82363, 'GobiManchurian', 1, 50, '2022-12-16 22:22:39'),
(82363, 'Mango Juice', 1, 20, '2022-12-16 22:22:39'),
(82363, 'BisibeleBath', 2, 80, '2022-12-16 22:22:39'),
(82363, 'Total', 9, 240, '2022-12-16 22:22:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD KEY `uphoneno_fk` (`uphoneno`),
  ADD KEY `uitmname_fk` (`uitmname`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `uitmname_fk` FOREIGN KEY (`uitmname`) REFERENCES `itemlist` (`itmname`),
  ADD CONSTRAINT `uphoneno_fk` FOREIGN KEY (`uphoneno`) REFERENCES `user` (`phoneno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
