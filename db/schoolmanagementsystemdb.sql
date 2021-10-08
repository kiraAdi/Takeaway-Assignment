-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `email` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `hiredate` date NOT NULL,
  `address` varchar(30) NOT NULL,
  `sex` varchar(7) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`, `phone`, `email`, `dob`, `hiredate`, `address`, `sex`) VALUES
('ad-123-0', 'Prosen', '123', '01822804168', 'prosen@example.com', '1993-11-20', '2016-01-01', 'Dhaka,Cantonment', 'male'),
('ad-123-1', 'Rifat', '123', '01922000000', 'Rifat@gmail.com', '1992-05-12', '2016-04-24', 'Dhaka', 'Male'),
('ad-123-2', 'Rizvi', '123', '01922000012', 'rizvi@gmail.com', '1992-05-12', '2016-04-24', 'Dhaka', 'Male'),
('ad-123-3', 'Barid', '123', '01922012000', 'barid@gmail.com', '1992-05-12', '2016-04-24', 'Dhaka', 'Male');

-- --------------------------------------------------------
-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `email` varchar(20) NOT NULL,
  `sex` varchar(7) NOT NULL,
  `dob` date NOT NULL,
  `addmissiondate` date NOT NULL,
  `address` varchar(50) NOT NULL,
  `parentid` varchar(20) NOT NULL,
  `classid` varchar(20) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `password`, `phone`, `email`, `sex`, `dob`, `addmissiondate`, `address`, `parentid`, `classid`) VALUES
('st-123-1', 'mokbul', '123', '01681000000', 'mokbul@example.com', 'male', '2009-06-24', '2016-01-01', 'unknown', 'pa-123-1', '1A'),
('st-124-1', 'rashid', '123', '018204679811', 'rashid@gmail.com', 'male', '1994-01-14', '2015-12-24', 'Dhaka', 'pa-123-1', '1A'),
('st-125-1', 'Barid Hossain', '123', '01824242525', 'barid@gmail.com', 'Male', '1987-02-05', '2016-05-05', 'Dhaka', 'pa-124-1', '5A');

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `email` varchar(20) NOT NULL,
  `address` varchar(30) NOT NULL,
  `sex` varchar(7) NOT NULL,
  `dob` date NOT NULL,
  `hiredate` date NOT NULL,
  `salary` double NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `password`, `phone`, `email`, `address`, `sex`, `dob`, `hiredate`, `salary`) VALUES
('te-123-1', 'Mr.X', '123', '01711000000', 'mrx@example.com', 'unknown', 'male', '1988-12-23', '2016-01-01', 200000),
('te-124-1', 'Aziz Khan', '124', '01822376277', 'aziz@gmail,com', 'dhaka', 'male', '1975-12-18', '2001-05-04', 600000),
('te-125-1', 'Rifat', '258', '01630592385', 'rifat@gmail.com', 'Dhaka', 'Male', '1992-01-26', '2016-05-04', 200000),
('te-126-1', 'Dipta', '258', '01823568956', 'dipta@gmail.com', 'Savar', 'Male', '1994-01-26', '2016-05-04', 200000),
('te-127-1', 'Abu saleh', '123', '01765439871', 'abu.saleh@gmail.com', 'Dhaka', 'Male', '1985-02-05', '2016-05-05', 200000);

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userid` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `usertype` varchar(10) NOT NULL,
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `password`, `usertype`) VALUES
('ad-123-0', '123', 'admin'),
('ad-123-1', '123', 'admin'),
('ad-123-2', '123', 'admin'),
('ad-123-3', '123', 'admin'),
('pa-123-1', '123', 'parent'),
('pa-124-1', '123', 'parent'),
('st-123-1', '123', 'student'),
('st-124-1', '125', 'student'),
('st-125-1', '123', 'student'),
('sta-123-1', '123', 'staff'),
('sta-124-1', '123', 'staff'),
('sta-125-1', '123', 'staff'),
('sta-126-1', '123', 'staff'),
('te-123-1', '123', 'teacher'),
('te-124-1', '124', 'teacher'),
('te-125-1', '258', 'teacher'),
('te-126-1', '258', 'teacher'),
('te-127-1', '123', 'teacher');

