-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2018 at 10:34 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `w3_lunch`
--

-- --------------------------------------------------------

--
-- Table structure for table `lunch_menu`
--

CREATE TABLE `lunch_menu` (
  `date` varchar(100) NOT NULL,
  `menu1` varchar(100) NOT NULL,
  `menu2` varchar(100) NOT NULL,
  `menu3` varchar(100) NOT NULL,
  `menu4` varchar(100) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lunch_menu`
--

INSERT INTO `lunch_menu` (`date`, `menu1`, `menu2`, `menu3`, `menu4`, `created_at`) VALUES
('John Smith', '656 Edsel Road Sherman Oaks CA 91403', 'Male', 'Manager', '40', '2018-04-29 14:47:30.788719'),
('Clara Berry', '63 Woodridge Lane Memphis TN 38138', 'Male', 'Programmer', '22', '2018-04-29 14:47:30.816739'),
('Barbra K. Hurley', '1241 Canis Heights Drive Los Angeles CA 90017', 'Female', 'Service technician', '26', '2018-04-29 14:47:30.833751'),
('Antonio J. Forbes', '403 Snyder Avenue Charlotte NC 28208', 'Male', 'Falling', '32', '2018-04-29 14:47:30.856769'),
('Charles D. Horst', '1636 Walnut Hill Drive Cincinnati OH 45202', 'Male', 'Financial investigator', '29', '2018-04-29 14:47:30.878781'),
('Beau L. Clayton', '3588 Karen Lane Louisville KY 40223', 'Male', 'Extractive metallurgical engin', '33', '2018-04-29 14:47:30.912803'),
('Ramona W. Burns', '2170 Ocala Street Orlando FL 32801', 'Female', 'Electronic typesetting machine operator', '27', '2018-04-29 14:47:30.955835'),
('Jennifer A. Morrison', '2135 Lakeland Terrace Plymouth MI 48170', 'Female', 'Rigging chaser', '29', '2018-04-29 14:47:30.978848'),
('Susan Juarez', '3177 Horseshoe Lane Norristown PA 19403', 'Male', 'Control and valve installe', '52', '2018-04-29 14:47:31.000866'),
('Ellan D. Downie', '384 Flynn Street Strongsville OH 44136', 'Female', 'Education and training manager', '26', '2018-04-29 14:47:31.023882'),
('Larry T. Williamson', '1424 Andell Road Brentwood TN 37027', 'Male', 'Teaching assistant', '30', '2018-04-29 14:47:31.045893'),
('Lauren M. Reynolds', '4798 Echo Lane Kentwood MI 49512', 'Female', 'Internet developer', '22', '2018-04-29 14:47:31.067911'),
('Joseph L. Judge', '3717 Junkins Avenue Moultrie GA 31768', 'Male', 'Refrigeration mechanic', '35', '2018-04-29 14:47:31.089926'),
('Eric C. Lavelle', '1120 Whitetail Lane Dallas TX 75207', 'Male', 'Model', '21', '2018-04-29 14:47:31.112942'),
('Cheryl T. Smithers', '1203 Abia Martin Drive Commack NY 11725', 'Female', 'Personal banker', '23', '2018-04-29 14:47:31.133955'),
('Tonia Diaz', '4724 Rocky Road Philadelphia PA 19107', 'Female', 'Facilitator', '29', '2018-04-29 14:47:31.156971'),
('Stephanie P. Lederman', '2117 Larry Street Waukesha WI 53186', 'Female', 'Mental health aide', '27', '2018-04-29 14:47:31.178987'),
('Edward F. Sanchez', '2313 Elliott Street Manchester NH 03101', 'Male', 'Marine oilerp', '28', '2018-04-29 14:47:31.202002'),
('Peter Parker', '403 Snyder Avenue Charlotte NC 28208', 'Male', 'Programmer', '28', '2018-04-29 14:47:31.224014'),
('John Smith', '384 Flynn Street Strongsville OH 44136', 'Male', 'Web Developer', '25', '2018-04-29 14:47:31.246032'),
('Mark Boucher', '256 Olive Street NY', 'Male', 'Techbical Assistance', '23', '2018-04-29 14:47:31.268047');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `serial_no` int(11) NOT NULL,
  `employee_id` varchar(100) NOT NULL,
  `employee_name` varchar(100) NOT NULL,
  `employee_designation` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`serial_no`, `employee_id`, `employee_name`, `employee_designation`, `username`, `password`) VALUES
(1, '33233', 'sfsfsv', 'svsvsv', 'shawki@gmail.com', '12345'),
(2, 'W311223', 'Mustakim Hayder', 'Intern', 'shawki@gmail.com', '12345'),
(3, '', '', '', 'shawki@gmail.com', '12345'),
(4, '', '', '', 'shawki@gmail.com', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`serial_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `serial_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
