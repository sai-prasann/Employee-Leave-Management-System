-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2024 at 04:05 PM
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
-- Database: `elmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'admin@123', '2024-03-26 07:08:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `EmployRole` varchar(150) DEFAULT NULL,
  `EmployRoleShortName` varchar(100) DEFAULT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `EmployRole`, `EmployRoleShortName`, `DepartmentCode`, `CreationDate`) VALUES
(1, 'Project Head', 'PH', 'HR01', '2023-08-31 14:50:20'),
(2, 'Project Manager', 'PM', 'IT01', '2023-08-31 14:50:56'),
(3, 'Engineer', 'EN', 'ACCNT01', '2023-08-31 14:51:26');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `id` int(11) NOT NULL,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(150) DEFAULT NULL,
  `LastName` varchar(150) DEFAULT NULL,
  `EmailId` varchar(200) DEFAULT NULL,
  `Password` varchar(180) DEFAULT NULL,
  `Gender` varchar(100) DEFAULT NULL,
  `Dob` varchar(100) DEFAULT NULL,
  `Department` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(200) DEFAULT NULL,
  `Country` varchar(150) DEFAULT NULL,
  `Phonenumber` char(11) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `EmpId`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`) VALUES
(1, '10805121', 'Rahul', 'Kumar', 'rk1995@test.com', '444', 'Male', '3 August, 1995', 'MD', 'A 123 XYZ Apartment ', 'New Delhi', 'India', '12121212', 1, '2023-08-31 14:56:23'),
(2, '10235612', 'Garima', 'Yadav', 'grama123@gmail.com', '333', 'Female', '2 January, 1997', 'Project Head', 'Hno 123 ABC Colony', 'New Delhi', 'India', '7485963210', 1, '2023-08-31 15:02:47'),
(5, '7856214', 'John', 'Doe', 'jhn12@gmail.com', '657', 'Male', '3 January, 1995', 'Engineer', 'H no 1', 'Ghaziabad ', 'India', '23232323', 1, '2023-09-01 11:38:23'),
(6, '39876', 'Pavan', 'Kumar', 'pavan1@gmail.com', '111', 'Male', '4 August, 1997', 'Project Manager', 'Akkayyapalem', 'Vishakhapatnam', 'India', '7770389127', 1, '2024-03-26 07:11:55'),
(7, '44923', 'Sriram', 'Cheedi', 'sriram4@gmail.com', '999', 'Male', '10 March, 2003', 'Project Head', 'Akkayyapalem', 'Vishakhapatnam', 'India', '8830194638', 1, '2024-03-26 07:45:32'),
(8, '78302', 'Nikhil', 'Reddy', 'nikhil@gmail.com', '555', 'Male', '28 March, 2002', 'Project Manager', 'Akkayyapalem', 'Vishakhapatnam', 'India', '9931755639', 1, '2024-03-26 13:30:14'),
(9, '87639', 'Kalyan', 'Naidu', 'kalyan@gmail.com', 'kalyan', 'Male', '10 March, 2003', 'Project Head', 'Akkayyapalem', 'Vishakhapatnam', 'India', '8302785432', 1, '2024-03-26 15:01:18');

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves`
--

CREATE TABLE `tblleaves` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) DEFAULT NULL,
  `ToDate` varchar(120) DEFAULT NULL,
  `FromDate` varchar(120) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `IsRead` int(1) DEFAULT NULL,
  `empid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `empid`) VALUES
(11, 'Casual Leaves', '17/09/2023', '10/09/2023', 'I need leave to visit my home town. ', '2023-08-31 15:06:21', 'Approved', '2023-08-31 20:39:40 ', 1, 1, 1),
(12, 'Casual Leaves', '15/09/2023', '09/09/2023', 'Need casual leaves for some personal work.', '2023-09-01 11:42:40', 'Leave approved', '2023-09-01 17:13:20 ', 1, 1, 5),
(13, 'Casual Leaves', '26/03/2024', '23/03/2024', 'out of station', '2024-03-23 11:15:51', 'granted', '2024-03-26 19:23:59 ', 1, 1, 5),
(14, 'Casual Leaves', '17/04/2024', '12/01/2024', 'out of station', '2024-03-26 07:17:26', NULL, NULL, 2, 0, NULL),
(15, 'Casual Leaves', '12/05/2024', '12/01/2024', 'out of station', '2024-03-26 13:34:34', 'granted', '2024-03-26 19:11:15 ', 1, 1, 2),
(16, 'Casual Leaves', '17/04/2024', '12/01/2024', 'out of station', '2024-03-26 13:44:21', 'granted', '2024-03-26 19:17:56 ', 1, 1, 6),
(17, 'Casual Leaves', '19/05/2024', '12/05/2024', 'out of station', '2024-03-26 13:50:11', 'not granted', '2024-03-26 19:22:47 ', 2, 1, 5),
(18, 'Casual Leaves', '29-03-24', '12/01/2024', 'out of station', '2024-03-26 14:49:18', NULL, NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `date` varchar(11) DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `date`) VALUES
(1, 'Casual Leaves', 'Casual Leaves', '12'),
(2, 'Earned Leaves', 'Earned Leaves', '2147483647'),
(3, 'Sick Leaves', 'Sick Leaves', '2147483647'),
(4, 'Privilege Leaves', 'Privilege Leaves', '2147483647');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblleaves`
--
ALTER TABLE `tblleaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblleaves`
--
ALTER TABLE `tblleaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
