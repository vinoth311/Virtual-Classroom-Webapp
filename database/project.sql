-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2023 at 04:53 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`password`) VALUES
('admin');

-- --------------------------------------------------------

--
-- Table structure for table `enroll_for`
--

CREATE TABLE `enroll_for` (
  `degree` varchar(5) NOT NULL,
  `course` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enroll_for`
--

INSERT INTO `enroll_for` (`degree`, `course`) VALUES
('BE', 'Computer Science Engineering'),
('BTech', 'Information Technology'),
('BE', 'Computer Science and Design'),
('BE', 'Computer Science and Business '),
('BE', 'Electrical and Electronics Eng');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `name` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `degree` varchar(5) NOT NULL,
  `course` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `is_approved` tinyint(1) DEFAULT 0
) ;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`name`, `username`, `password`, `email_id`, `degree`, `course`, `year`, `subject`, `is_approved`) VALUES
('Sri Sai', 'sri2003', 'Srisai@123', 'srisai@gmail.com', 'BE', 'Computer Science and Engineering', 3, 'Bootstrap', 0),
('Varunesh B', 'varun2004', '1234', 'varun@gmail.com', 'BE', 'Computer Science and Engineering', 2, 'Communications', 1),
('Vishal D    ', 'vishal2003', 'Vishal@123', 'vishal@gmail.com', 'BE', 'Computer Science and Engineering', 1, 'Gaming Design', 0),
('Vinoth N', 'vino2004', '1234', 'vinoth@gmail.com', 'BE', 'Computer Science and Engineering', 3, 'Internet Programming', 1),
('Vimal K B', 'vimal2004', '1234', 'vimal@gmail.com', 'BE', 'Computer Science and Engineering', 1, 'J Query', 1),
('Surendhar S', 'surend2003', '1234', 'surendhar@gmail.com', 'BE', 'Computer Science and Engineering', 1, 'Java Programming', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `roll_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `degree` varchar(5) NOT NULL,
  `course` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `is_approved` tinyint(1) DEFAULT 0
) ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`roll_no`, `name`, `password`, `email_id`, `degree`, `course`, `year`, `is_approved`) VALUES
(258, 'SriSai B', '1234', 'srisai@gmail.com', 'BE', 'Computer Science and Engineering', 3, 1),
(291, 'Thriloke K', '1234', 'thriloke@gmail.com', 'BE', 'Computer Science and Engineering', 3, 1),
(303, 'Varunesh B', '1234', 'varun@gmail.com', 'BE', 'Computer Science and Engineering', 3, 0),
(309, 'Vimal K B   ', '1234\r\n', 'vimal@gmail.com', 'BE', 'Computer Science and Engineering', 3, 0),
(311, 'Vinoth N', '1234', 'vinoth@gmail.com', 'BE', 'Computer Science and Engineering', 3, 1),
(313, 'Vishal D', '1234', 'vishal@gmail.com', 'BE', 'Computer Science and Engineering', 3, 1),
(314, 'Vishva A', '1234', 'vishva@gmail.com', 'BE', 'Computer Science and Engineering', 3, 1),
(509, 'Vinoth Raj', '1234', 'vinothraj@gmail.com', 'BE', 'Computer Science and Engineering', 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`subject`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`roll_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
