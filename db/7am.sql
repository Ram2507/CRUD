-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2017 at 04:21 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `7am`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `username`, `email`, `mobile`, `city`) VALUES
(1, 'Ram', 'ram@mail.com', 234234234, 'Hyderabad'),
(2, 'Siva', 'siva@mail.com', 131231, 'Chennai'),
(3, 'Naresh', 'naresh@mail.com', 53453453, 'Delhi'),
(4, 'Mahesh', 'Mahesh@mail.com', 53453453, 'Delhi'),
(5, 'Lakshmi', 'lakshmi@mail.com', 53453453, 'Delhi'),
(6, 'Ramya', 'ramya@mail.com', 53453453, 'Delhi'),
(7, 'Hello', 'hello@mail.com', 23423423, 'Delhi'),
(8, 'Suresh', 'suresh@mail.com', 342342, 'Delhi'),
(9, 'Suresh', 'suresh@mail.com', 342342, 'Delhi'),
(10, 'Koti123', 'koti123@mail.com', 324234, 'Hyd');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `pname` varchar(250) NOT NULL,
  `pdesc` text NOT NULL,
  `pprice` int(11) NOT NULL,
  `pimage` varchar(250) NOT NULL,
  `date` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `pname`, `pdesc`, `pprice`, `pimage`, `date`, `status`) VALUES
(3, 'Shirt', 'This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 o', 2500, 'Penguins.jpg', '2017-11-30 08:23:30', 0),
(4, 'Shoe', 'This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 oThis program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 o', 1300, 'Lighthouse.jpg', '2017-11-30 08:24:12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(6) NOT NULL,
  `address` text NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `terms` int(11) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'InActive',
  `date_of_reg` datetime NOT NULL,
  `ip` varchar(30) NOT NULL,
  `profile_pic` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `username`, `email`, `password`, `mobile`, `dob`, `gender`, `address`, `state`, `city`, `terms`, `status`, `date_of_reg`, `ip`, `profile_pic`) VALUES
(1, 'Ram', 'ram@mail.com', '81dc9bdb52d04dc20036dbd8313ed055', '9885776740', '1987-07-25', 'Male', 'Maithrivanam', 'Telangana', 'Hyderabad', 1, 'Active', '2017-11-21 08:11:01', '::1', ''),
(2, 'Ravi.B', 'ravi@mail.com', '81dc9bdb52d04dc20036dbd8313ed055', '9885770000', '2000-11-12', 'Male', 'SR Nagar', 'Telangana', 'Hyderabad', 1, 'Active', '2017-11-21 08:17:55', '::1', 'q3d6nkzecyljao8i_1511837631_Chrysanthemum.jpg'),
(5, 'Ram Babburi', 'rambabburi@gmail.com', '202cb962ac59075b964b07152d234b70', '9885776740', '2000-10-10', 'Male', 'Ameerpet', 'Telangana', 'Hyderabad', 1, 'InActive', '2017-11-21 08:24:54', '::1', ''),
(6, 'lakshmi', 'lakshmi@mail.com', '202cb962ac59075b964b07152d234b70', '9885776740', '2015-10-10', 'Female', 'Hello', 'Andhrapradesh', 'Hyderabad', 1, 'InActive', '2017-11-21 08:37:29', '::1', ''),
(7, 'koti', 'koti@mail.com', '202cb962ac59075b964b07152d234b70', '9885776740', '2015-10-10', 'Male', 'Hello', 'Andhrapradesh', 'Hyderabad', 1, 'Active', '2017-11-21 08:45:58', '::1', '');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `state` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state`, `district`) VALUES
(1, 'Andhrapradesh', 'Prakasam'),
(2, 'Andhrapradesh', 'Guntur'),
(3, 'Andhrapradesh', 'Krishna'),
(4, 'Andhrapradesh', 'Nellore'),
(5, 'Telangana', 'Warangal'),
(6, 'Telangana', 'Khammam'),
(7, 'Telangana', 'Nalgonda'),
(8, 'Telangana', 'RangaReddy'),
(9, 'Odisha', 'Khurda'),
(10, 'Odisha', 'Cuttack'),
(11, 'Odisha', 'Malkangiri'),
(12, 'Odisha', 'Bhadark'),
(13, 'Maharastra', 'Pune'),
(14, 'Maharastra', 'Nagapur'),
(15, 'Maharastra', 'Amaravati'),
(16, 'Maharastra', 'kollapur'),
(17, 'Uttarpradesh', 'Varanasi'),
(18, 'Uttarpradesh', 'Allahabad'),
(19, 'Uttarpradesh', 'Mirzapur'),
(20, 'Uttarpradesh', 'Agra'),
(21, 'Tamilnadu', 'Erode'),
(22, 'Tamilnadu', 'Coimbatore'),
(23, 'Tamilnadu', 'Salem'),
(24, 'Tamilnadu', 'Vellore');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
