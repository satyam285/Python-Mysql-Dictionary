-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2019 at 10:12 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `python_dictionary`
--

-- --------------------------------------------------------

--
-- Table structure for table `dictionary`
--

CREATE TABLE `dictionary` (
  `words` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dictionary`
--

INSERT INTO `dictionary` (`words`) VALUES
('a'),
('all'),
('already'),
('always'),
('and'),
('at'),
('australia'),
('awards'),
('be'),
('beaten'),
('before'),
('but'),
('call'),
('caps'),
('centuries'),
('class'),
('country'),
('cup'),
('did'),
('different'),
('double'),
('else'),
('every'),
('everything'),
('first-ever'),
('for'),
('game'),
('god'),
('had'),
('he'),
('highest'),
('him'),
('his'),
('ignoring'),
('in'),
('innings'),
('innumerable'),
('it'),
('just'),
('justified'),
('landmark'),
('like'),
('made'),
('man'),
('many'),
('match'),
('most'),
('night'),
('no'),
('number'),
('odi'),
('of'),
('one'),
('or'),
('other'),
('our'),
('prime'),
('pure'),
('remembered'),
('runs'),
('sachins'),
('scored'),
('semifinal'),
('series'),
('sharjah'),
('something'),
('special'),
('stands'),
('staying'),
('tendulkar'),
('that'),
('the'),
('things'),
('this'),
('those'),
('to'),
('ton'),
('tri-series'),
('up'),
('us'),
('was'),
('wasnt'),
('watch'),
('we'),
('where'),
('why'),
('will'),
('witnessed'),
('won'),
('world');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dictionary`
--
ALTER TABLE `dictionary`
  ADD PRIMARY KEY (`words`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
