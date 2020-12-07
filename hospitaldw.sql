-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2020 at 08:02 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitaldw`
--

-- --------------------------------------------------------

--
-- Table structure for table `affiliated_with`
--

CREATE TABLE `affiliated_with` (
  `Physician` int(11) NOT NULL,
  `Department` int(11) NOT NULL,
  `PrimaryAffiliation` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `affiliated_with`
--

INSERT INTO `affiliated_with` (`Physician`, `Department`, `PrimaryAffiliation`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 0),
(4, 1, 1),
(5, 1, 1),
(6, 2, 1),
(7, 2, 1),
(8, 1, 1),
(9, 3, 1),
(10, 11, 0),
(11, 7, 1),
(12, 8, 1),
(13, 6, 1),
(14, 8, 0),
(15, 9, 1),
(16, 5, 1),
(17, 3, 1),
(18, 10, 1),
(19, 3, 1),
(20, 5, 1),
(21, 8, 1),
(22, 11, 1),
(23, 4, 1),
(24, 12, 1),
(25, 10, 1),
(26, 10, 1),
(27, 5, 1),
(28, 6, 1),
(29, 6, 1),
(30, 4, 1),
(31, 4, 1),
(32, 6, 1),
(33, 6, 1),
(34, 7, 1),
(35, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `AppointmentID` int(11) NOT NULL,
  `Patient` int(11) NOT NULL,
  `PrepNurse` int(11) DEFAULT NULL,
  `Physician` int(11) NOT NULL,
  `Start` datetime NOT NULL,
  `End` datetime NOT NULL,
  `ExaminationRoom` text NOT NULL,
  `AppointmentCost` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`AppointmentID`, `Patient`, `PrepNurse`, `Physician`, `Start`, `End`, `ExaminationRoom`, `AppointmentCost`) VALUES
(1, 100000001, 101, 1, '2008-04-24 10:00:00', '2008-04-24 11:00:00', 'A', '200'),
(2, 100000002, 101, 2, '2008-04-24 10:00:00', '2008-04-24 11:00:00', 'B', '200'),
(3, 100000004, 103, 4, '2008-04-25 10:00:00', '2008-04-25 11:00:00', 'B', '200'),
(4, 100000004, 101, 4, '2008-04-26 10:00:00', '2008-04-26 11:00:00', 'C', '200'),
(5, 100000003, 103, 2, '2008-04-26 11:00:00', '2008-04-26 12:00:00', 'C', '200'),
(6, 100000001, 103, 3, '2008-04-26 12:00:00', '2008-04-26 13:00:00', 'C', '200'),
(7, 100000004, 102, 9, '2008-04-27 10:00:00', '2008-04-27 11:00:00', 'A', '200'),
(8, 100000002, 101, 2, '2008-04-27 10:00:00', '2008-04-27 11:00:00', 'B', '200'),
(9, 100000014, 114, 4, '2019-08-12 10:00:00', '2019-08-12 11:00:00', 'F', '200'),
(10, 100000081, 111, 9, '2019-08-12 10:00:00', '2019-08-12 11:00:00', 'M', '200'),
(11, 100000070, 115, 19, '2019-08-12 10:00:00', '2019-08-12 11:00:00', 'H', '150'),
(12, 100000024, 116, 35, '2019-08-12 10:00:00', '2019-08-12 11:00:00', 'C', '150'),
(13, 100000061, 104, 8, '2019-08-12 10:00:00', '2019-08-12 11:00:00', 'G', '150'),
(14, 100000064, 113, 15, '2019-08-12 10:00:00', '2019-08-12 11:00:00', 'B', '150'),
(15, 100000076, 119, 28, '2019-08-12 10:00:00', '2019-08-12 11:00:00', 'A', '150'),
(16, 100000070, 119, 34, '2019-08-12 10:00:00', '2019-08-12 11:00:00', 'L', '150'),
(17, 100000037, 107, 26, '2019-08-12 10:00:00', '2019-08-12 11:00:00', 'J', '150'),
(18, 100000022, 114, 1, '2019-08-12 10:00:00', '2019-08-12 11:00:00', 'K', '150'),
(19, 100000104, 117, 12, '2019-08-12 10:00:00', '2019-08-12 11:00:00', 'D', '150'),
(20, 100000060, 108, 11, '2019-08-14 12:00:00', '2019-08-14 13:00:00', 'F', '150'),
(21, 100000030, 114, 13, '2019-08-14 12:00:00', '2019-08-14 13:00:00', 'M', '200'),
(22, 100000085, 104, 22, '2019-08-14 12:00:00', '2019-08-14 13:00:00', 'F', '200'),
(23, 100000026, 120, 18, '2019-08-14 12:00:00', '2019-08-14 13:00:00', 'L', '200'),
(24, 100000047, 101, 6, '2019-08-14 12:00:00', '2019-08-14 13:00:00', 'K', '200'),
(25, 100000025, 113, 12, '2019-08-14 12:00:00', '2019-08-14 13:00:00', 'G', '200'),
(26, 100000011, 112, 28, '2019-08-14 12:00:00', '2019-08-14 13:00:00', 'I', '200'),
(27, 100000085, 107, 7, '2019-08-14 12:00:00', '2019-08-14 13:00:00', 'J', '200'),
(28, 100000016, 119, 12, '2019-08-20 15:00:00', '2019-08-20 17:30:00', 'B', '200'),
(29, 100000025, 107, 29, '2019-08-20 15:00:00', '2019-08-20 17:30:00', 'C', '200'),
(30, 100000038, 114, 21, '2019-08-20 15:00:00', '2019-08-20 17:30:00', 'K', '200'),
(31, 100000054, 113, 8, '2019-08-20 15:00:00', '2019-08-20 17:30:00', 'G', '500'),
(32, 100000009, 104, 1, '2019-08-20 15:00:00', '2019-08-20 17:30:00', 'M', '500'),
(33, 100000101, 108, 15, '2019-08-20 15:00:00', '2019-08-20 17:30:00', 'E', '500'),
(34, 100000039, 113, 6, '2019-08-20 15:00:00', '2019-08-20 17:30:00', 'D', '500'),
(35, 100000006, 110, 7, '2019-09-12 15:00:00', '2019-09-12 16:00:00', 'H', '500'),
(36, 100000067, 115, 19, '2019-09-12 15:00:00', '2019-09-12 16:00:00', 'L', '500'),
(37, 100000090, 102, 3, '2019-09-12 15:00:00', '2019-09-12 16:00:00', 'J', '500'),
(38, 100000080, 104, 19, '2019-09-12 15:00:00', '2019-09-12 16:00:00', 'L', '500'),
(39, 100000041, 106, 4, '2019-09-12 15:00:00', '2019-09-12 16:00:00', 'I', '500'),
(40, 100000104, 107, 30, '2019-09-12 15:00:00', '2019-09-12 16:00:00', 'M', '500'),
(41, 100000074, 120, 28, '2019-09-15 11:00:00', '2019-09-15 12:00:00', 'L', '150'),
(42, 100000096, 108, 6, '2019-09-15 11:00:00', '2019-09-15 12:00:00', 'E', '150'),
(43, 100000032, 114, 30, '2019-09-15 11:00:00', '2019-09-15 12:00:00', 'D', '150'),
(44, 100000004, 110, 20, '2019-09-15 11:00:00', '2019-09-15 12:00:00', 'I', '150'),
(45, 100000048, 117, 4, '2019-09-15 11:00:00', '2019-09-15 12:00:00', 'J', '150'),
(46, 100000007, 114, 32, '2019-09-15 11:00:00', '2019-09-15 12:00:00', 'G', '150'),
(47, 100000104, 115, 5, '2019-09-15 11:00:00', '2019-09-15 12:00:00', 'A', '150'),
(48, 100000058, 112, 14, '2019-09-15 11:00:00', '2019-09-15 12:00:00', 'H', '150'),
(49, 100000079, 118, 32, '2019-09-15 11:00:00', '2019-09-15 12:00:00', 'B', '150'),
(50, 100000034, 116, 26, '2019-10-01 13:00:00', '2019-10-01 14:30:00', 'A', '150'),
(51, 100000094, 101, 13, '2019-10-01 13:00:00', '2019-10-01 14:30:00', 'G', '150'),
(52, 100000017, 114, 12, '2019-10-01 13:00:00', '2019-10-01 14:30:00', 'C', '150'),
(53, 100000040, 117, 16, '2019-10-01 13:00:00', '2019-10-01 14:30:00', 'M', '150'),
(54, 100000082, 107, 28, '2019-10-01 13:00:00', '2019-10-01 14:30:00', 'K', '150'),
(55, 100000068, 110, 1, '2019-10-01 13:00:00', '2019-10-01 14:30:00', 'E', '150'),
(56, 100000075, 111, 23, '2019-11-15 13:00:00', '2019-11-15 14:30:00', 'J', '750'),
(57, 100000064, 113, 22, '2019-11-15 13:00:00', '2019-11-15 14:30:00', 'M', '750'),
(58, 100000041, 112, 31, '2019-11-15 13:00:00', '2019-11-15 14:30:00', 'L', '750'),
(59, 100000035, 119, 10, '2019-11-30 11:00:00', '2019-11-30 12:30:00', 'B', '750'),
(60, 100000101, 105, 31, '2019-11-30 11:00:00', '2019-11-30 12:30:00', 'J', '750'),
(61, 100000069, 101, 25, '2019-11-30 11:00:00', '2019-11-30 12:30:00', 'H', '750'),
(62, 100000005, 118, 6, '2019-11-30 11:00:00', '2019-11-30 12:30:00', 'D', '750'),
(63, 100000009, 101, 20, '2019-11-30 11:00:00', '2019-11-30 12:30:00', 'C', '750'),
(64, 100000090, 104, 26, '2019-12-05 11:00:00', '2019-12-05 12:30:00', 'D', '750'),
(65, 100000051, 104, 27, '2019-12-05 11:00:00', '2019-12-05 12:30:00', 'M', '750'),
(66, 100000047, 110, 4, '2019-12-05 11:00:00', '2019-12-05 12:30:00', 'B', '550'),
(67, 100000035, 110, 10, '2019-12-05 11:00:00', '2019-12-05 12:30:00', 'F', '550'),
(68, 100000081, 115, 20, '2019-12-11 12:00:00', '2019-12-11 13:30:00', 'H', '550'),
(69, 100000055, 109, 2, '2019-12-11 12:00:00', '2019-12-11 13:30:00', 'B', '550'),
(70, 100000074, 119, 23, '2019-12-11 12:00:00', '2019-12-11 13:30:00', 'L', '550'),
(71, 100000102, 108, 25, '2019-12-11 12:00:00', '2019-12-11 13:30:00', 'C', '550'),
(72, 100000095, 111, 7, '2019-12-11 12:00:00', '2019-12-11 13:30:00', 'A', '550'),
(73, 100000078, 105, 4, '2019-12-11 12:00:00', '2019-12-11 13:30:00', 'K', '550'),
(74, 100000022, 119, 10, '2019-12-11 12:00:00', '2019-12-11 13:30:00', 'I', '550'),
(75, 100000044, 111, 31, '2019-12-11 12:00:00', '2019-12-11 13:30:00', 'D', '550'),
(76, 100000076, 108, 7, '2019-12-11 12:00:00', '2019-12-11 13:30:00', 'E', '550'),
(77, 100000049, 110, 12, '2019-12-14 15:00:00', '2019-12-14 15:30:00', 'B', '550'),
(78, 100000099, 111, 33, '2019-12-14 15:00:00', '2019-12-14 15:30:00', 'I', '550'),
(79, 100000096, 115, 3, '2019-12-14 15:00:00', '2019-12-14 15:30:00', 'F', '550'),
(80, 100000047, 109, 32, '2019-12-14 15:00:00', '2019-12-14 15:30:00', 'L', '550'),
(81, 100000003, 120, 27, '2019-12-14 15:00:00', '2019-12-14 15:30:00', 'D', '900'),
(82, 100000034, 115, 10, '2019-12-14 15:00:00', '2019-12-14 15:30:00', 'E', '900'),
(83, 100000010, 120, 25, '2019-12-14 15:00:00', '2019-12-14 15:30:00', 'A', '900'),
(84, 100000025, 113, 21, '2019-12-14 15:00:00', '2019-12-14 15:30:00', 'K', '900'),
(85, 100000080, 104, 21, '2019-12-14 15:00:00', '2019-12-14 15:30:00', 'G', '900'),
(86, 100000004, 110, 29, '2019-01-05 15:00:00', '2019-01-05 17:00:00', 'M', '900'),
(87, 100000077, 115, 5, '2019-01-05 15:00:00', '2019-01-05 17:00:00', 'F', '900'),
(88, 100000012, 110, 15, '2019-01-05 15:00:00', '2019-01-05 17:00:00', 'J', '900'),
(89, 100000062, 110, 27, '2019-01-05 15:00:00', '2019-01-05 17:00:00', 'B', '900'),
(90, 100000103, 113, 29, '2019-01-05 15:00:00', '2019-01-05 17:00:00', 'D', '900'),
(91, 100000020, 103, 26, '2019-01-05 15:00:00', '2019-01-05 17:00:00', 'C', '430'),
(92, 100000033, 110, 21, '2019-01-05 15:00:00', '2019-01-05 17:00:00', 'E', '430'),
(93, 100000003, 101, 2, '2019-01-05 15:00:00', '2019-01-05 17:00:00', 'A', '430'),
(94, 100000061, 110, 4, '2019-01-05 15:00:00', '2019-01-05 17:00:00', 'I', '430'),
(95, 100000080, 114, 10, '2019-01-05 15:00:00', '2019-01-05 17:00:00', 'H', '430'),
(96, 100000023, 108, 18, '2019-01-10 15:00:00', '2019-01-10 17:00:00', 'F', '430'),
(97, 100000053, 111, 18, '2019-01-10 15:00:00', '2019-01-10 17:00:00', 'J', '430'),
(98, 100000011, 116, 19, '2019-01-10 15:00:00', '2019-01-10 17:00:00', 'A', '430'),
(99, 100000091, 113, 31, '2019-01-10 15:00:00', '2019-01-10 17:00:00', 'G', '430'),
(100, 100000095, 110, 6, '2019-01-10 15:00:00', '2019-01-10 17:00:00', 'N', '430'),
(101, 100000101, 101, 30, '2019-01-10 15:00:00', '2019-01-10 17:00:00', 'O', '430'),
(102, 100000044, 112, 3, '2019-01-10 15:00:00', '2019-01-10 17:00:00', 'M', '430'),
(103, 100000021, 103, 32, '2019-01-10 15:00:00', '2019-01-10 17:00:00', 'B', '430'),
(104, 100000024, 106, 7, '2019-01-10 15:00:00', '2019-01-10 17:00:00', 'H', '430'),
(105, 100000018, 106, 6, '2019-01-10 15:00:00', '2019-01-10 17:00:00', 'D', '430'),
(106, 100000037, 118, 18, '2019-01-10 15:00:00', '2019-01-10 17:00:00', 'I', '430'),
(107, 100000007, 112, 13, '2019-01-10 15:00:00', '2019-01-10 17:00:00', 'E', '430'),
(108, 100000103, 116, 30, '2019-01-15 10:00:00', '2019-01-15 12:00:00', 'I', '430'),
(109, 100000063, 115, 4, '2019-01-15 10:00:00', '2019-01-15 12:00:00', 'G', '430'),
(110, 100000027, 103, 2, '2019-01-15 10:00:00', '2019-01-15 12:00:00', 'K', '430'),
(111, 100000079, 113, 4, '2019-01-15 10:00:00', '2019-01-15 12:00:00', 'H', '430'),
(112, 100000065, 110, 2, '2019-01-25 10:00:00', '2019-01-25 12:00:00', 'P', '430'),
(113, 100000070, 109, 32, '2019-01-25 10:00:00', '2019-01-25 12:00:00', 'D', '430'),
(114, 100000016, 102, 14, '2019-01-25 10:00:00', '2019-01-25 12:00:00', 'G', '430'),
(115, 100000039, 101, 23, '2019-01-25 10:00:00', '2019-01-25 12:00:00', 'O', '430'),
(116, 100000013, 102, 33, '2019-01-25 10:00:00', '2019-01-25 12:00:00', 'A', '430'),
(117, 100000094, 110, 7, '2019-01-25 10:00:00', '2019-01-25 12:00:00', 'B', '430');

-- --------------------------------------------------------

--
-- Table structure for table `block`
--

CREATE TABLE `block` (
  `BlockFloor` int(11) NOT NULL,
  `BlockCode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `block`
