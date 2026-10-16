-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2026 at 02:46 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gym_tracker2`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `start_datetime` datetime NOT NULL,
  `end_datetime` datetime DEFAULT NULL,
  `capacity` int(11) NOT NULL DEFAULT 10,
  `color` varchar(20) DEFAULT '#7c5cff',
  `class_type` varchar(50) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `icon` varchar(10) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `title`, `description`, `start_datetime`, `end_datetime`, `capacity`, `color`, `class_type`, `created_by`, `created_at`, `updated_at`, `icon`) VALUES
(2, 'Morning Yoga', 'Stretching and breathing session', '2026-04-26 09:00:00', '2026-04-26 10:00:00', 15, '#7c5cff', 'Yoga', 1, '2026-04-23 07:16:41', '2026-04-23 07:16:41', ''),
(3, 'HIIT Burn', 'Fat burning interval workout', '2026-04-27 17:00:00', '2026-04-27 18:00:00', 12, '#7c5cff', 'Cardio', 1, '2026-04-23 07:16:41', '2026-04-23 07:16:41', ''),
(5, 'Sparrings', 'abcd', '2026-04-30 18:00:00', NULL, 100, 'Green', NULL, 2, '2026-04-23 08:37:04', '2026-05-05 08:46:59', ''),
(7, 'adc', 'adadc', '2026-05-02 18:00:00', NULL, 10, '#7c5cff', NULL, 3, '2026-04-23 09:58:20', '2026-04-23 09:58:20', ''),
(9, '12', '12', '2026-04-17 18:00:00', NULL, 1, '#7c5cff', NULL, 2, '2026-04-27 08:34:54', '2026-04-27 08:56:28', ''),
(10, 'abv', 'a', '2026-04-27 20:00:00', NULL, 10, '#7c5cff', NULL, 2, '2026-04-27 08:54:06', '2026-04-27 08:57:50', ''),
(11, '123', '123', '2026-04-27 18:00:00', NULL, 30, '#7c5cff', NULL, 2, '2026-04-27 08:57:58', '2026-04-27 08:57:58', ''),
(12, '123', '1231', '2026-04-27 18:00:00', NULL, 10, '#7c5cff', NULL, 2, '2026-04-27 08:58:03', '2026-04-27 08:58:03', ''),
(13, '33333', '333333', '2026-04-27 18:00:00', NULL, 10, '#7c5cff', NULL, 2, '2026-04-27 08:58:13', '2026-04-27 08:58:13', ''),
(14, 'ab', 'aab', '2026-05-06 18:00:00', NULL, 10, '0', NULL, 2, '2026-05-05 08:31:35', '2026-05-05 08:31:35', ''),
(15, 'd', 'd', '2026-05-07 18:00:00', NULL, 10, '#fd7e14', NULL, 2, '2026-05-05 08:31:58', '2026-05-05 08:34:09', ''),
(18, 'a', 'a', '2026-05-06 18:00:00', NULL, 10, 'Blue', NULL, 3, '2026-05-05 09:53:00', '2026-05-05 09:53:00', ''),
(19, '111', 'lll', '2026-05-05 13:12:00', NULL, 10, 'Red', NULL, 2, '2026-05-05 10:09:21', '2026-05-05 10:09:21', ''),
(22, 'Privatais trenins', '12', '2026-05-17 09:00:00', NULL, 10, 'Orange', NULL, 2, '2026-05-06 10:14:22', '2026-05-06 10:14:22', ''),
(23, 'ad', 'ad', '2026-05-23 18:00:00', NULL, 10, 'Green', NULL, 3, '2026-05-12 08:08:41', '2026-05-12 08:08:41', ''),
(32, 'dada', 'ada', '2026-05-24 18:00:00', NULL, 10, 'Blue', NULL, 3, '2026-05-18 22:43:17', '2026-05-18 22:43:17', ''),
(33, 'xd', 'xd', '2026-05-26 18:00:00', NULL, 10, 'Blue', NULL, 2, '2026-05-18 22:48:36', '2026-05-18 22:48:36', ''),
(34, 'da', 'da', '2026-06-05 18:00:00', NULL, 10, 'Blue', NULL, 2, '2026-06-02 07:54:07', '2026-06-02 07:54:07', ''),
(35, 'abc', 'adddd aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadsadasdasdasdasd', '2026-06-25 18:00:00', NULL, 10, 'Blue', NULL, 2, '2026-06-11 08:11:05', '2026-06-11 08:46:29', '🦵'),
(36, 'ADADADADDADADAD', '', '2026-06-26 18:00:00', NULL, 10, 'Blue', NULL, 2, '2026-06-11 08:11:27', '2026-06-11 08:11:27', ''),
(37, 'DDDDDDDDDDDDADADADADA', '', '2026-06-27 18:00:00', NULL, 10, 'Blue', NULL, 2, '2026-06-11 08:11:35', '2026-06-11 08:11:35', ''),
(38, 'DASDSADASDASDASDASDASDASDA', '', '2026-06-28 18:00:00', NULL, 10, 'Blue', NULL, 2, '2026-06-11 08:11:39', '2026-06-11 08:48:35', '🥊'),
(39, 'adsa', 'dsadas', '2026-06-29 18:00:00', NULL, 10, 'Blue', NULL, 2, '2026-06-11 08:28:45', '2026-06-11 08:28:45', ''),
(40, 'ad', 'ad', '2026-06-30 18:00:00', NULL, 10, 'Blue', NULL, 2, '2026-06-11 08:32:21', '2026-06-11 08:32:21', ''),
(41, 'abbbc', '', '2026-07-01 18:00:00', NULL, 10, 'Blue', NULL, 2, '2026-06-11 08:32:29', '2026-06-11 08:45:09', '💪'),
(42, 'ad', 'ad', '2026-07-02 18:00:00', NULL, 10, 'Blue', NULL, 2, '2026-06-11 08:47:12', '2026-06-11 08:47:12', '🦵'),
(43, 'ada', 'dadadada', '2026-06-28 18:00:00', NULL, 10, 'Blue', NULL, 2, '2026-06-11 08:47:42', '2026-06-11 08:47:42', ''),
(44, 'dadada', 'dadada', '2026-06-28 18:00:00', NULL, 10, 'Blue', NULL, 2, '2026-06-11 08:47:49', '2026-06-11 08:47:49', ''),
(45, 'dada', 'dada', '2026-06-28 18:00:00', NULL, 10, 'Blue', NULL, 2, '2026-06-11 08:47:53', '2026-06-11 08:47:53', ''),
(46, 'sf', 'sda', '2026-07-03 18:00:00', NULL, 10, 'Green', NULL, 2, '2026-06-11 09:32:18', '2026-06-11 09:32:24', '🧗'),
(47, 'adad', 'dada', '2026-07-04 18:00:00', NULL, 10, 'Blue', NULL, 2, '2026-06-15 15:29:30', '2026-06-15 15:29:30', ''),
(48, 'dada', 'dada', '2026-07-05 18:00:00', NULL, 10, 'Blue', NULL, 2, '2026-06-15 15:29:33', '2026-06-15 15:29:33', ''),
(49, 'dsa', 'dsa', '2026-07-09 18:00:00', NULL, 10, 'Blue', NULL, 2, '2026-06-15 17:45:38', '2026-06-15 17:45:38', ''),
(50, 'trainer', 'trainer', '2026-07-10 02:00:00', NULL, 12, 'Orange', NULL, 3, '2026-06-15 18:22:53', '2026-06-15 18:22:53', ''),
(51, 'abc231321321321', '123213213131', '2026-09-18 22:00:00', NULL, 10, 'Green', NULL, 2, '2026-09-05 22:59:37', '2026-09-05 22:59:37', ''),
(52, 'dadaddd', 'dadada', '2026-09-18 18:00:00', NULL, 10, 'Blue', NULL, 2, '2026-09-05 22:59:45', '2026-09-06 14:45:10', ''),
(53, '0tais', '0tais', '2026-09-18 18:00:00', NULL, 1, 'Blue', NULL, 2, '2026-09-06 14:45:48', '2026-09-06 14:47:05', ''),
(54, 'Yoga.', 'Yoga sessija. Baiba Sipiniece', '2026-10-19 20:00:00', NULL, 10, 'Orange', NULL, 2, '2026-10-14 12:26:14', '2026-10-14 22:16:08', ''),
(58, 'Leg workout.', 'Leg, day with our strenght trainer Georgijs Markovs.', '2026-10-20 10:00:00', NULL, 20, 'Blue', NULL, 2, '2026-10-14 21:54:36', '2026-10-14 22:15:55', ''),
(59, 'Full body strength.', 'Trainer Georgijs Markovs.', '2026-10-20 12:00:00', NULL, 5, 'Blue', NULL, 2, '2026-10-14 22:15:49', '2026-10-14 22:15:49', ''),
(60, 'BOX', 'Mārtiņš Ozols.', '2026-10-24 18:00:00', NULL, 15, 'Green', NULL, 2, '2026-10-14 22:44:38', '2026-10-14 22:44:38', ''),
(62, 'CrossFit', 'David Lee Jhonson Jr.', '2026-10-22 18:00:00', NULL, 15, 'Red', NULL, 2, '2026-10-14 22:46:06', '2026-10-14 22:46:06', ''),
(63, 'CrossFit', 'David Lee Jhonson Jr.', '2026-10-22 20:00:00', NULL, 15, 'Red', NULL, 2, '2026-10-14 22:46:41', '2026-10-14 22:46:41', ''),
(64, 'Biceps, Triceps (Arms)', 'Georgijs Markovs', '2026-10-23 18:00:00', NULL, 10, 'Blue', NULL, 3, '2026-10-16 05:42:51', '2026-10-16 05:42:51', ''),
(65, 'Gym Event', '', '2026-10-26 18:00:00', NULL, 10, 'Green', NULL, 2, '2026-10-16 06:14:01', '2026-10-16 06:14:01', '');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expiry` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `expiry`) VALUES
('danisxd@gmail.com', '8b70bb7ede803933bbceab735346a340053008ba8977950d41fa07123ccdd774', '2026-06-15 21:20:59'),
('raivislo03@gmail.com', 'a9c5c34bcb0df46bf2c4f92ac2f2b7be8bb78f421be4b4d0d6e86deac990cfb7', '2026-06-16 00:55:53');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `stripe_session_id` varchar(255) DEFAULT NULL,
  `plan_type` varchar(50) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `status` enum('reserved','cancelled','attended') DEFAULT 'reserved',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `user_id`, `class_id`, `status`, `created_at`) VALUES
