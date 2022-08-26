-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2022 at 05:33 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accountingsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `accsys`
--

CREATE TABLE `accsys` (
  `ID` int(10) NOT NULL,
  `Account_Name` varchar(255) NOT NULL,
  `Account_Number` int(255) NOT NULL,
  `Account_Description` varchar(255) NOT NULL,
  `Payment_Status` text NOT NULL,
  `Account_Status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accsys`
--

INSERT INTO `accsys` (`ID`, `Account_Name`, `Account_Number`, `Account_Description`, `Payment_Status`, `Account_Status`) VALUES
(0, '', 0, '', '', ''),
(6, '', 0, '', '', ''),
(65, '', 0, '', '', ''),
(101, 'pete', 1000, 'none', '', ''),
(102, 'pete 2', 10001, 'none 1', '', ''),
(103, 'pete 3', 1003, 'none 3', '', ''),
(105, 'pete 5', 0, '', '', ''),
(107, 'pete 7', 1007, 'none 7', '', ''),
(108, 'pete 8', 1008, 'none 8', '', ''),
(109, 'pete 10', 1009, 'none 9', '', ''),
(110, 'pete 10', 1010, 'none 10', 'Completed', ''),
(123, '', 0, '', '', ''),
(1004, 'pete 4', 1004, 'none 5', '', ''),
(1006, 'pete 6', 1006, 'none 6', '', ''),
(1234, 'asdfgh', 1212121, 'n one', '', ''),
(2001, 'word', 20001, 'none', 'Completed', 'Activated'),
(3434, 'rtt', 345, 'fdgg', 'Completed', 'Activated'),
(4566, 'ghghh', 3456, 'ghhj', 'Pending', 'Activated'),
(9876, 'rttttrt', 345, 'fdgg', 'Completed', 'Activated'),
(11111, 'abbcac', 12315, 'asa', '', ''),
(12333, '', 0, '', '', ''),
(12345, '', 2147483647, '', '', ''),
(34567, 'vbnmk', 345, 'fdgg', 'Completed', 'Activated'),
(123333, '', 0, '', '', ''),
(123456777, '', 0, '', '', ''),
(1111111111, 'abbcac', 12315, 'asa', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `employeetable`
--

CREATE TABLE `employeetable` (
  `Employee_Id` int(255) NOT NULL,
  `Employee_Name` text NOT NULL,
  `Bank_Name` varchar(255) NOT NULL,
  `Bank_IFSC` varchar(255) NOT NULL,
  `Account_Number` int(255) NOT NULL,
  `Amount` int(255) NOT NULL,
  `Payment_Status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `traineetable`
--

CREATE TABLE `traineetable` (
  `Id` int(255) NOT NULL,
  `Trainee_Name` text NOT NULL,
  `Trainee_Type` text NOT NULL,
  `Program_Type` text NOT NULL,
  `College_Name` text NOT NULL,
  `Batch_Name` varchar(255) NOT NULL,
  `Start_Date` date NOT NULL,
  `End_Date` date NOT NULL,
  `Amount` int(255) NOT NULL,
  `Payment_Status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Store Traine Payment data';

-- --------------------------------------------------------

--
-- Table structure for table `trainertable`
--

CREATE TABLE `trainertable` (
  `Id` int(255) NOT NULL,
  `Trainer_Name` text NOT NULL,
  `Training_Type` varchar(255) NOT NULL,
  `Batch_Name` varchar(255) NOT NULL,
  `Start_date` date NOT NULL,
  `End_date` date NOT NULL,
  `Number_of_Candidate` int(255) NOT NULL,
  `Actual_Amount` int(255) NOT NULL,
  `Percentage_paid` int(255) NOT NULL,
  `Amount_Paid` int(255) NOT NULL,
  `Payment_Status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='To store trainer payment details(paid to trainer)';

--
-- Dumping data for table `trainertable`
--

INSERT INTO `trainertable` (`Id`, `Trainer_Name`, `Training_Type`, `Batch_Name`, `Start_date`, `End_date`, `Number_of_Candidate`, `Actual_Amount`, `Percentage_paid`, `Amount_Paid`, `Payment_Status`) VALUES
(0, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 0, ''),
(1, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 0, ''),
(8, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 0, ''),
(1001, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 0, ''),
(1250, 'pete 31', 'Workshop', 'none', '2022-08-18', '2022-09-02', 25, 1250, 10, 125, 'Activated');

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `Name` varchar(255) NOT NULL,
  `Email_Id` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`Name`, `Email_Id`, `Password`) VALUES
('sriram', 'paga@gmail.com', 'hello123'),
('tarun', 'tar@gmail.com', 'pass123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accsys`
--
ALTER TABLE `accsys`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `traineetable`
--
ALTER TABLE `traineetable`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `trainertable`
--
ALTER TABLE `trainertable`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `traineetable`
--
ALTER TABLE `traineetable`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
