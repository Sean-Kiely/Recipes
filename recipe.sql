-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2016 at 09:58 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `recipe`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `commentid` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `poster` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `recipeid` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`commentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `date` date NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `article` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`date`, `title`, `article`) VALUES
('2016-07-01', 'Viral food videos mask the joy of cooking', 'I was supposed to be nearing my "oh, yes" moment, that gleeful exclamation that punctuates every BuzzFeed Tasty video, when the cheese oozes and the Nutella drips salaciously and frosting comes spilling off of slices of cake.\r\n\r\nInstead, I swore. "F---, it''s so hot!," became my coda to an hour of attempting to replicate chocolate cream cheese-stuffed monkey bread. The balls of dough burned my fingers as I tried to pull one apart for the camera, only partially revealing a gooey center before practically chucking it back onto the plate.\r\n\r\nOn screen, time-lapse cooking videos make mesmerizing art of otherwise time-consuming cooking projects, belying the all-at-once methodical, soothing, frustrating and sometimes painful process that comes with making yourself a meal at home. In real life, dishes don''t go from nothing to done in 60 seconds, and they may claim a finger or two along the way.');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE IF NOT EXISTS `recipes` (
  `recipeid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `poster` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `shortdesc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ingredients` text COLLATE utf8_unicode_ci NOT NULL,
  `directions` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`recipeid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`recipeid`, `title`, `poster`, `shortdesc`, `ingredients`, `directions`) VALUES
(1, 'Vodka Sauce', 'Married', 'This is a great and simple sauce to make. Tastes delicious over any pasta!', '1/2 cup butter\r\n1 onion, diced\r\n1 cup vodka\r\n2 (28 ounce) cans crushed tomatoes\r\n1 pint heavy cream', 'In a skillet over medium heat, saute onion in butter until slightly brown and soft. Pour in vodka and let cook for 10 minutes. Mix in crushed tomatoes and cook for 30 minutes. Pour in heavy cream and cook for another 30 minutes.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userid` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(41) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
