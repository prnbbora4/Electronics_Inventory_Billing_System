-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2021 at 04:26 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`) VALUES
(24, 'Asus'),
(25, 'Lenovo'),
(26, 'Intel'),
(27, 'AMD'),
(28, 'Apple'),
(37, 'Western Digital'),
(38, 'Seagate'),
(39, 'JBL'),
(40, 'Acer'),
(41, 'Kingston'),
(42, 'Sandisk'),
(43, 'NZXT'),
(44, 'DeepCool'),
(45, 'Creative'),
(46, 'A4Tech'),
(47, 'Cooler Master'),
(48, 'Nvidia'),
(49, 'ATI'),
(50, 'LG'),
(51, 'Samsung'),
(52, 'BenQ'),
(53, 'G.Skill'),
(54, 'Tecware'),
(55, 'Dell'),
(56, 'HP'),
(57, 'SeaSonic'),
(58, 'Corsair'),
(59, 'Edifier'),
(60, 'Logitech'),
(61, 'SteelSeries'),
(62, 'ViewSonic'),
(63, 'Oppo'),
(64, 'One Plus'),
(65, 'Unbrand');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(126, 'Laptops'),
(127, 'Processors'),
(128, 'Video Cards'),
(130, 'Motherboards'),
(131, 'Memory Modules'),
(132, 'Storage Devices'),
(133, 'Chassis'),
(134, 'Monitors'),
(135, 'Accessories'),
(136, 'Power Sources'),
(137, 'Gadgets Accessories'),
(138, 'Multimedia Products'),
(139, 'Cooling Systems'),
(140, 'Desktop Packages'),
(141, 'Printers'),
(142, 'Projector'),
(143, 'Networking Materials'),
(144, 'Uncategorized'),
(145, 'Furnitures'),
(146, 'Mobiles'),
(147, 'TV');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inventory_id` int(11) NOT NULL,
  `inventory_action` varchar(255) NOT NULL,
  `inventory_quantity` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `inventory_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventory_id`, `inventory_action`, `inventory_quantity`, `product_id`, `inventory_date`) VALUES
(1, 'NEW PRODUCT STOCK-IN', 50, 1, '2021-03-20 11:18:08'),
(2, 'NEW PRODUCT STOCK-IN', 25, 2, '2021-03-20 11:19:05'),
(3, 'NEW PRODUCT STOCK-IN', 32, 3, '2021-03-20 11:20:30'),
(4, 'STOCK-OUT', 1, 3, '2021-03-20 11:21:30'),
(5, 'STOCK-OUT', 1, 1, '2021-03-29 11:41:06'),
(6, 'STOCK-IN', 1, 1, '2021-03-29 11:41:14'),
(7, 'STOCK-OUT', 5, 1, '2021-03-29 11:53:39'),
(8, 'STOCK-OUT', 4, 1, '2021-03-29 12:41:52'),
(9, 'STOCK-IN', 5, 1, '2021-03-29 12:42:03'),
(10, 'STOCK-OUT', 10, 2, '2021-03-29 12:46:03'),
(11, 'STOCK-OUT', 5, 1, '2021-03-29 12:46:03');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `invoice_date` datetime NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `amount_paid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `invoice_date`, `customer_name`, `customer_contact`, `customer_address`, `total_amount`, `amount_paid`) VALUES
(1, '2021-03-20 11:21:30', 'Bego royi', '7845128956', 'Itanagar', 45120, 45120),
(2, '2021-03-29 11:53:38', 'Tsering Dhondup', '9888124177', 'Tawang', 470000, 500000),
(3, '2021-03-29 12:46:03', 'Dikruk Raji', '7085525438', 'Itanagar', 1220720, 1300000);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_product`
--

CREATE TABLE `invoice_product` (
  `invoice_product_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_product`
--

INSERT INTO `invoice_product` (`invoice_product_id`, `invoice_id`, `product_id`, `quantity`) VALUES
(1, 1, 3, 1),
(2, 2, 1, 5),
(3, 3, 2, 10),
(4, 3, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_barcode` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_stock` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_barcode`, `product_name`, `product_price`, `product_stock`, `category_id`, `brand_id`) VALUES
(1, '1245785689', 'Acer Predator', 94000, 41, 126, 40),
(2, '1245785690', 'One Plus 8T', 48000, 15, 146, 64),
(3, '1245785696', 'Samsung LED', 45120, 31, 147, 51);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `middle_name`, `last_name`, `username`, `password`) VALUES
(1, 'Bego', NULL, 'Royi', 'admin', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`),
  ADD KEY `invoice_id` (`invoice_id`);

--
-- Indexes for table `invoice_product`
--
ALTER TABLE `invoice_product`
  ADD PRIMARY KEY (`invoice_product_id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `product_barcode` (`product_barcode`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invoice_product`
--
ALTER TABLE `invoice_product`
  MODIFY `invoice_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice_product`
--
ALTER TABLE `invoice_product`
  ADD CONSTRAINT `invoice_product_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`invoice_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
