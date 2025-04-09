-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Apr 09, 2025 at 10:38 AM
-- Server version: 9.2.0
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_schema`
--

-- --------------------------------------------------------

--
-- Table structure for table `Categories`
--

CREATE TABLE `Categories` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Categories`
--

INSERT INTO `Categories` (`id`, `name`) VALUES
(1, 'Chemicals'),
(2, 'Hardware'),
(4, 'Materials'),
(3, 'Products');

-- --------------------------------------------------------

--
-- Table structure for table `Items`
--

CREATE TABLE `Items` (
  `id` int NOT NULL,
  `qr_id` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `category_id` int DEFAULT NULL,
  `stock_quantity` int NOT NULL DEFAULT '0',
  `location_id` int DEFAULT NULL,
  `supplier_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Items`
--

INSERT INTO `Items` (`id`, `qr_id`, `name`, `description`, `category_id`, `stock_quantity`, `location_id`, `supplier_id`, `created_at`, `updated_at`) VALUES
(1, 'NACL001', 'Sodium Chloride', '', 1, 1000, 1, 1, '2025-04-02 12:04:50', '2025-04-03 11:18:45'),
(2, 'A1001', 'NVIDIA A100', 'Handle with care', 2, 100, 19, 2, '2025-04-02 12:04:50', '2025-04-03 11:20:48'),
(3, 'NY001', 'Nylon 100%', 'Raw White 50m.', 4, 50, 55, 3, '2025-04-03 10:50:06', '2025-04-03 11:08:40');

-- --------------------------------------------------------

--
-- Table structure for table `Locations`
--

CREATE TABLE `Locations` (
  `id` int NOT NULL,
  `warehouse` varchar(100) NOT NULL,
  `section` varchar(50) DEFAULT NULL,
  `shelf` varchar(50) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `bin` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Locations`
--

INSERT INTO `Locations` (`id`, `warehouse`, `section`, `shelf`, `level`, `bin`) VALUES
(1, 'W01', 'A', '01', 'A', '1'),
(2, 'W01', 'A', '01', 'A', '2'),
(3, 'W01', 'A', '01', 'B', '1'),
(4, 'W01', 'A', '01', 'B', '2'),
(5, 'W01', 'A', '01', 'C', '1'),
(6, 'W01', 'A', '01', 'C', '2'),
(7, 'W01', 'A', '02', 'A', '1'),
(8, 'W01', 'A', '02', 'A', '2'),
(9, 'W01', 'A', '02', 'B', '1'),
(10, 'W01', 'A', '02', 'B', '2'),
(11, 'W01', 'A', '02', 'C', '1'),
(12, 'W01', 'A', '02', 'C', '2'),
(13, 'W01', 'A', '03', 'A', '1'),
(14, 'W01', 'A', '03', 'A', '2'),
(15, 'W01', 'A', '03', 'B', '1'),
(16, 'W01', 'A', '03', 'B', '2'),
(17, 'W01', 'A', '03', 'C', '1'),
(18, 'W01', 'A', '03', 'C', '2'),
(19, 'W01', 'B', '01', 'A', '1'),
(20, 'W01', 'B', '01', 'A', '2'),
(21, 'W01', 'B', '01', 'B', '1'),
(22, 'W01', 'B', '01', 'B', '2'),
(23, 'W01', 'B', '01', 'C', '1'),
(24, 'W01', 'B', '01', 'C', '2'),
(25, 'W01', 'B', '02', 'A', '1'),
(26, 'W01', 'B', '02', 'A', '2'),
(27, 'W01', 'B', '02', 'B', '1'),
(28, 'W01', 'B', '02', 'B', '2'),
(29, 'W01', 'B', '02', 'C', '1'),
(30, 'W01', 'B', '02', 'C', '2'),
(31, 'W01', 'B', '03', 'A', '1'),
(32, 'W01', 'B', '03', 'A', '2'),
(33, 'W01', 'B', '03', 'B', '1'),
(34, 'W01', 'B', '03', 'B', '2'),
(35, 'W01', 'B', '03', 'C', '1'),
(36, 'W01', 'B', '03', 'C', '2'),
(37, 'W01', 'C', '01', 'A', '1'),
(38, 'W01', 'C', '01', 'A', '2'),
(39, 'W01', 'C', '01', 'B', '1'),
(40, 'W01', 'C', '01', 'B', '2'),
(41, 'W01', 'C', '01', 'C', '1'),
(42, 'W01', 'C', '01', 'C', '2'),
(43, 'W01', 'C', '02', 'A', '1'),
(44, 'W01', 'C', '02', 'A', '2'),
(45, 'W01', 'C', '02', 'B', '1'),
(46, 'W01', 'C', '02', 'B', '2'),
(47, 'W01', 'C', '02', 'C', '1'),
(48, 'W01', 'C', '02', 'C', '2'),
(49, 'W01', 'C', '03', 'A', '1'),
(50, 'W01', 'C', '03', 'A', '2'),
(51, 'W01', 'C', '03', 'B', '1'),
(52, 'W01', 'C', '03', 'B', '2'),
(53, 'W01', 'C', '03', 'C', '1'),
(54, 'W01', 'C', '03', 'C', '2'),
(55, 'W01', 'D', '01', 'A', '1'),
(56, 'W01', 'D', '01', 'A', '2'),
(57, 'W01', 'D', '01', 'B', '1'),
(58, 'W01', 'D', '01', 'B', '2'),
(59, 'W01', 'D', '01', 'C', '1'),
(60, 'W01', 'D', '01', 'C', '2'),
(61, 'W01', 'D', '02', 'A', '1'),
(62, 'W01', 'D', '02', 'A', '2'),
(63, 'W01', 'D', '02', 'B', '1'),
(64, 'W01', 'D', '02', 'B', '2'),
(65, 'W01', 'D', '02', 'C', '1'),
(66, 'W01', 'D', '02', 'C', '2'),
(67, 'W01', 'D', '03', 'A', '1'),
(68, 'W01', 'D', '03', 'A', '2'),
(69, 'W01', 'D', '03', 'B', '1'),
(70, 'W01', 'D', '03', 'B', '2'),
(71, 'W01', 'D', '03', 'C', '1'),
(72, 'W01', 'D', '03', 'C', '2');

-- --------------------------------------------------------

--
-- Table structure for table `StockTransactions`
--

CREATE TABLE `StockTransactions` (
  `id` int NOT NULL,
  `item_id` int DEFAULT NULL,
  `transaction_type` enum('IN','OUT','TRANSFER','ADJUSTMENT') NOT NULL,
  `quantity` int NOT NULL,
  `from_location` int DEFAULT NULL,
  `to_location` int DEFAULT NULL,
  `transaction_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int DEFAULT NULL,
  `remarks` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Suppliers`
--

CREATE TABLE `Suppliers` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Suppliers`
--

INSERT INTO `Suppliers` (`id`, `name`, `contact_name`, `phone`, `email`, `address`) VALUES
(1, 'White Chemicals Co.', 'Mr. White', '011-111-1111', 'white.chem@white.co', '111 Happy Streets'),
(2, 'Monsters INC.', 'Mr. Sally', '066-666-6666', 'sally.scary@monsters.com', '666 Monster Town'),
(3, 'Lethal Company', 'Mr. Boss', '055-555-5555', 'boss@ltc.com', '4145 Andromeda');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` enum('Admin','Staff') NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Categories`
--
ALTER TABLE `Categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `Items`
--
ALTER TABLE `Items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `Locations`
--
ALTER TABLE `Locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `StockTransactions`
--
ALTER TABLE `StockTransactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `from_location` (`from_location`),
  ADD KEY `to_location` (`to_location`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `Suppliers`
--
ALTER TABLE `Suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Categories`
--
ALTER TABLE `Categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Items`
--
ALTER TABLE `Items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Locations`
--
ALTER TABLE `Locations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `StockTransactions`
--
ALTER TABLE `StockTransactions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Suppliers`
--
ALTER TABLE `Suppliers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Items`
--
ALTER TABLE `Items`
  ADD CONSTRAINT `Items_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `Categories` (`id`),
  ADD CONSTRAINT `Items_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `Suppliers` (`id`),
  ADD CONSTRAINT `Items_ibfk_3` FOREIGN KEY (`location_id`) REFERENCES `Locations` (`id`);

--
-- Constraints for table `StockTransactions`
--
ALTER TABLE `StockTransactions`
  ADD CONSTRAINT `StockTransactions_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `Items` (`id`),
  ADD CONSTRAINT `StockTransactions_ibfk_2` FOREIGN KEY (`from_location`) REFERENCES `Locations` (`id`),
  ADD CONSTRAINT `StockTransactions_ibfk_3` FOREIGN KEY (`to_location`) REFERENCES `Locations` (`id`),
  ADD CONSTRAINT `StockTransactions_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
