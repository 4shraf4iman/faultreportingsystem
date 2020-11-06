-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2018 at 05:36 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `utpfaultsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `announcement` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`id`, `subject`, `announcement`) VALUES
(1, 'Welcome to UTP Fault Reporting Web System', 'UTP Fault Reporting Wb System is place where students can file complaint about Hostel and Cafe'),
(2, 'Early on Weekend', 'All cafe closes Early at 10 on Saturday and Sunday.'),
(3, 'Return Keys', 'Please return the keys of your room by 4th september 2017'),
(4, 'Blackout Notice', 'There will be power trip in V5B because of the maintainance at 19/10/2017 around 1.00PM to 3.00PM. Sorry for inconvinience'),
(5, 'V6 Leaking', 'Apparently due to unethical students, pipe line has been punctured. The reason is not yet discover but investigation will be take place, all students please comply to security instruction'),
(6, 'We are Live NOW!!!', 'UTP Fault Reporting System is now LIVE!!!'),
(9, 'WAD Project', 'Finish Migration'),
(10, 'Life', 'What do you think about it');

-- --------------------------------------------------------

--
-- Table structure for table `cafe_fault`
--

CREATE TABLE `cafe_fault` (
  `id` int(11) NOT NULL,
  `fault_id` int(11) NOT NULL COMMENT 'id from fault table',
  `cafe_name` varchar(250) NOT NULL,
  `village` varchar(250) NOT NULL,
  `category` varchar(250) NOT NULL,
  `complaint` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fault`
--

CREATE TABLE `fault` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `type` varchar(250) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fault`
--

INSERT INTO `fault` (`id`, `student_id`, `type`, `status`) VALUES
(33, 23331, 'hostel', 'rejected'),
(36, 23226, 'hostel', 'completed'),
(37, 23226, 'hostel', 'rejected'),
(38, 23226, 'hostel', 'idle');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_fault`
--

CREATE TABLE `hostel_fault` (
  `id` int(11) NOT NULL,
  `fault_id` int(11) NOT NULL,
  `village` varchar(50) NOT NULL,
  `house` varchar(50) NOT NULL,
  `room` varchar(50) NOT NULL,
  `floor` varchar(50) NOT NULL,
  `category` varchar(100) NOT NULL,
  `complaint` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel_fault`
--

INSERT INTO `hostel_fault` (`id`, `fault_id`, `village`, `house`, `room`, `floor`, `category`, `complaint`) VALUES
(16, 33, 'V5C', '01', '01', '01', 'Toilet', 'The lock on the doors are broken'),
(17, 36, 'V1A', '02', '02', '02', 'Room', 'qwer'),
(18, 37, 'V1A', '<option', '01', '01', 'Room', ''),
(19, 38, 'V1A', '<option', '01', '01', 'Toilet', 'Busuk');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL COMMENT 'matric id',
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `room` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='user table';

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phone`, `room`, `password`, `status`, `type`) VALUES
(1, 'admin', NULL, NULL, NULL, 'wadproject', NULL, 'admin'),
(22000, 'oreo', 'junior', '01333339283', 'v5k-l4-5', 'saya123', 'active', 'user'),
(22331, 'yasser', 'yasserakarimo@gmail.com', '01128283392', 'V1A', 'portugal', 'active', 'user'),
(22349, 'Abc', 'abc@gmail.com', '0112', 'Wsdnxif', 'test123', 'active', 'user'),
(23226, 'Abu', 'arif.ayub97@gmail.com', '0124801397', 'V6-D-01-04', '123', 'active', 'user'),
(23331, 'Arman', 'abc@abc.com', '0168380784', 'V5C-L1-1-1', '123', 'active', 'user'),
(23448, 'Syahmi', 'syahmisaadan95@gmail.com', '0123937079', 'V5B-05-04-05', '123', 'active', 'user'),
(23478, 'Ahmad', 's@gmail.com', '0179447496', 'V5B-L5-5-5', '123456', 'active', 'user'),
(24043, 'Shamsul', 'someone@example.com', '0123456789', 'V6-D-01-01', '123', 'active', 'user'),
(24181, 'Muhammad Shahrin Nidzam bin Effendy', 'shahrin.nidzam@gmail.com', '0173813858', 'V5B-L5-02-02', 'qwertyuiop', 'active', 'user'),
(24802, 'Sumayema Kabir Ricky', 'skrikki96@gmail.com', '0165674231', '6', 'rickya', 'active', 'user'),
(123456, 'iwan', 'wan@wan.com', '0123456789', 'V5', '123456', 'active', 'user'),
(1136218490, 'Augusto Simbine', 'augustosimbine93@gmail.com', '01136218490', 'V5D-L4-02-03', 'themba', 'active', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cafe_fault`
--
ALTER TABLE `cafe_fault`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fault_id` (`fault_id`);

--
-- Indexes for table `fault`
--
ALTER TABLE `fault`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `hostel_fault`
--
ALTER TABLE `hostel_fault`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fault_id` (`fault_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cafe_fault`
--
ALTER TABLE `cafe_fault`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fault`
--
ALTER TABLE `fault`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `hostel_fault`
--
ALTER TABLE `hostel_fault`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cafe_fault`
--
ALTER TABLE `cafe_fault`
  ADD CONSTRAINT `cafe_fault_ibfk_1` FOREIGN KEY (`fault_id`) REFERENCES `fault` (`id`);

--
-- Constraints for table `fault`
--
ALTER TABLE `fault`
  ADD CONSTRAINT `fault_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `hostel_fault`
--
ALTER TABLE `hostel_fault`
  ADD CONSTRAINT `hostel_fault_ibfk_1` FOREIGN KEY (`fault_id`) REFERENCES `fault` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
