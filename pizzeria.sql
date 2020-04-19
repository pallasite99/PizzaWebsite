-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 19, 2020 at 07:49 PM
-- Server version: 5.7.29-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pizzeria`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `addr` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zip` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `addr`, `city`, `state`, `zip`) VALUES
(301, 'Dhankawadi', 'Pune', 'MH', 411043),
(302, 'Shivaji Housing Society, SB Road', 'Pune', 'MH', 411016),
(303, 'Bhosalenagar', 'Pune', 'MH', 411007),
(304, 'Pashan', 'Pune', 'MAHARASHTRA', 411021);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `amt` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `amt`) VALUES
(101, 2043),
(103, 299),
(109, 847),
(110, 1096),
(111, 1096),
(112, 1096),
(113, 1096),
(114, 1096),
(115, 1096),
(116, 1096),
(117, 797),
(118, 797),
(119, 797),
(120, 797),
(121, 797),
(122, 797),
(123, 797),
(124, 797),
(125, 797),
(126, 797),
(127, 797),
(128, 797),
(129, 797),
(130, 797),
(131, 797),
(132, 797),
(133, 797),
(134, 797),
(135, 797),
(136, 797),
(137, 797),
(138, 797),
(139, 797),
(140, 797),
(141, 797),
(142, 797),
(143, 797),
(144, 797),
(145, 797),
(146, 797),
(147, 797),
(148, 797),
(149, 797),
(150, 797),
(151, 797),
(152, 797),
(153, 797),
(154, 797),
(155, 797);

-- --------------------------------------------------------

--
-- Stand-in structure for view `cart_details`
--
CREATE TABLE `cart_details` (
`cart_id` int(11)
,`amt` float
,`pizza_id` int(11)
,`qty` int(11)
,`name` varchar(20)
,`price` float
,`veg` tinyint(1)
);

-- --------------------------------------------------------

--
-- Table structure for table `cart_item`
--