(4, 3, 3, 'reserved', '2026-04-23 07:20:51'),
(47, 5, 5, 'reserved', '2026-04-27 07:49:04'),
(51, 5, 2, 'reserved', '2026-04-27 08:27:28'),
(52, 3, 9, 'reserved', '2026-04-27 08:38:17'),
(54, 5, 3, 'reserved', '2026-04-27 08:40:47'),
(56, 10, 3, 'reserved', '2026-04-27 09:59:28'),
(58, 3, 5, 'reserved', '2026-04-27 19:24:08'),
(64, 3, 2, 'reserved', '2026-04-29 10:28:54'),
(65, 3, 7, 'reserved', '2026-05-05 08:41:12'),
(68, 10, 23, 'reserved', '2026-05-18 22:29:18'),
(69, 10, 33, 'reserved', '2026-05-18 22:49:10'),
(70, 10, 34, 'reserved', '2026-06-02 08:12:44'),
(72, 34, 52, 'reserved', '2026-09-06 14:44:42'),
(73, 34, 51, 'reserved', '2026-09-06 14:44:44'),
(74, 10, 53, 'reserved', '2026-09-06 14:46:11'),
(75, 34, 53, 'reserved', '2026-09-06 14:46:45'),
(76, 34, 54, 'reserved', '2026-10-14 13:27:08'),
(80, 34, 58, 'reserved', '2026-10-14 21:55:03'),
(81, 34, 60, 'reserved', '2026-10-16 05:40:13');

-- --------------------------------------------------------

--
-- Table structure for table `site_analytics`
--

CREATE TABLE `site_analytics` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` enum('visit','login') NOT NULL,
  `page_path` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_analytics`
--

