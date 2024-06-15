-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2017 at 06:52 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
`id` int(10) unsigned NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `phoneno` int(10) DEFAULT NULL,
  `email` text,
  `cdate` date DEFAULT NULL,
  `approval` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
`id` int(10) unsigned NOT NULL,
  `usname` varchar(30) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `usname`, `pass`) VALUES
(1, 'Admin', '1234'),
(2, 'Hypnos', '12345');

-- --------------------------------------------------------
--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `id` int(11) DEFAULT NULL,
  `title` varchar(5) DEFAULT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `troom` varchar(30) DEFAULT NULL,
  `tbed` varchar(30) DEFAULT NULL,
  `nroom` int(11) DEFAULT NULL,
  `cin` date DEFAULT NULL,
  `cout` date DEFAULT NULL,
  `ttot` double(8,2) DEFAULT NULL,
  `fintot` double(8,2) DEFAULT NULL,
  `mepr` double(8,2) DEFAULT NULL,
  `meal` varchar(30) DEFAULT NULL,
  `btot` double(8,2) DEFAULT NULL,
  `noofdays` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
`id` int(10) unsigned NOT NULL,
  `type` varchar(15) DEFAULT NULL,
  `bedding` varchar(10) DEFAULT NULL,
  `place` varchar(10) DEFAULT NULL,
  `cusid` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `type`, `bedding`, `place`, `cusid`) VALUES
