-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2022 at 07:53 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotekxyz`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Apotek 99 Owner'),
(2, 'kasir', 'Regular User');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_permissions`
--

INSERT INTO `auth_groups_permissions` (`group_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(2, 2),
(2, 5),
(2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 1),
(2, 2),
(2, 3),
(2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'apotekxyz@gmail.com', 1, '2022-10-02 07:24:46', 0),
(2, '::1', 'apotekxyz@gmail.com', 1, '2022-10-02 07:27:25', 1),
(3, '::1', 'apotekxyz@gmail.com', 1, '2022-10-02 07:34:02', 1),
(4, '::1', 'asdasd', NULL, '2022-10-02 07:34:17', 0),
(5, '::1', 'sadasd@gmail.com', NULL, '2022-10-02 07:34:21', 0),
(6, '::1', 'dssdfsd@gmail.com', NULL, '2022-10-02 07:34:26', 0),
(7, '::1', 'apotekxyz@gmail.com', 1, '2022-10-02 07:34:32', 1),
(8, '::1', 'apotekxyz', NULL, '2022-10-02 10:02:35', 0),
(9, '::1', 'apotekxyz@gmail.com', 1, '2022-10-02 10:02:47', 1),
(10, '::1', 'danthonynathanael@gmail.com', 2, '2022-10-02 10:09:17', 1),
(11, '::1', 'apotekxyz@gmail.com', 1, '2022-10-02 10:09:33', 1),
(12, '::1', 'jamesgunn@gmail.com', 3, '2022-10-02 10:13:10', 1),
(13, '::1', 'jamesgunn@gmail.com', 3, '2022-10-02 10:17:09', 1),
(14, '::1', 'apotekxyz@gmail.com', 1, '2022-10-02 10:17:59', 1),
(15, '::1', 'jamesgunn@gmail.com', 3, '2022-10-02 10:25:00', 1),
(16, '::1', 'apotekxyz@gmail.com', 1, '2022-10-02 10:44:16', 1),
(17, '::1', 'apotekxyz@gmail.com', 1, '2022-10-02 12:00:57', 1),
(18, '::1', 'apotekxyz@gmail.com', 1, '2022-10-03 01:39:54', 1),
(19, '::1', 'apotekxyz@gmail.com', NULL, '2022-10-03 13:21:32', 0),
(20, '::1', 'apotekxyz@gmail.com', NULL, '2022-10-03 13:21:38', 0),
(21, '::1', 'apotekxyz@gmail.com', 1, '2022-10-03 13:21:45', 1),
(22, '::1', 'apotekxyz@gmail.com', 1, '2022-10-04 09:18:47', 1),
(23, '::1', 'apotekxyz@gmail.com', 1, '2022-10-04 09:18:47', 1),
(24, '::1', 'snyder@gmail.com', 4, '2022-10-04 13:53:57', 1),
(25, '::1', 'apotekxyz@gmail.com', 1, '2022-10-04 13:54:20', 1),
(26, '::1', 'snyder@gmail.com', 4, '2022-10-04 14:18:06', 1),
(27, '::1', 'apotekxyz@gmail.com', 1, '2022-10-04 14:19:01', 1),
(28, '::1', 'apotekxyz@gmail.com', 1, '2022-10-04 22:11:28', 1),
(29, '::1', 'apotekxyz@gmail.com', 1, '2022-10-05 05:41:32', 1),
(30, '::1', 'apotekxyz@gmail.com', 1, '2022-10-05 05:42:41', 1),
(31, '::1', 'apotekxyz@gmail.com', 1, '2022-10-05 05:52:51', 1),
(32, '::1', 'apotekxyz@gmail.com', 1, '2022-10-05 08:58:13', 1),
(33, '::1', 'apotekxyz@gmail.com', 1, '2022-10-05 09:18:10', 1),
(34, '::1', 'apotekadmin', NULL, '2022-10-05 12:08:43', 0),
(35, '::1', 'apotekxyz@gmail.com', NULL, '2022-10-05 12:08:52', 0),
(36, '::1', 'danthonynathanael@gmail.com', NULL, '2022-10-05 12:09:00', 0),
(37, '::1', 'apotekxyz@gmail.com', NULL, '2022-10-05 12:09:13', 0),
(38, '::1', 'apotekadmin', NULL, '2022-10-05 12:09:37', 0),
(39, '::1', 'snyder@gmail.com', NULL, '2022-10-05 12:09:46', 0),
(40, '::1', 'apotekadmin', NULL, '2022-10-05 12:10:47', 0),
(41, '::1', 'apotekadmin', NULL, '2022-10-05 12:10:53', 0);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(1, 'manage-users', 'Manage All Cashiers'),
(2, 'manage-profile', 'Manage User\'s Profile'),
(3, 'manage-products', 'Manage Products'),
(4, 'manage-stocks', 'Manage Stocks'),
(5, 'manage-offline-orders', 'Manage Offline Orders'),
(6, 'manage-online-orders', 'Manage Online Orders'),
(7, 'manage-api', 'Manage API Marketplace');

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1664966315, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) NOT NULL DEFAULT 'default.svg',
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `fullname`, `user_image`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'apotekxyz@gmail.com', 'apotekadmin', NULL, 'default.svg', '$2y$10$hEnDUD/Tu89KP5X3AFBr1eIvXCCQh8XB3ufprHCKPtJfOYsXalRd2', NULL, NULL, NULL, 'caebed156d299527734814cf66cf4b7e', NULL, NULL, 1, 0, '2022-10-02 07:21:02', '2022-10-02 07:21:02', NULL),
(2, 'danthonynathanael@gmail.com', 'davidanthonyn', NULL, 'default.svg', '$2y$10$KymQ6tuvN1Jj4L5t10rvVuovz.BlS8lCuwEhh5.5OR3XGyoep2gIC', NULL, NULL, NULL, '6952f47aeb1881551574fb4c13767e85', NULL, NULL, 1, 0, '2022-10-02 09:37:02', '2022-10-02 09:37:02', NULL),
(3, 'jamesgunn@gmail.com', 'jamesgunn', NULL, 'default.svg', '$2y$10$eoJHyua.VZxHdRjGlKnM7.i6F4oZbOwgd7stL1WODWr5qrEEmamra', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-10-02 09:44:43', '2022-10-02 09:44:43', NULL),
(4, 'snyder@gmail.com', 'zacksnyder', NULL, 'default.svg', '$2y$10$QlnhRjSIrtEDzKKB79Vo2uTKfmEVvkJ17ItI6sXDjsOqXUHQMXZFu', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-10-02 09:45:52', '2022-10-02 09:45:52', NULL),
(5, 'dudung@gmail.com', 'dudung', 'dudung', 'default.svg', '', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(8, 'dadang@gmail.com', 'dadang', 'dadang', 'default.svg', 'd41d8cd98f00b204e9800998ecf8427e', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