INSERT INTO `site_analytics` (`id`, `user_id`, `action`, `page_path`, `created_at`) VALUES
(1, 2, 'visit', '/en/homepage', '2026-09-06 18:44:21'),
(2, 2, 'visit', '/en/index', '2026-09-06 18:44:22'),
(3, 2, 'visit', '/en/contacts', '2026-09-06 18:44:23'),
(4, 2, 'visit', '/en/homepage', '2026-09-06 18:44:23'),
(5, NULL, 'visit', '/', '2026-10-12 15:26:29'),
(6, NULL, 'visit', '/en/login', '2026-10-12 15:26:30'),
(7, NULL, 'visit', '/en/login', '2026-10-12 15:26:32'),
(8, NULL, 'visit', '/en/login', '2026-10-12 15:26:34'),
(9, 2, 'visit', '/homepage', '2026-10-12 15:28:22'),
(10, 2, 'visit', '/en/index', '2026-10-12 15:28:24'),
(11, NULL, 'visit', '/login', '2026-10-12 15:28:29'),
(12, 2, 'login', NULL, '2026-10-12 15:30:37'),
(13, 2, 'visit', '/homepage', '2026-10-12 15:30:37'),
(14, 2, 'visit', '/en/contacts', '2026-10-12 15:31:10'),
(15, NULL, 'visit', '/contacts', '2026-10-12 15:33:54'),
(16, NULL, 'visit', '/contacts', '2026-10-12 15:33:59'),
(17, 2, 'visit', '/en/contacts', '2026-10-12 15:34:03'),
(18, 2, 'visit', '/en/index', '2026-10-12 15:34:39'),
(19, 2, 'visit', '/en/homepage', '2026-10-12 15:34:40'),
(20, NULL, 'visit', '/contacts', '2026-10-12 15:35:19'),
(21, 2, 'visit', '/en/homepage', '2026-10-12 15:35:50'),
(22, 2, 'visit', '/en/contacts', '2026-10-12 15:35:51'),
(23, NULL, 'visit', '/contacts', '2026-10-12 15:37:23'),
(24, 2, 'visit', '/en/contacts', '2026-10-12 15:37:30'),
(25, 2, 'visit', '/lv/contacts', '2026-10-12 15:37:36'),
(26, 2, 'visit', '/ru/contacts', '2026-10-12 15:37:40'),
(27, 2, 'visit', '/en/contacts', '2026-10-12 15:37:46'),
(28, 2, 'visit', '/lv/contacts', '2026-10-12 15:37:49'),
(29, 2, 'visit', '/ru/contacts', '2026-10-12 15:37:50'),
(30, 2, 'visit', '/en/contacts', '2026-10-12 15:37:53'),
(31, 2, 'visit', '/lv/contacts', '2026-10-12 15:37:55'),
(32, 2, 'visit', '/lv/homepage', '2026-10-12 15:37:56'),
(33, 2, 'visit', '/lv/index', '2026-10-12 15:48:08'),
(34, 2, 'visit', '/lv/homepage', '2026-10-12 15:48:11'),
(35, 2, 'visit', '/lv/index', '2026-10-12 15:48:16'),
(36, 2, 'visit', '/lv/contacts', '2026-10-12 15:48:17'),
(37, 2, 'visit', '/lv/homepage', '2026-10-12 15:48:19'),
(38, 2, 'visit', '/en/homepage', '2026-10-12 15:48:21'),
(39, NULL, 'visit', '/login', '2026-10-12 15:54:17'),
(40, 3, 'login', NULL, '2026-10-12 15:54:27'),
(41, 3, 'visit', '/homepage', '2026-10-12 15:54:27'),
(42, 3, 'visit', '/en/profile', '2026-10-12 15:54:30'),
(43, 3, 'visit', '/en/homepage', '2026-10-12 15:54:36'),
(44, NULL, 'visit', '/login', '2026-10-12 15:54:37'),
(45, NULL, 'visit', '/en/homepage', '2026-10-12 15:54:39'),
(46, NULL, 'visit', '/en/index', '2026-10-12 15:54:41'),
(47, NULL, 'visit', '/en/contacts', '2026-10-12 15:54:44'),
(48, NULL, 'visit', '/en/homepage', '2026-10-12 15:58:26'),
(49, NULL, 'visit', '/en/login', '2026-10-12 15:58:27'),
(50, NULL, 'visit', '/en/login', '2026-10-12 15:58:44'),
(51, NULL, 'visit', '/en/login', '2026-10-12 15:58:48'),
(52, 2, 'login', NULL, '2026-10-12 15:58:57'),
(53, 2, 'visit', '/homepage', '2026-10-12 15:58:58'),
(54, 2, 'visit', '/en/index', '2026-10-12 15:59:48'),
(55, NULL, 'visit', '/', '2026-10-14 13:46:28'),
(56, NULL, 'visit', '/ru/homepage', '2026-10-14 13:51:47'),
(57, NULL, 'visit', '/en/homepage', '2026-10-14 13:51:53'),
(58, NULL, 'visit', '/en/homepage', '2026-10-14 13:52:24'),
(59, NULL, 'visit', '/en/index', '2026-10-14 13:52:51'),
(60, NULL, 'visit', '/en/contacts', '2026-10-14 13:52:53'),
(61, NULL, 'visit', '/en/homepage', '2026-10-14 13:52:55'),
(62, NULL, 'visit', '/en/homepage', '2026-10-14 13:53:07'),
(63, NULL, 'visit', '/en/homepage', '2026-10-14 13:53:47'),
(64, NULL, 'visit', '/en/contacts', '2026-10-14 13:55:26'),
(65, NULL, 'visit', '/en/index', '2026-10-14 13:55:29'),
(66, NULL, 'visit', '/en/homepage', '2026-10-14 13:55:30'),
(67, NULL, 'visit', '/en/homepage', '2026-10-14 13:59:38'),
(68, NULL, 'visit', '/en/homepage', '2026-10-14 13:59:41'),
(69, NULL, 'visit', '/en/homepage', '2026-10-14 13:59:42'),
(70, NULL, 'visit', '/en/homepage', '2026-10-14 14:00:06'),
(71, NULL, 'visit', '/en/homepage', '2026-10-14 14:02:42'),
(72, NULL, 'visit', '/en/homepage', '2026-10-14 14:06:16'),
(73, NULL, 'visit', '/en/privacy', '2026-10-14 14:07:01'),
(74, NULL, 'visit', '/en/impressum', '2026-10-14 14:07:03'),
(75, NULL, 'visit', '/en/homepage', '2026-10-14 14:08:45'),
(76, NULL, 'visit', '/en/homepage', '2026-10-14 14:18:43'),
(77, NULL, 'visit', '/en/homepage', '2026-10-14 14:18:57'),
(78, NULL, 'visit', '/en/homepage', '2026-10-14 14:20:13'),
(79, NULL, 'visit', '/en/index', '2026-10-14 14:20:27'),
(80, NULL, 'visit', '/en/homepage', '2026-10-14 14:20:29'),
(81, NULL, 'visit', '/en/index', '2026-10-14 14:20:31'),
(82, NULL, 'visit', '/en/contacts', '2026-10-14 14:20:36'),
(83, NULL, 'visit', '/en/index', '2026-10-14 14:20:38'),
(84, NULL, 'visit', '/en/homepage', '2026-10-14 14:20:38'),
(85, NULL, 'visit', '/en/index', '2026-10-14 14:20:41'),
(86, NULL, 'visit', '/en/homepage', '2026-10-14 14:21:39'),
(87, NULL, 'visit', '/en/homepage', '2026-10-14 14:22:46'),
(88, NULL, 'visit', '/en/index', '2026-10-14 14:22:47'),
(89, NULL, 'visit', '/en/homepage', '2026-10-14 14:22:53'),
(90, NULL, 'visit', '/en/index', '2026-10-14 14:23:01'),
(91, NULL, 'visit', '/en/contacts', '2026-10-14 14:23:02'),
(92, NULL, 'visit', '/en/homepage', '2026-10-14 14:23:07'),
(93, NULL, 'visit', '/en/homepage', '2026-10-14 14:30:12'),
(94, NULL, 'visit', '/en/homepage', '2026-10-14 14:33:11'),
(95, NULL, 'visit', '/en/impressum', '2026-10-14 14:33:23'),
(96, NULL, 'visit', '/en/homepage', '2026-10-14 14:34:45'),
(97, NULL, 'visit', '/en/impressum', '2026-10-14 14:36:25'),
(98, NULL, 'visit', '/en/homepage', '2026-10-14 14:36:33'),
(99, NULL, 'visit', '/en/impressum', '2026-10-14 14:36:49'),
(100, NULL, 'visit', '/en/impressum', '2026-10-14 14:37:24'),
(101, NULL, 'visit', '/en/impressum', '2026-10-14 14:38:18'),
(102, NULL, 'visit', '/en/impressum', '2026-10-14 14:38:20'),
(103, NULL, 'visit', '/en/contacts', '2026-10-14 14:38:29'),
(104, NULL, 'visit', '/en/index', '2026-10-14 14:38:30'),
(105, NULL, 'visit', '/en/contacts', '2026-10-14 14:38:31'),
(106, NULL, 'visit', '/en/homepage', '2026-10-14 14:38:32'),
(107, NULL, 'visit', '/en/index', '2026-10-14 14:38:51'),
(108, NULL, 'visit', '/en/contacts', '2026-10-14 14:38:51'),
(109, NULL, 'visit', '/en/index', '2026-10-14 14:38:53'),
(110, NULL, 'visit', '/lv/index', '2026-10-14 14:39:46'),
(111, NULL, 'visit', '/ru/index', '2026-10-14 14:39:49'),
(112, NULL, 'visit', '/en/index', '2026-10-14 14:39:50'),
(113, NULL, 'visit', '/en/homepage', '2026-10-14 14:39:51'),
(114, NULL, 'visit', '/en/index', '2026-10-14 14:40:03'),
(115, NULL, 'visit', '/en/contacts', '2026-10-14 14:40:03'),
(116, NULL, 'visit', '/en/homepage', '2026-10-14 14:41:49'),
(117, NULL, 'visit', '/en/login', '2026-10-14 14:41:50'),
(118, NULL, 'visit', '/en/login', '2026-10-14 14:41:53'),
(119, NULL, 'visit', '/en/login', '2026-10-14 14:41:58'),
(120, NULL, 'visit', '/en/login', '2026-10-14 14:42:09'),
(121, 2, 'login', NULL, '2026-10-14 14:42:16'),
(122, 2, 'visit', '/homepage', '2026-10-14 14:42:16'),
(123, 2, 'visit', '/en/index', '2026-10-14 14:42:22'),
(124, 2, 'visit', '/en/index', '2026-10-14 14:44:32'),
(125, NULL, 'visit', '/en/index', '2026-10-14 15:05:36'),
(126, NULL, 'visit', '/en/login', '2026-10-14 15:05:37'),
(127, 2, 'login', NULL, '2026-10-14 15:08:54'),
(128, 2, 'visit', '/homepage', '2026-10-14 15:08:54'),
(129, 2, 'visit', '/homepage', '2026-10-14 15:13:38'),
(130, 2, 'visit', '/en/profile', '2026-10-14 15:17:12'),
(131, 2, 'visit', '/en/homepage', '2026-10-14 15:17:16'),
(132, 2, 'visit', '/en/homepage', '2026-10-14 15:24:49'),
(133, 2, 'visit', '/en/index', '2026-10-14 15:25:15'),
(134, NULL, 'visit', '/login', '2026-10-14 15:26:23'),
(135, 34, 'login', NULL, '2026-10-14 15:26:34'),
(136, 34, 'visit', '/homepage', '2026-10-14 15:26:34'),
(137, 34, 'visit', '/en/index', '2026-10-14 15:26:37'),
(138, 34, 'visit', '/en/homepage', '2026-10-14 15:26:48'),
(139, 34, 'visit', '/membership_offer', '2026-10-14 15:26:57'),
(140, 34, 'visit', '/homepage', '2026-10-14 15:26:59'),
(141, 34, 'visit', '/en/index', '2026-10-14 15:27:00'),
(142, 34, 'visit', '/en/homepage', '2026-10-14 15:27:10'),
(143, 34, 'visit', '/membership_offer', '2026-10-14 15:27:13'),
(144, 34, 'visit', '/lv/membership_offer', '2026-10-14 15:27:35'),
(145, 34, 'visit', '/ru/membership_offer', '2026-10-14 15:27:47'),
(146, 34, 'visit', '/en/membership_offer', '2026-10-14 15:28:04'),
(147, 34, 'visit', '/en/membership_offer', '2026-10-14 15:33:12'),
(148, 34, 'visit', '/en/impressum', '2026-10-14 15:33:52'),
(149, 34, 'visit', '/en/contacts', '2026-10-14 15:33:58'),
(150, 34, 'visit', '/en/index', '2026-10-14 15:34:09'),
(151, NULL, 'visit', '/login', '2026-10-14 15:34:22'),
(152, 2, 'login', NULL, '2026-10-14 15:34:33'),
(153, 2, 'visit', '/homepage', '2026-10-14 15:34:33'),
(154, 2, 'visit', '/en/profile', '2026-10-14 15:35:45'),
(155, 2, 'visit', '/lv/profile', '2026-10-14 15:35:59'),
(156, 2, 'visit', '/en/profile', '2026-10-14 15:36:01'),
(157, 2, 'visit', '/en/profile', '2026-10-14 15:36:04'),
(158, 2, 'visit', '/en/homepage', '2026-10-14 15:36:08'),
(159, 2, 'visit', '/en/profile', '2026-10-14 15:36:14'),
(160, 2, 'visit', '/en/profile', '2026-10-14 15:36:19'),
(161, 2, 'visit', '/en/homepage', '2026-10-14 15:36:21'),
(162, 2, 'visit', '/en/index', '2026-10-14 15:36:22'),
(163, 2, 'visit', '/en/contacts', '2026-10-14 15:36:23'),
(164, 2, 'visit', '/index', '2026-10-14 15:36:31'),
(165, NULL, 'visit', '/login', '2026-10-14 15:37:34'),
(166, 3, 'login', NULL, '2026-10-14 15:37:56'),
(167, 3, 'visit', '/homepage', '2026-10-14 15:37:57'),
(168, 3, 'visit', '/en/index', '2026-10-14 15:37:59'),
(169, NULL, 'visit', '/login', '2026-10-14 15:38:03'),
(170, NULL, 'visit', '/login', '2026-10-14 15:38:10'),
(171, 34, 'login', NULL, '2026-10-14 15:38:16'),
(172, 34, 'visit', '/homepage', '2026-10-14 15:38:17'),
(173, 34, 'visit', '/en/index', '2026-10-14 15:38:19'),
(174, 34, 'visit', '/en/contacts', '2026-10-14 15:38:24'),
(175, 34, 'visit', '/en/homepage', '2026-10-14 15:38:24'),
(176, 34, 'visit', '/membership_offer', '2026-10-14 15:38:29'),
(177, 34, 'visit', '/homepage', '2026-10-14 15:38:30'),
(178, 34, 'visit', '/en/index', '2026-10-14 15:38:36'),
(179, 34, 'visit', '/en/homepage', '2026-10-14 15:38:41'),
(180, 34, 'visit', '/membership_offer', '2026-10-14 15:38:44'),
(181, 34, 'visit', '/en/index', '2026-10-14 15:38:48'),
(182, 34, 'visit', '/en/homepage', '2026-10-14 15:38:49'),
(183, 34, 'visit', '/membership_offer', '2026-10-14 15:38:52'),
(184, 34, 'visit', '/en/homepage', '2026-10-14 15:38:56'),
(185, 34, 'visit', '/en/index', '2026-10-14 15:41:29'),
(186, 34, 'visit', '/en/index', '2026-10-14 15:42:41'),
(187, 34, 'visit', '/en/homepage', '2026-10-14 15:42:41'),
(188, 34, 'visit', '/membership_offer', '2026-10-14 15:42:44'),
(189, 34, 'visit', '/homepage', '2026-10-14 15:43:25'),
(190, 34, 'visit', '/en/homepage', '2026-10-14 15:43:37'),
(191, 34, 'visit', '/en/index', '2026-10-14 15:43:38'),
(192, 34, 'visit', '/en/contacts', '2026-10-14 15:43:38'),
(193, 34, 'visit', '/en/profile', '2026-10-14 15:43:39'),
(194, 34, 'visit', '/en/homepage', '2026-10-14 15:45:18'),
(195, 34, 'visit', '/membership_offer', '2026-10-14 15:45:21'),
(196, 34, 'visit', '/membership_offer', '2026-10-14 15:45:24'),
(197, 34, 'visit', '/homepage', '2026-10-14 15:45:30'),
(198, 34, 'visit', '/en/homepage', '2026-10-14 15:45:33'),
(199, 34, 'visit', '/en/index', '2026-10-14 15:45:34'),
(200, 34, 'visit', '/en/homepage', '2026-10-14 15:45:37'),
(201, 34, 'visit', '/membership_offer', '2026-10-14 15:45:41'),
(202, 34, 'visit', '/en/profile', '2026-10-14 15:46:24'),
(203, 34, 'visit', '/en/homepage', '2026-10-14 15:48:25'),
(204, 34, 'visit', '/membership_offer', '2026-10-14 15:48:29'),
(205, 34, 'visit', '/en/homepage', '2026-10-14 15:48:34'),
(206, 34, 'visit', '/en/index', '2026-10-14 15:50:07'),
(207, 34, 'visit', '/en/profile', '2026-10-14 15:50:08'),
(208, 34, 'visit', '/en/profile', '2026-10-14 15:52:14'),
(209, 34, 'visit', '/en/profile', '2026-10-14 15:54:23'),
(210, 34, 'visit', '/en/profile', '2026-10-14 15:54:24'),
(211, 34, 'visit', '/en/homepage', '2026-10-14 15:59:34'),
(212, 34, 'visit', '/en/profile', '2026-10-14 15:59:42'),
(213, 34, 'visit', '/en/index', '2026-10-14 16:03:22'),
(214, 34, 'visit', '/en/contacts', '2026-10-14 16:03:26'),
(215, 34, 'visit', '/en/homepage', '2026-10-14 16:06:24'),
(216, 34, 'visit', '/en/index', '2026-10-14 16:13:23'),
(217, 34, 'visit', '/en/contacts', '2026-10-14 16:13:24'),
(218, 34, 'visit', '/en/index', '2026-10-14 16:13:26'),
(219, 34, 'visit', '/en/homepage', '2026-10-14 16:13:27'),
(220, 34, 'visit', '/index', '2026-10-14 16:13:46'),
(221, 34, 'visit', '/en/contacts', '2026-10-14 16:13:48'),
(222, NULL, 'visit', '/login', '2026-10-14 16:13:51'),
(223, NULL, 'visit', '/en/index', '2026-10-14 16:13:52'),
(224, NULL, 'visit', '/en/homepage', '2026-10-14 16:14:43'),
(225, NULL, 'visit', '/en/privacy', '2026-10-14 16:14:49'),
(226, NULL, 'visit', '/en/impressum', '2026-10-14 16:14:50'),
(227, NULL, 'visit', '/en/homepage', '2026-10-14 16:16:07'),
(228, NULL, 'visit', '/en/homepage', '2026-10-14 16:16:08'),
(229, NULL, 'visit', '/en/login', '2026-10-14 16:16:16'),
(230, NULL, 'visit', '/en/login', '2026-10-14 16:16:29'),
(231, NULL, 'visit', '/en/login', '2026-10-14 16:16:37'),
(232, 34, 'login', NULL, '2026-10-14 16:16:46'),
(233, 34, 'visit', '/homepage', '2026-10-14 16:16:46'),
(234, 34, 'visit', '/en/profile', '2026-10-14 16:16:50'),
(235, 34, 'visit', '/en/profile', '2026-10-14 16:17:32'),
(236, 34, 'visit', '/en/profile', '2026-10-14 16:19:10'),
(237, 34, 'visit', '/en/profile', '2026-10-14 16:19:12'),
(238, NULL, 'visit', '/login', '2026-10-14 16:19:14'),
(239, 34, 'login', NULL, '2026-10-14 16:19:25'),
(240, 34, 'visit', '/homepage', '2026-10-14 16:19:25'),
(241, 34, 'visit', '/en/profile', '2026-10-14 16:19:27'),
(242, 34, 'visit', '/en/profile', '2026-10-14 16:19:56'),
(243, 34, 'visit', '/en/profile', '2026-10-14 16:19:57'),
(244, 34, 'visit', '/en/profile', '2026-10-14 16:20:40'),
(245, 34, 'visit', '/verfy_email', '2026-10-14 16:21:00'),
(246, 34, 'visit', '/profile', '2026-10-14 16:21:13'),
(247, 34, 'visit', '/en/homepage', '2026-10-14 16:22:12'),
(248, 34, 'visit', '/en/index', '2026-10-14 16:22:16'),
(249, 34, 'visit', '/en/homepage', '2026-10-14 16:26:59'),
(250, 34, 'visit', '/membership_offer', '2026-10-14 16:27:02'),
(251, 34, 'visit', '/homepage', '2026-10-14 16:27:04'),
(252, 34, 'visit', '/en/homepage', '2026-10-14 16:27:05'),
(253, 34, 'visit', '/en/index', '2026-10-14 16:27:06'),
(254, 34, 'visit', '/en/profile', '2026-10-14 16:31:16'),
(255, 34, 'visit', '/en/profile', '2026-10-14 16:31:39'),
(256, 34, 'visit', '/verfy_email', '2026-10-14 16:31:54'),
(257, 34, 'visit', '/profile', '2026-10-14 16:31:56'),
(258, 34, 'visit', '/lv/profile', '2026-10-14 16:37:29'),
(259, 34, 'visit', '/ru/profile', '2026-10-14 16:37:34'),
(260, 34, 'visit', '/en/profile', '2026-10-14 16:37:38'),
(261, 34, 'visit', '/en/profile', '2026-10-14 16:39:24'),
(262, 34, 'visit', '/en/homepage', '2026-10-14 16:39:37'),
(263, 34, 'visit', '/en/homepage', '2026-10-14 16:40:41'),
(264, 34, 'visit', '/en/index', '2026-10-14 16:43:30'),
(265, 34, 'visit', '/en/contacts', '2026-10-14 16:43:33'),
(266, 34, 'visit', '/en/profile', '2026-10-14 16:43:41'),
(267, NULL, 'visit', '/login', '2026-10-14 16:43:47'),
(268, NULL, 'visit', '/login', '2026-10-14 16:43:56'),
(269, 2, 'login', NULL, '2026-10-14 16:44:03'),
(270, 2, 'visit', '/homepage', '2026-10-14 16:44:03'),
(271, 2, 'visit', '/homepage', '2026-10-14 16:44:49'),
(272, 2, 'visit', '/en/index', '2026-10-14 16:44:51'),
(273, 2, 'visit', '/en/index', '2026-10-14 16:44:59'),
(274, 2, 'visit', '/en/index', '2026-10-14 17:11:17'),
(275, 2, 'visit', '/en/homepage', '2026-10-14 17:19:10'),
(276, 2, 'visit', '/en/index', '2026-10-14 17:19:14'),
(277, NULL, 'visit', '/', '2026-10-14 21:07:02'),
(278, NULL, 'visit', '/en/index', '2026-10-14 21:07:30'),
(279, NULL, 'visit', '/en/contacts', '2026-10-14 21:07:33'),
(280, NULL, 'visit', '/en/homepage', '2026-10-14 21:07:37'),
(281, NULL, 'visit', '/en/index', '2026-10-14 21:07:49'),
(282, NULL, 'visit', '/en/contacts', '2026-10-14 21:07:50'),
(283, NULL, 'visit', '/en/index', '2026-10-14 21:07:58'),
(284, NULL, 'visit', '/en/homepage', '2026-10-14 21:07:59'),
(285, NULL, 'visit', '/en/contacts', '2026-10-14 21:08:00'),
(286, NULL, 'visit', '/en/index', '2026-10-14 21:08:00'),
(287, NULL, 'visit', '/en/homepage', '2026-10-14 21:08:01'),
(288, NULL, 'visit', '/en/contacts', '2026-10-14 21:08:01'),
(289, NULL, 'visit', '/en/login', '2026-10-14 21:08:06'),
(290, NULL, 'visit', '/en/register', '2026-10-14 21:08:07'),
(291, NULL, 'visit', '/', '2026-10-14 23:34:46'),
(292, NULL, 'visit', '/', '2026-10-14 23:34:52'),
(293, NULL, 'visit', '/en/login', '2026-10-14 23:34:53'),
(294, 2, 'login', NULL, '2026-10-14 23:34:54'),
(295, 2, 'visit', '/homepage', '2026-10-14 23:34:54'),
(296, 2, 'visit', '/lv/homepage', '2026-10-14 23:34:58'),
(297, 2, 'visit', '/en/homepage', '2026-10-14 23:35:01'),
(298, 2, 'visit', '/lv/homepage', '2026-10-14 23:35:04'),
(299, 2, 'visit', '/ru/homepage', '2026-10-14 23:35:08'),
(300, 2, 'visit', '/ru/homepage', '2026-10-14 23:35:21'),
(301, 2, 'visit', '/lv/homepage', '2026-10-14 23:38:27'),
(302, 2, 'visit', '/lv/homepage', '2026-10-14 23:38:30'),
(303, 2, 'visit', '/ru/homepage', '2026-10-14 23:38:33'),
(304, NULL, 'visit', '/', '2026-10-14 23:52:46'),
(305, NULL, 'visit', '/en/impressum', '2026-10-14 23:54:18'),
(306, NULL, 'visit', '/en/privacy', '2026-10-14 23:54:20'),
(307, NULL, 'visit', '/en/impressum', '2026-10-14 23:54:22'),
(308, NULL, 'visit', '/en/contacts', '2026-10-14 23:56:57'),
(309, NULL, 'visit', '/en/homepage', '2026-10-14 23:57:00'),
(310, NULL, 'visit', '/en/impressum', '2026-10-14 23:57:03'),
(311, NULL, 'visit', '/en/impressum', '2026-10-14 23:58:22'),
(312, NULL, 'visit', '/en/impressum', '2026-10-15 00:00:32'),
(313, NULL, 'visit', '/en/privacy', '2026-10-15 00:00:51'),
(314, NULL, 'visit', '/en/impressum', '2026-10-15 00:00:53'),
(315, NULL, 'visit', '/en/impressum', '2026-10-15 00:09:51'),
(316, NULL, 'visit', '/en/impressum', '2026-10-15 00:10:26'),
(317, NULL, 'visit', '/en/impressum', '2026-10-15 00:11:21'),
(318, NULL, 'visit', '/en/impressum', '2026-10-15 00:12:05'),
(319, NULL, 'visit', '/en/impressum', '2026-10-15 00:12:12'),
(320, NULL, 'visit', '/en/impressum', '2026-10-15 00:13:22'),
(321, NULL, 'visit', '/en/homepage', '2026-10-15 00:15:06'),
(322, NULL, 'visit', '/en/homepage', '2026-10-15 00:15:14'),
(323, NULL, 'visit', '/en/index', '2026-10-15 00:15:19'),
(324, NULL, 'visit', '/en/contacts', '2026-10-15 00:15:21'),
(325, NULL, 'visit', '/en/index', '2026-10-15 00:16:09'),
(326, NULL, 'visit', '/en/homepage', '2026-10-15 00:16:10'),
(327, NULL, 'visit', '/en/homepage', '2026-10-15 00:17:42'),
(328, NULL, 'visit', '/en/homepage', '2026-10-15 00:18:27'),
(329, NULL, 'visit', '/en/homepage', '2026-10-15 00:19:55'),
(330, NULL, 'visit', '/en/index', '2026-10-15 00:21:05'),
(331, NULL, 'visit', '/en/homepage', '2026-10-15 00:32:01'),
(332, NULL, 'visit', '/en/homepage', '2026-10-15 00:35:34'),
(333, NULL, 'visit', '/en/index', '2026-10-15 00:35:35'),
(334, NULL, 'visit', '/en/contacts', '2026-10-15 00:35:36'),
(335, NULL, 'visit', '/en/privacy', '2026-10-15 00:35:38'),
(336, NULL, 'visit', '/en/impressum', '2026-10-15 00:35:40'),
(337, NULL, 'visit', '/en/homepage', '2026-10-15 00:35:43'),
(338, NULL, 'visit', '/en/login', '2026-10-15 00:35:48'),
(339, NULL, 'visit', '/en/login', '2026-10-15 00:35:51'),
(340, NULL, 'visit', '/en/login', '2026-10-15 00:36:04'),
(341, NULL, 'visit', '/en/login', '2026-10-15 00:36:45'),
(342, NULL, 'visit', '/en/login', '2026-10-15 00:36:46'),
(343, NULL, 'visit', '/en/register', '2026-10-15 00:39:35'),
(344, NULL, 'visit', '/en/login', '2026-10-15 00:39:37'),
(345, NULL, 'visit', '/en/register', '2026-10-15 00:39:38'),
(346, NULL, 'visit', '/en/index', '2026-10-15 00:39:39'),
(347, NULL, 'visit', '/en/contacts', '2026-10-15 00:39:39'),
(348, NULL, 'visit', '/en/homepage', '2026-10-15 00:39:40'),
(349, NULL, 'visit', '/en/index', '2026-10-15 00:39:40'),
(350, NULL, 'visit', '/en/contacts', '2026-10-15 00:39:42'),
(351, NULL, 'visit', '/en/register', '2026-10-15 00:39:43'),
(352, NULL, 'visit', '/en/homepage', '2026-10-15 00:39:46'),
(353, NULL, 'visit', '/en/homepage', '2026-10-15 00:53:30'),
(354, NULL, 'visit', '/en/index', '2026-10-15 00:53:32'),
(355, NULL, 'visit', '/en/login', '2026-10-15 00:53:34'),
(356, 2, 'login', NULL, '2026-10-15 00:53:35'),
(357, 2, 'visit', '/homepage', '2026-10-15 00:53:35'),
(358, 2, 'visit', '/en/index', '2026-10-15 00:53:36'),
(359, NULL, 'visit', '/login', '2026-10-15 00:54:55'),
(360, 34, 'login', NULL, '2026-10-15 00:54:59'),
(361, 34, 'visit', '/homepage', '2026-10-15 00:54:59'),
(362, 34, 'visit', '/en/index', '2026-10-15 00:55:01'),
(363, NULL, 'visit', '/login', '2026-10-15 00:55:06'),
(364, NULL, 'visit', '/en/index', '2026-10-15 00:58:13'),
(365, NULL, 'visit', '/en/login', '2026-10-15 01:14:33'),
(366, 2, 'login', NULL, '2026-10-15 01:14:36'),
(367, 2, 'visit', '/homepage', '2026-10-15 01:14:36'),
(368, 2, 'visit', '/en/index', '2026-10-15 01:14:37'),
(369, 2, 'visit', '/en/homepage', '2026-10-15 01:16:15'),
(370, 2, 'visit', '/en/homepage', '2026-10-15 01:28:16'),
(371, 2, 'visit', '/en/index', '2026-10-15 01:28:16'),
(372, 2, 'visit', '/en/contacts', '2026-10-15 01:45:00'),
(373, 2, 'visit', '/en/homepage', '2026-10-15 01:45:01'),
(374, 2, 'visit', '/en/index', '2026-10-15 01:45:08'),
(375, NULL, 'visit', '/gym_tracker2/', '2026-10-16 08:35:28'),
(376, NULL, 'visit', '/gym_tracker2/en/index', '2026-10-16 08:35:30'),
(377, NULL, 'visit', '/gym_tracker2/en/contacts', '2026-10-16 08:35:30'),
(378, NULL, 'visit', '/gym_tracker2/en/homepage', '2026-10-16 08:35:31'),
(379, NULL, 'visit', '/gym_tracker2/en/index', '2026-10-16 08:35:33'),
(380, NULL, 'visit', '/gym_tracker2/en/login', '2026-10-16 08:35:38'),
(381, NULL, 'visit', '/gym_tracker2/en/register', '2026-10-16 08:35:45'),
(382, NULL, 'visit', '/gym_tracker2/en/login', '2026-10-16 08:37:37'),
(383, NULL, 'visit', '/gym_tracker2/en/homepage', '2026-10-16 08:38:07'),
(384, NULL, 'visit', '/gym_tracker2/en/index', '2026-10-16 08:38:42'),
(385, NULL, 'visit', '/gym_tracker2/en/login', '2026-10-16 08:39:44'),
(386, 34, 'login', NULL, '2026-10-16 08:39:59'),
(387, 34, 'visit', '/gym_tracker2/homepage', '2026-10-16 08:39:59'),
(388, 34, 'visit', '/gym_tracker2/en/index', '2026-10-16 08:40:01'),
(389, 34, 'visit', '/gym_tracker2/en/profile', '2026-10-16 08:41:07'),
(390, NULL, 'visit', '/gym_tracker2/login', '2026-10-16 08:41:52'),
(391, 3, 'login', NULL, '2026-10-16 08:42:21'),
(392, 3, 'visit', '/gym_tracker2/homepage', '2026-10-16 08:42:21'),
(393, 3, 'visit', '/gym_tracker2/en/index', '2026-10-16 08:42:23'),
(394, 3, 'visit', '/gym_tracker2/en/homepage', '2026-10-16 08:44:15'),
(395, 3, 'visit', '/gym_tracker2/en/index', '2026-10-16 08:44:17'),
(396, 3, 'visit', '/gym_tracker2/en/contacts', '2026-10-16 08:44:18'),
(397, 3, 'visit', '/gym_tracker2/en/index', '2026-10-16 08:44:20'),
(398, 3, 'visit', '/gym_tracker2/en/homepage', '2026-10-16 08:44:20'),
(399, 3, 'visit', '/gym_tracker2/en/index', '2026-10-16 08:44:22'),
(400, NULL, 'visit', '/gym_tracker2/login', '2026-10-16 08:45:05'),
(401, NULL, 'visit', '/gym_tracker2/en/login', '2026-10-16 08:45:06'),
(402, 2, 'login', NULL, '2026-10-16 08:45:11'),
(403, 2, 'visit', '/gym_tracker2/homepage', '2026-10-16 08:45:11'),
(404, NULL, 'visit', '/gym_tracker2/login', '2026-10-16 08:50:30'),
(405, NULL, 'visit', '/gym_tracker2/register', '2026-10-16 08:50:32'),
(406, NULL, 'visit', '/gym_tracker2/en/login', '2026-10-16 09:02:37'),
(407, 2, 'login', NULL, '2026-10-16 09:02:41'),
(408, 2, 'visit', '/gym_tracker2/homepage', '2026-10-16 09:02:41'),
(409, NULL, 'visit', '/gym_tracker2/login', '2026-10-16 09:03:31'),
(410, NULL, 'visit', '/gym_tracker2/en/register', '2026-10-16 09:03:33'),
(411, NULL, 'visit', '/gym_tracker2/login', '2026-10-16 09:04:08'),
(412, NULL, 'visit', '/gym_tracker2/verfy_email', '2026-10-16 09:05:22'),
(413, NULL, 'visit', '/gym_tracker2/login', '2026-10-16 09:05:42'),
(414, NULL, 'visit', '/gym_tracker2/login', '2026-10-16 09:06:31'),
(415, NULL, 'visit', '/gym_tracker2/en/register', '2026-10-16 09:06:59'),
(416, NULL, 'visit', '/gym_tracker2/en/register', '2026-10-16 09:07:18'),
(417, NULL, 'visit', '/gym_tracker2/en/login', '2026-10-16 09:08:23'),
(418, 2, 'login', NULL, '2026-10-16 09:08:28'),
(419, 2, 'visit', '/gym_tracker2/homepage', '2026-10-16 09:08:29'),
(420, 2, 'visit', '/gym_tracker2/en/profile', '2026-10-16 09:08:30'),
(421, 2, 'visit', '/gym_tracker2/verfy_email', '2026-10-16 09:09:27'),
(422, 2, 'visit', '/gym_tracker2/en/homepage', '2026-10-16 09:10:28'),
(423, 2, 'visit', '/gym_tracker2/en/index', '2026-10-16 09:10:30'),
(424, NULL, 'visit', '/gym_tracker2/login', '2026-10-16 09:10:31'),
(425, 34, 'login', NULL, '2026-10-16 09:10:40'),
(426, 34, 'visit', '/gym_tracker2/homepage', '2026-10-16 09:10:40'),
(427, 34, 'visit', '/gym_tracker2/en/index', '2026-10-16 09:11:03'),
(428, NULL, 'visit', '/gym_tracker2/login', '2026-10-16 09:13:34'),
(429, 2, 'login', NULL, '2026-10-16 09:13:39'),
(430, 2, 'visit', '/gym_tracker2/homepage', '2026-10-16 09:13:39'),
(431, 2, 'visit', '/gym_tracker2/en/index', '2026-10-16 09:13:40'),
(432, 2, 'visit', '/gym_tracker2/en/homepage', '2026-10-16 09:19:21'),
(433, 2, 'visit', '/gym_tracker2/membership_offer', '2026-10-16 09:19:26'),
(434, NULL, 'visit', '/gym_tracker2/login', '2026-10-16 09:19:50'),
(435, 34, 'login', NULL, '2026-10-16 09:19:55'),
(436, 34, 'visit', '/gym_tracker2/homepage', '2026-10-16 09:19:55'),
(437, 34, 'visit', '/gym_tracker2/en/profile', '2026-10-16 09:19:56'),
(438, 34, 'visit', '/gym_tracker2/en/profile', '2026-10-16 09:20:40'),
(439, 34, 'visit', '/gym_tracker2/en/homepage', '2026-10-16 09:20:51'),
(440, 34, 'visit', '/gym_tracker2/en/index', '2026-10-16 09:20:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `pending_email` varchar(150) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','trainer','admin') DEFAULT 'user',
  `email_verified` tinyint(1) DEFAULT 0,
  `verification_token` varchar(255) DEFAULT NULL,
  `verification_expires` datetime DEFAULT NULL,
  `failed_logins` int(11) NOT NULL DEFAULT 0,
  `lock_until` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `membership_type` varchar(50) DEFAULT NULL,
  `membership_expiry` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `pending_email`, `phone`, `password`, `role`, `email_verified`, `verification_token`, `verification_expires`, `failed_logins`, `lock_until`, `created_at`, `membership_type`, `membership_expiry`) VALUES
