-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Mar 18, 2024 at 11:47 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `t`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(25) DEFAULT NULL,
  `content` text,
  `author` varchar(25) DEFAULT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `author`, `images`) VALUES
(15, 'Importance of  Sleep', 'Study done on over 3000 students has shown a drastic decrease in sleep which has led to increased stress and depression, researchers compel educational facilities to lesson the load to allow students to sleep.', 'Sam Smith', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_mf5exQ9NDEO1ffRMtSYbZpeNF31zEqJoyTC3c0VNPA&s'),
(14, 'Student Moral', 'Student moral is on an all time low due to recent events ', 'Jane Doe', 'https://img.freepik.com/free-photo/exhausted-man-sitting-desktop_23-2147655882.jpg?w=740&t=st=1710761899~exp=1710762499~hmac=1d385bbabfcb229c00e159148fa842c1f1f53ab693778ddef40f8bc49d0d776f');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
