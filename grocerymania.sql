-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2019 at 01:46 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocerymania`
--

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `Order_ID` int(10) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Order_Amount` float NOT NULL,
  `Payment_Method` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pastorders`
--

CREATE TABLE `pastorders` (
  `Order_ID` int(10) NOT NULL,
  `Order_Name` varchar(255) NOT NULL,
  `Order_Amount` int(10) NOT NULL,
  `Person_Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Product_ID` int(10) NOT NULL,
  `Product_Name` varchar(255) NOT NULL,
  `Product_Price` float NOT NULL,
  `Product_Image` varchar(255) NOT NULL,
  `Product_Type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Product_ID`, `Product_Name`, `Product_Price`, `Product_Image`, `Product_Type`) VALUES
(1, 'Potato (1 KG)', 34, 'Images/Potato.jpg', 'Vegetables'),
(2, 'Tomato (1 KG)', 15.2, 'Images/Tomato.jpeg', 'Vegetables'),
(3, 'Onion (1 KG)', 28, 'Images/Onion.jpg', 'Vegetables'),
(4, 'Lady Finger (1 KG)', 34, 'Images/Bhindi.jpg', 'Vegetables'),
(5, 'Banana (1 KG)', 38, 'Images/Banana.jpg', 'Fruits'),
(6, 'Apple (1 KG)', 80, 'Images/Apple.jpg', 'Fruits'),
(7, 'Pomegranate (1 KG)', 100, 'Images/Pomegranate.jpg', 'Fruits'),
(8, 'Basmati Rice (1 KG)', 85, 'Images/rice.jpg', 'GrainsAndPulses'),
(9, 'Green Moong Dal (1 KG)', 80, 'Images/moong.jpg', 'GrainsAndPulses'),
(10, 'Amul Milk (1 L)', 35, 'Images/milk.jpg', 'BakeryAndDairy'),
(11, 'Britannia Sandwitch Bread (400 Gram)', 20, 'Images/bread.jpg', 'BakeryAndDairy'),
(12, 'Tropicana 1 Litre', 100, 'Images/tropicana.png', 'Beverages'),
(13, 'Coco Cola 1 Litre', 45, 'Images/cola.jpg', 'Beverages'),
(14, 'Colin Glass Cleaner', 150, 'Images/colin.jpg', 'CleaningAndHousehold'),
(15, 'Harpic Bathroom Cleaner', 175, 'Images/Harpic.jpg', 'CleaningAndHousehold'),
(16, 'Mamy Poko Pants XL', 520, 'Images/Diapers.jpg', 'BabyCare'),
(17, 'Johnsons Baby Shampoo 500ml', 272, 'Images/babyshampoo.jpg', 'BabyCare'),
(18, 'Ponds Pure White', 140, 'Images/ponds.jpg', 'BeautyAndHygiene'),
(19, 'Head & Shoulders Shampoo', 230, 'Images/Shampoo.jpg', 'BeautyAndHygiene'),
(20, 'Maggi', 20, 'Images/maggi.jpg', 'Snacks'),
(21, 'Dairy Milk Silk', 60, 'Images/silk.png', 'Snacks');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `Email` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Mobile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `Name` varchar(255) NOT NULL,
  `HomeNo` varchar(255) NOT NULL,
  `Locality` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `State` varchar(255) NOT NULL,
  `Zipcode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`Order_ID`);

--
-- Indexes for table `pastorders`
--
ALTER TABLE `pastorders`
  ADD PRIMARY KEY (`Order_ID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Product_ID`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`Email`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD KEY `Name` (`Name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `Order_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pastorders`
--
ALTER TABLE `pastorders`
  MODIFY `Order_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `Product_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pastorders`
--
ALTER TABLE `pastorders`
  ADD CONSTRAINT `pastorders_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `orderdetails` (`Order_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD CONSTRAINT `userdetails_ibfk_1` FOREIGN KEY (`Name`) REFERENCES `signup` (`Username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
