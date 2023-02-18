-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 18, 2023 at 05:33 AM
-- Server version: 10.5.18-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u509652120_qr_manage`
--

-- --------------------------------------------------------

--
-- Table structure for table `qr_code`
--

CREATE TABLE `qr_code` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `width` varchar(255) NOT NULL,
  `height` varchar(255) NOT NULL,
  `added_by` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `qr_code`
--

INSERT INTO `qr_code` (`id`, `name`, `link`, `color`, `size`, `width`, `height`, `added_by`, `status`, `added_on`) VALUES
(4, 'Facebook', 'https://www.facebook.com/', '#000', NULL, '350', '350', 2, 1, '2022-12-01 11:17:30'),
(5, 'Youtube', 'https://www.youtube.com/', '#000', NULL, '350', '350', 2, 1, '2022-12-01 12:17:33'),
(6, 'Instagram', 'https://www.instagram.com/', '#000', NULL, '350', '350', 4, 1, '2022-12-01 02:07:01'),
(7, 'Graphic Zone Website', 'https://www.facebook.com/ELearningChildrenBooks', '#000', NULL, '350', '350', 2, 1, '2022-12-01 02:12:25'),
(8, 'Pankhuri-1', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-02 04:16:23'),
(9, 'Pankhuri-2', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-02 04:16:47'),
(10, 'Pankhuri-3', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-02 04:17:11'),
(11, 'Pankhuri-4', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-02 04:17:34'),
(12, 'Pankhuri-5', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-02 04:17:49'),
(13, 'Targeting Strokes-1', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-02 04:33:27'),
(14, 'Targeting Strokes-2', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-02 04:33:39'),
(15, 'Targeting Strokes-3', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-02 04:33:51'),
(16, 'Targeting Strokes-4', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-02 04:34:09'),
(17, 'Targeting Strokes-5', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-02 04:34:26'),
(18, 'Explore More-1', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-02 04:43:18'),
(19, 'Explore More-2', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-02 04:43:32'),
(20, 'Explore More-3', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-02 04:43:42'),
(21, 'Explore More-4', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-02 04:43:52'),
(22, 'Explore More-5', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-02 04:44:06'),
(23, 'Explore More-6', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-03 08:38:51'),
(24, 'Explore More-7', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-03 08:39:38'),
(25, 'Explore More-8', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-03 08:40:02'),
(26, 'Junior Scientist-6', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-03 03:34:12'),
(27, 'Junior Scientist-7', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-03 03:34:25'),
(28, 'Junior Scientist-8', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-03 03:34:35'),
(29, 'Around the Earth-6', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-03 04:08:01'),
(30, 'Around the Earth-7', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-03 04:08:20'),
(31, 'Around the Earth-8', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-03 04:08:47'),
(33, 'Green Earth-1', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 06:14:23'),
(34, 'Green Earth-2', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 06:14:34'),
(35, 'Green Earth-3', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 06:14:48'),
(36, 'Green Earth-4', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 06:15:08'),
(37, 'Green Earth-5', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 06:15:47'),
(38, 'Real Artist-1', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 08:10:20'),
(39, 'Real Artist-2', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 08:10:31'),
(40, 'Real Artist-3', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 08:10:41'),
(41, 'Real Artist-4', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 08:10:52'),
(42, 'Real Artist-5', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 08:11:06'),
(43, 'Interactive Grammar-1', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 11:32:36'),
(44, 'Interactive Grammar-2', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 11:32:54'),
(45, 'Interactive Grammar-3', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 11:33:07'),
(46, 'Interactive Grammar-4', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 11:33:19'),
(47, 'Interactive Grammar-5', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 11:33:31'),
(48, 'Interactive Grammar-6', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 11:33:49'),
(50, 'Interactive Grammar-7', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 11:34:10'),
(51, 'Interactive Grammar-8', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 11:34:21'),
(52, 'Naya Sawera-1', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 02:00:27'),
(53, 'Naya Sawera-2', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 02:00:38'),
(54, 'Naya Sawera-3', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 02:00:48'),
(55, 'Naya Sawera-4', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 02:01:02'),
(56, 'Naya Sawera-5', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 02:01:15'),
(57, 'Naya Sawera-6', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 02:01:27'),
(58, 'Naya Sawera-7', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 02:01:38'),
(59, 'Naya Sawera-8', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 02:01:48'),
(60, 'ByteCode-1', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 02:02:07'),
(61, 'ByteCode-2', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 02:02:16'),
(62, 'ByteCode-3', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 02:02:25'),
(63, 'ByteCode-4', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 02:02:37'),
(64, 'ByteCode-5', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 02:02:47'),
(65, 'ByteCode-6', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 02:03:00'),
(66, 'ByteCode-7', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 02:03:13'),
(67, 'ByteCode-8', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 02:03:25'),
(68, 'Raindrops-1', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 02:56:58'),
(69, 'Raindrops-2', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 02:57:08'),
(70, 'Raindrops-3', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 02:57:16'),
(71, 'Raindrops-4', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 02:57:26'),
(73, 'Raindrops-5', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 02:57:46'),
(74, 'Raindrops-6', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 02:57:59'),
(76, 'Raindrops-7', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 02:58:38'),
(77, 'Raindrops-8', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 02:58:46'),
(78, 'Samiksha-1', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 03:38:48'),
(79, 'Samiksha-2', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 03:38:57'),
(80, 'Samiksha-3', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 03:39:07'),
(81, 'Samiksha-4', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 03:39:21'),
(82, 'Samiksha-5', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 03:39:36'),
(83, 'Samiksha-6', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 03:39:50'),
(84, 'Samiksha-7', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 03:40:04'),
(85, 'Samiksha-8', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-06 03:40:27'),
(86, 'Fun with Maths-1', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-07 03:16:56'),
(87, 'Fun with Maths-2', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-07 03:17:10'),
(88, 'Fun with Maths-3', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-07 03:17:21'),
(89, 'Fun with Maths-4', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-07 03:17:37'),
(90, 'Fun with Maths-5', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-07 03:17:50'),
(91, 'Fun with Maths-6', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-07 03:18:18'),
(92, 'Fun with Maths-7', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-07 03:18:28'),
(93, 'Fun with Maths-8', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-07 03:18:40'),
(94, 'Speak Well-1', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-07 03:45:16'),
(95, 'Speak Well-2', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-07 03:45:29'),
(96, 'Speak Well-3', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-07 03:45:39'),
(97, 'Speak Well-4', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-07 03:45:50'),
(98, 'Speak Well-5', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-07 03:46:00'),
(99, 'Golden Ethics-1', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-07 04:47:08'),
(100, 'Golden Ethics-2', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-07 04:47:18'),
(101, 'Golden Ethics-3', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-07 04:47:25'),
(102, 'Golden Ethics-4', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-07 04:47:35'),
(103, 'Golden Ethics-5', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-07 04:47:52'),
(104, 'Golden Ethics-6', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-07 04:48:02'),
(105, 'Golden Ethics-7', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-07 04:48:14'),
(106, 'Golden Ethics-8', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-07 04:48:24'),
(107, 'Real Artist-6', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-08 03:04:08'),
(108, 'Real Artist-7', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-08 03:04:18'),
(109, 'Real Artist-8', 'http://www.digitalpurplepatch.com', '#000', NULL, '350', '350', 2, 1, '2022-12-08 03:04:27');

-- --------------------------------------------------------

--
-- Table structure for table `qr_report`
--

CREATE TABLE `qr_report` (
  `id` int(11) NOT NULL,
  `qr_id` int(11) NOT NULL,
  `device` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `os` varchar(100) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `added_on` datetime NOT NULL,
  `added_on_str` date NOT NULL,
  `ip_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `qr_report`
