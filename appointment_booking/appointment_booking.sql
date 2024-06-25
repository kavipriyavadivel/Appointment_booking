-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2024 at 06:00 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appointment_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'karthiga', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `faculty_id` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`id`, `username`, `faculty_id`, `email`, `phone_no`, `password`) VALUES
(2, 'Janagi', '123cse', 'janagi@gmail.com', '8189845646', '$2y$10$la7elG8J4krJB/nlmUww.OtONSPnKXJcA3PNteGik3PG8vzeOjAXO'),
(3, 'YAMUNA', '456IT', 'yamuna@bitsathy.ac.in', '8189867543', '$2y$10$vmaZ1k2BzfFo6D/OM1N4betRBvc3qtgowZ3qm4cTxrfBP3Zrj/3Mu'),
(4, 'NIKITHA', '123EC', 'nikitha@bitsathy.ac.in', '8189845646', '$2y$10$R2qYU4FrjJtI2ENkRTG/ueDDyHSarLAIXrPuVKt.CkFo2.scvomKm'),
(5, 'YAMUNA', '1234CS', 'yamuna.cs@gmail.com', '8769753452', '$2y$10$OlAZ.eJ5gdOlnqMoYnZMOeVZm85svv5V7zXDx/R.H33jKs.Lxgg8q');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `rollnumber` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `service` varchar(100) NOT NULL,
  `assigned_to` varchar(100) NOT NULL,
  `reason` varchar(150) NOT NULL,
  `date_time` date NOT NULL,
  `time_slot` varchar(100) NOT NULL,
  `emergency_level` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `name`, `email`, `rollnumber`, `phone`, `service`, `assigned_to`, `reason`, `date_time`, `time_slot`, `emergency_level`, `status`) VALUES
(1, 'pranathi', 'capranathi@gmail.com', '7376222IT224', '8189845646', 'Mentor', 'Yamuna R', 'HOLIDAY', '2023-09-01', '', 'Moderate', ''),
(2, 'pranathi', 'capranathi@gmail.com', '7376222IT224', '8189845646', 'Mteam', 'Mteam', 'internal events', '2023-09-01', '', 'Moderate', ''),
(3, 'sumitha', 'sumitha@bitsathy.ac.in', '7376222CS224', '8189845646', 'Faculty', 'Nikitha M', 'assignments - Reg', '2023-09-02', '', 'Moderate', ''),
(4, 'sumitha', 'sumitha@bitsathy.ac.in', '7376222CS224', '8189845646', 'Intern', 'Sudharsan', 'dailytask', '2023-09-02', '', 'High', ''),
(5, 'pranathi', 'pranathi.it22@bitsathy.ac.in', '7376222IT224', '8189845646', 'Non-academics', 'Bonafide', 'bonafide certificate - Reg', '2023-09-02', '', 'Moderate', ''),
(6, 'kanika', 'kanika.bt22@bitsathy.ac.in', '7376222BT123', '1234567890', 'Mentor', 'Ashokkumar R', 'HOLIDAY', '2023-09-23', '', 'Moderate', ''),
(7, 'kanika', 'kanika.bt22@bitsathy.ac.in', '7376222BT123', '7826879107', 'Mentor', 'Janagi R', 'holiday         ', '2023-09-23', '', 'Moderate', ''),
(8, 'kanika', 'kani@gmail.com', '7376222BT123', '7826879107', 'Mentor', 'Janagi R', 'holiday         ', '2023-09-23', '', 'Moderate', ''),
(9, 'kanika', 'kani@gmail.com', '7376222BT123', '7826879107', 'Mentor', 'Janagi R', 'holiday         ', '2023-09-30', '', 'Moderate', ''),
(10, 'pranathi', 'pranathi.it22@bitsathy.ac.in', '7376222IT224', '7826879107', 'Mentor', 'Janagi R', 'holiday         ', '2023-09-23', '', 'Moderate', ''),
(12, 'pranathi', 'pranathi.it22@bitsathy.ac.in', '7376222IT223', '7826879107', 'Mentor', 'Janagi R', 'holiday	', '2023-09-23', '9am-10am', 'Moderate', ''),
(13, 'pranathi', 'pranathi.it22@bitsathy.ac.in', '7376222BT123', '8189845646', 'Intern', 'Sudharsan', 'internal events', '2023-09-27', '11:15am-12:15pm', 'Low', ''),
(14, 'kanika', 'kanika.bt22@bitsathy.ac.in', '7376222BT123', '1234567890', 'Mentor', 'Janagi R', 'HOLIDAY', '2023-09-23', '11:15am-12:15pm', 'Moderate', ''),
(15, 'kanika', 'kanika.bt22@bitsathy.ac.in', '7376222BT123', '8189845646', 'Mteam', 'Mteam', 'internal events', '2023-09-23', '10am-11am', 'Moderate', ''),
(16, 'kanika', 'kanika.bt22@bitsathy.ac.in', '7376222BT123', '1234567890', 'Mentor', 'Kalaivani E', 'HOLIDAY', '2023-09-29', '10am-11am', 'Moderate', ''),
(17, 'kanika', 'kanika.bt22@bitsathy.ac.in', '7376222BT123', '8189845646', 'Intern', 'Sujeeth', 'internal events', '2023-09-24', '10am-11am', 'Moderate', '');