CREATE TABLE `cart_item` (
  `cid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart_item`
--

INSERT INTO `cart_item` (`cid`, `pid`, `qty`) VALUES
(101, 1001, 2),
(101, 1002, 3),
(101, 2001, 2),
(103, 1001, 1),
(109, 1002, 2),
(109, 2001, 1),
(110, 1001, 2),
(110, 1002, 2),
(111, 1001, 2),
(111, 1002, 2),
(112, 1001, 2),
(112, 1002, 2),
(113, 1001, 2),
(113, 1002, 2),
(114, 1001, 2),
(114, 1002, 2),
(115, 1001, 2),
(115, 1002, 2),
(116, 1001, 2),
(116, 1002, 2),
(122, 1001, 1),
(122, 1002, 2),
(123, 1001, 1),
(123, 1002, 2),
(124, 1001, 1),
(124, 1002, 2),
(125, 1001, 1),
(125, 1002, 2),
(126, 1001, 1),
(126, 1002, 2),
(127, 1001, 1),
(127, 1002, 2),
(128, 1001, 1),
(128, 1002, 2),
(129, 1001, 1),
(129, 1002, 2),
(130, 1001, 1),
(130, 1002, 2),
(131, 1001, 1),
(131, 1002, 2),
(132, 1001, 1),
(132, 1002, 2),
(133, 1001, 1),
(133, 1002, 2),
(134, 1001, 1),
(134, 1002, 2),
(135, 1001, 1),
(135, 1002, 2),
(136, 1001, 1),
(136, 1002, 2),
(137, 1001, 1),
(137, 1002, 2),
(138, 1001, 1),
(138, 1002, 2),
(139, 1001, 1),
(139, 1002, 2),
(140, 1001, 1),
(140, 1002, 2),
(141, 1001, 1),
(141, 1002, 2),
(142, 1001, 1),
(142, 1002, 2),
(143, 1001, 1),
(143, 1002, 2),
(144, 1001, 1),
(144, 1002, 2),
(145, 1001, 1),
(145, 1002, 2),
(146, 1001, 1),
(146, 1002, 2),
(147, 1001, 1),
(147, 1002, 2),
(148, 1001, 1),
(148, 1002, 2),
(149, 1001, 1),
(149, 1002, 2),
(150, 1001, 1),
(150, 1002, 2),
(151, 1001, 1),
(151, 1002, 2),
(152, 1001, 1),
(152, 1002, 2),
(153, 1001, 1),
(153, 1002, 2),
(154, 1001, 1),
(154, 1002, 2),
(155, 1001, 1),
(155, 1002, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pizza`
--

CREATE TABLE `pizza` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(150) DEFAULT NULL,
  `veg` tinyint(1) NOT NULL,
  `price` float NOT NULL,
  `img` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pizza`
--

INSERT INTO `pizza` (`id`, `name`, `description`, `veg`, `price`, `img`) VALUES
(1001, 'Veg Exotica', 'The best veg pizza there is!!', 1, 299, 'img/veg_exotica.jpg'),
(1002, 'Farmhouse', 'Straight from the farms into your palms', 1, 249, 'img/farmhouse.jpg'),
(2001, 'Non Veg Supreme', 'The best pizza you will ever eat!!', 0, 349, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `prev_orders`
--

CREATE TABLE `prev_orders` (
  `cid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `del_date` date NOT NULL,
  `addr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prev_orders`
--

INSERT INTO `prev_orders` (`cid`, `uid`, `del_date`, `addr`) VALUES
(101, 1, '2020-04-10', 301),
(103, 2, '2020-04-01', 302),
(109, 1, '2020-04-17', 301),
(110, 1, '2020-04-17', 301),
(111, 1, '2020-04-17', 301),
(112, 1, '2020-04-17', 301),
(113, 1, '2020-04-17', 301),
(114, 1, '2020-04-17', 301),
(115, 1, '2020-04-17', 301),
(116, 1, '2020-04-17', 301),
(122, 6, '2020-04-19', 304),
(123, 6, '2020-04-19', 304),
(124, 6, '2020-04-19', 304),
(125, 6, '2020-04-19', 304),
(126, 6, '2020-04-19', 304),
(127, 6, '2020-04-19', 304),
(128, 6, '2020-04-19', 304),
(129, 6, '2020-04-19', 304),
(130, 6, '2020-04-19', 304),
(131, 6, '2020-04-19', 304),
(132, 6, '2020-04-19', 304),
(133, 6, '2020-04-19', 304),
(134, 6, '2020-04-19', 304),
(135, 6, '2020-04-19', 304),
(136, 6, '2020-04-19', 304),
(137, 6, '2020-04-19', 304),
(138, 6, '2020-04-19', 304),
(139, 6, '2020-04-19', 304),
(140, 6, '2020-04-19', 304),
(141, 6, '2020-04-19', 304),
(142, 6, '2020-04-19', 304),
(143, 6, '2020-04-19', 304),
(144, 6, '2020-04-19', 304),
(145, 6, '2020-04-19', 304),
(146, 6, '2020-04-19', 304),
(147, 6, '2020-04-19', 304),
(148, 6, '2020-04-19', 304),
(149, 6, '2020-04-19', 304),
(150, 6, '2020-04-19', 304),
(151, 6, '2020-04-19', 304),
(152, 6, '2020-04-19', 304),
(153, 6, '2020-04-19', 304),
(154, 6, '2020-04-19', 304),
(155, 6, '2020-04-19', 304);

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `phnum` int(11) NOT NULL,
  `addr` int(11) DEFAULT NULL,
  `psw` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `email`, `fname`, `lname`, `phnum`, `addr`, `psw`) VALUES
(1, 'adi@gmail.com', 'Aditi', 'Hande', 1234567, 301, 'password'),
(2, 'salil.apte99@gmail.com', 'Salil', 'Apte', 1111111111, 302, '12345678'),
(6, 'athang213@gmail.com', 'Athang', 'Gupte', 1234567890, 304, 'password');

-- --------------------------------------------------------

--
-- Structure for view `cart_details`
--
DROP TABLE IF EXISTS `cart_details`;

CREATE ALGORITHM=UNDEFINED DEFINER=`athang213`@`localhost` SQL SECURITY DEFINER VIEW `cart_details`  AS  select `cart_item`.`cid` AS `cart_id`,`cart`.`amt` AS `amt`,`cart_item`.`pid` AS `pizza_id`,`cart_item`.`qty` AS `qty`,`pizza`.`name` AS `name`,`pizza`.`price` AS `price`,`pizza`.`veg` AS `veg` from ((`cart_item` join `cart` on((`cart_item`.`cid` = `cart`.`id`))) join `pizza` on((`cart_item`.`pid` = `pizza`.`id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`cid`,`pid`),
  ADD KEY `pizza_id_fk` (`pid`);

--
-- Indexes for table `pizza`
--
ALTER TABLE `pizza`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prev_orders`
--
ALTER TABLE `prev_orders`
  ADD PRIMARY KEY (`cid`,`uid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `addr` (`addr`),
  ADD KEY `addr_2` (`addr`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `addr` (`addr`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;
--
-- AUTO_INCREMENT for table `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;
--
-- AUTO_INCREMENT for table `pizza`
--
ALTER TABLE `pizza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2002;
--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD CONSTRAINT `cart_id_fk` FOREIGN KEY (`cid`) REFERENCES `cart` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pizza_id_fk` FOREIGN KEY (`pid`) REFERENCES `pizza` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `prev_orders`
--
ALTER TABLE `prev_orders`
  ADD CONSTRAINT `prev_orders_addr_fk` FOREIGN KEY (`addr`) REFERENCES `address` (`id`),
  ADD CONSTRAINT `prev_orders_cart_fk` FOREIGN KEY (`cid`) REFERENCES `cart` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `prev_orders_user_fk` FOREIGN KEY (`uid`) REFERENCES `Users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `Users`
--
ALTER TABLE `Users`
  ADD CONSTRAINT `user_addr_fk` FOREIGN KEY (`addr`) REFERENCES `address` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
