-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 07, 2019 at 07:32 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_favthings`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_things`
--

DROP TABLE IF EXISTS `tbl_things`;
CREATE TABLE IF NOT EXISTS `tbl_things` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) COLLATE utf8_bin NOT NULL,
  `Thing` varchar(50) COLLATE utf8_bin NOT NULL,
  `IMGURL` varchar(100) COLLATE utf8_bin NOT NULL,
  `Description` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_things`
--

INSERT INTO `tbl_things` (`ID`, `Name`, `Thing`, `IMGURL`, `Description`) VALUES
(1, 'Video Game', 'Last of Us', 'lastofus.jpg', 'The Last of Us is a fantastic example of a liner narrative RPG. It is a heart-wrenching story about love and loss, which will leave even the most stoic gamer moved to tears.'),
(2, 'Band', 'Bleachers', 'bleachers.jpg', 'Bleachers is an alt-rock verging on indie pop rock band that is driven by the creative vision of one man, Jack Antonoff. He is also known for being in many other bands such as  Steel Train, Fun, and Red Hearse.'),
(3, 'TV Show', 'Jane the Virgin', 'jane.jpg', 'Jane the Virgin is a romantic comedy telenovela designed for English audiences which brilliantly implements magical realism, extreme plot twists and snappy, relatable dialogue. The show is a about a young woman who has promised her Abuela that she would save her virginity for marriage, but on a twist of fate she is artificially inseminated during a mixed up PAP test. It is delightful television.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