--

INSERT INTO `block` (`BlockFloor`, `BlockCode`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `BrandID` char(4) NOT NULL,
  `BrandName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`BrandID`, `BrandName`) VALUES
('BR01', 'X'),
('BR02', 'Foo Labs'),
('BR03', 'Bar Laboratories'),
('BR04', 'Baz Industries'),
('BR05', 'Snafu Pharmaceuticals');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DepartmentID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Head` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DepartmentID`, `Name`, `Head`) VALUES
(1, 'General Medicine', 4),
(2, 'Surgery', 7),
(3, 'Psychiatry', 9),
(4, 'Radiology', 23),
(5, 'Mother Child', 16),
(6, 'Intensive Care Unit', 13),
(7, 'Pathology', 11),
(8, 'Physical Therapy', 12),
(9, 'Neurology', 15),
(10, 'Cardiology', 18),
(11, 'Urology', 22),
(12, 'Dermatology', 24);

-- --------------------------------------------------------

--
-- Table structure for table `dim_patient`
--

CREATE TABLE `dim_patient` (
  `patientID` int(11) NOT NULL,
  `name` tinytext NOT NULL,
  `phone` text NOT NULL,
  `insuranceID` int(11) NOT NULL,
  `PCP` int(11) NOT NULL,
  `umur` int(11) NOT NULL,
  `gender` char(1) NOT NULL,
  `isFromAbroad` char(1) NOT NULL,
  `area` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dim_physician`
--

CREATE TABLE `dim_physician` (
  `physicianid` int(11) NOT NULL,
  `nama` tinytext NOT NULL,
  `status` tinytext NOT NULL,
  `position` tinytext NOT NULL,
  `ssn` int(11) NOT NULL,
  `department` tinytext NOT NULL,
  `area` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dim_procedures`
--

CREATE TABLE `dim_procedures` (
  `procedureid` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dim_room`
--

CREATE TABLE `dim_room` (
  `number` int(11) NOT NULL,
  `type` text NOT NULL,
  `BlockFloor` int(11) NOT NULL,
  `BlockCode` int(11) NOT NULL,
  `Unavailable` char(1) NOT NULL,
  `RoomTypeID` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dim_waktu`
--

CREATE TABLE `dim_waktu` (
  `dateid` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `month` tinytext NOT NULL,
  `quarter` int(2) NOT NULL,
  `year` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `factrawatinap`
--

CREATE TABLE `factrawatinap` (
  `factID` int(11) NOT NULL,
  `totalBiaya` bigint(20) NOT NULL,
  `roomNumber` int(11) NOT NULL,
  `procedureID` int(11) NOT NULL,
  `patientID` int(11) NOT NULL,
  `physicianID` int(11) NOT NULL,
  `dateID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `medication`
--

CREATE TABLE `medication` (
  `Code` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `BrandID` char(4) NOT NULL,
  `Price` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medication`
--

INSERT INTO `medication` (`Code`, `Name`, `BrandID`, `Price`) VALUES
(1, 'Procrastin-X', 'BR01', '5'),
(2, 'Thesisin', 'BR02', '10'),
(3, 'Awakin', 'BR02', '25'),
(4, 'Crescavitin', 'BR04', '55'),
(5, 'Melioraurin', 'BR05', '55'),
(6, 'Ibuprofen', 'BR02', '18'),
(7, 'Imbruvica', 'BR02', '30'),
(8, 'Meloxicam', 'BR02', '60'),
(9, 'Lexapro', 'BR02', '35'),
(10, 'Fluoxetine', 'BR02', '30'),
(11, 'Duloxetine', 'BR02', '60'),
(12, 'Escitalopram', 'BR02', '35'),
(13, 'Contrast media', 'BR02', '30'),
(14, 'Vasoactives', 'BR02', '18'),
(15, 'Analgesics', 'BR02', '18'),
(16, 'Antimicrobials', 'BR02', '18'),
(17, 'Gastric motility sedatives', 'BR02', '35'),
(18, 'Aspirin', 'BR02', '18'),
(19, 'Cloxacillin Cephalosporins', 'BR02', '18'),
(20, 'Tetracyclines', 'BR02', '18'),
(21, 'Sulphonamides', 'BR02', '35'),
(22, 'Dihydrocodeine', 'BR02', '60'),
(23, 'Temazepam', 'BR02', '60'),
(24, 'Fentanyl', 'BR02', '18'),
(25, 'Carbamazepine', 'BR01', '55'),
(26, 'Ethosuximide', 'BR02', '30'),
(27, 'Retigabine', 'BR02', '18'),
(28, 'Topiramate', 'BR02', '18'),
(29, 'Pregabalin', 'BR02', '60'),
(30, 'Acebutolol', 'BR02', '30'),
(31, 'Betaxolol', 'BR02', '35'),
(32, 'Propranolol', 'BR02', '35'),
(33, 'Nadolol', 'BR02', '18'),
(34, 'Metoprolol', 'BR02', '18'),
(35, 'Sildenafil', 'BR02', '30'),
(36, 'Trospium', 'BR02', '60'),
(37, 'Alfuzosin', 'BR01', '55'),
(38, 'Oxybutynin', 'BR02', '60'),
(39, 'Tolterodine', 'BR02', '60'),
(40, 'Darifenacin', 'BR02', '18'),
(41, 'Follitropin', 'BR02', '35'),
(42, 'Urofollitropin', 'BR02', '30'),
(43, 'Ethanol', 'BR02', '35');

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `EmployeeID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Position` varchar(30) NOT NULL,
  `Registered` tinyint(1) NOT NULL,
  `SSN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`EmployeeID`, `Name`, `Position`, `Registered`, `SSN`) VALUES
(101, 'Carla Espinosa', 'Head Nurse', 1, 111111110),
(102, 'Laverne Roberts', 'Nurse', 1, 222222220),
(103, 'Paul Flowers', 'Nurse', 0, 333333330),
(104, 'Lunea Frazier', 'Head Nurse', 1, 333333331),
(105, 'Jessica Dorsey', 'Nurse', 1, 333333332),
(106, 'Hoyt Marquez', 'Nurse', 1, 333333333),
(107, 'Hadassah Dickson', 'Nurse', 1, 333333334),
(108, 'Rafael Black', 'Nurse', 1, 333333335),
(109, 'Kennan Hurley', 'Nurse', 1, 333333336),
(110, 'Ulric Stout', 'Nurse', 1, 333333337),
(111, 'Idona Dodson', 'Nurse', 0, 333333338),
(112, 'Kamal Reynolds', 'Nurse', 0, 333333339),
(113, 'Wayne Wiley', 'Nurse', 1, 333333340),
(114, 'Channing Leblanc', 'Head Nurse', 1, 333333341),
(115, 'Knox Livingston', 'Nurse', 1, 333333342),
(116, 'Melvin Larson', 'Head Nurse', 1, 333333343),
(117, 'Emerald England', 'Head Nurse', 1, 333333344),
(118, 'Luke Lloyd', 'Nurse', 0, 333333345),
(119, 'Jorden Simpson', 'Nurse', 1, 333333346),
(120, 'Ahmed Sweet', 'Nurse', 0, 333333347);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `SSN` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Phone` varchar(30) NOT NULL,
  `InsuranceID` int(11) NOT NULL,
  `PCP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`SSN`, `Name`, `Address`, `Phone`, `InsuranceID`, `PCP`) VALUES
(100000001, 'John Smith', '42 Foobar Lane', '555-0256', 68476213, 1),
(100000002, 'Grace Ritchie', '37 Snafu Drive', '555-0512', 36546321, 2),
(100000003, 'Random J. Patient', '101 Omgbbq Street', '555-1204', 65465421, 2),
(100000004, 'Dennis Doe', '1100 Foobaz Avenue', '555-2048', 68421879, 3),
(100000005, 'Damian Hays', '156-2656 Ornare Av.', '136-7328', 68421880, 31),
(100000006, 'Karly Jackson', '975-5765 Ac Avenue', '010-2391', 68421881, 19),
(100000007, 'Kato Luna', '643-4443 Cursus. Rd.', '860-3924', 68421882, 16),
(100000008, 'Xandra Skinner', '492-149 Viverra. Street', '760-0449', 68421883, 29),
(100000009, 'Anthony Moses', '819-6082 A Street', '320-2649', 68421884, 4),
(100000010, 'Daryl Decker', 'Ap #914-7548 Cursus St.', '203-3315', 68421885, 23),
(100000011, 'Zelda Macias', '9418 Ac Rd.', '226-1378', 68421886, 24),
(100000012, 'Guy Cash', '996-3237 Aliquet. St.', '448-3875', 68421887, 25),
(100000013, 'Dolan Hamilton', '2930 Molestie St.', '136-0958', 68421888, 18),
(100000014, 'Thane Byers', 'P.O. Box 615, 7599 Semper St.', '860-2025', 68421889, 17),
(100000015, 'Boris Howard', '906-8071 Orci St.', '252-1109', 68421890, 5),
(100000016, 'Elizabeth Chan', '9900 Eget Road', '076-7364', 68421891, 30),
(100000017, 'Jelani Snow', '960-2567 Urna. Rd.', '491-8057', 68421892, 29),
(100000018, 'Scott Levy', 'Ap #449-3704 Fringilla Road', '565-4449', 68421893, 7),
(100000019, 'Maris Tillman', 'Ap #347-131 Sit Ave', '948-4057', 68421894, 21),
(100000020, 'Mara Walton', '5709 Justo Rd.', '222-5502', 68421895, 35),
(100000021, 'Jackson Beck', '6255 Massa. Avenue', '020-3493', 68421896, 22),
(100000022, 'Darius Cooper', 'Ap #960-4409 Mauris Rd.', '868-4161', 68421897, 26),
(100000023, 'Dillon Hess', '2301 Amet Rd.', '055-4215', 68421898, 33),
(100000024, 'Daniel Chambers', '618 Ultrices Av.', '906-1257', 68421899, 14),
(100000025, 'Stephanie Mueller', 'Ap #573-2893 Massa. Street', '758-8606', 68421900, 8),
(100000026, 'Garrett Massey', 'Ap #980-4115 At, Ave', '085-5007', 68421901, 24),
(100000027, 'Gay Olson', 'Ap #439-9506 Laoreet, Street', '415-9560', 68421902, 33),
(100000028, 'Xaviera Noble', '731-8219 Aliquet St.', '392-0206', 68421903, 15),
(100000029, 'Montana Weaver', 'Ap #710-5526 A, St.', '815-8804', 68421904, 7),
(100000030, 'Clarke Pennington', '2821 Ridiculus Street', '177-5796', 68421905, 35),
(100000031, 'Roanna Gentry', 'P.O. Box 266, 1853 Scelerisque', '689-0008', 68421906, 27),
(100000032, 'Lev Schneider', '4116 Magna. St.', '551-6013', 68421907, 31),
(100000033, 'Troy Underwood', '3330 Nibh. St.', '857-4502', 68421908, 31),
(100000034, 'Zelda Sherman', 'P.O. Box 429, 7338 Nam Ave', '082-7403', 68421909, 26),
(100000035, 'Jesse Kerr', '677-1698 Justo Ave', '520-6690', 68421910, 5),
(100000036, 'Tashya Martin', '297-6150 Velit. Rd.', '992-7095', 68421911, 29),
(100000037, 'Dominic Moran', '561-2490 Ac Ave', '120-5936', 68421912, 11),
(100000038, 'Colorado Massey', '8601 Erat St.', '940-3349', 68421913, 19),
(100000039, 'Jamal Dickson', '883-1729 Semper. Ave', '517-0124', 68421914, 14),
(100000040, 'Lynn Juarez', '3393 Dolor Rd.', '744-5123', 68421915, 28),
(100000041, 'Austin Lindsey', 'P.O. Box 745, 3393 Pulvinar Av', '898-5019', 68421916, 17),
(100000042, 'Vivien Melendez', '638-7555 Morbi Av.', '993-5490', 68421917, 16),
(100000043, 'Merritt Howell', 'Ap #424-1895 Dui Ave', '458-3638', 68421918, 24),
(100000044, 'Tatum Livingston', 'P.O. Box 215, 9497 Justo Ave', '361-6793', 68421919, 18),
(100000045, 'Tashya Mendez', 'Ap #773-7842 Tempor Avenue', '143-4973', 68421920, 10),
(100000046, 'Naomi Conway', '991-9863 Integer St.', '959-5430', 68421921, 14),
(100000047, 'Clark Giles', '951-4646 Dictum. Av.', '596-7761', 68421922, 4),
(100000048, 'Jocelyn Rollins', 'P.O. Box 642, 5967 Dui St.', '649-5796', 68421923, 7),
(100000049, 'Carl Prince', '4884 Ultrices Rd.', '360-8619', 68421924, 33),
(100000050, 'Keane Mckinney', 'Ap #720-4584 Enim Rd.', '115-4196', 68421925, 22),
(100000051, 'Adrienne Foley', '959-6534 Posuere Av.', '918-2745', 68421926, 11),
(100000052, 'Noelle Mcclure', 'P.O. Box 107, 7420 Nunc Ave', '454-6452', 68421927, 16),
(100000053, 'Montana Kaufman', 'Ap #848-3035 Quam Rd.', '045-9140', 68421928, 28),
(100000054, 'Hamish Farley', '895-9905 Nec Ave', '425-9480', 68421929, 28),
(100000055, 'Mikayla Hebert', '3515 Ullamcorper, St.', '593-8052', 68421930, 1),
(100000056, 'Winter Peck', 'Ap #997-8390 Nullam St.', '525-5040', 68421931, 22),
(100000057, 'Sopoline Clayton', '933-6221 Lectus, Av.', '389-7295', 68421932, 25),
(100000058, 'Amir Madden', '727-5043 Proin Av.', '761-0978', 68421933, 7),
(100000059, 'Glenna Contreras', '464-2592 Sodales St.', '183-8958', 68421934, 29),
(100000060, 'Nasim Carroll', '1955 Mauris. Road', '822-6176', 68421935, 5),
(100000061, 'Mariko Kirkland', 'P.O. Box 835, 836 Quisque Av.', '065-1857', 68421936, 16),
(100000062, 'Timon Holmes', 'P.O. Box 889, 3566 Eget St.', '520-8106', 68421937, 22),
(100000063, 'Palmer Quinn', '354-8004 Mauris Street', '578-9933', 68421938, 32),
(100000064, 'Alma Wiggins', 'P.O. Box 585, 2796 Eu Ave', '015-0460', 68421939, 23),
(100000065, 'Quincy Smith', '910-7007 Gravida Av.', '055-1805', 68421940, 5),
(100000066, 'Azalia Alston', 'P.O. Box 747, 2039 Tempor, St.', '317-0137', 68421941, 32),
(100000067, 'Lareina Ratliff', 'P.O. Box 314, 5242 Sem Road', '007-2548', 68421942, 20),
(100000068, 'Adena Whitaker', '7486 Consectetuer Road', '874-5171', 68421943, 21),
(100000069, 'Autumn Mcfadden', '765-4770 Mauris Avenue', '237-5096', 68421944, 2),
(100000070, 'Otto Walker', 'P.O. Box 615, 9901 Proin St.', '843-1006', 68421945, 32),
(100000071, 'Illana Duke', '349-2412 Sed, Rd.', '373-1072', 68421946, 13),
(100000072, 'Anne Larsen', '447-7398 Sem, St.', '796-5920', 68421947, 23),
(100000073, 'Burke Bradshaw', '5717 Nam St.', '357-1988', 68421948, 24),
(100000074, 'Cameron Clay', '1667 Urna. Avenue', '463-3346', 68421949, 21),
(100000075, 'Myles Lott', 'Ap #299-3208 Taciti Ave', '782-5751', 68421950, 21),
(100000076, 'Duncan Huber', '389 Libero. Road', '935-1029', 68421951, 35),
(100000077, 'Dylan Brown', '746-9985 Lacus. Street', '538-5767', 68421952, 20),
(100000078, 'Amal Velasquez', '513-2360 Quis Rd.', '407-6084', 68421953, 23),
(100000079, 'Kyla Ray', 'Ap #368-6233 Tellus St.', '942-6027', 68421954, 26),
(100000080, 'Gay Beard', 'P.O. Box 804, 2864 Natoque Rd.', '308-6101', 68421955, 25),
(100000081, 'Xerxes Browning', '736-1523 Et Rd.', '786-5441', 68421956, 10),
(100000082, 'Asher Stanley', 'P.O. Box 694, 6194 Fringilla A', '695-9415', 68421957, 31),
(100000083, 'Neve Harrison', '673-5937 Id Avenue', '548-0900', 68421958, 30),
(100000084, 'Craig Tran', '978-3036 Semper Rd.', '728-7989', 68421959, 24),
(100000085, 'Reuben Burgess', '938 Enim Rd.', '952-1926', 68421960, 22),
(100000086, 'Brianna Abbott', 'P.O. Box 225, 3145 Suscipit St', '252-6313', 68421961, 2),
(100000087, 'Clio Stanton', '7714 Et Rd.', '622-6400', 68421962, 4),
(100000088, 'George Morales', '952-6477 Habitant St.', '175-9048', 68421963, 25),
(100000089, 'Meghan Stafford', 'Ap #856-1275 Nunc, Rd.', '676-7976', 68421964, 20),
(100000090, 'Preston Clemons', '578-2058 Non, Avenue', '019-7007', 68421965, 34),
(100000091, 'Porter Fowler', '4397 Sit St.', '816-0910', 68421966, 30),
(100000092, 'Judith Newton', 'P.O. Box 877, 1385 Fermentum R', '280-5749', 68421967, 25),
(100000093, 'Linda Hogan', 'P.O. Box 172, 6371 Dui St.', '853-7325', 68421968, 12),
(100000094, 'Jane Adams', 'Ap #658-2243 Magna Av.', '611-2089', 68421969, 26),
(100000095, 'Jane Daniels', 'Ap #702-9417 Amet, Rd.', '822-2670', 68421970, 6),
(100000096, 'Gisela Middleton', '975-5195 Accumsan Road', '221-0312', 68421971, 28),
(100000097, 'Leilani Cortez', '4868 Elit Rd.', '918-2847', 68421972, 24),
(100000098, 'Indira Hickman', 'P.O. Box 973, 5876 Elit Ave', '856-1389', 68421973, 9),
(100000099, 'Hedley Gutierrez', '532-2364 Sit Avenue', '517-0875', 68421974, 14),
(100000100, 'Jacob Flores', '5765 Imperdiet Rd.', '050-1252', 68421975, 28),
(100000101, 'Troy Joseph', 'Ap #987-3561 Amet Street', '542-7519', 68421976, 29),
(100000102, 'Murphy Watts', '725-6461 Ridiculus Av.', '723-3569', 68421977, 3),
(100000103, 'Clinton Foreman', '6318 Arcu. Rd.', '267-8604', 68421978, 33),
(100000104, 'Jillian Wood', 'P.O. Box 922, 1851 Non Avenue', '007-2188', 68421979, 21);

-- --------------------------------------------------------

--
-- Table structure for table `physician`
--

CREATE TABLE `physician` (
  `EmployeeID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Position` text NOT NULL,
  `SSN` int(11) NOT NULL,
  `Status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `physician`
--

INSERT INTO `physician` (`EmployeeID`, `Name`, `Position`, `SSN`, `Status`) VALUES
(1, 'John Dorian', 'Staff Internist', 111111111, 'Training'),
(2, 'Elliot Reid', 'Attending Physician', 222222222, 'Senior'),
(3, 'Christopher Turk', 'Surgical Attending Physician', 333333333, 'Senior'),
(4, 'Percival Cox', 'Senior Attending Physician', 444444444, 'Senior'),
(5, 'Bob Kelso', 'Head Chief of Medicine', 555555555, 'Senior'),
(6, 'Todd Quinlan', 'Surgical Attending Physician', 666666666, 'Senior'),
(7, 'John Wen', 'Surgical Attending Physician', 777777777, 'Senior'),
(8, 'Keith Dudemeister', 'MD Resident', 888888888, 'Training'),
(9, 'Molly Clock', 'Attending Psychiatrist', 999999999, 'Senior'),
(10, 'Victor Miller', 'Junior Urologist', 999999998, 'Training'),
(11, 'Kate Martin', 'Senior Pathologist', 999999998, 'Senior'),
(12, 'Victoria Roberts', 'Senior Physical Therapist', 999999996, 'Senior'),
(13, 'Rafael Cunningham', 'Head of ICU', 999999995, 'Senior'),
(14, 'Sarah Bailey', 'Surgical Attending Physician', 999999994, 'Training'),
(15, 'Brianna Myers', 'Senior Neurologist', 999999993, 'Senior'),
(16, 'Adelaide Clark', 'Head of Mother and Child', 999999992, 'Senior'),
(17, 'John Evans', 'Attending Psychiatrist', 777777771, 'Training'),
(18, 'Wilson Harris', 'Senior Cardiologist', 777777772, 'Senior'),
(19, 'Alfred Mitchell', 'Attending Psychiatrist', 777777773, 'Training'),
(20, 'Robert Walker', 'Staff Internist', 777777774, 'Senior'),
(21, 'Stuart Hill', 'Surgical Attending Physician', 777777775, 'Senior'),
(22, 'Frederick Walker', 'Senior Urologist', 777777776, 'Senior'),
(23, 'Jenny Clark', 'Senior Radiologist', 777777778, 'Senior'),
(24, 'Tony Robinson', 'Senior Dermatologist', 777777779, 'Senior'),
(25, 'Ryan Tucker', 'MD Resident', 222222221, 'Training'),
(26, 'Aldus Robinson', 'Senior Attending Physician', 222222223, 'Senior'),
(27, 'Jack Baker', 'MD Resident', 222222224, 'Training'),
(28, 'Sawyer Douglas', 'Senior Attending Physician', 222222225, 'Senior'),
(29, 'James Perkins', 'Surgical Attending Physician', 222222226, 'Senior'),
(30, 'Carla May', 'Junior Radiologist', 222222287, 'Training'),
(31, 'Sally Doe', 'Junior Radiologist', 222222244, 'Training'),
(32, 'Dominik Johnsonn', 'Staff Intensive Care Unit Staff', 222222276, 'Senior'),
(33, 'Pablo del Sol', 'Junior Intensive Care Unit Staff', 222222244, 'Training'),
(34, 'Diana Peterson', 'Senior Pathologist', 222222204, 'Senior'),
(35, 'Raj Dewata', 'Junior Neurologist', 222222209, 'Training');

-- --------------------------------------------------------

--
-- Table structure for table `prescribes`
--

CREATE TABLE `prescribes` (
  `Medication` int(11) NOT NULL,
  `Appointment` int(11) NOT NULL,
  `Dose` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prescribes`
--

INSERT INTO `prescribes` (`Medication`, `Appointment`, `Dose`) VALUES
(38, 115, '1'),
(38, 113, '10'),
(26, 111, '9'),
(16, 110, '8'),
(38, 109, '9'),
(11, 108, '5'),
(2, 105, '2'),
(35, 104, '6'),
(23, 100, '8'),
(6, 99, '9'),
(23, 98, '6'),
(5, 97, '6'),
(21, 96, '3'),
(4, 95, '6'),
(4, 94, '3'),
(27, 93, '7'),
(15, 91, '7'),
(31, 90, '6'),
(6, 89, '9'),
(36, 82, '7'),
(20, 81, '3'),
(17, 80, '10'),
(16, 78, '8'),
(22, 77, '9'),
(24, 76, '3'),
(28, 75, '8'),
(18, 74, '3'),
(39, 73, '3'),
(22, 72, '2'),
(37, 68, '4'),
(39, 66, '8'),
(11, 65, '9'),
(19, 63, '1'),
(29, 62, '10'),
(9, 60, '9'),
(42, 59, '3'),
(39, 55, '4'),
(28, 54, '1'),
(30, 53, '9'),
(9, 51, '10'),
(32, 50, '5'),
(26, 49, '3'),
(10, 47, '3'),
(18, 46, '4'),
(38, 41, '5'),
(27, 39, '7'),
(22, 39, '6'),
(31, 38, '2'),
(10, 37, '2'),
(33, 34, '2'),
(17, 33, '10'),
(1, 30, '9'),
(22, 29, '8'),
(15, 27, '5'),
(43, 26, '7'),
(23, 25, '3'),
(37, 24, '3'),
(33, 23, '10'),
(21, 21, '5'),
(36, 20, '9'),
(27, 18, '8'),
(6, 17, '6'),
(36, 14, '9'),
(21, 13, '2'),
(1, 12, '5'),
(31, 11, '7'),
(8, 9, '5'),
(14, 1, '3');

-- --------------------------------------------------------

--
-- Table structure for table `procedures`
--

CREATE TABLE `procedures` (
  `Code` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Cost` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `procedures`
--

INSERT INTO `procedures` (`Code`, `Name`, `Cost`) VALUES
(1, 'Reverse Rhinopodoplasty', 15000),
(2, 'Obtuse Pyloric Recombobulation', 3750),
(3, 'Folded Demiophtalmectomy', 4500),
(4, 'Complete Walletectomy', 10000),
(5, 'Obfuscated Dermogastrotomy', 4899500),
(6, 'Reversible Pancreomyoplasty', 5600250),
(7, 'Follicular Demiectomy', 250),
(8, 'Mother and Child C-Section', 65000),
(9, 'Mother and Child IVF', 235000),
(10, 'Mother and Child Stem Cell', 135000),
(11, 'Radiology CT Scan', 85000),
(12, 'Radiology PET Scan', 15000),
(13, 'Radiology MRI', 17000),
(14, 'ICU Central Venous Lines', 8000),
(15, 'ICU Endotracheal Intubation', 7500),
(16, 'ICU Endotracheal Intubation', 7500),
(17, 'Pathology Procedure 1', 6700),
(18, 'Pathology Procedure 2', 8900),
(19, 'Pathology Procedure 3', 9900),
(20, 'PT Mobilization', 600),
(21, 'PT Therapeutic Massage', 800),
(22, 'PT Myofascial Release', 950),
(23, 'PT Postural Training', 1950),
(24, 'PT Neuromuscular reeducation', 2550),
(25, 'Neuro Electromyography', 2550),
(26, 'Neuro Tensilon Test', 550),
(27, 'Neuro Electroencephalogram', 950),
(28, 'Neuro Sleep Study', 750),
(29, 'Cardio Coronary angioplasty', 1550),
(30, 'Cardio Thrombolytic therapy', 5550),
(31, 'Cardio Artificial pacemaker su', 7550),
(32, 'Cardio Heart valve surgery', 10550),
(33, 'Urology Nephrectomy', 3500),
(34, 'Urology Pyeloplasty', 5500),
(35, 'Urology Ureteral reimplants', 7500),
(36, 'Derma Photodynamic therapy', 5500),
(37, 'Derma Mohs micrographic surger', 6500),
(38, 'Derma Cryosurgery', 2500),
(39, 'Derma Topical chemotherapy', 10500);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `RoomNumber` int(11) NOT NULL,
  `RoomTypeID` char(6) NOT NULL,
  `BlockFloor` int(11) NOT NULL,
  `BlockCode` int(11) NOT NULL,
  `Unavailable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`RoomNumber`, `RoomTypeID`, `BlockFloor`, `BlockCode`, `Unavailable`) VALUES
(100, 'ROOM01', 1, 1, 0),
(101, 'ROOM01', 1, 1, 0),
(102, 'ROOM01', 1, 1, 0),
(103, 'ROOM01', 1, 1, 0),
(104, 'ROOM01', 1, 1, 0),
(105, 'ROOM01', 1, 1, 0),
(106, 'ROOM01', 1, 2, 0),
(107, 'ROOM01', 1, 2, 1),
(108, 'ROOM01', 1, 2, 0),
(109, 'ROOM01', 1, 2, 0),
(110, 'ROOM01', 1, 2, 0),
(111, 'ROOM01', 1, 3, 0),
(112, 'ROOM01', 1, 3, 0),
(113, 'ROOM01', 1, 3, 0),
(114, 'ROOM02', 1, 3, 0),
(115, 'ROOM02', 1, 3, 0),
(116, 'ROOM02', 1, 3, 0),
(117, 'ROOM03', 1, 3, 0),
(118, 'ROOM03', 1, 3, 0),
(119, 'ROOM03', 1, 3, 0),
(120, 'ROOM01', 2, 1, 1),
(121, 'ROOM01', 2, 1, 0),
(122, 'ROOM01', 2, 1, 0),
(123, 'ROOM02', 2, 1, 0),
(124, 'ROOM02', 2, 1, 0),
(125, 'ROOM02', 2, 1, 0),
(126, 'ROOM02', 2, 1, 0),
(127, 'ROOM02', 2, 1, 0),
(128, 'ROOM02', 2, 1, 0),
(129, 'ROOM02', 2, 1, 0),
(130, 'ROOM01', 2, 2, 0),
(131, 'ROOM01', 2, 2, 0),
(132, 'ROOM01', 2, 2, 0),
(133, 'ROOM01', 2, 2, 0),
(134, 'ROOM01', 2, 2, 0),
(135, 'ROOM01', 2, 2, 0),
(136, 'ROOM01', 2, 2, 1),
(137, 'ROOM03', 2, 3, 0),
(138, 'ROOM03', 2, 3, 0),
(139, 'ROOM03', 2, 3, 0),
(140, 'ROOM03', 2, 3, 0),
(141, 'ROOM03', 2, 3, 0),
(142, 'ROOM01', 3, 1, 0),
(143, 'ROOM01', 3, 1, 1),
(144, 'ROOM01', 3, 1, 0),
(145, 'ROOM01', 3, 1, 0),
(146, 'ROOM01', 3, 1, 0),
(147, 'ROOM01', 3, 1, 0),
(148, 'ROOM02', 3, 1, 0),
(149, 'ROOM02', 3, 1, 0),
(150, 'ROOM02', 3, 1, 0),
(151, 'ROOM02', 3, 1, 0),
(152, 'ROOM02', 3, 1, 0),
(153, 'ROOM01', 3, 2, 0),
(154, 'ROOM01', 3, 2, 0),
(155, 'ROOM01', 3, 2, 0),
(156, 'ROOM01', 3, 2, 0),
(157, 'ROOM01', 3, 2, 0),
(158, 'ROOM01', 3, 2, 0),
(159, 'ROOM01', 3, 3, 1),
(160, 'ROOM01', 3, 3, 0),
(161, 'ROOM01', 3, 3, 0),
(162, 'ROOM02', 3, 3, 0),
(163, 'ROOM02', 3, 3, 0),
(164, 'ROOM02', 3, 3, 0),
(165, 'ROOM02', 3, 3, 0),
(166, 'ROOM02', 3, 3, 0),
(167, 'ROOM03', 3, 3, 0),
(168, 'ROOM03', 3, 3, 0),
(169, 'ROOM03', 3, 3, 0),
(170, 'ROOM03', 3, 3, 0),
(171, 'ROOM01', 4, 1, 0),
(172, 'ROOM01', 4, 1, 0),
(173, 'ROOM01', 4, 1, 1),
(174, 'ROOM01', 4, 1, 0),
(175, 'ROOM01', 4, 1, 0),
(176, 'ROOM01', 4, 2, 0),
(177, 'ROOM01', 4, 2, 0),
(178, 'ROOM01', 4, 2, 0),
(179, 'ROOM01', 4, 2, 0),
(180, 'ROOM01', 4, 3, 1),
(181, 'ROOM01', 4, 3, 0),
(182, 'ROOM01', 4, 3, 0),
(183, 'ROOM01', 4, 3, 0),
(184, 'ROOM01', 4, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `RoomTypeID` char(6) NOT NULL,
  `RoomTypeName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`RoomTypeID`, `RoomTypeName`) VALUES
('ROOM01', 'Single'),
('ROOM02', 'Double'),
('ROOM03', 'VIP');

-- --------------------------------------------------------

--
-- Table structure for table `stay`
--

CREATE TABLE `stay` (
  `StayID` int(11) NOT NULL,
  `Patient` int(11) NOT NULL,
  `Room` int(11) NOT NULL,
  `StayStart` datetime NOT NULL,
  `StayEnd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stay`
--

INSERT INTO `stay` (`StayID`, `Patient`, `Room`, `StayStart`, `StayEnd`) VALUES
(1, 100000001, 111, '2008-05-01 00:00:00', '2008-05-04 00:00:00'),
(2, 100000003, 123, '2008-05-03 00:00:00', '2008-05-14 00:00:00'),
(3, 100000004, 112, '2008-05-02 00:00:00', '2008-05-03 00:00:00'),
(4, 100000001, 120, '2020-01-02 00:00:00', '2020-01-05 00:00:00'),
(5, 100000007, 131, '2019-12-14 00:00:00', '2019-12-18 00:00:00'),
(6, 100000008, 132, '2019-11-25 00:00:00', '2019-11-27 00:00:00'),
(7, 100000008, 175, '2020-01-02 00:00:00', '2020-01-05 00:00:00'),
(8, 100000011, 149, '2020-01-02 00:00:00', '2020-01-08 00:00:00'),
(9, 100000011, 151, '2019-10-25 00:00:00', '2019-10-27 00:00:00'),
(10, 100000013, 107, '2020-01-02 00:00:00', '2020-01-08 00:00:00'),
(11, 100000014, 184, '2019-12-14 00:00:00', '2019-12-18 00:00:00'),
(12, 100000015, 101, '2019-11-25 00:00:00', '2019-11-27 00:00:00'),
(13, 100000018, 145, '2019-10-25 00:00:00', '2019-10-27 00:00:00'),
(14, 100000019, 134, '2019-08-15 00:00:00', '2019-08-20 00:00:00'),
(15, 100000021, 116, '2019-08-18 00:00:00', '2019-08-25 00:00:00'),
(16, 100000023, 159, '2019-10-10 00:00:00', '2019-10-14 00:00:00'),
(17, 100000028, 140, '2019-09-18 00:00:00', '2019-09-25 00:00:00'),
(18, 100000028, 173, '2019-11-25 00:00:00', '2019-11-27 00:00:00'),
(19, 100000032, 119, '2020-01-02 00:00:00', '2020-01-05 00:00:00'),
(20, 100000035, 117, '2019-12-14 00:00:00', '2019-12-18 00:00:00'),
(21, 100000035, 125, '2019-10-25 00:00:00', '2019-10-27 00:00:00'),
(22, 100000096, 131, '2019-12-14 00:00:00', '2019-12-18 00:00:00'),
(23, 100000100, 180, '2019-12-14 00:00:00', '2019-12-18 00:00:00'),
(24, 100000036, 141, '2019-09-18 00:00:00', '2019-09-25 00:00:00'),
(25, 100000037, 164, '2019-11-25 00:00:00', '2019-11-27 00:00:00'),
(26, 100000045, 175, '2019-08-18 00:00:00', '2019-08-25 00:00:00'),
(27, 100000047, 173, '2019-10-10 00:00:00', '2019-10-14 00:00:00'),
(28, 100000048, 108, '2019-12-24 00:00:00', '2019-12-26 00:00:00'),
(29, 100000049, 131, '2019-10-10 00:00:00', '2019-10-14 00:00:00'),
(30, 100000049, 171, '2019-11-25 00:00:00', '2019-11-27 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `undergoes`
--

CREATE TABLE `undergoes` (
  `Patient` int(11) NOT NULL,
  `Procedures` int(11) NOT NULL,
  `Stay` int(11) NOT NULL,
  `Date` datetime NOT NULL,
  `Physician` int(11) NOT NULL,
  `AssistingNurse` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `undergoes`
--

INSERT INTO `undergoes` (`Patient`, `Procedures`, `Stay`, `Date`, `Physician`, `AssistingNurse`) VALUES
(100000001, 23, 4, '2020-01-03 00:00:00', 8, 102),
(100000001, 28, 1, '2008-05-02 00:00:00', 19, 107),
(100000007, 5, 2, '2008-05-08 00:00:00', 32, 120),
(100000008, 11, 6, '2019-11-26 00:00:00', 26, 107),
(100000008, 16, 15, '2019-08-20 00:00:00', 31, 105),
(100000008, 21, 7, '2020-01-03 00:00:00', 31, 105),
(100000011, 15, 8, '2020-01-06 00:00:00', 4, 117),
(100000011, 33, 9, '2019-12-15 00:00:00', 4, 110),
(100000013, 13, 10, '2020-01-05 00:00:00', 19, 120),
(100000014, 8, 11, '2019-12-15 00:00:00', 34, 109),
(100000018, 39, 13, '2019-10-25 00:00:00', 11, 107),
(100000019, 16, 14, '2019-08-17 00:00:00', 16, 107),
(100000021, 11, 12, '2019-11-26 00:00:00', 26, 119),
(100000023, 37, 16, '2019-10-12 00:00:00', 7, 107),
(100000028, 19, 18, '2019-11-25 00:00:00', 10, 112),
(100000028, 29, 17, '2019-09-20 00:00:00', 18, 117),
(100000032, 37, 19, '2020-01-04 00:00:00', 1, 105),
(100000034, 35, 3, '2008-05-02 00:00:00', 22, 118),
(100000035, 17, 21, '2019-10-25 00:00:00', 9, 115),
(100000035, 20, 20, '2019-12-16 00:00:00', 29, 115),
(100000036, 17, 24, '2019-11-26 00:00:00', 31, 119),
(100000037, 8, 25, '2019-12-15 00:00:00', 14, 117),
(100000045, 31, 26, '2019-12-15 00:00:00', 35, 115),
(100000047, 16, 27, '2019-10-10 00:00:00', 9, 116),
(100000048, 25, 28, '2019-12-24 00:00:00', 33, 117),
(100000049, 13, 29, '2019-10-10 00:00:00', 30, 112),
(100000049, 21, 30, '2019-11-26 00:00:00', 35, 108),
(100000069, 22, 5, '2019-12-16 00:00:00', 8, 106),
(100000096, 13, 22, '2019-08-16 00:00:00', 6, 101),
(100000100, 27, 23, '2019-12-16 00:00:00', 19, 105);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `affiliated_with`
--
ALTER TABLE `affiliated_with`
  ADD PRIMARY KEY (`Physician`,`Department`),
  ADD KEY `fk_Affiliated_With_Department_DepartmentID` (`Department`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`AppointmentID`),
  ADD KEY `fk_Appointment_Patient_SSN` (`Patient`),
  ADD KEY `fk_Appointment_Nurse_EmployeeID` (`PrepNurse`),
  ADD KEY `fk_Appointment_Physician_EmployeeID` (`Physician`);

--
-- Indexes for table `block`
--
ALTER TABLE `block`
  ADD PRIMARY KEY (`BlockFloor`,`BlockCode`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`BrandID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DepartmentID`),
  ADD KEY `fk_Department_Physician_EmployeeID` (`Head`);

--
-- Indexes for table `dim_patient`
--
ALTER TABLE `dim_patient`
  ADD PRIMARY KEY (`patientID`);

--
-- Indexes for table `factrawatinap`
--
ALTER TABLE `factrawatinap`
  ADD PRIMARY KEY (`factID`);

--
-- Indexes for table `medication`
--
ALTER TABLE `medication`
  ADD PRIMARY KEY (`Code`),
  ADD KEY `fk_Brand_ID` (`BrandID`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`SSN`),
  ADD KEY `fk_Patient_Physician_EmployeeID` (`PCP`);

--
-- Indexes for table `physician`
--
ALTER TABLE `physician`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `prescribes`
--
ALTER TABLE `prescribes`
  ADD KEY `fk_PrescribesMed_Medication_Code` (`Medication`),
  ADD KEY `fk_PrescribesMed_Appointment_AppointmentID` (`Appointment`);

--
-- Indexes for table `procedures`
--
ALTER TABLE `procedures`
  ADD PRIMARY KEY (`Code`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`RoomNumber`),
  ADD KEY `fk_Room_Block_PK` (`BlockFloor`,`BlockCode`),
  ADD KEY `fk_Room_Type` (`RoomTypeID`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`RoomTypeID`);

--
-- Indexes for table `stay`
--
ALTER TABLE `stay`
  ADD PRIMARY KEY (`StayID`),
  ADD KEY `fk_Stay_Patient_SSN` (`Patient`),
  ADD KEY `fk_Stay_Room_Number` (`Room`);

--
-- Indexes for table `undergoes`
--
ALTER TABLE `undergoes`
  ADD PRIMARY KEY (`Patient`,`Procedures`,`Stay`,`Date`),
  ADD KEY `fk_Undergoes_Procedures_Code` (`Procedures`),
  ADD KEY `fk_Undergoes_Stay_StayID` (`Stay`),
  ADD KEY `fk_Undergoes_Physician_EmployeeID` (`Physician`),
  ADD KEY `fk_Undergoes_Nurse_EmployeeID` (`AssistingNurse`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `AppointmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `medication`
--
ALTER TABLE `medication`
  MODIFY `Code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `affiliated_with`
--
ALTER TABLE `affiliated_with`
  ADD CONSTRAINT `fk_Affiliated_With_Department_DepartmentID` FOREIGN KEY (`Department`) REFERENCES `department` (`DepartmentID`),
  ADD CONSTRAINT `fk_Affiliated_With_Physician_EmployeeID` FOREIGN KEY (`Physician`) REFERENCES `physician` (`EmployeeID`);

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `fk_Appointment_Nurse_EmployeeID` FOREIGN KEY (`PrepNurse`) REFERENCES `nurse` (`EmployeeID`),
  ADD CONSTRAINT `fk_Appointment_Patient_SSN` FOREIGN KEY (`Patient`) REFERENCES `patient` (`SSN`),
  ADD CONSTRAINT `fk_Appointment_Physician_EmployeeID` FOREIGN KEY (`Physician`) REFERENCES `physician` (`EmployeeID`);

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `fk_Department_Physician_EmployeeID` FOREIGN KEY (`Head`) REFERENCES `physician` (`EmployeeID`);

--
-- Constraints for table `medication`
--
ALTER TABLE `medication`
  ADD CONSTRAINT `fk_Brand_ID` FOREIGN KEY (`BrandID`) REFERENCES `brand` (`BrandID`);

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `fk_Patient_Physician_EmployeeID` FOREIGN KEY (`PCP`) REFERENCES `physician` (`EmployeeID`);

--
-- Constraints for table `prescribes`
--
ALTER TABLE `prescribes`
  ADD CONSTRAINT `fk_PrescribesMed_Appointment_AppointmentID` FOREIGN KEY (`Appointment`) REFERENCES `appointment` (`AppointmentID`),
  ADD CONSTRAINT `fk_PrescribesMed_Medication_Code` FOREIGN KEY (`Medication`) REFERENCES `medication` (`Code`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `fk_Room_Block_PK` FOREIGN KEY (`BlockFloor`,`BlockCode`) REFERENCES `block` (`BlockFloor`, `BlockCode`),
  ADD CONSTRAINT `fk_Room_Type` FOREIGN KEY (`RoomTypeID`) REFERENCES `room_type` (`RoomTypeID`);

--
-- Constraints for table `stay`
--
ALTER TABLE `stay`
  ADD CONSTRAINT `fk_Stay_Patient_SSN` FOREIGN KEY (`Patient`) REFERENCES `patient` (`SSN`),
  ADD CONSTRAINT `fk_Stay_Room_Number` FOREIGN KEY (`Room`) REFERENCES `room` (`RoomNumber`);

--
-- Constraints for table `undergoes`
--
ALTER TABLE `undergoes`
  ADD CONSTRAINT `fk_Undergoes_Nurse_EmployeeID` FOREIGN KEY (`AssistingNurse`) REFERENCES `nurse` (`EmployeeID`),
  ADD CONSTRAINT `fk_Undergoes_Patient_SSN` FOREIGN KEY (`Patient`) REFERENCES `patient` (`SSN`),
  ADD CONSTRAINT `fk_Undergoes_Physician_EmployeeID` FOREIGN KEY (`Physician`) REFERENCES `physician` (`EmployeeID`),
  ADD CONSTRAINT `fk_Undergoes_Procedures_Code` FOREIGN KEY (`Procedures`) REFERENCES `procedures` (`Code`),
  ADD CONSTRAINT `fk_Undergoes_Stay_StayID` FOREIGN KEY (`Stay`) REFERENCES `stay` (`StayID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
