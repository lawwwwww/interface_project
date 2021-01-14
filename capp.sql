-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2020 at 07:27 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capp`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `ItemNo` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `Price` double NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` bigint(11) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `Num` int(11) NOT NULL,
  `range1` int(11) NOT NULL,
  `range2` int(11) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fullcart`
--

CREATE TABLE `fullcart` (
  `num` int(11) NOT NULL,
  `ItemNo` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `Price` double NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` bigint(11) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Img` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `morelink` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `ProductName`, `Description`, `Img`, `price`, `morelink`, `category`) VALUES
(1, 'Galaxy M31', 'Multi-role Quad camera, Long lasting battery', 'img/samsung_img1.jpg', 1099, 'https://www.samsung.com/my/smartphones/galaxy-m31-m315/SM-M315FZBGXME/', 'smartphone'),
(2, 'Galaxy A01', 'Dual Rear camera, with Depth camera', 'img/samsung_img2.jpg', 449, 'https://www.samsung.com/my/smartphones/galaxy-a01-a015/SM-A015FZKDXME/', 'smartphone'),
(3, 'Galaxy S20 Ultra 5G', 'Zoom in 100x, pinch in to experience 108MP', 'img/samsung_img3.jpg', 4999, 'https://www.samsung.com/my/smartphones/galaxy-s20/', 'smartphone'),
(4, 'Galaxy Note10 Lite', 'Super fast charging, bluetooth pen', 'img/samsung_img4.jpg', 2299, 'https://www.samsung.com/my/smartphones/galaxy-note10-lite/SM-N770FZSUXME/', 'smartphone'),
(5, 'Galaxy z-flip', 'can flip and fit into pocket size', 'img/samsung_img5.jpg', 5888, 'https://www.samsung.com/my/smartphones/galaxy-z-flip/', 'smartphone'),
(6, 'Huawei P40 Pro', 'Splash, water and dust resistant', 'img/huawei_img1.jpg', 3899, 'https://consumer.huawei.com/my/phones/p40-pro/specs/', 'smartphone'),
(7, 'Huawei nova 7i', '48MP quad AI cameras, 40W huawei super charge', 'img/huawei_img2.jpg', 1099, 'https://consumer.huawei.com/my/phones/nova-7i/', 'smartphone'),
(8, 'Huawei Mate 30 Pro', 'Endless screen, kirin 990,4 cameras', 'img/huawei_img3.jpg', 3899, 'https://consumer.huawei.com/my/phones/mate30-pro/', 'smartphone'),
(9, 'Huawei P30', '5x hybrid zoom, 30x digital zoom', 'img/huawei_img4.jpg', 1999, 'https://consumer.huawei.com/my/phones/p30/', 'smartphon'),
(10, 'Huawei Y9S', '6.59\'\' full view display, 48MP triple AI camera', 'img/huawei_img5.jpg', 999, 'https://consumer.huawei.com/my/phones/y9s/', 'smartphone'),
(11, 'iPhone 11 Pro', 'Ultra wide camera, audio zoom', 'img/apple_img1.jpg', 4899, 'https://www.apple.com/my/iphone-11-pro/', 'smartphone'),
(12, 'iPhone SE', 'Durable glass and aluminium design', 'img/apple_img2.jpg', 1999, 'https://www.apple.com/my/iphone-se/', 'smartphone'),
(13, 'iPhone X', 'Battery up to 25 hours talk time', 'img/apple_img3.jpg', 2899, 'https://www.apple.com/my/iphone-xr/specs/', 'smartphone'),
(14, 'HP Laptop - 15s-eq0067au', 'Windows 10, 512GB SSD', 'img/laptop_img1.jpg', 2149, 'https://store.hp.com/my-en/default/hp-laptop-15s-eq0067au-9wd89pa.html', 'laptop'),
(15, 'HP Notebook - 14s-cf2038tx', 'intel i5', 'img/laptop_img2.jpg', 2699, 'https://store.hp.com/my-en/default/hp-notebook-14s-cf2038tx-1v851pa.html', 'laptop'),
(16, 'HP Envy X360 - 13-ar0123au', 'Windows 10, 512Gb ssd', 'img/laptop_img3.jpg', 3499, 'https://store.hp.com/my-en/default/laptops-tablets/hp-envy-x360-13-ar0123au-9la28pa.html', 'laptop'),
(17, 'HP ZBook 14u G6 Mobile Workstation', 'intel i7, Windows 10 Pro 64', 'img/laptop_img4.jpg', 6178, 'https://store.hp.com/my-en/default/hp-zbook-14u-g6-mobile-workstation-7zt42pa.html', 'laptop'),
(18, 'Asus TUF Gaming FX505D-TBQ222T', 'Nanoedge display, Windows 10 pro', 'img/laptop_img5.jpg', 2599, 'https://www.asus.com/my/Laptops/ASUS-TUF-Gaming-FX505DD-DT-DU/', 'laptop'),
(19, 'Asus Vivobook S13 S330UA', 'intel i7, four size Nanoedge display', 'img/laptop_img6.jpg', 3199, 'https://www.asus.com/my/Laptops/ASUS-VivoBook-S13-S330FA/', 'laptop'),
(20, 'Asus Zenbook 14', 'Smallest 14-inch laptop, beautiful design, provide number pad', 'img/laptop_img7.jpg', 4399, 'https://www.asus.com/my/Laptops/ASUS-ZenBook-14-UX433FN/', 'laptop'),
(21, 'ZenBook duo', 'Provides screenpad, 14 inch display, number pad, two screen', 'img/laptop_img8.jpg', 4699, 'https://www.asus.com/my/Laptops/ZenBook-Duo-UX481FL/', 'laptop');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`ItemNo`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`Num`);

--
-- Indexes for table `fullcart`
--
ALTER TABLE `fullcart`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `ItemNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `Num` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fullcart`
--
ALTER TABLE `fullcart`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
