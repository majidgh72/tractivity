-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2021 at 12:53 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tractivity`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `activity_type_id` int(10) UNSIGNED NOT NULL,
  `activity_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='log users activities';

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `user_id`, `activity_type_id`, `activity_date`) VALUES
(1, 1, 1, '2021-02-17 14:24:24'),
(2, 1, 1, '2021-02-17 14:24:32'),
(3, 1, 1, '2021-02-17 14:24:55'),
(4, 1, 1, '2021-02-17 14:25:25'),
(5, 1, 1, '2021-02-17 14:25:26'),
(6, 1, 1, '2021-02-17 14:25:27'),
(7, 1, 1, '2021-02-17 14:25:27'),
(8, 1, 1, '2021-02-17 14:25:28'),
(9, 1, 1, '2021-02-17 14:25:28'),
(10, 1, 1, '2021-02-17 14:25:29'),
(11, 1, 1, '2021-02-17 14:26:30');

-- --------------------------------------------------------

--
-- Table structure for table `activity_metas`
--

CREATE TABLE `activity_metas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `activity_id` bigint(20) UNSIGNED NOT NULL,
  `meta_name` varchar(255) DEFAULT NULL,
  `meta_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity_metas`
--

INSERT INTO `activity_metas` (`id`, `activity_id`, `meta_name`, `meta_value`) VALUES
(1, 1, 'name', 'Majid Ghafoorzade'),
(2, 1, 'user_token', 'majidi'),
(3, 1, 'ref', 'https://google.com'),
(4, 2, 'name', 'Majid Ghafoorzade'),
(5, 2, 'ref', 'https://google.com'),
(6, 2, 'user_token', 'majidi'),
(7, 3, 'name', 'Majid Ghafoorzade'),
(8, 3, 'ref', 'https://google.com'),
(9, 3, 'user_token', 'majidi'),
(10, 4, 'name', 'Majid Ghafoorzade'),
(11, 4, 'ref', 'https://google.com'),
(12, 4, 'user_token', 'majidi'),
(13, 5, 'name', 'Majid Ghafoorzade'),
(14, 5, 'ref', 'https://google.com'),
(15, 5, 'user_token', 'majidi'),
(16, 6, 'name', 'Majid Ghafoorzade'),
(17, 6, 'user_token', 'majidi'),
(18, 6, 'ref', 'https://google.com'),
(19, 7, 'name', 'Majid Ghafoorzade'),
(20, 7, 'ref', 'https://google.com'),
(21, 7, 'user_token', 'majidi'),
(22, 8, 'name', 'Majid Ghafoorzade'),
(23, 8, 'ref', 'https://google.com'),
(24, 8, 'user_token', 'majidi'),
(25, 9, 'name', 'Majid Ghafoorzade'),
(26, 9, 'ref', 'https://google.com'),
(27, 9, 'user_token', 'majidi'),
(28, 10, 'name', 'Majid Ghafoorzade'),
(29, 10, 'ref', 'https://google.com'),
(30, 10, 'user_token', 'majidi'),
(31, 11, 'name', 'Majid Ghafoorzade'),
(32, 11, 'ref', 'https://google.com'),
(33, 11, 'user_token', 'majidi');

-- --------------------------------------------------------

--
-- Table structure for table `activity_types`
--

CREATE TABLE `activity_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity_types`
--

INSERT INTO `activity_types` (`id`, `title`, `description`) VALUES
(1, 'Button Click', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `register_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `register_date`) VALUES
(1, '2021-02-17 14:24:55');

-- --------------------------------------------------------

--
-- Table structure for table `user_metas`
--

CREATE TABLE `user_metas` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `meta_name` varchar(255) NOT NULL,
  `meta_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_metas`
--

INSERT INTO `user_metas` (`user_id`, `meta_name`, `meta_value`) VALUES
(1, 'browser_name', 'Firefox'),
(1, 'browser_version', '85.0'),
(1, 'device_type', 'desktop'),
(1, 'os_name', 'Windows'),
(1, 'os_version', '10.0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_activities` (`user_id`),
  ADD KEY `idx_activities_0` (`activity_type_id`),
  ADD KEY `idx_activities_1` (`user_id`,`activity_type_id`);

--
-- Indexes for table `activity_metas`
--
ALTER TABLE `activity_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tbl` (`activity_id`),
  ADD KEY `idx_tbl_0` (`activity_id`,`meta_name`);

--
-- Indexes for table `activity_types`
--
ALTER TABLE `activity_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_metas`
--
ALTER TABLE `user_metas`
  ADD UNIQUE KEY `idx_user_metas_0` (`user_id`,`meta_name`),
  ADD KEY `idx_user_metas` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `activity_metas`
--
ALTER TABLE `activity_metas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `activity_types`
--
ALTER TABLE `activity_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `fk_activities_activity_types` FOREIGN KEY (`activity_type_id`) REFERENCES `activity_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_activity_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `activity_metas`
--
ALTER TABLE `activity_metas`
  ADD CONSTRAINT `fk_tbl_activities` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_metas`
--
ALTER TABLE `user_metas`
  ADD CONSTRAINT `fk_user_metas_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
