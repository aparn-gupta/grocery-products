-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 08, 2026 at 12:15 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `groceries`
--

-- --------------------------------------------------------

--
-- Table structure for table `Cart`
--

CREATE TABLE `Cart` (
                        `id` int(11) NOT NULL,
                        `productId` int(11) NOT NULL,
                        `userId` int(11) NOT NULL,
                        `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Cart`
--

INSERT INTO `Cart` (`id`, `productId`, `userId`, `Quantity`) VALUES
                                                                 (56, 2, 2, 1),
                                                                 (57, 4, 2, 2),
                                                                 (58, 6, 2, 5),
                                                                 (59, 8, 2, 1),
                                                                 (60, 10, 2, 3),
                                                                 (61, 11, 3, 2),
                                                                 (62, 13, 3, 1),
                                                                 (63, 15, 3, 4),
                                                                 (64, 1, 3, 2),
                                                                 (65, 3, 3, 3),
                                                                 (66, 2, 4, 1),
                                                                 (67, 4, 4, 2),
                                                                 (68, 6, 4, 3),
                                                                 (69, 8, 4, 1),
                                                                 (70, 10, 4, 4),
                                                                 (71, 5, 5, 2),
                                                                 (72, 7, 5, 1),
                                                                 (73, 9, 5, 3),
                                                                 (74, 11, 5, 2),
                                                                 (75, 13, 5, 4),
                                                                 (76, 3, 1, 1),
                                                                 (78, 7, 1, 1),
                                                                 (79, 2, 1, 1),
                                                                 (80, 1, 1, 1),
                                                                 (82, 6, 1, 1),
                                                                 (86, 16, 1, 2),
                                                                 (87, 12, 1, 4),
                                                                 (88, 15, 1, 2),
                                                                 (89, 22, 1, 2),
                                                                 (90, 19, 1, 1),
                                                                 (91, 18, 1, 1),
                                                                 (92, 23, 1, 1),
                                                                 (93, 26, 1, 4),
                                                                 (94, 8, 1, 1),
                                                                 (95, 10, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Categories`
--

CREATE TABLE `Categories` (
                              `id` int(11) NOT NULL,
                              `name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Categories`
--

INSERT INTO `Categories` (`id`, `name`) VALUES
                                            (1, 'Fruits'),
                                            (2, 'Vegetables'),
                                            (3, 'Dairy'),
                                            (4, 'Bakery'),
                                            (5, 'Beverages'),
                                            (6, 'Snacks'),
                                            (7, 'Household');

-- --------------------------------------------------------

--
-- Table structure for table `Products`
--

CREATE TABLE `Products` (
                            `id` int(11) NOT NULL,
                            `name` varchar(191) NOT NULL,
                            `brand` varchar(191) NOT NULL,
                            `price` decimal(10,2) NOT NULL,
                            `quantity` int(11) NOT NULL,
                            `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
                            `categoryId` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Products`
--

INSERT INTO `Products` (`id`, `name`, `brand`, `price`, `quantity`, `createdAt`, `categoryId`) VALUES
                                                                                                   (1, 'Apple', 'FreshFarm', 120.00, 3, '2025-12-04 16:48:03.000', 1),
                                                                                                   (2, 'Banana', 'NaturePack', 60.00, 1, '2025-12-04 16:48:03.000', 1),
                                                                                                   (3, 'Orange', 'CitrusCo', 110.00, 5, '2025-12-04 16:48:03.000', 1),
                                                                                                   (4, 'Tomato', 'GreenLand', 40.00, 2, '2025-12-04 16:48:03.000', 2),
                                                                                                   (5, 'Potato', 'FarmRoots', 35.00, 4, '2025-12-04 16:48:03.000', 2),
                                                                                                   (6, 'Spinach', 'LeafyFresh', 30.00, 1, '2025-12-04 16:48:03.000', 2),
                                                                                                   (7, 'Milk 1L', 'Amul', 65.00, 3, '2025-12-04 16:48:03.000', 3),
                                                                                                   (8, 'Curd 500g', 'MotherDairy', 35.00, 5, '2025-12-04 16:48:03.000', 3),
                                                                                                   (9, 'Cheese Slices', 'Britannia', 90.00, 30, '2025-12-04 16:45:35.000', 3),
                                                                                                   (10, 'Bread Loaf', 'Britannia', 50.00, 90, '2025-12-04 16:45:35.000', 4),
                                                                                                   (11, 'Brown Bread', 'Harvest', 55.00, 70, '2025-12-04 16:45:35.000', 4),
                                                                                                   (12, 'Butter Croissant', 'BakeHouse', 80.00, 40, '2025-12-04 16:45:35.000', 4),
                                                                                                   (13, 'Cola 500ml', 'Coca-Cola', 40.00, 140, '2025-12-04 16:45:35.000', 5),
                                                                                                   (14, 'Orange Juice 1L', 'Tropicana', 120.00, 65, '2025-12-04 16:45:35.000', 5),
                                                                                                   (15, 'Green Tea Box', 'Lipton', 150.00, 55, '2025-12-04 16:45:35.000', 5),
                                                                                                   (16, 'Salted Chips', 'Lays', 20.00, 200, '2025-12-04 16:45:35.000', 6),
                                                                                                   (17, 'Cheese Nachos', 'Doritos', 35.00, 180, '2025-12-04 16:45:35.000', 6),
                                                                                                   (18, 'Chocolate Cookies', 'Unibic', 60.00, 75, '2025-12-04 16:45:35.000', 6),
                                                                                                   (19, 'Floor Cleaner 1L', 'Lizol', 150.00, 100, '2025-12-04 16:45:35.000', 7),
                                                                                                   (20, 'Dishwashing Liquid', 'Vim', 110.00, 85, '2025-12-04 16:45:35.000', 7),
                                                                                                   (21, 'Laundry Detergent', 'Surf Excel', 190.00, 95, '2025-12-04 16:45:35.000', 7),
                                                                                                   (22, 'Cucumber', 'GreenLand', 45.00, 160, '2025-12-04 16:45:35.000', 2),
                                                                                                   (23, 'Kiwi Pack', 'FruitBay', 180.00, 25, '2025-12-04 16:45:35.000', 1),
                                                                                                   (24, 'Paneer 200g', 'Amul', 85.00, 50, '2025-12-04 16:45:35.000', 3),
                                                                                                   (25, 'Burger Buns', 'BakeHouse', 45.00, 110, '2025-12-04 16:45:35.000', 4),
                                                                                                   (26, 'Iced Tea Bottle', 'Nestea', 35.00, 90, '2025-12-04 16:45:35.000', 5),
                                                                                                   (27, 'Salted Popcorn', 'Act II', 25.00, 140, '2025-12-04 16:45:35.000', 6),
                                                                                                   (28, 'Handwash Liquid', 'Dettol', 90.00, 70, '2025-12-04 16:45:35.000', 7),
                                                                                                   (29, 'Strawberries', 'BerryFresh', 160.00, 30, '2025-12-04 16:45:35.000', 1),
                                                                                                   (30, 'Carrots', 'FarmRoots', 50.00, 180, '2025-12-04 16:45:35.000', 2);

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
                         `id` int(11) NOT NULL,
                         `name` varchar(191) NOT NULL,
                         `lastOnline` datetime(3) NOT NULL,
                         `createdAt` datetime(3) NOT NULL,
                         `email` varchar(191) NOT NULL,
                         `password` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `name`, `lastOnline`, `createdAt`, `email`, `password`) VALUES
                                                                                       (1, 'Aparna', '2025-12-03 10:15:00.000', '2025-12-04 16:40:14.000', 'aparna@example.com', '$2a$12$wn1IaDzASIeupDZLR2ZN2eT8VwF.3TAtvIuu8AKRBic0NL/vMxt/S'),
                                                                                       (2, 'Meredith', '2025-12-02 22:40:00.000', '2025-12-04 16:40:14.000', 'meredith@example.com', '$2a$12$wn1IaDzASIeupDZLR2ZN2eT8VwF.3TAtvIuu8AKRBic0NL/vMxt/S'),
                                                                                       (3, 'Lisa', '2025-12-01 08:55:00.000', '2025-12-04 16:40:14.000', 'lisa@example.com', '$2a$12$wn1IaDzASIeupDZLR2ZN2eT8VwF.3TAtvIuu8AKRBic0NL/vMxt/S'),
                                                                                       (4, 'Paul', '2025-12-01 08:55:00.000', '2025-12-04 16:40:14.000', 'paul@example.com', '$2a$12$wn1IaDzASIeupDZLR2ZN2eT8VwF.3TAtvIuu8AKRBic0NL/vMxt/S'),
                                                                                       (5, 'Steven', '2025-12-01 08:55:00.000', '2025-12-04 16:40:14.000', 'steven@example.com', '$2a$12$wn1IaDzASIeupDZLR2ZN2eT8VwF.3TAtvIuu8AKRBic0NL/vMxt/S');

-- --------------------------------------------------------

--
-- Table structure for table `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
                                      `id` varchar(36) NOT NULL,
                                      `checksum` varchar(64) NOT NULL,
                                      `finished_at` datetime(3) DEFAULT NULL,
                                      `migration_name` varchar(255) NOT NULL,
                                      `logs` text DEFAULT NULL,
                                      `rolled_back_at` datetime(3) DEFAULT NULL,
                                      `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
                                      `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
                                                                                                                                                        ('065bb18c-bb0c-45c5-b631-4e14136ba2f6', '204449ba5cc48b7fec6e164cab2ad2900c601e09812dd1552ebbae6b983ce3a6', '2025-12-25 18:29:54.705', '20251210162549_new_structure', NULL, NULL, '2025-12-25 18:29:54.671', 1),
                                                                                                                                                        ('12791530-a6a9-4541-b963-5a96bffe955a', '30824033638f3e3916dde3da9c0265453ffe1cc3ce714cc81b498127d9f4665a', '2025-12-25 18:29:54.778', '20251225164302_yes', NULL, NULL, '2025-12-25 18:29:54.722', 1),
                                                                                                                                                        ('3a9293dc-75cb-479e-af84-95333da37134', '8d9affd48a143eebcd642a2ea561d8ac9f293e72d80bcaa1c79f00d3664eb6f8', '2025-12-25 18:31:48.860', '20251225183148_new_fields_for_users', NULL, NULL, '2025-12-25 18:31:48.837', 1),
                                                                                                                                                        ('98321e0d-e4a0-4f1e-be37-d17d40b57317', '1c6eb6c361fad317530464b81716994727967a4d172cbe30438218341d1b02a6', '2025-12-25 18:29:54.715', '20251210173502_newchange', NULL, NULL, '2025-12-25 18:29:54.705', 1),
                                                                                                                                                        ('b9750ab1-89ca-4cf0-8587-0c201562a025', '257854adadb7f4aa01b3d08882c2719e762737b7fa1d2dc6e2852732377739b5', '2025-12-25 18:29:54.721', '20251221172012_npx_prisma_migrate_dev', NULL, NULL, '2025-12-25 18:29:54.715', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Cart`
--
ALTER TABLE `Cart`
    ADD PRIMARY KEY (`id`),
  ADD KEY `Cart_userId_fkey` (`userId`),
  ADD KEY `Cart_productId_fkey` (`productId`);

--
-- Indexes for table `Categories`
--
ALTER TABLE `Categories`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Products`
--
ALTER TABLE `Products`
    ADD PRIMARY KEY (`id`),
  ADD KEY `Products_categoryId_fkey` (`categoryId`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Users_email_key` (`email`);

--
-- Indexes for table `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
    ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Cart`
--
ALTER TABLE `Cart`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `Categories`
--
ALTER TABLE `Categories`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `Products`
--
ALTER TABLE `Products`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Cart`
--
ALTER TABLE `Cart`
    ADD CONSTRAINT `Cart_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `Products` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Cart_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `Users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `Products`
--
ALTER TABLE `Products`
    ADD CONSTRAINT `Products_categoryId_fkey` FOREIGN KEY (`categoryId`) REFERENCES `Categories` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