(1, 'Admin', 'admin@gym.com', NULL, NULL, '$2y$10$wH0D4X7v2N4L6p8A0xYpQO6d1K1H7sXj9gQ4x8Ww4uYt8mJxY0v1G', 'admin', 1, NULL, NULL, 2, NULL, '2026-04-23 07:16:41', NULL, NULL),
(2, 'rayWee', 'raivislo03@gmail.com', NULL, '20492446', '$2y$10$5yIDX5hgbHA3M6MAyooXCeTJ0NIW0K5Gn8Qxrm97vJeS1omw.08BC', 'admin', 1, '1d44c1ab19956152b8f76aed43e1f237eb7894f9e188ab4a3ea15968ebe47693', NULL, 0, NULL, '2026-04-23 07:17:16', 'advanced', '2026-07-12 10:10:29'),
(3, 'user', 'user@gmail.com', NULL, '20492446', '$2y$10$8PuImHg.yjtiF.Y7dZvEHu/14OxhEw1vDrw/2VbTRPyrxezdmvj2a', 'trainer', 1, 'cbfbb524cfc8f23bf09fb80f92f45e14b0115112b256c0e01aa7517e4c747772', NULL, 0, NULL, '2026-04-23 07:19:37', 'pro', '2026-07-12 11:45:25'),
(5, 'rayWee22', 'raivislo033@gmail.com', NULL, NULL, '$2y$10$jcIZjUwjz8S7uYxYx0FFxu3OBxAnNDT.one8vQNX0yLKe.SLmOSmS', 'user', 1, '502140f0b3e6751021238820434b29af97f8cdc1eb0c987ba70e214ce0d90152', NULL, 0, NULL, '2026-04-23 10:32:07', NULL, NULL),
(10, 'rayW', 'rayloc123211@gmail.com', NULL, NULL, '$2y$10$FKcTndAcoON1XI32A4vy8.1ZSBH8U7Nwhl5J4K9aGiQoOyFhM3O66', 'user', 1, 'dd2bfe7d00abd9fb7a33b17908ab5df5e8d0f61f763b8ef4f3a5838ce34f9963', NULL, 0, NULL, '2026-04-27 09:54:58', 'advanced', '2026-10-07 16:46:09'),
(11, '111', '111@gmail.com', NULL, NULL, '$2y$10$9pG4/M/deF.YPURC63is/.6D0TO9XQAY8tPtK3m2VMgg6ISCRGGFO', 'user', 0, '41ad24f4606605a0767bcb92562dbc525c3ffee290bfa66915fbc8106305aec5', NULL, 0, NULL, '2026-05-12 08:48:42', NULL, NULL),
(12, 'abcc', 'abcc@gmail.com', NULL, NULL, '$2y$10$XAm/N0wWU7AXf19/P8NXHus2kxwQQfhMWWZLn9FSZyOhcDCuvm32K', 'user', 0, '4f0099f5b9e40c155c416dc5c33bc02802841e029edb9cf312d052be9364495f', NULL, 0, NULL, '2026-05-12 19:28:56', NULL, NULL),
(13, 'abccc', 'abccc@gmail.com', NULL, NULL, '$2y$10$aM2Z6RMKg39Sh13he7Vfa.AEl4McuA2/N4b2LGyI9nppEq174zFgS', 'user', 0, 'f35b0040fc5018e846b83bc9db92e035d03c3c8688ee525f46b42921b9934b3b', NULL, 0, NULL, '2026-05-12 19:30:31', NULL, NULL),
(34, 'rayWeeUser', 'danisxd@gmail.com', NULL, '+371 20492446', '$2y$12$QfbJXAnqGSop8E80GxSNwO5h4tBSPIABQfhiR/giv3Z5xcttQiWKi', 'user', 1, NULL, NULL, 0, NULL, '2026-09-06 14:05:43', 'pro', '2026-10-14 13:27:04'),
(43, 'Jānis', 'rayloc12321@gmail.com', NULL, NULL, '$2y$10$7F4k5/n02OEfbmRvdBuiD.0kEhsCtMQRtEowwN8TUr85TnW0aA5tu', 'user', 1, NULL, NULL, 0, NULL, '2026-10-16 06:04:07', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_classes_creator` (`created_by`),
  ADD KEY `idx_classes_start` (`start_datetime`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_reservation` (`user_id`,`class_id`),
  ADD KEY `idx_reservations_class` (`class_id`),
  ADD KEY `idx_reservations_user` (`user_id`);

--
-- Indexes for table `site_analytics`
--
ALTER TABLE `site_analytics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action` (`action`),
  ADD KEY `created_at` (`created_at`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_users_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `site_analytics`
--
ALTER TABLE `site_analytics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `fk_classes_creator` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `fk_res_class` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_res_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `site_analytics`
--
ALTER TABLE `site_analytics`
  ADD CONSTRAINT `site_analytics_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
