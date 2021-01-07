---- Name: Michelle Gonzalez
---- FINAL PROJECT OF CSC 332

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2020 at 03:45 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `michelina supermarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `itemscategories`
--

CREATE TABLE `itemscategories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `itemscategories`
--

-- --------------------------------------------------------

--
-- Table structure for table `itemsproducts`
--

CREATE TABLE `itemsproducts` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `category_id` int(10) NOT NULL,
  `list_price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `product_stock` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `itemsproducts`
--
-- --------------------------------------------------------

--
-- Table structure for table `storecustomer`
--

CREATE TABLE `storecustomer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(25) NOT NULL,
  `customer_lastname` varchar(25) NOT NULL,
  `customer_phone` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `storecustomer`
--
-- --------------------------------------------------------

--
-- Table structure for table `storedetails`
--

CREATE TABLE `storedetails` (
  `order_id` int(20) NOT NULL,
  `product1_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `Quantity` int(20) NOT NULL,
  `Total_Price` decimal(10,2) NOT NULL,
  `Total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `storedetails`
--
-- --------------------------------------------------------

--
-- Table structure for table `storeemployer`
--

CREATE TABLE `storeemployer` (
  `employer_id` int(11) NOT NULL,
  `employer_name` varchar(20) NOT NULL,
  `employer_lastname` varchar(20) NOT NULL,
  `employer_salary` int(8) NOT NULL,
  `employer_number` int(12) NOT NULL,
  `employer_dob` date NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `storeemployer`
--

-- --------------------------------------------------------

--
-- Table structure for table `storeinformation`
--

CREATE TABLE `storeinformation` (
  `store_id` int(11) NOT NULL,
  `store_name` varchar(50) NOT NULL,
  `store_phone` varchar(50) NOT NULL,
  `street` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(10) NOT NULL,
  `zip_code` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `storeinformation`
--
-- --------------------------------------------------------

--
-- Table structure for table `storeorders`
--

CREATE TABLE `storeorders` (
  `order_id` int(11) NOT NULL,
  `product1_id` int(15) NOT NULL,
  `quatity` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `status` varchar(4) NOT NULL,
  `category_id` int(10) NOT NULL,
  `date_process` date NOT NULL,
  `shipped_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `storeorders`
--


--
-- Indexes for dumped tables
--

--
-- Indexes for table `itemscategories`
--
ALTER TABLE `itemscategories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `itemsproducts`
--
ALTER TABLE `itemsproducts`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `product_name` (`product_name`),
  ADD KEY `list_price` (`list_price`);

--
-- Indexes for table `storecustomer`
--
ALTER TABLE `storecustomer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `storedetails`
--
ALTER TABLE `storedetails`
  ADD KEY `order_id` (`order_id`,`product_name`),
  ADD KEY `product_name` (`product_name`),
  ADD KEY `product1_id` (`product1_id`),
  ADD KEY `Total_Price` (`Total_Price`),
  ADD KEY `Total_Price_2` (`Total_Price`);

--
-- Indexes for table `storeemployer`
--
ALTER TABLE `storeemployer`
  ADD PRIMARY KEY (`employer_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `storeinformation`
--
ALTER TABLE `storeinformation`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `storeorders`
--
ALTER TABLE `storeorders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `product1_id` (`product1_id`),
  ADD KEY `product1_id_2` (`product1_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `storeemployer`
--
ALTER TABLE `storeemployer`
  MODIFY `employer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `storeorders`
--
ALTER TABLE `storeorders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `itemsproducts`
--
ALTER TABLE `itemsproducts`
  ADD CONSTRAINT `itemsproducts_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `itemscategories` (`category_id`);

--
-- Constraints for table `storedetails`
--
ALTER TABLE `storedetails`
  ADD CONSTRAINT `storedetails_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `storeorders` (`order_id`),
  ADD CONSTRAINT `storedetails_ibfk_2` FOREIGN KEY (`product_name`) REFERENCES `itemsproducts` (`product_name`),
  ADD CONSTRAINT `storedetails_ibfk_3` FOREIGN KEY (`product1_id`) REFERENCES `storeorders` (`product1_id`),
  ADD CONSTRAINT `storedetails_ibfk_4` FOREIGN KEY (`Total_Price`) REFERENCES `itemsproducts` (`list_price`);

--
-- Constraints for table `storeemployer`
--
ALTER TABLE `storeemployer`
  ADD CONSTRAINT `storeemployer_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `storeinformation` (`store_id`);

--
-- Constraints for table `storeorders`
--
ALTER TABLE `storeorders`
  ADD CONSTRAINT `storeorders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `storecustomer` (`customer_id`),
  ADD CONSTRAINT `storeorders_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `itemscategories` (`category_id`),
  ADD CONSTRAINT `storeorders_ibfk_3` FOREIGN KEY (`product1_id`) REFERENCES `itemsproducts` (`product_id`);
COMMIT;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