(1, 'VIP Room', 'Single', 'Free', NULL),
(2, 'VIP Room', 'Single', 'Free', NULL),
(3, 'VIP Room', 'Single', 'Free', NULL),
(4, 'VIP Room', 'Single', 'Free', NULL),
(5, 'VIP Room', 'Single', 'Free', NULL),
(6, 'VIP Room', 'Single', 'Free', NULL),
(7, 'VIP Room', 'Single', 'Free', NULL),
(8, 'VIP Room', 'Single', 'Free', NULL),
(9, 'VIP Room', 'Single', 'Free', NULL),
(10, 'VIP Room', 'Single', 'Free', NULL),
(11, 'VIP Room', 'Double', 'Free', NULL),
(12, 'VIP Room', 'Double', 'Free', NULL),
(13, 'VIP Room', 'Double', 'Free', NULL),
(14, 'VIP Room', 'Double', 'Free', NULL),
(15, 'VIP Room', 'Double', 'Free', NULL),
(16, 'VIP Room', 'Double', 'Free', NULL),
(17, 'VIP Room', 'Double', 'Free', NULL),
(18, 'VIP Room', 'Double', 'Free', NULL),
(19, 'VIP Room', 'Double', 'Free', NULL),
(20, 'VIP Room', 'Double', 'Free', NULL),
(21, 'VIP Room', 'Triple', 'Free', NULL),
(22, 'VIP Room', 'Triple', 'Free', NULL),
(23, 'VIP Room', 'Triple', 'Free', NULL),
(24, 'VIP Room', 'Triple', 'Free', NULL),
(25, 'VIP Room', 'Triple', 'Free', NULL),
(26, 'VIP Room', 'Triple', 'Free', NULL),
(27, 'VIP Room', 'Triple', 'Free', NULL),
(28, 'VIP Room', 'Triple', 'Free', NULL),
(29, 'VIP Room', 'Triple', 'Free', NULL),
(30, 'VIP Room', 'Triple', 'Free', NULL),
(31, 'VIP Room', 'Quad', 'Free', NULL),
(32, 'VIP Room', 'Quad', 'Free', NULL),
(33, 'VIP Room', 'Quad', 'Free', NULL),
(34, 'VIP Room', 'Quad', 'Free', NULL),
(35, 'VIP Room', 'Quad', 'Free', NULL),
(36, 'VIP Room', 'Quad', 'Free', NULL),
(37, 'VIP Room', 'Quad', 'Free', NULL),
(38, 'VIP Room', 'Quad', 'Free', NULL),
(39, 'VIP Room', 'Quad', 'Free', NULL),
(40, 'VIP Room', 'Quad', 'Free', NULL),
(41, 'Deluxe Room', 'Single', 'Free', NULL),
(42, 'Deluxe Room', 'Single', 'Free', NULL),
(43, 'Deluxe Room', 'Single', 'Free', NULL),
(44, 'Deluxe Room', 'Single', 'Free', NULL),
(45, 'Deluxe Room', 'Single', 'Free', NULL),
(46, 'Deluxe Room', 'Single', 'Free', NULL),
(47, 'Deluxe Room', 'Single', 'Free', NULL),
(48, 'Deluxe Room', 'Single', 'Free', NULL),
(49, 'Deluxe Room', 'Single', 'Free', NULL),
(50, 'Deluxe Room', 'Single', 'Free', NULL),
(51, 'Deluxe Room', 'Double', 'Free', NULL),
(52, 'Deluxe Room', 'Double', 'Free', NULL),
(53, 'Deluxe Room', 'Double', 'Free', NULL),
(54, 'Deluxe Room', 'Double', 'Free', NULL),
(55, 'Deluxe Room', 'Double', 'Free', NULL),
(56, 'Deluxe Room', 'Double', 'Free', NULL),
(57, 'Deluxe Room', 'Double', 'Free', NULL),
(58, 'Deluxe Room', 'Double', 'Free', NULL),
(59, 'Deluxe Room', 'Double', 'Free', NULL),
(60, 'Deluxe Room', 'Double', 'Free', NULL),
(61, 'Deluxe Room', 'Triple', 'Free', NULL),
(62, 'Deluxe Room', 'Triple', 'Free', NULL),
(63, 'Deluxe Room', 'Triple', 'Free', NULL),
(64, 'Deluxe Room', 'Triple', 'Free', NULL),
(65, 'Deluxe Room', 'Triple', 'Free', NULL),
(66, 'Deluxe Room', 'Triple', 'Free', NULL),
(67, 'Deluxe Room', 'Triple', 'Free', NULL),
(68, 'Deluxe Room', 'Triple', 'Free', NULL),
(69, 'Deluxe Room', 'Triple', 'Free', NULL),
(70, 'Deluxe Room', 'Triple', 'Free', NULL),
(71, 'Deluxe Room', 'Quad', 'Free', NULL),
(72, 'Deluxe Room', 'Quad', 'Free', NULL),
(73, 'Deluxe Room', 'Quad', 'Free', NULL),
(74, 'Deluxe Room', 'Quad', 'Free', NULL),
(75, 'Deluxe Room', 'Quad', 'Free', NULL),
(76, 'Deluxe Room', 'Quad', 'Free', NULL),
(77, 'Deluxe Room', 'Quad', 'Free', NULL),
(78, 'Deluxe Room', 'Quad', 'Free', NULL),
(79, 'Deluxe Room', 'Quad', 'Free', NULL),
(80, 'Deluxe Room', 'Quad', 'Free', NULL),
(81, 'Luxury Room', 'Single', 'Free', NULL),
(82, 'Luxury Room', 'Single', 'Free', NULL),
(83, 'Luxury Room', 'Single', 'Free', NULL),
(84, 'Luxury Room', 'Single', 'Free', NULL),
(85, 'Luxury Room', 'Single', 'Free', NULL),
(86, 'Luxury Room', 'Single', 'Free', NULL),
(87, 'Luxury Room', 'Single', 'Free', NULL),
(88, 'Luxury Room', 'Single', 'Free', NULL),
(89, 'Luxury Room', 'Single', 'Free', NULL),
(90, 'Luxury Room', 'Single', 'Free', NULL),
(91, 'Luxury Room', 'Double', 'Free', NULL),
(92, 'Luxury Room', 'Double', 'Free', NULL),
(93, 'Luxury Room', 'Double', 'Free', NULL),
(94, 'Luxury Room', 'Double', 'Free', NULL),
(95, 'Luxury Room', 'Double', 'Free', NULL),
(96, 'Luxury Room', 'Double', 'Free', NULL),
(97, 'Luxury Room', 'Double', 'Free', NULL),
(98, 'Luxury Room', 'Double', 'Free', NULL),
(99, 'Luxury Room', 'Double', 'Free', NULL),
(100, 'Luxury Room', 'Double', 'Free', NULL),
(101, 'Luxury Room', 'Triple', 'Free', NULL),
(102, 'Luxury Room', 'Triple', 'Free', NULL),
(103, 'Luxury Room', 'Triple', 'Free', NULL),
(104, 'Luxury Room', 'Triple', 'Free', NULL),
(105, 'Luxury Room', 'Triple', 'Free', NULL),
(106, 'Luxury Room', 'Triple', 'Free', NULL),
(107, 'Luxury Room', 'Triple', 'Free', NULL),
(108, 'Luxury Room', 'Triple', 'Free', NULL),
(109, 'Luxury Room', 'Triple', 'Free', NULL),
(110, 'Luxury Room', 'Triple', 'Free', NULL),
(111, 'Luxury Room', 'Quad', 'Free', NULL),
(112, 'Luxury Room', 'Quad', 'Free', NULL),
(113, 'Luxury Room', 'Quad', 'Free', NULL),
(114, 'Luxury Room', 'Quad', 'Free', NULL),
(115, 'Luxury Room', 'Quad', 'Free', NULL),
(116, 'Luxury Room', 'Quad', 'Free', NULL),
(117, 'Luxury Room', 'Quad', 'Free', NULL),
(118, 'Luxury Room', 'Quad', 'Free', NULL),
(119, 'Luxury Room', 'Quad', 'Free', NULL),
(120, 'Luxury Room', 'Quad', 'Free', NULL),
(131, 'Boutique Room', 'Single', 'Free', NULL),
(132, 'Boutique Room', 'Single', 'Free', NULL),
(133, 'Boutique Room', 'Single', 'Free', NULL),
(134, 'Boutique Room', 'Single', 'Free', NULL),
(135, 'Boutique Room', 'Single', 'Free', NULL),
(136, 'Boutique Room', 'Single', 'Free', NULL),
(137, 'Boutique Room', 'Single', 'Free', NULL),
(138, 'Boutique Room', 'Single', 'Free', NULL),
(139, 'Boutique Room', 'Single', 'Free', NULL),
(140, 'Boutique Room', 'Single', 'Free', NULL),
(141, 'Boutique Room', 'Double', 'Free', NULL),
(142, 'Boutique Room', 'Double', 'Free', NULL),
(143, 'Boutique Room', 'Double', 'Free', NULL),
(144, 'Boutique Room', 'Double', 'Free', NULL),
(145, 'Boutique Room', 'Double', 'Free', NULL),
(146, 'Boutique Room', 'Double', 'Free', NULL),
(147, 'Boutique Room', 'Double', 'Free', NULL),
(148, 'Boutique Room', 'Double', 'Free', NULL),
(149, 'Boutique Room', 'Double', 'Free', NULL),
(150, 'Boutique Room', 'Double', 'Free', NULL),
(151, 'Boutique Room', 'Triple', 'Free', NULL),
(152, 'Boutique Room', 'Triple', 'Free', NULL),
(153, 'Boutique Room', 'Triple', 'Free', NULL),
(154, 'Boutique Room', 'Triple', 'Free', NULL),
(155, 'Boutique Room', 'Triple', 'Free', NULL),
(156, 'Boutique Room', 'Triple', 'Free', NULL),
(157, 'Boutique Room', 'Triple', 'Free', NULL),
(158, 'Boutique Room', 'Triple', 'Free', NULL),
(159, 'Boutique Room', 'Triple', 'Free', NULL),
(160, 'Boutique Room', 'Triple', 'Free', NULL),
(161, 'Boutique Room', 'Quad', 'Free', NULL),
(162, 'Boutique Room', 'Quad', 'Free', NULL),
(163, 'Boutique Room', 'Quad', 'Free', NULL),
(164, 'Boutique Room', 'Quad', 'Free', NULL),
(165, 'Boutique Room', 'Quad', 'Free', NULL),
(166, 'Boutique Room', 'Quad', 'Free', NULL),
(167, 'Boutique Room', 'Quad', 'Free', NULL),
(168, 'Boutique Room', 'Quad', 'Free', NULL),
(169, 'Boutique Room', 'Quad', 'Free', NULL),
(170, 'Boutique Room', 'Quad', 'Free', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roombook`
--

CREATE TABLE IF NOT EXISTS `roombook` (
`id` int(10) unsigned NOT NULL,
  `Title` varchar(5) DEFAULT NULL,
  `FName` text,
  `LName` text,
  `Email` varchar(50) DEFAULT NULL,
  `National` varchar(30) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL,
  `Phone` text,
  `TRoom` varchar(20) DEFAULT NULL,
  `Bed` varchar(10) DEFAULT NULL,
  `NRoom` varchar(2) DEFAULT NULL,
  `Meal` varchar(15) DEFAULT NULL,
  `cin` date DEFAULT NULL,
  `cout` date DEFAULT NULL,
  `stat` varchar(15) DEFAULT NULL,
  `nodays` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roombook`
--
ALTER TABLE `roombook`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `roombook`
--
ALTER TABLE `roombook`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