-- --------------------------------------------------------

--
-- Table structure for table `available_slots`
--

CREATE TABLE `available_slots` (
  `id` int(11) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `appointment_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status` enum('unread','read') DEFAULT 'unread',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `roll_no` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `department` varchar(100) NOT NULL,
  `year` varchar(50) NOT NULL,
  `residence` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`id`, `username`, `roll_no`, `email`, `phone_no`, `department`, `year`, `residence`, `password`) VALUES
(1, 'pranathi', '7376222IT224', 'capranathi@gmail.com', '8189845676', 'IT', 'second_year', 'hosteller', '$2y$10$wl8dvJw42bqSzNuYMpS1OeTXClo97NAZfEl1/4fI41LcZxpwXEZj2'),
(2, 'sumitha', '7376222CS224', 'sumitha@bitsathy.ac.in', '8189867543', 'CS', 'second_year', 'hosteller', '$2y$10$0fCU2gd4DaAMqvFz9sU/auvr5Q2nFeeukgQCrH0xcZ1xqDEsHJpyy'),
(3, 'PRANATHI C', '7376222IT222', 'pranathi.it22@bitsathy.ac.in', '8189845646', 'IT', 'FIRST YEAR', 'HOSTELLER', '$2y$10$OC7zGNJu9QS1TcM/ND7.ReYWhZZ7/aTiWJUK2Pu74w.MpaN.38rCS'),
(4, 'kanika', '7376222BT123', 'kanika.bt22@bitsathy.ac.in', '1234567890', 'BT', 'SECOND YEAR', 'HOSTELLER', '$2y$10$Wrl8yAn3cMCiIGp.GSwDXe1aYEYIrTFheeQXcPuX8da485BOtd/nm'),
(5, 'suba', '', 'suba@gmail.com', '8189845646', 'BT', 'SECOND YEAR', 'HOSTELLER', '$2y$10$jLRZNK2330rnsAPB6k8N6uCDD1uKYSMX3k4Kie56iroYTRqCpGobq'),
(7, 'suba', '7376222IT124', 'suba@gmail.com', '8189845646', 'BT', 'SECOND YEAR', 'HOSTELLER', '$2y$10$8aEkKp61WKyAcnORpd8Jb.pPpLLFqU1zVOQJC7X74UuvutmoDB9Tq'),
(8, 'pranathi', '7376222IT223', 'pranathi.it22@bitsathy.ac.in', '8189845646', 'IT', 'SECOND YEAR', 'HOSTELLER', '$2y$10$h33/YPsoVGVabm9X8r1sQu.WqidoVLmml/pC592XXWbEiFIqA1hRG'),
(9, 'pranathi', '7376222it225', 'pranathi.it22@bitsathy.ac.in', '8189845646', 'IT', 'SECOND YEAR', 'HOSTELLER', '$2y$10$msFKjJbd1d8og..SGHH78Oa5boOp7rB6Avsy11oVzng9Bb3omyx.a'),
(14, 'SUMITHA', '7376222CS222', 'sumitha@gmail.com', '8189845676', 'CS', 'SECOND YEAR', 'HOSTELLER', '$2y$10$TJs3FuDb7rJ3y4B6vQpdTu7FwKD2TdS4dV6Cr3wQKC5wX6EjSLj5m'),
(15, 'pranathi', '7376222cb224', 'nitharshanadevi.cb22@bitsathy.ac.in', '1234567789', 'CS', 'SECOND YEAR', 'HOSTELLER', '$2y$10$jP9alZTLdpw/mH/eDmnyQOelldg5gia/noLzvKOzznI6d8q1Pos7a');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `id` int(6) UNSIGNED NOT NULL,
  `time` varchar(20) NOT NULL,
  `monday` varchar(20) NOT NULL,
  `tuesday` varchar(20) NOT NULL,
  `wednesday` varchar(20) NOT NULL,
  `thursday` varchar(20) NOT NULL,
  `friday` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`id`, `time`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`) VALUES
(1, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(2, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(3, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(4, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(5, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(6, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(7, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(8, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(9, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(10, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(11, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(12, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(13, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(14, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(15, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(16, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(17, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(18, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(19, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(20, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(21, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(22, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(23, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(24, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(25, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(26, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(27, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(28, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(29, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(30, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(31, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(32, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(33, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(34, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(35, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(36, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(37, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(38, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(39, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(40, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(41, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(42, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(43, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(44, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(45, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(46, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(47, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(48, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(49, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(50, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(51, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(52, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(53, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(54, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(55, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(56, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(57, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(58, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(59, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(60, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(61, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(62, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(63, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(64, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(65, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(66, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(67, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(68, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(69, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(70, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(71, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(72, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(73, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(74, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(75, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(76, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(77, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(78, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(79, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(80, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(81, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(82, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(83, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(84, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(85, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(86, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(87, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(88, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(89, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(90, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(91, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(92, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(93, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(94, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(95, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(96, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(97, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(98, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(99, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(100, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(101, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(102, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(103, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(104, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(105, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(106, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(107, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(108, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(109, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(110, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(111, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(112, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(113, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(114, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(115, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(116, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(117, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(118, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(119, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(120, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(121, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(122, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(123, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(124, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(125, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(126, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(127, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(128, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(129, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(130, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(131, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(132, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(133, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(134, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(135, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(136, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(137, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(138, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(139, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(140, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(141, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(142, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(143, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(144, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(145, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(146, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(147, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(148, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(149, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(150, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(151, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(152, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(153, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(154, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(155, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(156, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(157, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(158, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(159, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(160, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(161, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(162, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(163, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(164, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(165, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(166, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(167, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(168, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(169, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(170, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(171, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(172, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(173, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(174, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(175, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(176, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(177, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(178, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(179, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(180, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(181, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(182, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(183, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(184, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(185, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(186, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(187, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(188, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(189, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(190, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(191, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(192, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(193, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(194, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(195, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(196, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(197, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(198, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(199, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(200, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(201, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(202, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(203, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(204, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(205, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(206, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(207, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(208, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(209, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(210, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(211, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(212, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(213, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(214, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(215, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(216, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(217, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(218, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(219, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(220, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(221, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(222, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(223, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(224, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(225, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(226, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(227, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(228, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(229, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(230, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(231, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(232, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(233, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(234, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(235, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(236, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(237, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(238, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(239, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(240, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(241, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(242, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(243, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(244, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(245, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(246, '9am-10am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(247, '10am-11am', 'NIL', 'CLASS', 'NIL', 'CLASS', 'NIL'),
(248, '11am-11:15am', 'Break', 'Break', 'Break', 'Break', 'Break'),
(249, '11:15am-12:15pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(250, '12:15pm-1pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS'),
(251, '1pm-2pm', 'Break', 'Break', 'Break', 'Break', 'Break'),
(252, '2pm-3pm', 'CLASS', 'NIL', 'CLASS', 'NIL', 'CLASS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faculty_id` (`faculty_id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `available_slots`
--
ALTER TABLE `available_slots`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roll_no` (`roll_no`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `available_slots`
--
ALTER TABLE `available_slots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
