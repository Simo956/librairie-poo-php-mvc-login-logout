-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2024 at 10:37 PM
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
-- Database: `bibliotheque_php`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `synopsis` text DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `category` enum('Manga','Roman','Comics') NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `title`, `author`, `synopsis`, `release_date`, `category`, `user_id`) VALUES
(5, 'ôdfbpijdr', ',nlkv', 'dngtmk,dt\r\ndtn\r\ndtb\r\ndb\r\nedrb', '2024-01-27', 'Manga', 1),
(6, 'kekhrb', 'mfkmbp', 'jbefvuib\r\nervqerv\r\nqevrqerv\r\nervqerv\r\nvreqqer', '2024-01-31', 'Roman', NULL),
(9, 'kjefbno', 'bfqet', 'btqek\r\nj\r\nbbq\r\netb\r\nqet\r\n \r\nqet\r\nvqe\r\ntb\r\nqe\r\ntbg', '2024-01-16', 'Manga', NULL),
(10, 'zr', 'yuk', 'ruy\r\n\r\no\r\nu)\r\n)\r\nà)\r\njo)\r\nj)\r\nk)p\r\n)\r\n', '2024-01-25', 'Comics', NULL),
(11, 'tdrydtufygu', 'gfhhujh', 'jbbk\r\ne\r\n\r\nv&quot;z\r\nfv\r\n&quot;z\r\nrv\r\n&quot;rzv\r\n&quot;tr', '2024-01-26', 'Comics', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `city_code` varchar(255) DEFAULT NULL,
  `sex` enum('H','F') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `lastname`, `firstname`, `email`, `city`, `city_code`, `sex`) VALUES
(1, 'YASSINE', 'RADIM', 'ZEVFZR@GMAIL.COM', 'ZRVARV', '21312', 'H'),
(2, 'kia', 'khalid', 'jjazvyefupirfp@jgezvfj.com', 'uizef', '-54636', 'H');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
