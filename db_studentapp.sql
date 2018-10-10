-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2018 at 01:53 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_studentapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(1000) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `faculties_id` int(11) NOT NULL,
  `students_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `language` varchar(100) NOT NULL,
  `reference_num` int(11) NOT NULL,
  `selling_price` decimal(10,0) NOT NULL,
  `book_type` int(11) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `edition_num` int(11) NOT NULL,
  `copyright` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `name`, `author`, `publisher`, `language`, `reference_num`, `selling_price`, `book_type`, `isbn`, `edition_num`, `copyright`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES
(1, 'Internet & World Wide Web How to Program', 'Harvey Deitel', 'Pearson Publication', 'english', 123456, '450', 1, '0131752421', 2, 2016, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2, 'Java How to Program', 'Harvey Deitel', 'Pearson Publication', 'english', 123458, '350', 1, '0131752422', 2, 2018, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3, 'C How to Program', 'Harvey Deitel', 'Pearson Publication', 'english', 123458, '350', 1, '0131752422', 2, 2018, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `employee_name` varchar(255) NOT NULL COMMENT 'employee name',
  `employee_salary` double NOT NULL COMMENT 'employee salary',
  `employee_age` int(11) NOT NULL COMMENT 'employee age'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='datatable demo table';

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `employee_name`, `employee_salary`, `employee_age`) VALUES
(1, 'Ashok N', 12, 34),
(2, 'Nisha', 13, 26);

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `api_key` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `api_key` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `username`, `password`, `api_key`) VALUES
(1, 'belal', 'belal', '81dc9bdb52d04dc20036dbd8313ed055', '50addfeb14283e2568ca98e2a8ecf7f6'),
(2, 'Belal Khan', 'probelalkhan', '81dc9bdb52d04dc20036dbd8313ed055', '589d3d5ad22808e7cb54fd1ee2affd3c'),
(3, 'Vivek Raj', 'vivek', 'e2fc714c4727ee9395f324cd2e7f331f', '2d092996274be2edf7a0771ba427e134'),
(4, 'Ashok Nallasivam', 'Ashok', '81dc9bdb52d04dc20036dbd8313ed055', '7cddc677702cf3486e4697107bd37d3b'),
(5, 'Ashok Nallasivam', 'Ashok1', '81dc9bdb52d04dc20036dbd8313ed055', 'a6c3df86234812d618900fdda8a044a3'),
(6, 'Ashok Nallasivam', 'Ashok2', '81dc9bdb52d04dc20036dbd8313ed055', '0281bf1d787b512d19b96c322d465dca'),
(7, 'Ashok Nallasivam', 'Ashok3', '81dc9bdb52d04dc20036dbd8313ed055', '788f00e8c7ace136026bc4b19abf0345');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `token` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `api_key` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `token`, `name`, `username`, `password`, `api_key`, `status`, `created_on`, `updated_by`, `updated_on`) VALUES
(8, '6ebe9c07692e2a7150799cd70d4ad001', 'Ashok', 'ashoknallasivam@gmail.com', 'bb2d1a99fc70551dab323d042deb6843', '', 1, '2018-10-10 00:00:00', 0, '0000-00-00 00:00:00'),
(9, 'fa3222f489824bd5c7472ec20a2867ee', 'Nisha', 'nisha@gmail.com', 'bb2d1a99fc70551dab323d042deb6843', 'b229cc3826b03220057c463ec309df86', 1, '2018-10-10 00:00:00', 0, '0000-00-00 00:00:00'),
(10, '4dddece30cac33313ab41bca17afd07a', 'Ashok Nallasivam', 'Ashok4', '81dc9bdb52d04dc20036dbd8313ed055', '9a4e256a4be6b90e7b0ecc544d23ead5', 0, '2018-10-10 01:35:57', 0, '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignments_faculties` (`faculties_id`),
  ADD KEY `assignments_students` (`students_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_faculties` FOREIGN KEY (`faculties_id`) REFERENCES `faculties` (`id`),
  ADD CONSTRAINT `assignments_students` FOREIGN KEY (`students_id`) REFERENCES `user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