-- --------------------------------------------------------

--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `teacherid` varchar(20) NOT NULL,
  `studentid` varchar(20) NOT NULL,
  `classid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `name`, `teacherid`, `studentid`, `classid`) VALUES
('1', 'Bangla 1st', 'te-124-1', 'st-123-1', '1A'),
('1', 'Bangla 1st', 'te-124-1', 'st-124-1', '1A');

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Table structure for table `availablecourse`
--

CREATE TABLE IF NOT EXISTS `availablecourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `classid` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `availablecourse`
--

INSERT INTO `availablecourse` (`id`, `name`, `classid`) VALUES
(1, 'Bangla 1st', '1'),
(2, 'Bangla 1st', '2'),
(3, 'Bangla 1st', '3'),
(4, 'Bangla 1st', '4'),
(5, 'Bangla 1st', '5'),
(6, 'Bangla 1st', '6'),
(7, 'Bangla 1st', '7'),
(8, 'Bangla 1st', '8'),
(9, 'Bangla 1st', '9'),
(10, 'Bangla 1st', '10'),
(11, 'Bangla 2nd', '1'),
(12, 'Bangla 2nd', '2'),
(13, 'Bangla 2nd', '3'),
(14, 'Bangla 2nd', '4'),
(15, 'Bangla 2nd', '5'),
(16, 'Bangla 2nd', '6'),
(17, 'Bangla 2nd', '7'),
(18, 'Bangla 2nd', '8'),
(19, 'Bangla 2nd', '9'),
(20, 'Bangla 2nd', '10'),
(21, 'English 1st', '1'),
(22, 'English 1st', '2'),
(23, 'English 1st', '3'),
(24, 'English 1st', '4'),
(25, 'English 1st', '5'),
(26, 'English 1st', '6'),
(27, 'English 1st', '7'),
(28, 'English 1st', '8'),
(29, 'English 1st', '9'),
(30, 'English 1st', '10'),
(31, 'English 2nd', '1'),
(32, 'English 2nd', '2'),
(33, 'English 2nd', '3'),
(34, 'English 2nd', '4'),
(35, 'English 2nd', '5'),
(36, 'English 2nd', '6'),
(37, 'English 2nd', '7'),
(38, 'English 2nd', '8'),
(39, 'English 2nd', '9'),
(40, 'English 2nd', '10');

-- --------------------------------------------------------

--
-- Table structure for table `takencoursebyteacher`
--

CREATE TABLE IF NOT EXISTS `takencoursebyteacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courseid` varchar(20) NOT NULL,
  `teacherid` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `takencoursebyteacher`
--

INSERT INTO `takencoursebyteacher` (`id`, `courseid`, `teacherid`) VALUES
(1, '4', 'te-123-1'),
(2, '8', 'te-123-1'),
(3, '1', 'te-124-1'),
(4, '2', 'te-124-1'),
(5, '18', 'te-125-1'),
(6, '19', 'te-125-1'),
(7, '11', 'te-125-1'),
(8, '24', 'te-126-1'),
(9, '23', 'te-126-1'),
(10, '22', 'te-126-1'),
(11, '4', 'te-124-1'),
(12, '5', 'te-123-1'),
(13, '6', 'te-125-1'),
(14, '7', 'te-127-1'),
(15, '9', 'te-127-1'),
(16, '10', 'te-127-1'),
(17, '17', 'te-125-1'),
(18, '16', 'te-125-1'),
(19, '15', 'te-125-1'),
(20, '14', 'te-126-1'),
(21, '13', 'te-126-1'),
(22, '12', 'te-126-1');

-- --------------------------------------------------------

