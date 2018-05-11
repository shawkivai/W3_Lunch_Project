-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2018 at 04:07 PM
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
-- Table structure for table `employee_table`
--

CREATE TABLE `employee_table` (
  `id` bigint(20) NOT NULL,
  `employee_id` varchar(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `user_role` varchar(20) NOT NULL,
  `email` text NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `address` varchar(30) NOT NULL,
  `team` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_table`
--

INSERT INTO `employee_table` (`id`, `employee_id`, `username`, `user_role`, `email`, `mobile_no`, `gender`, `address`, `team`, `password`, `status`, `filename`, `create_date`, `update_date`) VALUES
(1, 'admin', 'admin', 'admin', 'admin@admin.com', '', 'Male', '', 'W3 engineers', 'mahamud#22', '', '', '0000-00-00 00:00:00', '2015-04-09 00:34:00'),
(21, 'W3E2010100104', 'Md.Tawhidur Rahman', 'employee', 'tawhid@w3engineers.com', '01911913622', 'Male', 'admin', 'Web UI', '123456', 'on', 'tawhid.png', '2015-04-09 00:12:00', '2015-06-15 18:47:00'),
(22, 'W3E2010101505', 'Md.Mahamud Hasan', 'employee', 'hasan@w3engineers.com', '01712212731', 'Male', 'admin', 'W3 engineers', 'mahamud#22', 'on', 'Hasan5.jpg', '2015-04-09 00:14:00', '2015-09-30 09:57:00'),
(23, 'W3E2012020706', 'Sabbir Ahmed', 'employee', 'sabbir@w3engineers.com', '01717005770', 'Male', 'admin', 'W3 engineers', 'howtogethere_#Z', 'on', '30209poster.jpg', '2015-04-09 00:18:00', '2015-05-22 10:20:00'),
(24, 'W3E2012041607', 'Syed Murshid Alam', 'employee', 'murshid@w3engineers.com', '01911968796', 'Male', 'admin', 'Web UI', 'murshid1313', 'on', 'n_03.png', '2015-04-09 00:19:00', '2016-05-16 19:49:00'),
(25, 'W3E2012090108', 'Anjan Debnath', 'employee', 'anjan@w3engineers.com', '', 'Male', 'admin', 'Mobile', 'blackanjan', '', 'IMG_1187.jpg', '2015-04-09 00:21:00', '2015-05-04 12:28:00'),
(26, 'W3E2012090109', 'Sheikh Abdullah Alamin', 'employee', 'alamin@w3engineers.com', '01717469366', 'Male', 'Khulna', 'Web', '07304611', '', 'ipmsgclip_s_1428402569_0.png', '2015-04-09 00:23:00', '2015-05-04 10:10:00'),
(27, 'W3E2012122411', 'Mehdi Hasan', 'employee', 'mehdi@w3engineers.com', '01751290833', 'Male', 'SKY', 'Mobile', '123456', 'on', 'IMG_0316.JPG', '2015-04-09 00:25:00', '2015-06-18 10:38:00'),
(28, 'W3E2013040113', 'Mamun Hasan', 'employee', 'mamunhasan@w3engineers.com', '', 'Male', 'admin', 'Web', '123456', 'on', 'programmer_creattica_full.jpg', '2015-04-09 00:29:00', '2015-11-12 11:14:00'),
(29, 'W3E2013070114', 'Md. Sany Ahmed ', 'employee', 'sany@w3engineers.com', '01915106539', 'Male', 'admin', 'Web', '123456', 'on', 'male_no_image.png', '2015-04-09 00:31:00', '2015-05-15 10:13:00'),
(31, 'W3E2013071515', 'Nazrul Islam', 'employee', 'nazrul@w3engineers.com', '', 'Male', 'admin', 'Web', '123456', '', 'male_no_image.png', '2015-04-09 00:33:00', '2015-04-10 18:41:00'),
(32, 'W3E2013102116', 'Ahmed Faisal', 'employee', 'faisal@w3engineers.com', '', 'Male', 'admin', 'Web UI', '123456', '', 'male_no_image.png', '2015-04-09 00:36:00', '2015-04-10 18:41:00'),
(33, 'W3E2013111517', 'Anindya Das', 'employee', 'anindya@w3engineers.com', '01920432966', 'Male', 'admin', 'Yo! Desktop', 'ani', 'on', 'Anindya.jpg', '2015-04-09 00:37:00', '2015-08-11 10:17:00'),
(34, 'W3E2013110118', 'Humayon Kabir Piash', 'employee', 'piash@w3engineers.com', '01911838330', 'Male', 'admin', 'W3 engineers', '123456', '', 'male_no_image.png', '2015-04-09 00:39:00', '2015-05-04 09:23:00'),
(35, 'W3E2014050119', 'Razibul Islam', 'employee', 'razib@w3engineers.com', '', 'Male', 'admin', 'W3 engineers', '123456', '', 'male_no_image.png', '2015-04-09 10:03:00', '0000-00-00 00:00:00'),
(36, 'W3E2014010121', 'Rahul deb Sarder', 'employee', 'rahul@w3engineers.com', '', 'Male', 'Khulna', 'Web', '01737294279', 'on', 'rahul.jpg', '2015-04-09 10:06:00', '2015-11-06 10:41:00'),
(37, 'W3E2014010122', 'Mahadi Hasan', 'employee', 'mahadihasan@w3engineers.com', '01750008256', 'Male', 'admin', 'Web', 'mhasan', 'on', 'images.jpg', '2015-04-09 10:07:00', '2015-07-24 11:24:00'),
(38, 'W3E2014010123', 'S.M. Ashiquzzaman', 'employee', 'ashiquzzaman@w3engineers.com', '01715959851', 'Male', 'admin', 'Mobile', '123456', 'on', '12063787_1034444103254985_666521030831903988_n.jpg', '2015-04-09 10:09:00', '2015-10-27 10:02:00'),
(39, 'W3E2014011525', 'Most. Nury Fatema', 'employee', 'fatema@w3engineers.com', '', 'Female', 'admin', 'QA', '123456', '', 'female_no_image.png', '2015-04-09 10:11:00', '2015-04-10 18:43:00'),
(40, 'W3E2014041526', 'S.M. Mamunur Rahaman', 'employee', 'mamunrahaman@w3engineers.com', '01933853750', 'Male', 'admin', 'Mobile', '123456', '', 'me.jpeg', '2015-04-09 10:12:00', '2015-05-04 10:20:00'),
(41, 'W3E2014060227', 'Sabuj Kumar Das', 'employee', 'sabuj@w3engineers.com', '01915830305', 'Male', 'Bagerhat', 'Web', '123', 'on', 'DSCF5150.JPG', '2015-04-09 10:13:00', '2015-11-05 22:43:00'),
(42, 'W3E2014060228', 'Md.Rubayet Hasan', 'employee', 'rubayet@w3engineers.com', '01710614198', 'Male', 'khulna', 'Web', 'w123', 'on', 'rubayet.jpg', '2015-04-09 10:14:00', '2015-06-09 10:10:00'),
(43, 'W3E2014060229', 'Md.Imran Hossen', 'employee', 'imran@w3engineers.com', '', 'Male', 'admin', 'QA', '123456', '', 'male_no_image.png', '2015-04-09 10:15:00', '0000-00-00 00:00:00'),
(44, 'W3E2014070130', 'Nasrin Sultana Tania', 'employee', 'tania@w3engineers.com', '', 'Female', 'admin', 'QA', '123456', '', 'female_no_image.png', '2015-04-09 10:16:00', '2015-04-09 10:17:00'),
(45, 'W3E2014071431', 'Mahamudul Hasan', 'employee', 'rubel@w3engineers.com', '01682836377', 'Male', 'admin', 'Web', '123456', '', 'admin.jpg', '2015-04-09 10:25:00', '2015-05-04 09:17:00'),
(46, 'W3E2014080332', 'Tarun Kumar', 'employee', 'tarun@w3engineers.com', '01712335833', 'Male', 'admin', 'Mobile', '123456', '', 'tarun-pic.jpg', '2015-04-09 10:26:00', '2015-05-12 10:30:00'),
(47, 'W3E2014090133', 'Arifur Rahman', 'employee', 'arif@w3engineers.com', '01732899071', 'Male', 'admin', 'Web', 'mahamud#22', 'on', 'male_no_image.png', '2015-04-09 10:27:00', '2017-03-13 12:57:00'),
(48, 'W3E2014092237', 'SK.Moududul Haque Shovon', 'employee', 'shovon@w3engineers.com', '01713560772', 'Male', 'W3Engineers', 'Mobile', '123456', 'on', 'beef-fried-rice-chinese-recipes-for-all.jpg', '2015-04-09 10:28:00', '2015-05-22 15:09:00'),
(49, 'W3E2014101338', 'Ahmed Mohammad Ullah(Azim)', 'employee', 'azim@w3engineers.com', '01729777195', 'Male', 'admin', 'Mobile', '123456', '', 'male_no_image.png', '2015-04-09 10:29:00', '2015-05-04 09:37:00'),
(50, 'W3E2014101539', 'Wasim Reza', 'employee', 'wasim@w3engineers.com', '01675633019', 'Male', 'admin', 'Mobile', '123456', '', '1422.jpg', '2015-04-09 10:31:00', '2015-05-08 18:49:00'),
(51, 'W3E2014102140', 'Md. Rashedul Hoque', 'employee', 'rashedul@w3engineers.com', '', 'Male', 'admin', 'Mobile', 'rashed084050', 'on', 'images.jpeg', '2015-04-09 10:31:00', '2015-05-14 10:10:00'),
(52, 'W3E2014112041', 'A.K.M. Shariful Islam', 'employee', 'sarifulislam@w3engineers.com', '01713048379', 'Male', 'admin', 'Yo! Desktop', '081010101023', 'on', 'blackhat-wallpaper-picture-ihnalf.jpg', '2015-04-09 10:32:00', '2015-07-29 10:26:00'),
(53, 'W3E2014112042', 'Md. Nomanur Rashid', 'employee', 'nomanur@w3engineers.com', '01199418537', 'Male', 'admin', 'Yo! Desktop', 'noman.ios', 'on', 'Noman.jpg', '2015-04-09 10:33:00', '2015-06-03 10:03:00'),
(54, 'W3E2014112043', 'Md.Rashadul Alam', 'employee', 'rashedulalam@w3engineers.com', '01918708946', 'Male', 'admin', 'Yo! Desktop', '123456', 'on', 'IMG_20150827_214205.jpg', '2015-04-10 10:32:00', '2015-09-11 10:12:00'),
(55, 'W3E2014102144', 'Sikder faysal Ahmed', 'employee', 'sikderfaysal@w3engineers.com', '01927018443', 'Male', 'admin', 'Mobile', 'epicfaysal', '', 'me_image.jpg', '2015-04-10 10:33:00', '2015-05-04 10:18:00'),
(56, 'W3E2014102145', 'Imran Hosen(Nirob)', 'employee', 'nirob@w3engineers.com', '01672300100', 'Male', 'admin', 'Mobile', '123456', 'on', 'nirob.jpg', '2015-04-10 10:40:00', '2015-05-14 11:44:00'),
(57, 'W3E2015010146', 'Moniruzzaman', 'employee', 'moniruzzaman@w3engineers.com', '01911458689', 'Male', 'admin', 'Mobile', '123456', 'on', 'images_fd1.jpg', '2015-04-10 12:12:00', '2015-05-22 10:51:00'),
(58, 'W3E2015010147', 'Mahmudul Hasan shuvo', 'employee', 'shuvo@w3engineers.com', '01685462905', 'Male', 'admin', 'Mobile', '112233', '', 'male_no_image.png', '2015-04-10 12:13:00', '2015-05-04 09:52:00'),
(59, 'W3E2015010148', 'Sabiha Aziz ', 'employee', 'sabiha@w3engineers.com', '', 'Female', 'admin', 'QA', '123456', '', 'female_no_image.png', '2015-04-10 12:14:00', '0000-00-00 00:00:00'),
(60, 'W3E2015010549', 'Hawladar Roman', 'employee', 'roman@w3engineers.com', '', 'Male', 'admin', 'Mobile', '123456', '', 'male_no_image.png', '2015-04-10 12:14:00', '2015-05-05 16:02:00'),
(61, 'W3E2015010850', 'Sudipta Kumar Paik', 'employee', 'sudiptakumar@w3engineers.com', '88017191000', 'Male', 'W3 Engineers', 'Mobile', '123456', 'on', '598635_3619679609238_920391900_n_.jpg', '2015-04-10 12:16:00', '2015-05-22 10:23:00'),
(62, 'W3E2015011251', 'Asifur Rouf', 'employee', 'asif@w3engineers.com', '01717757902', 'Male', 'admin', 'Mobile', '123456', 'on', 'male_no_image.png', '2015-04-10 18:22:00', '2015-07-24 11:25:00'),
(63, 'W3E2015011452', 'Prodip Biswas', 'employee', 'prodip@w3engineers.com', '', 'Male', 'admin', 'Mobile', '123456', 'on', 'Captu.JPG', '2015-04-10 18:23:00', '2016-01-20 11:38:00'),
(64, 'W3E2015011553', 'Azizul Islam', 'employee', 'azizul@w3engineers.com', '01923067328', 'Male', 'admin', 'Mobile', 'Aziz1062', 'on', 'Capture.PNG', '2015-04-10 18:24:00', '2015-08-12 10:06:00'),
(65, 'W3E2015011554', 'Mimo saha', 'employee', 'mimosaha@w3engineers.com', '01710744520', 'Male', 'admin', 'Mobile', 'mimosaha', 'on', 'index.jpg', '2015-04-10 18:27:00', '2015-05-18 10:14:00'),
(66, 'W3E2015020256', 'Feroze Alam', 'employee', 'feroze@w3engineers.com', '01715368074', 'Male', 'admin', 'W3 engineers', '123456', 'on', 'images.jpg', '2015-04-10 18:29:00', '2015-06-01 11:20:00'),
(67, 'W3E2015021658', 'Shohag Samajpati', 'employee', 'shohag@w3engineers.com', '', 'Male', 'admin', 'Web', '123456', '', 'male_no_image.png', '2015-04-10 18:31:00', '2015-04-16 17:51:00'),
(68, 'W3E2015031659', 'Barun Kumar Biswas', 'employee', 'barun@w3engineers.com', '01911142101', 'Male', 'admin', 'Mobile', '123456', 'on', 'dsc_0143.jpg', '2015-04-10 18:34:00', '2016-04-25 10:43:00'),
(69, 'Guest', 'Guest', 'admin', 'test@test.com', '454646', 'Male', 'admin', 'Miscellaneous', '123456', '', 'male_no_image.png', '2015-04-15 20:07:00', '2015-04-16 16:17:00'),
(70, 'W3E2015050562', 'Md. Masudur Rahman', 'employee', 'masud@w3engineers.com', '01675208545', 'Male', 'Muggunni, Khulna', 'W3 engineers', '123456', 'on', 'My Photo.jpg', '2015-05-12 23:36:00', '2015-07-22 11:47:00'),
(71, 'W3E2015110563', 'Md. Al Masud Uddin', 'employee', 'almasud@w3engineers.com', '', 'Male', 'admin', 'QA(Web)', '123456', 'on', 'male_no_image.png', '2015-05-12 23:38:00', '0000-00-00 00:00:00'),
(72, 'W3E2015250564', 'Tarikur Rahaman', 'employee', 'tarikur@w3engineers.com', '', 'Male', 'admin', 'W3 engineers', '123456', 'on', 'Untitled.png', '2015-05-27 13:37:00', '2015-06-26 16:52:00'),
(73, 'W3E2015250566', 'B.M. Khashrul Alam', 'employee', 'khasrul@w3engineers.com', '01921328498', 'Male', 'admin', 'Web', '123456', 'on', 'Khashrul.jpg', '2015-05-27 14:17:00', '2015-06-19 12:40:00'),
(74, 'W3E2015250565', 'M. M. Ashiqur Rahman', 'employee', 'ashiqur_qa@w3engineers.com', '', 'Male', 'admin', 'QA(Mobile)', '430303', 'on', 'male_no_image.png', '2015-05-27 14:20:00', '2015-05-27 15:19:00'),
(75, 'W3E2015010667', 'Muhammad Arifujjaman', 'employee', 'arifujjaman@w3engineers.com', '01911975566', 'Male', 'admin', 'Web', '123456', 'on', 'IMG_2165 2.jpg', '2015-06-08 10:05:00', '2016-02-24 13:17:00'),
(76, 'W3E2015010668', 'Nazam Al Hasan', 'employee', 'nazam@w3engineers.com', '', 'Male', 'admin', 'Web', '123456', 'on', 'male_no_image.png', '2015-06-08 10:08:00', '0000-00-00 00:00:00'),
(77, 'W3E2015010669', 'Syed Musa Tazim', 'employee', 'tazim@w3engineers.com', '', 'Male', 'admin', 'Mobile', '123456', 'on', 'male_no_image.png', '2015-06-08 10:09:00', '0000-00-00 00:00:00'),
(78, 'W3E2015010670', 'Md. Al Mamun', 'employee', 'almamun@w3engineers.com', '', 'Male', 'admin', 'Mobile', '123456', 'on', 'male_no_image.png', '2015-06-08 10:10:00', '2015-06-08 10:20:00'),
(79, 'W3E2015010671', 'Arafa Sultana', 'employee', 'arafa_qa@w3engineers.com', '', 'Female', 'admin', 'QA(Mobile)', '123456', 'on', 'female_no_image.png', '2015-06-08 10:11:00', '0000-00-00 00:00:00'),
(80, 'W3E2015020672', 'Arifur Rashid', 'employee', 'bappy@w3engineers.com', '01717996736', 'Male', 'admin', 'W3 engineers', 'mahamud#22', 'on', 'male_no_image.png', '2015-06-08 10:20:00', '2016-08-26 17:46:00'),
(81, 'W3E2015010774', 'Sabrina Mamtaz Sathi', 'employee', 'sabrina@w3engineers.com', '', 'Female', 'admin', 'Mobile', '123456', 'on', 'female_no_image.png', '2015-07-21 17:53:00', '0000-00-00 00:00:00'),
(82, 'W3E2015210775', 'Arifuzzaman Bappy', 'employee', 'arif_qa_ios@w3engineers.com', '01717007146', 'Male', 'admin', 'QA(Mobile)', '123456', 'on', 'IMG_1988.jpg', '2015-07-21 17:57:00', '2016-05-12 10:25:00'),
(83, 'W3E2010100101', 'A K M Rakibul Islam', 'employee', 'rakib@w3engineers.com', '', 'Male', '55, Toot para, khulna', 'W3 engineers', 'hellorakib', 'on', 'W3 Engineers.JPG', '2015-07-22 11:41:00', '2016-01-22 02:39:00'),
(84, 'W3E2010100102', 'Ayesha Siddika', 'employee', 'ayesha@w3engineers.com', '', 'Female', 'admin', 'W3 engineers', '123456', 'on', '20150719_183302_1024.jpg', '2015-07-23 11:56:00', '2015-07-24 11:29:00'),
(85, 'W3E2015010876', 'Rezaul Karim', 'employee', 'tamal_ios@w3engineers.com', '01719269687', 'Male', 'admin', 'Mobile', '123456', 'on', 'male_no_image.png', '2015-08-04 11:30:00', '2015-09-02 10:35:00'),
(86, 'W3E2015060877', 'Farhana Rubaya Rupa', 'employee', 'farhana@w3engineers.com', '', 'Female', '', 'QA(Web)', '123456', 'on', 'female_no_image.png', '2015-08-07 10:29:00', '0000-00-00 00:00:00'),
(87, 'W3E2015010978', 'Kaniz Fatema Keya', 'employee', 'keya@w3engineers.com', '', 'Female', 'W3E2015010978', 'QA(Web)', '123456', 'on', 'IMG_5469.JPG', '2015-09-02 11:27:00', '2015-10-26 10:15:00'),
(88, 'W3E2015011079', 'Md. Abdullah Yousuf', 'employee', 'abdullah@w3engineers.com', '', 'Male', '', 'Web', '123456', 'on', 'male_no_image.png', '2015-10-01 17:40:00', '0000-00-00 00:00:00'),
(89, 'W3E-2015121082', 'Parveen Akter', 'employee', 'parveen_ios@w3engineers.com', '01677031331', 'Female', 'W3E-2015121082', 'W3 engineers', '01677031331', 'on', 'IMG_2125.jpg', '2015-10-13 11:00:00', '2016-04-20 10:08:00'),
(90, 'W3E-2015121083', 'Saifuddin', 'employee', 'saifuddin@w3engineers.com', '', 'Male', '', 'Web', '123456', 'on', 'male_no_image.png', '2015-10-13 11:03:00', '2015-12-10 17:13:00'),
(91, 'W3E-DA-2015011080', 'shihab uddin', 'employee', 'shihab_dhk@w3engineers.com', '', 'Male', '', 'Web UI', '123456', 'on', 'male_no_image.png', '2015-10-13 11:27:00', '0000-00-00 00:00:00'),
(92, 'W3E-2015301185', 'Arifur Rahaman', 'employee', 'arif_web@w3engineers.com', '', 'Male', '', 'Web', '123456', 'on', 'male_no_image.png', '2015-11-30 16:28:00', '2015-12-10 17:24:00'),
(93, 'W3E-2015301186', 'Shahid Sabir', 'employee', 'shahid_andriod@w3engineers.com', '', 'Male', '', 'QA(Mobile)', '123456', 'on', 'sabir.jpg', '2015-11-30 16:45:00', '2016-02-17 23:16:00'),
(94, 'W3E-2015301187', 'Md. Razvi Al Morshed', 'employee', 'razvirony_qa@w3engineers.com', '01988530965', 'Male', '', 'QA(Web)', '123456', 'on', 'Razvi.jpg', '2015-11-30 16:46:00', '2015-12-10 17:26:00'),
(95, 'W3E-2015301188', 'Mithun Ghose', 'employee', 'mithun_andriod@w3engineers.com', '', 'Male', '', 'Mobile', '123456', 'on', 'male_no_image.png', '2015-11-30 16:47:00', '2015-12-10 17:26:00'),
(96, 'W3E2015011289', 'Syed Md. Meraz Hossain', 'employee', 'meraz_web@w3engineers.com', '', 'Male', '', 'Web', '123456', 'on', 'ME.JPG', '2015-12-03 11:24:00', '2016-01-07 10:22:00'),
(97, 'W3E2016010195', 'Md. Imdadul Haque', 'employee', 'imdadul_android@w3engineers.com', '01723974177', 'Male', '', 'Mobile', 'milon20', 'on', 'Imdadul.jpg', '2016-01-04 16:24:00', '2016-01-28 10:47:00'),
(98, 'W3E2016010196', 'Anindya Duti Dhar', 'employee', 'anindya_android@w3engineers.com', '01724006684', 'Male', 'Sabujbag-5th Lane, Patuakhali', 'Web UI', '$Anindya.Android$', 'on', 'me.jpg', '2016-01-04 16:26:00', '2016-05-23 11:24:00'),
(99, 'W3EDA2015211294', 'Md. Shahjalal Hossain', 'employee', 'shahjalal_dhk@w3engineers.com', '01817535299', 'Male', '', 'Miscellaneous', '123456', 'on', 'male_no_image.png', '2016-01-19 11:49:00', '2016-01-19 13:16:00'),
(100, 'W3E-DA-2015011291', 'Nurul Huda Robin', 'employee', 'robin_web_dhk@w3engineers.com', '', 'Male', '', 'Miscellaneous', '123456', 'on', 'male_no_image.png', '2016-01-19 12:04:00', '0000-00-00 00:00:00'),
(101, 'W3E2016180197', 'Sk. Moshfaqur Rahman Sium', 'employee', 'moshfaqur@w3engineers.com', '', 'Male', '', 'Mobile', '421168', 'on', 'male_no_image.png', '2016-01-28 16:24:00', '2016-02-24 18:52:00'),
(102, 'W3E2016180199', 'Munni Aysha Siddika', 'employee', 'munni@w3engineers.com', '', 'Female', '', 'W3 engineers', '123456', 'on', 'female_no_image.png', '2016-01-28 16:27:00', '2016-03-15 17:29:00'),
(103, 'W3E2016250200', 'Md.Reza Un Nabi', 'employee', 'reza_android@w3engineers.com', '', 'Male', '', 'Mobile', '123456', 'on', 'reza1.jpg', '2016-01-28 16:31:00', '2016-02-02 10:59:00'),
(104, 'W3EDA2015011290', 'Mehedi Hasan Herock', 'employee', 'mehedi_ios_dhk@w3engineers.com', '01748003164', 'Male', '', 'Yo! Desktop', '123456', 'on', '1hL-rMpT.jpeg', '2016-01-28 16:35:00', '2016-01-29 10:30:00'),
(105, 'W3E20160102101', 'Faisal Ahmed- Android', 'employee', 'faisal_android@w3engineers.com', '', 'Male', '', 'Mobile', '123456', 'on', 'photo.png', '2016-02-02 19:03:00', '2016-05-04 10:05:00'),
(106, 'W3E20161403102', 'Sabuj Biswas      ', 'employee', 'sabuj_android@w3engineers.com', '', 'Male', '', 'Mobile', '123456', 'on', 'male_no_image.png', '2016-03-15 15:50:00', '0000-00-00 00:00:00'),
(107, 'W3E20161403103', 'Shamanur Rahman          ', 'employee', 'shamanur@w3engineers.com', '', 'Male', '', 'Web', '123456', 'on', 'PP Pic.jpg', '2016-03-15 15:54:00', '2016-03-30 14:09:00'),
(108, 'W3E20161403104 ', 'Borhan Uddin    ', 'employee', 'borhan@w3engineers.com', '', 'Male', '', 'Mobile', '123456', 'on', 'male_no_image.png', '2016-03-15 15:57:00', '2016-03-15 15:58:00'),
(109, 'W3E20160404105', 'Sk. Asrafuzzaman', 'employee', 'asif_ios@w3engineers.com', '', 'Male', 'admin', 'Mobile', '123456', 'on', 'male_no_image.png', '2016-04-04 19:59:00', '0000-00-00 00:00:00'),
(110, 'W3E2010100103', 'Md. Rasheduzzaman', 'employee', 'mithu@w3engineers.com', '', 'Male', 'admin', 'W3 engineers', '123456', 'on', 'male_no_image.png', '2016-04-06 12:17:00', '0000-00-00 00:00:00'),
(111, 'W3E20160305106', 'SHAIKH ENAMUR REZA', 'employee', 'reza@w3engineers.com', '01911006505', 'Male', 'admin', 'Web', '123456', 'on', 'Picture of me 2.png', '2016-05-03 11:54:00', '2016-05-13 10:45:00'),
(112, 'W3EDA2015010773', 'Md. Saddam Hossain Majumder', 'employee', 'saddam_dhk@w3engineers.com', '', 'Male', 'admin', 'QA(Web)', '123456', 'on', 'male_no_image.png', '2016-05-12 10:56:00', '0000-00-00 00:00:00'),
(113, 'W3E20161605107', 'Mostafizur Rahman', 'employee', 'mostafizur@w3engineers.com', '01923585957', 'Male', 'Sonadanga', 'Mobile', '123456', 'on', 'pp.PNG', '2016-05-19 13:33:00', '2016-05-19 13:41:00'),
(114, 'W3EDA20161605108', 'Animesh Biswas', 'employee', 'animesh@w3engineers.com', '', 'Male', 'admin', 'Web', 'postgre', 'on', 'male_no_image.png', '2016-05-19 13:39:00', '2016-05-19 13:51:00'),
(115, 'W3E20160805109', 'Jewel Rana', 'employee', 'bappy@w3engineers.com', '', 'Male', 'admin', 'Web', '123456', 'on', 'male_no_image.png', '2016-08-26 12:31:00', '0000-00-00 00:00:00'),
(116, 'W3E20161205112', 'Md. Al Imran', 'employee', 'imran_qa@w3engineers.com', '', 'Male', 'admin', 'QA(Mobile)', '123456', 'on', 'male_no_image.png', '2016-12-06 12:42:00', '2016-12-06 12:42:00'),
(117, 'W3E20161206113', 'Sk Arman', 'employee', 'arman@w3engineers.com', '', 'Male', 'admin', 'Yo! Desktop', '123456', 'on', 'male_no_image.png', '2016-12-08 11:19:00', '0000-00-00 00:00:00'),
(118, 'W3E20161215114', 'Zakaria Shahed', 'employee', 'zakaria@w3engineers.com', '', 'Male', 'admin', 'QA(Web)', '123456', 'on', 'male_no_image.png', '2016-12-20 11:01:00', '0000-00-00 00:00:00'),
(119, 'W3E20170201115', 'Shakila Hossain Dipa', 'employee', 'dipa@w3engineers.com', '', 'Female', 'admin', 'QA(Mobile)', '123456', 'on', 'female_no_image.png', '2017-02-06 12:03:00', '0000-00-00 00:00:00'),
(120, 'W3E20170302116', 'Humaira Siddika Tropa', 'employee', 'tropa@w3engineers.com', '', 'Female', 'admin', 'Mobile', '123456', 'on', 'female_no_image.png', '2017-03-07 19:55:00', '0000-00-00 00:00:00'),
(121, 'W3E20170304118', 'Erasad Alam', 'employee', 'erasad@w3engineers.com', '', 'Male', 'admin', 'QA(Web)', '123456', 'on', 'male_no_image.png', '2017-04-05 19:44:00', '0000-00-00 00:00:00'),
(122, 'W3E20170703119', 'Tamanna Sharmin Nitu', 'employee', 'tamanna@w3engineers.com', '', 'Female', 'admin', 'Mobile', '123456', 'on', 'female_no_image.png', '2017-07-04 10:08:00', '0000-00-00 00:00:00'),
(123, 'W3E20170207120', 'Ashif Emtiaz', 'employee', 'bappy@w3engineers.com', '', 'Male', 'admin', 'Yo! Desktop', 'mahamud#22', 'on', 'male_no_image.png', '2017-07-25 16:08:00', '2017-07-27 15:30:00'),
(124, 'W3E20170911121', 'Mohd. Asfaq-E-Azam Rifat', 'employee', 'rifat@w3engineers.com', '', 'Male', 'admin', 'Yo! Desktop', '123456', 'on', 'male_no_image.png', '2017-09-20 16:59:00', '2017-09-20 16:59:00'),
(125, 'W3EI20170911003', 'Md. Farhad Hussain', 'employee', 'farhad@w3engineers.com', '', 'Male', 'admin', 'Yo! Desktop', '123456', 'on', 'male_no_image.png', '2017-09-20 17:01:00', '2017-09-20 17:01:00'),
(126, 'W3EI20170904001', 'Tariqul Islam', 'employee', 'tariqul@w3engineers.com', '', 'Male', 'admin', 'Yo! Desktop', '123456', 'on', 'male_no_image.png', '2017-09-20 17:02:00', '2017-09-20 17:02:00'),
(127, 'W3EI20170904002', 'Shameem Hossain', 'employee', 'shameem@w3engineers.com', '', 'Male', 'admin', 'Yo! Desktop', '123456', 'on', 'male_no_image.png', '2017-09-20 17:04:00', '2017-09-20 17:04:00'),
(128, 'W3E20171002123', 'Gazi Abduulah Shahriaz', 'employee', 'shahriar@w3engineers.com', '', 'Male', 'admin', 'Web', '123456', 'on', 'male_no_image.png', '2017-10-02 12:32:00', '2017-10-02 12:32:00'),
(129, 'W3EI20171016004', 'Hasan Mahamud', 'employee', 'hasan_qa@w3engineers.com', '', 'Male', 'admin', 'QA(Mobile)', '123456', 'on', 'male_no_image.png', '2017-10-17 10:19:00', '2017-10-17 10:19:00'),
(130, 'W3EI20171101005', 'Md Omar Hasan', 'employee', 'omar@w3engineers.com', '', 'Male', 'admin', 'Yo! Desktop', '123456', 'on', 'male_no_image.png', '2017-11-02 10:52:00', '2017-11-02 10:52:00'),
(131, 'W3EI20171101006', 'Asmaul Husna', 'employee', 'husna_qa@w3engineers.com', '', 'Female', 'admin', 'QA(Mobile)', '123456', 'on', 'female_no_image.png', '2017-11-02 10:53:00', '2017-11-02 10:53:00'),
(132, 'W3EI20171101007', 'Md Roman Ahmed', 'employee', 'roman_ahmed@w3engineers.com', '', 'Male', 'admin', 'Mobile', '123456', 'on', 'male_no_image.png', '2017-11-02 10:54:00', '2017-11-02 10:54:00'),
(133, 'W3EDA20171101126', 'Ashif-UL-Hossain', 'employee', 'ashif@w3engineers.com', '', 'Male', 'admin', 'Yo! Desktop', '123456', 'on', 'male_no_image.png', '2017-11-02 10:56:00', '2017-11-02 10:56:00'),
(134, 'W3E20171101127', 'Mir Tajmul Hossain', 'employee', 'tajmul@w3engineers.com', '', 'Male', 'admin', 'Yo! Desktop', '123456', 'on', 'male_no_image.png', '2017-11-02 10:57:00', '2017-11-02 10:57:00'),
(135, 'W3E20171106128', 'Md Arif Hossain', 'employee', 'arif_hossain@w3engineers.com', '', 'Male', 'admin', 'Mobile', '123456', 'on', 'male_no_image.png', '2017-11-10 10:04:00', '2017-11-10 10:04:00'),
(136, 'W3EOB2017121109', 'Md Delowar', 'employee', 'bappy@w3engineers.com', '', 'Male', 'admin', 'Mobile', '123456', 'on', 'male_no_image.png', '2017-12-15 10:13:00', '2017-12-15 10:13:00'),
(137, 'W3EDA20180101137', 'SUMIT SAHA SOURAV', 'employee', 'sumit@w3engineers.com', '', 'Male', 'admin', 'Mobile', '123456', 'on', 'male_no_image.png', '2018-01-11 10:08:00', '2018-01-11 10:08:00'),
(138, 'W3EDA20171204130', 'Md. Rezwanur Rahman Khan ', 'employee', 'rezwanur@w3engineers.com', '', 'Male', 'admin', 'Mobile', '123456', 'on', 'male_no_image.png', '2018-02-05 10:09:00', '2018-02-05 10:09:00'),
(139, 'W3E20180101133', 'Bishajit Kumar Das', 'employee', 'bishajit@w3engineers.com', '', 'Male', 'admin', 'Mobile', '123456', 'on', 'male_no_image.png', '2018-02-05 10:31:00', '2018-02-05 10:31:00'),
(140, 'W3E20180101134', 'Nipa Khatun', 'employee', 'nipa@w3engineers.com', '', 'Female', 'admin', 'Mobile', '123456', 'on', 'female_no_image.png', '2018-02-06 10:30:00', '2018-02-06 10:30:00'),
(141, 'W3E20180101135', 'Rahima Akter Shapla', 'employee', 'rahima@w3engineers.com', '', 'Female', 'admin', 'Mobile', '123', 'on', 'female_no_image.png', '2018-02-16 09:50:00', '2018-02-16 09:50:00'),
(142, 'W3EI20180212008', 'Pritam Khan', 'employee', 'boni@w3engineers.com', '', 'Male', 'admin', 'Yo! Desktop', '123456', 'on', 'male_no_image.png', '2018-02-27 11:18:00', '2018-02-27 11:18:00'),
(143, 'W3EI20180212009', 'Md. Hasnain', 'employee', 'hasnain@w3engineers.com', '', 'Male', 'admin', 'Web UI', '123456', 'on', 'male_no_image.png', '2018-02-27 11:19:00', '2018-02-27 11:19:00'),
(144, 'W3EI20180212010', 'Syed Mostain Ahmed', 'employee', 'mostain@w3engineers.com', '', 'Male', 'admin', 'Yo! Desktop', '123456', 'on', 'male_no_image.png', '2018-02-27 11:20:00', '2018-02-27 11:20:00'),
(145, 'W3EI20180212011', 'Md. Imran Hossain', 'employee', 'Imran_hossain@w3engineers.com', '', 'Male', 'admin', 'Web', '123456', 'on', 'male_no_image.png', '2018-02-27 11:21:00', '2018-02-27 11:21:00'),
(146, 'W3EI20180212012', 'Md. Mustakim Hayder', 'employee', 'mustakim@w3engineers.com', '', 'Male', 'admin', 'Web', '123456', 'on', 'male_no_image.png', '2018-02-27 11:22:00', '2018-02-27 11:22:00'),
(147, 'W3EI20180212013', 'Md. Adnan Ahsan', 'employee', 'adnan@w3engineers.com', '', 'Male', 'admin', 'Web', '123456', 'on', 'male_no_image.png', '2018-02-27 11:23:00', '2018-02-27 11:23:00'),
(148, 'W3EI20180212014', 'Md. Masum Moral', 'employee', 'masum@w3engineers.com', '', 'Male', 'admin', 'Yo! Desktop', '123456', 'on', 'male_no_image.png', '2018-02-27 11:25:00', '2018-02-27 11:25:00'),
(149, 'W3EI20180212015', 'Md. Ashiqur Rahman', 'employee', 'ashiqur@w3engineers.com', '', 'Male', 'admin', 'Yo! Desktop', '123456', 'on', 'male_no_image.png', '2018-02-27 11:25:00', '2018-02-27 11:25:00'),
(150, 'W3EI20180212016', 'Mohaiminur Rahman', 'employee', 'mohaiminur@w3engineers.com', '', 'Male', 'admin', 'Yo! Desktop', '123456', 'on', 'male_no_image.png', '2018-02-27 11:26:00', '2018-02-27 11:26:00'),
(151, 'W3EI20180212017', 'Sutapa Bachhar', 'employee', 'sutapa@w3engineers.com', '', 'Female', 'admin', 'QA(Mobile)', '123456', 'on', 'female_no_image.png', '2018-02-27 11:27:00', '2018-02-27 11:27:00'),
(152, 'W3EI20180212018', 'Kazi Noman Mahamud', 'employee', 'noman@w3engineers.com', '', 'Male', 'admin', 'Yo! Desktop', '123456', 'on', 'male_no_image.png', '2018-02-27 11:28:00', '2018-02-27 11:28:00'),
(153, 'W3EI20180212019', 'Swarna Roy', 'employee', 'swarna@w3engineers.com', '', 'Female', 'admin', 'Yo! Desktop', '123456', 'on', 'female_no_image.png', '2018-02-27 11:29:00', '2018-02-27 11:29:00'),
(154, 'W3EDA20180306139', 'Al Muktadir', 'employee', 'muktadir@w3engineers.com', '', 'Male', 'admin', 'Yo! Desktop', '123456', 'on', 'male_no_image.png', '2018-03-19 11:17:00', '2018-03-19 11:17:00'),
(155, 'reza', 'admin', 'admin', 'reza@w3engineers.com', '', 'Male', '', 'W3 engineers', '123456', 'on', 'male_no_image.png', '2018-04-03 20:35:00', '2018-04-03 20:35:00'),
(156, 'W345657', 'shawki vai', '', 'shawkiahmed40@gmail.com', '01839308129', '', '', 'Rightmesh', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lunch_menu`
--

CREATE TABLE `lunch_menu` (
  `id` int(11) NOT NULL,
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

INSERT INTO `lunch_menu` (`id`, `date`, `menu1`, `menu2`, `menu3`, `menu4`, `created_at`) VALUES
(1, '08-05-2018', 'Suji', 'Wonton', 'Semai', 'Carrot', '2018-05-14 08:08:23.000000'),
(2, '08-05-2018', 'Wonton', 'jilapi', 'Wonton', 'carrot', '2018-05-08 09:08:23.301804'),
(3, '08-05-2018', 'Wonton', 'semai', 'noodles', 'Wonton', '2018-05-08 09:08:23.344423'),
(4, '08/05/2018', 'Suji', 'Wonton', 'Semai', 'Carrot', '2018-05-11 13:39:31.982155'),
(5, '08/05/2018', 'Wonton', 'Wonton', 'Wonton', 'Wonton', '2018-05-11 13:39:32.049117'),
(6, '08/05/2018', 'Wonton', 'Wonton', 'Wonton', 'Wonton', '2018-05-11 13:39:32.100044'),
(7, '08/05/2018', 'Suji', 'Wonton', 'Semai', 'Carrot', '2018-05-11 13:42:34.899490'),
(8, '08/05/2018', 'Wonton', 'Wonton', 'Wonton', 'Wonton', '2018-05-11 13:42:34.951452'),
(9, '08/05/2018', 'Wonton', 'Wonton', 'Wonton', 'Wonton', '2018-05-11 13:42:34.997816'),
(10, '08/05/2018', 'Suji', 'Wonton', 'Semai', 'Carrot', '2018-05-11 13:47:03.081491'),
(11, '08/05/2018', 'Wonton', 'Wonton', 'Wonton', 'Wonton', '2018-05-11 13:47:03.130838'),
(12, '08/05/2018', 'Wonton', 'Wonton', 'Wonton', 'Wonton', '2018-05-11 13:47:03.180914'),
(13, '08/05/2018', 'Suji', 'Wonton', 'Semai', 'Carrot', '2018-05-11 13:59:58.552388'),
(14, '08/05/2018', 'Wonton', 'Wonton', 'Wonton', 'Wonton', '2018-05-11 13:59:58.625990'),
(15, '08/05/2018', 'Wonton', 'Wonton', 'Wonton', 'Wonton', '2018-05-11 13:59:58.676254'),
(16, '08/05/2018', 'Suji', 'Wonton', 'Semai', 'Carrot', '2018-05-11 14:01:46.378670'),
(17, '08/05/2018', 'Wonton', 'Wonton', 'Wonton', 'Wonton', '2018-05-11 14:01:46.411132'),
(18, '08/05/2018', 'Wonton', 'Wonton', 'Wonton', 'Wonton', '2018-05-11 14:01:46.436627'),
(19, '08/05/2018', 'Suji', 'Wonton', 'Semai', 'Carrot', '2018-05-11 14:02:32.300926'),
(20, '08/05/2018', 'Wonton', 'Wonton', 'Wonton', 'Wonton', '2018-05-11 14:02:32.392167'),
(21, '08/05/2018', 'Wonton', 'Wonton', 'Wonton', 'Wonton', '2018-05-11 14:02:32.442270');

-- --------------------------------------------------------

--
-- Table structure for table `snacks_menu`
--

CREATE TABLE `snacks_menu` (
  `id` int(10) NOT NULL,
  `date` varchar(100) NOT NULL,
  `item1` varchar(100) NOT NULL,
  `item2` varchar(100) NOT NULL,
  `item3` varchar(100) NOT NULL,
  `item4` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `snacks_menu`
--

INSERT INTO `snacks_menu` (`id`, `date`, `item1`, `item2`, `item3`, `item4`, `created_at`) VALUES
(1, '08/05/2018', 'Suji', 'Wonton', 'Semai', 'Carrot', '2018-05-10 13:51:39'),
(2, '08/05/2018', 'Wonton', 'Wonton', 'Wonton', 'Wonton', '2018-05-10 13:51:39'),
(3, '08/05/2018', 'Wonton', 'Wonton', 'Wonton', 'Wonton', '2018-05-10 13:51:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_files`
--

CREATE TABLE `tbl_files` (
  `id` int(10) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `file_type` varchar(100) NOT NULL,
  `uploaded_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_files`
--

INSERT INTO `tbl_files` (`id`, `file_name`, `file_type`, `uploaded_date`) VALUES
(1, 'snacks.csv', 'CSV', '2018-05-11 14:02:49'),
(2, 'snacks.csv', 'CSV', '2018-05-11 14:02:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lunch_order`
--

CREATE TABLE `tbl_lunch_order` (
  `sl` int(11) NOT NULL,
  `date` date NOT NULL,
  `office_id` varchar(100) NOT NULL,
  `lunch_id` int(11) NOT NULL,
  `ordered_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `sl` int(11) NOT NULL,
  `date` date NOT NULL,
  `office_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `snacks_id` int(11) NOT NULL,
  `ordered_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`sl`, `date`, `office_id`, `snacks_id`, `ordered_by`) VALUES
(11, '2018-04-30', '1234', 3, '192.168.2.26'),
(18, '2018-05-03', '1234', 1, '192.168.0.106'),
(20, '2018-05-08', '1234', 4, '192.168.0.102');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orderable_snacks`
--

CREATE TABLE `tbl_orderable_snacks` (
  `sl` int(11) NOT NULL,
  `date` date NOT NULL,
  `snacks_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_orderable_snacks`
--

INSERT INTO `tbl_orderable_snacks` (`sl`, `date`, `snacks_id`) VALUES
(1, '2018-05-08', 1),
(2, '2018-05-08', 3),
(3, '2018-05-08', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_snacks`
--

CREATE TABLE `tbl_snacks` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `order_count` bigint(50) NOT NULL,
  `review_count` bigint(50) NOT NULL,
  `rating_sum` bigint(100) NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_snacks`
--

INSERT INTO `tbl_snacks` (`id`, `title`, `order_count`, `review_count`, `rating_sum`, `image`) VALUES
(1, 'Noodles', 1, 0, 0, 'item_noodles.png'),
(2, 'French Fry', 12, 6, 20, 'item_french_fry.jpg'),
(3, 'Semai', 5, 3, 11, 'item_semai.jpg'),
(4, 'Onthon', 5, 2, 7, 'item_wonthon.jpg'),
(5, 'Banana + Biscuit', 0, 0, 0, 'bananabiscuit.jpg'),
(6, 'Cake', 0, 0, 0, 'cake.jpg'),
(7, 'Carrot + Cucumber', 0, 0, 0, 'carrot_cucumber.jpg'),
(8, 'Chola muri', 0, 0, 0, 'cholamuri.jpg'),
(9, 'Danish', 0, 0, 0, 'danish.jpg'),
(10, 'Egg + Banana', 0, 0, 0, 'eggbanana.jpg'),
(11, 'Patis', 0, 0, 0, 'patis.jpg'),
(12, 'Payes', 0, 0, 0, 'payes.jpg'),
(13, 'Roll', 0, 0, 0, 'roll.jpg'),
(14, 'Suji', 0, 0, 0, 'suji.jpg');

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
(4, '', '', '', 'shawki@gmail.com', '12345'),
(5, 'W345657', 'ahmed shawki', 'Intern', 's@gmail.com', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee_table`
--
ALTER TABLE `employee_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lunch_menu`
--
ALTER TABLE `lunch_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `snacks_menu`
--
ALTER TABLE `snacks_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_lunch_order`
--
ALTER TABLE `tbl_lunch_order`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `tbl_orderable_snacks`
--
ALTER TABLE `tbl_orderable_snacks`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `tbl_snacks`
--
ALTER TABLE `tbl_snacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`serial_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee_table`
--
ALTER TABLE `employee_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `lunch_menu`
--
ALTER TABLE `lunch_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `snacks_menu`
--
ALTER TABLE `snacks_menu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_lunch_order`
--
ALTER TABLE `tbl_lunch_order`
  MODIFY `sl` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `sl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_orderable_snacks`
--
ALTER TABLE `tbl_orderable_snacks`
  MODIFY `sl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_snacks`
--
ALTER TABLE `tbl_snacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `serial_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
