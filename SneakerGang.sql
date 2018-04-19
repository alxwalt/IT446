-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 18, 2018 at 10:27 PM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `SneakerGang`
--

-- --------------------------------------------------------

--
-- Table structure for table `Address`
--

CREATE TABLE `Address` (
  `Line1` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `ZIP` int(5) NOT NULL,
  `CustomerID` int(12) NOT NULL,
  `OrderID` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

CREATE TABLE `Admin` (
  `userID` int(12) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `LoggedIn` int(1) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Admin`
--

INSERT INTO `Admin` (`userID`, `Username`, `FirstName`, `LastName`, `LoggedIn`, `Password`) VALUES
(1, 'testUser', 'test', 'User', 1, '65p702WfL&T$');

-- --------------------------------------------------------

--
-- Table structure for table `Athlete`
--

CREATE TABLE `Athlete` (
  `AthName` varchar(50) NOT NULL,
  `BName` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Brand`
--

CREATE TABLE `Brand` (
  `BName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Credit Card`
--

CREATE TABLE `Credit Card` (
  `CardNumber` int(16) NOT NULL,
  `Brand` varchar(50) NOT NULL,
  `OrderID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
--

CREATE TABLE `Customer` (
  `CustomerID` int(12) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `PhoneNumber` varchar(10) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Customer`
--

INSERT INTO `Customer` (`CustomerID`, `FirstName`, `LastName`, `PhoneNumber`, `Username`, `Password`) VALUES
(1, 'Alex', 'Walters', '2315191647', 'waltersax', 'chocolate'),
(2, 'Taylor', 'Fahlen', '2315190647', 'fahlentr', 'riggins'),
(3, 'Jacob', 'Wilde', '2313359825', 'wildejb', 'butterfly'),
(4, 'Nathaniel', 'Walters', '2316745806', 'waltersnl', 'mcBuckets');

-- --------------------------------------------------------

--
-- Table structure for table `Orders`
--

CREATE TABLE `Orders` (
  `OrderID` int(12) NOT NULL,
  `ProductID` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `ShoeNames`
--
CREATE TABLE `ShoeNames` (
`Name` varchar(50)
,`Price` int(12)
);

-- --------------------------------------------------------

--
-- Table structure for table `Shoes`
--

CREATE TABLE `Shoes` (
  `ProductID` int(12) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Price` int(12) NOT NULL,
  `Color` varchar(50) NOT NULL,
  `Weight` int(12) NOT NULL,
  `UpperHeight` int(12) NOT NULL,
  `Size` decimal(5,1) NOT NULL,
  `Quantity` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Shoes`
--

INSERT INTO `Shoes` (`ProductID`, `Name`, `Price`, `Color`, `Weight`, `UpperHeight`, `Size`, `Quantity`) VALUES
(6, 'CP3 X', 120, 'Red', 5, 5, '10.0', 2),
(7, 'Huarache', 150, 'Red', 5, 5, '10.0', 2),
(8, 'KD X', 150, 'Black', 5, 5, '10.0', 2),
(9, 'KD X', 150, 'Black', 5, 5, '10.5', 2),
(10, 'KD X', 150, 'Black', 5, 5, '11.0', 2),
(11, 'Kobe 6', 180, 'Orange', 4, 7, '10.0', 2),
(12, 'Kobe 6', 180, 'Orange', 4, 7, '10.5', 2),
(13, 'Kobe 6', 180, 'Orange', 4, 7, '11.0', 2),
(14, 'Jordan XXXI', 165, 'Red', 2, 7, '10.0', 2),
(15, 'Jordan XXXI', 165, 'Red', 2, 7, '10.5', 2),
(16, 'Jordan XXXI', 165, 'Red', 2, 7, '11.0', 2),
(17, 'Kyrie II', 125, 'Green', 2, 8, '10.0', 2),
(18, 'Kyrie II', 125, 'Green', 2, 8, '10.5', 2),
(19, 'Kyrie II', 125, 'Green', 2, 8, '11.0', 2),
(20, 'Jordan XXXII', 185, 'Blue', 2, 78, '10.0', 2),
(21, 'Jordan XXXII', 185, 'Blue', 2, 78, '10.5', 2),
(22, 'Jordan XXXII', 185, 'Blue', 2, 78, '11.0', 2),
(23, 'Lebron XV', 145, 'Blue', 2, 3, '10.0', 2),
(24, 'Lebron XV', 145, 'Blue', 2, 3, '10.5', 2),
(25, 'Lebron XV', 145, 'Blue', 2, 3, '11.0', 2),
(26, 'Nike Kyrie', 0, 'Yellow', 2, 3, '10.0', 2),
(27, 'Nike Kyrie', 0, 'Yellow', 2, 3, '10.5', 2),
(28, 'Nike Kyrie', 0, 'Yellow', 2, 3, '11.0', 2);

--
-- Triggers `Shoes`
--
DELIMITER $$
CREATE TRIGGER `priceCheck` BEFORE INSERT ON `Shoes` FOR EACH ROW IF
NEW.price < 0 THEN SET NEW.price = 0; END IF
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure for view `ShoeNames`
--
DROP TABLE IF EXISTS `ShoeNames`;

CREATE ALGORITHM=UNDEFINED DEFINER=`testUser`@`%` SQL SECURITY DEFINER VIEW `ShoeNames`  AS  select `Shoes`.`Name` AS `Name`,`Shoes`.`Price` AS `Price` from `Shoes` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Address`
--
ALTER TABLE `Address`
  ADD PRIMARY KEY (`Line1`);

--
-- Indexes for table `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `Credit Card`
--
ALTER TABLE `Credit Card`
  ADD PRIMARY KEY (`CardNumber`);

--
-- Indexes for table `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `Shoes`
--
ALTER TABLE `Shoes`
  ADD PRIMARY KEY (`ProductID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Customer`
--
ALTER TABLE `Customer`
  MODIFY `CustomerID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Shoes`
--
ALTER TABLE `Shoes`
  MODIFY `ProductID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