--

INSERT INTO `qr_report` (`id`, `qr_id`, `device`, `browser`, `os`, `city`, `state`, `country`, `added_on`, `added_on_str`, `ip_address`) VALUES
(1, 3, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2022-12-01 10:31:37', '2022-12-01', '217.21.94.17'),
(2, 3, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2022-12-01 10:32:03', '2022-11-30', '217.21.94.17'),
(3, 3, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2022-12-01 10:38:02', '2022-12-01', '217.21.94.17'),
(4, 4, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2022-12-01 11:22:16', '2022-12-01', '217.21.94.17'),
(5, 5, 'Mobile', 'Chrome', 'iOS', 'Mumbai', 'Maharashtra', 'India', '2022-12-01 12:18:49', '2022-12-01', '217.21.94.17'),
(6, 5, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2022-12-01 12:53:05', '2022-12-01', '217.21.94.17'),
(7, 5, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2022-12-01 01:00:01', '2022-12-01', '217.21.94.17'),
(8, 5, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2022-12-01 01:00:18', '2022-12-01', '217.21.94.17'),
(9, 5, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2022-12-01 01:00:38', '2022-12-01', '217.21.94.17'),
(10, 5, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2022-12-01 01:00:58', '2022-12-01', '217.21.94.17'),
(11, 5, 'PC', 'Chrome', 'Windows', 'Mumbai', 'Maharashtra', 'India', '2022-12-01 01:02:42', '2022-12-01', '217.21.94.17'),
(12, 5, 'PC', 'Chrome', 'Windows', 'Mumbai', 'Maharashtra', 'India', '2022-12-01 01:02:45', '2022-12-01', '217.21.94.17'),
(13, 5, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2022-12-01 01:18:09', '2022-12-01', '217.21.94.17'),
(14, 4, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2022-12-01 01:18:23', '2022-12-01', '217.21.94.17'),
(15, 2, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2022-12-01 01:18:46', '2022-12-01', '217.21.94.17'),
(16, 5, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2022-12-01 01:53:33', '2022-12-01', '217.21.94.17'),
(17, 6, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2022-12-01 02:07:27', '2022-12-01', '217.21.94.17'),
(18, 7, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2022-12-01 02:13:28', '2022-12-01', '217.21.94.17'),
(19, 7, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2022-12-01 02:13:42', '2022-12-01', '217.21.94.17'),
(20, 7, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2022-12-01 02:13:48', '2022-12-01', '217.21.94.17'),
(21, 7, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2022-12-01 02:14:22', '2022-12-01', '217.21.94.17'),
(22, 7, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2022-12-01 02:14:22', '2022-12-01', '217.21.94.17'),
(23, 7, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2022-12-01 02:15:20', '2022-12-01', '217.21.94.17'),
(24, 5, 'Mobile', 'Chrome', 'iOS', 'Mumbai', 'Maharashtra', 'India', '2022-12-03 06:49:12', '2022-12-03', '217.21.94.17'),
(25, 31, 'Mobile', 'Chrome', 'iOS', 'Mumbai', 'Maharashtra', 'India', '2022-12-04 05:27:18', '2022-12-04', '217.21.94.17'),
(26, 31, 'Mobile', 'Chrome', 'iOS', 'Mumbai', 'Maharashtra', 'India', '2022-12-04 05:28:49', '2022-12-04', '217.21.94.17'),
(27, 30, 'Mobile', 'Chrome', 'iOS', 'Mumbai', 'Maharashtra', 'India', '2022-12-04 05:29:42', '2022-12-04', '217.21.94.17'),
(28, 29, 'Mobile', 'Chrome', 'iOS', 'Mumbai', 'Maharashtra', 'India', '2022-12-04 05:29:58', '2022-12-04', '217.21.94.17'),
(29, 24, 'Mobile', 'Chrome', 'iOS', 'Mumbai', 'Maharashtra', 'India', '2022-12-04 05:30:41', '2022-12-04', '217.21.94.17'),
(30, 4, 'Mobile', 'Chrome', 'iOS', 'Mumbai', 'Maharashtra', 'India', '2022-12-04 05:30:58', '2022-12-04', '217.21.94.17'),
(31, 7, 'Mobile', 'Chrome', 'iOS', 'Mumbai', 'Maharashtra', 'India', '2022-12-04 05:31:28', '2022-12-04', '217.21.94.17'),
(32, 9, 'Mobile', 'Chrome', 'iOS', 'Mumbai', 'Maharashtra', 'India', '2022-12-04 05:31:40', '2022-12-04', '217.21.94.17'),
(33, 32, 'Mobile', 'Chrome', 'iOS', 'Mumbai', 'Maharashtra', 'India', '2022-12-04 05:33:02', '2022-12-04', '217.21.94.17'),
(34, 109, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2022-12-14 02:20:27', '2022-12-14', '217.21.94.17'),
(35, 4, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2022-12-14 02:22:19', '2022-12-14', '217.21.94.17'),
(36, 113, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2022-12-17 04:28:37', '2022-12-17', '217.21.94.17'),
(37, 113, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2022-12-17 04:28:52', '2022-12-17', '217.21.94.17'),
(38, 26, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2022-12-21 11:38:16', '2022-12-21', '217.21.94.17'),
(39, 58, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2022-12-21 11:38:20', '2022-12-21', '217.21.94.17'),
(40, 26, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2022-12-21 11:38:52', '2022-12-21', '217.21.94.17'),
(41, 19, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2022-12-21 01:13:06', '2022-12-21', '217.21.94.17'),
(42, 19, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2022-12-21 01:13:07', '2022-12-21', '217.21.94.17'),
(43, 19, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2022-12-21 01:13:25', '2022-12-21', '217.21.94.17'),
(44, 28, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-04 10:12:14', '2023-01-04', '217.21.94.17'),
(45, 28, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-04 10:12:16', '2023-01-04', '217.21.94.17'),
(46, 28, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-04 10:12:45', '2023-01-04', '217.21.94.17'),
(47, 64, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-04 10:13:13', '2023-01-04', '217.21.94.17'),
(48, 64, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-04 10:13:15', '2023-01-04', '217.21.94.17'),
(49, 18, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-05 01:23:50', '2023-01-05', '217.21.94.17'),
(50, 81, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-06 03:20:41', '2023-01-06', '217.21.94.17'),
(51, 33, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-07 02:16:10', '2023-01-07', '217.21.94.17'),
(52, 33, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-07 02:16:15', '2023-01-07', '217.21.94.17'),
(53, 33, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-07 02:16:38', '2023-01-07', '217.21.94.17'),
(54, 33, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-07 02:16:48', '2023-01-07', '217.21.94.17'),
(55, 41, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-07 02:17:30', '2023-01-07', '217.21.94.17'),
(56, 41, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-07 02:17:33', '2023-01-07', '217.21.94.17'),
(57, 13, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-07 02:17:43', '2023-01-07', '217.21.94.17'),
(58, 13, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-07 02:18:00', '2023-01-07', '217.21.94.17'),
(59, 13, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-07 02:18:04', '2023-01-07', '217.21.94.17'),
(60, 13, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-07 02:28:45', '2023-01-07', '217.21.94.17'),
(61, 45, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-07 02:29:24', '2023-01-07', '217.21.94.17'),
(62, 63, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-07 02:33:46', '2023-01-07', '217.21.94.17'),
(63, 30, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-09 08:45:27', '2023-01-09', '217.21.94.17'),
(64, 30, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-09 08:45:30', '2023-01-09', '217.21.94.17'),
(65, 23, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-13 04:52:11', '2023-01-13', '217.21.94.17'),
(66, 29, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-13 06:01:40', '2023-01-13', '217.21.94.17'),
(67, 58, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-13 08:44:28', '2023-01-13', '217.21.94.17'),
(68, 74, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-19 06:59:26', '2023-01-19', '217.21.94.17'),
(69, 58, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-20 05:41:57', '2023-01-20', '217.21.94.17'),
(70, 88, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-21 09:29:09', '2023-01-21', '217.21.94.17'),
(71, 8, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-21 09:29:52', '2023-01-21', '217.21.94.17'),
(72, 88, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-21 09:30:47', '2023-01-21', '217.21.94.17'),
(73, 53, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-21 09:30:52', '2023-01-21', '217.21.94.17'),
(74, 43, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-21 09:32:41', '2023-01-21', '217.21.94.17'),
(75, 88, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-21 09:34:28', '2023-01-21', '217.21.94.17'),
(76, 88, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-21 09:35:18', '2023-01-21', '217.21.94.17'),
(77, 43, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-21 02:50:58', '2023-01-21', '217.21.94.17'),
(78, 58, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-21 02:50:59', '2023-01-21', '217.21.94.17'),
(79, 63, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-22 06:26:32', '2023-01-22', '217.21.94.17'),
(80, 63, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-22 06:27:06', '2023-01-22', '217.21.94.17'),
(81, 63, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-22 07:14:56', '2023-01-22', '217.21.94.17'),
(82, 93, 'PC', 'Chrome', 'Windows', 'Mumbai', 'Maharashtra', 'India', '2023-01-23 11:17:17', '2023-01-23', '217.21.94.17'),
(83, 93, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-23 11:17:17', '2023-01-23', '217.21.94.17'),
(84, 83, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-23 01:11:50', '2023-01-23', '217.21.94.17'),
(85, 83, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-23 01:11:54', '2023-01-23', '217.21.94.17'),
(86, 83, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-23 01:15:32', '2023-01-23', '217.21.94.17'),
(87, 83, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-23 01:17:50', '2023-01-23', '217.21.94.17'),
(88, 83, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-23 01:17:59', '2023-01-23', '217.21.94.17'),
(89, 26, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-24 06:49:46', '2023-01-24', '217.21.94.17'),
(90, 69, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-24 08:06:32', '2023-01-24', '217.21.94.17'),
(91, 33, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-25 01:18:34', '2023-01-25', '217.21.94.17'),
(92, 33, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-25 01:18:36', '2023-01-25', '217.21.94.17'),
(93, 90, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-25 04:07:41', '2023-01-25', '217.21.94.17'),
(94, 12, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-26 11:43:05', '2023-01-26', '217.21.94.17'),
(95, 52, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-27 12:52:28', '2023-01-27', '217.21.94.17'),
(96, 52, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-27 12:52:54', '2023-01-27', '217.21.94.17'),
(97, 33, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-27 01:00:20', '2023-01-27', '217.21.94.17'),
(98, 18, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-27 01:02:42', '2023-01-27', '217.21.94.17'),
(99, 56, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-28 11:56:52', '2023-01-28', '217.21.94.17'),
(100, 56, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-28 11:58:27', '2023-01-28', '217.21.94.17'),
(101, 56, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-28 11:59:20', '2023-01-28', '217.21.94.17'),
(102, 56, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-28 12:00:01', '2023-01-28', '217.21.94.17'),
(103, 56, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-28 12:00:39', '2023-01-28', '217.21.94.17'),
(104, 56, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-28 12:01:47', '2023-01-28', '217.21.94.17'),
(105, 56, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-28 12:02:22', '2023-01-28', '217.21.94.17'),
(106, 56, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-28 12:02:34', '2023-01-28', '217.21.94.17'),
(107, 55, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-28 12:02:53', '2023-01-28', '217.21.94.17'),
(108, 55, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-01-30 10:59:42', '2023-01-30', '217.21.94.17'),
(109, 38, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-02-01 08:04:12', '2023-02-01', '217.21.94.17'),
(110, 83, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-02-01 03:48:11', '2023-02-01', '217.21.94.17'),
(111, 18, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-02-02 10:06:51', '2023-02-02', '217.21.94.17'),
(112, 36, 'Mobile', 'Chrome', 'iOS', 'Mumbai', 'Maharashtra', 'India', '2023-02-05 06:48:32', '2023-02-05', '217.21.94.17'),
(113, 48, 'Mobile', 'Chrome', 'iOS', 'Mumbai', 'Maharashtra', 'India', '2023-02-06 04:27:05', '2023-02-06', '217.21.94.17'),
(114, 48, 'Mobile', 'Chrome', 'iOS', 'Mumbai', 'Maharashtra', 'India', '2023-02-06 04:29:06', '2023-02-06', '217.21.94.17'),
(115, 48, 'Mobile', 'Chrome', 'iOS', 'Mumbai', 'Maharashtra', 'India', '2023-02-06 04:36:22', '2023-02-06', '217.21.94.17'),
(116, 24, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-02-07 06:03:01', '2023-02-07', '217.21.94.17'),
(117, 24, 'PC', 'Chrome', 'Windows', 'Mumbai', 'Maharashtra', 'India', '2023-02-07 06:03:02', '2023-02-07', '217.21.94.17'),
(118, 24, 'PC', 'Chrome', 'Windows', 'Mumbai', 'Maharashtra', 'India', '2023-02-07 06:11:13', '2023-02-07', '217.21.94.17'),
(119, 24, 'PC', 'Chrome', 'Windows', 'Mumbai', 'Maharashtra', 'India', '2023-02-07 06:16:32', '2023-02-07', '217.21.94.17'),
(120, 24, 'PC', 'Chrome', 'Windows', 'Mumbai', 'Maharashtra', 'India', '2023-02-07 06:17:01', '2023-02-07', '217.21.94.17'),
(121, 73, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-02-11 09:55:51', '2023-02-11', '217.21.94.17'),
(122, 76, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-02-13 10:22:52', '2023-02-13', '217.21.94.17'),
(123, 76, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-02-13 10:22:56', '2023-02-13', '217.21.94.17'),
(124, 29, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-02-15 02:04:22', '2023-02-15', '217.21.94.17'),
(125, 29, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-02-15 02:04:24', '2023-02-15', '217.21.94.17'),
(126, 30, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-02-15 02:05:02', '2023-02-15', '217.21.94.17'),
(127, 30, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-02-15 02:05:32', '2023-02-15', '217.21.94.17'),
(128, 54, 'Mobile', 'Chrome', 'iOS', 'Mumbai', 'Maharashtra', 'India', '2023-02-16 08:33:38', '2023-02-16', '217.21.94.17'),
(129, 54, 'Mobile', 'Chrome', 'iOS', 'Mumbai', 'Maharashtra', 'India', '2023-02-16 08:33:39', '2023-02-16', '217.21.94.17'),
(130, 26, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-02-17 07:09:45', '2023-02-17', '217.21.94.17'),
(131, 19, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-02-17 09:52:10', '2023-02-17', '217.21.94.17'),
(132, 19, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-02-17 09:52:18', '2023-02-17', '217.21.94.17'),
(133, 13, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-02-17 10:01:46', '2023-02-17', '217.21.94.17'),
(134, 13, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-02-17 10:01:49', '2023-02-17', '217.21.94.17'),
(135, 104, 'Mobile', 'Chrome', 'Android', 'Mumbai', 'Maharashtra', 'India', '2023-02-18 04:31:50', '2023-02-18', '217.21.94.17');

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `id` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `width` varchar(255) NOT NULL,
  `height` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`id`, `size`, `width`, `height`, `status`) VALUES
(1, '100×100', '100', '100', 1),
(2, '200×200', '200', '200', 1),
(3, '300×300', '300', '300', 1),
(4, '350×350', '350', '350', 1),
(5, '400×400', '400', '400', 1),
(6, '500×500', '500', '500', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('0','1') NOT NULL COMMENT '0=>"Admin",1=>"User"',
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `password`, `role`, `status`, `added_on`) VALUES
(2, 'Admin', 'admin@gmail.com', '9999999999', '$2y$10$of1pPNePJ7j8xiwz81k2gOPduHgL8c1wORiUCFyn/R7JnQYidPX5W', '0', 1, '2022-12-01 10:23:57'),
(3, 'Test', 'test@gmail.com', '9191919191', '$2y$10$Z0q3ZBz33fk7kS1UT3Ija.WAkJLtmQBKaNNRvrp2HLrjqx2Y/hqF2', '1', 1, '2022-12-01 10:25:22'),
(4, 'Praveen Kumar', 'praveen@adprex.com', '9999512521', '$2y$10$quXvk42usbpzIcrsg47AVuBmPkds6UDe9w.TfOceujEjA/4z.aGhe', '1', 1, '2022-12-01 02:05:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `qr_code`
--
ALTER TABLE `qr_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qr_report`
--
ALTER TABLE `qr_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `qr_code`
--
ALTER TABLE `qr_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `qr_report`
--
ALTER TABLE `qr_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
