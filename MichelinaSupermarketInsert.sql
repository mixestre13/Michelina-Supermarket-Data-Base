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

---- Insert itemscategories

INSERT INTO `itemscategories` (`category_id`, `category_name`) VALUES
(4999, 'Produce'),
(1999999, 'Grocery'),
(4999999, 'Taxable Grocery'),
(7999999, 'Deli'),
(9999999, 'Dairy');

---- Insert itemsproducts

INSERT INTO `itemsproducts` (`product_id`, `product_name`, `category_id`, `list_price`, `quantity`, `product_stock`) VALUES
(4012, 'Navel Orange', 4999, '1.00', 70, 'YES'),
(4072, 'White Potato', 4999, '1.99', 65, 'NO'),
(4087, 'Tomato Plus', 4999, '0.99', 60, 'NO'),
(1686393, 'Goya Sesoning Chicken', 1999999, '2.49', 35, 'NO'),
(4688899, 'Entenmann’s cake all butter pound', 4999999, '3.50', 25, 'NO');

---- Insert storecustomer

INSERT INTO `storecustomer` (`customer_id`, `customer_name`, `customer_lastname`, `customer_phone`) VALUES
(332225369, 'Maylin', 'Alvarado', 1113889611),
(896494616, 'Daysi', 'Alvarado', 2019486486),
(896566164, 'Kevin', 'Gonzalez', 214789654),
(999655123, 'Michelle', 'Gonzalez', 1243889611);

---- Insert storedetails

INSERT INTO `storedetails` (`order_id`, `product1_id`, `product_name`, `Quantity`, `Total_Price`, `Total`) VALUES
(1, 4688899, 'Entenmann’s cake all butter pound', 5, '3.50', '17.50'),
(2, 4012, 'Navel Orange', 3, '1.00', '3.00');

---- Insert storeemployer

INSERT INTO `storeemployer` (`employer_id`, `employer_name`, `employer_lastname`, `employer_salary`, `employer_number`, `employer_dob`, `store_id`) VALUES
(41, 'Isabel', 'Ramirez', 650, 2141122105, '1963-02-02', 25131),
(62, 'Manar', 'Ahmed', 550, 1347761656, '2000-10-07', 8951),
(74, 'Joan', 'Wetmore', 450, 1183512690, '1780-12-07', 8951),
(98, 'Amber', 'Gardner', 575, 2144477647, '1997-04-07', 25131);

---- Insert storeinformation

INSERT INTO `storeinformation` (`store_id`, `store_name`, `store_phone`, `street`, `city`, `state`, `zip_code`) VALUES
(8951, 'Michelina Supermarket', '+17184423537', '155 Bay Street', 'Staten Island', 'NY', '10310'),
(25131, 'KeyFood Supermarket', '+17187209500', '331 Port Richmond', 'Staten Island', 'NY', '10302');

---- Insert storeorders

INSERT INTO `storeorders` (`order_id`, `product1_id`, `quatity`, `customer_id`, `status`, `category_id`, `date_process`, `shipped_date`) VALUES
(1, 4688899, 5, 896494616, 'ACT', 1999999, '2020-10-04', '2020-10-30'),
(2, 4012, 5, 332225369, 'ACT', 4999, '2020-09-01', '2020-10-01');
