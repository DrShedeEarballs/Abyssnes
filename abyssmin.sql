-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 30.09.2024 klo 14:05
-- Palvelimen versio: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abyssmin`
--

-- --------------------------------------------------------

--
-- Rakenne taululle `admin`
--

CREATE TABLE `admin` (
  `adminID` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `pswrd` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vedos taulusta `admin`
--

INSERT INTO `admin` (`adminID`, `user`, `pswrd`, `email`, `phone`) VALUES
(1, 'Cheesus', 'Ghoulman', 'kimitoannae2@gmail.com', 451765900),
(5, 'God', 'hatemyson', 'god@gmail.com', 0);

-- --------------------------------------------------------

--
-- Rakenne taululle `customer`
--

CREATE TABLE `customer` (
  `CustomerID` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `strt_ad` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `postcode` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vedos taulusta `customer`
--

INSERT INTO `customer` (`CustomerID`, `username`, `pword`, `first_name`, `last_name`, `phone`, `email`, `strt_ad`, `postcode`, `city`) VALUES
(1, 'NotAnAdmin', 'mongus', 'NotWebsiteOwner', 'NuUh', '0451765900', 'nothingtoseehere@gmail.com', 'Pointytoe Road 7', '80814', 'Arcryptipelago'),
(2, 'BoingoMain', 'Banger', 'Boingo', 'Bameson', '000000000000', 'boingbames@bmail.bom', 'Beet Baddress 7', '00000', 'Bity'),
(4, 'BoingoThrowaway', '', 'Boingo', 'Bango', '169384756384', 'boingoboingoboo@gmail.com', 'Bangoboing 6', '20495', 'Bangbango'),
(5, 'littlepotatoman37', 'totobyafrica', 'Todd', 'Tater', '124567536', 'tater@gmail.com', 'Totsies 37b', '35675', 'Africa Probably'),
(6, 'dicebro', 'Nat20', 'Chad', 'Wonderwall', '295476905467', 'becausemaybe@gmail.com', 'Patrole 25', '14114', 'Critical');

-- --------------------------------------------------------

--
-- Rakenne taululle `hiring`
--

CREATE TABLE `hiring` (
  `hiringID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `workerID` int(11) NOT NULL,
  `date` date NOT NULL,
  `hours` int(255) NOT NULL,
  `full_price` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vedos taulusta `hiring`
--

INSERT INTO `hiring` (`hiringID`, `CustomerID`, `workerID`, `date`, `hours`, `full_price`) VALUES
(1, 1, 1, '2024-09-24', 3, 21);

-- --------------------------------------------------------

--
-- Rakenne taululle `hiring_final`
--

CREATE TABLE `hiring_final` (
  `hiring_finalID` int(11) NOT NULL,
  `hiringID` int(11) NOT NULL,
  `workerID` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Rakenne taululle `worker`
--

CREATE TABLE `worker` (
  `workerID` int(11) NOT NULL,
  `pfp` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `job` varchar(100) NOT NULL,
  `about` text NOT NULL,
  `rate` int(255) NOT NULL,
  `likes` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vedos taulusta `worker`
--

INSERT INTO `worker` (`workerID`, `pfp`, `name`, `genre`, `job`, `about`, `rate`, `likes`) VALUES
(1, 'jimmety_nm.png', 'Jimmety', 'Housekeeping', 'Chef', 'he does food well.', 7, 3),
(4, 'goober_s.png', 'Goober', 'QoL Assistant', 'Stylist', 'He has nice hair', 6, 0),
(6, 'drunk_miguel_nm.jpg', 'Miguel', 'Misc', 'Beer Drinker', 'Likes beer. That\'s it.', 2, 0),
(7, 'sim_nm.jpg', 'Sim-Zala', 'Misc', 'Magician', 'He is a real life wizard probably', 5, 0),
(11, 'billiam_s_nm.png', 'Billiam', 'Childcare', 'Babysitter', 'He is really nice and has a dog.', 8, 0),
(12, 'karen_s_nm.png', 'Karen', 'Misc', 'Manager Expert', 'She can easily summon a manager from whatever dimension to help with your everyday needs.', 78, 0),
(13, 'miguel_s_nm.jpg', 'Miguel', 'Housekeeping', 'Dishwasher', 'He washes dishes real good. He\'s drunk most of the time.', 8, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `hiring`
--
ALTER TABLE `hiring`
  ADD PRIMARY KEY (`hiringID`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `workerID` (`workerID`);

--
-- Indexes for table `hiring_final`
--
ALTER TABLE `hiring_final`
  ADD PRIMARY KEY (`hiring_finalID`),
  ADD KEY `hiringID` (`hiringID`),
  ADD KEY `workerID` (`workerID`);

--
-- Indexes for table `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`workerID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hiring`
--
ALTER TABLE `hiring`
  MODIFY `hiringID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hiring_final`
--
ALTER TABLE `hiring_final`
  MODIFY `hiring_finalID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `worker`
--
ALTER TABLE `worker`
  MODIFY `workerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
