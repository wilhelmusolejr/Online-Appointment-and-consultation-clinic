-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2023 at 02:59 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chat`
--

CREATE TABLE `tbl_chat` (
  `chat_id` int(11) NOT NULL,
  `consult_id` int(11) NOT NULL,
  `message_sender` int(11) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `message_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_chat`
--

INSERT INTO `tbl_chat` (`chat_id`, `consult_id`, `message_sender`, `message`, `message_time`) VALUES
(10, 48, 1, 'test', '2023-02-25 10:28:27'),
(11, 48, 3, 'hello', '2023-02-25 10:29:01'),
(12, 48, 1, 'hi sayo', '2023-02-25 10:29:20'),
(13, 48, 3, 'sige lang', '2023-02-25 10:29:26'),
(14, 48, 3, 'hehe', '2023-02-25 10:38:11'),
(15, 48, 3, 'gago', '2023-02-25 10:45:03'),
(16, 48, 1, 'luh', '2023-02-25 10:45:08'),
(17, 48, 1, 'love lots', '2023-02-25 10:46:04'),
(18, 48, 3, 'sige', '2023-02-25 10:46:10'),
(19, 49, 3, 'Hi!', '2023-02-25 14:40:51'),
(20, 49, 18, 'Hi din po', '2023-02-25 14:40:58'),
(21, 49, 3, 'ano man', '2023-02-25 14:41:04'),
(22, 49, 18, 'tite hehe', '2023-02-25 14:41:10'),
(23, 49, 3, 'sige', '2023-02-25 14:41:14'),
(24, 50, 18, 'hi', '2023-02-25 14:46:27'),
(25, 50, 3, 'gege', '2023-02-25 14:47:40'),
(26, 50, 18, 'test', '2023-02-25 14:47:44'),
(27, 51, 3, 'tite', '2023-02-25 17:45:10'),
(28, 51, 18, 'final test', '2023-02-25 17:45:20'),
(29, 51, 3, 'so far so good hihi', '2023-02-25 17:45:26'),
(30, 51, 18, 'yey!', '2023-02-25 17:45:31'),
(31, 52, 3, 'meow', '2023-02-25 19:45:22'),
(32, 52, 1, 'test', '2023-02-25 19:45:26'),
(33, 52, 3, 'tite', '2023-02-25 19:45:31'),
(34, 53, 3, './.', '2023-02-25 21:24:08'),
(35, 54, 19, 'Ohayo', '2023-02-26 06:53:40'),
(36, 54, 3, 'Ohayosayo', '2023-02-26 06:53:53'),
(37, 54, 19, 'Ohayosaten', '2023-02-26 06:54:14'),
(38, 58, 1, 'test', '2023-02-28 23:10:52'),
(39, 56, 3, 'test', '2023-02-28 23:11:11'),
(40, 58, 1, 'test', '2023-02-28 23:11:18'),
(41, 58, 1, 'test', '2023-02-28 23:11:44'),
(42, 58, 3, 'test', '2023-02-28 23:12:44'),
(43, 58, 1, 'meow', '2023-02-28 23:13:10'),
(44, 59, 3, 'a', '2023-02-28 23:43:53'),
(45, 59, 1, 'working fine', '2023-02-28 23:43:58'),
(46, 66, 17, 'tite', '2023-03-04 23:50:03'),
(47, 66, 1, 'hehe', '2023-03-04 23:50:06'),
(48, 66, 17, 'adios', '2023-03-04 23:50:13'),
(49, 71, 3, 'yow', '2023-03-28 18:13:04'),
(50, 72, 3, 'a', '2023-03-31 14:14:18'),
(51, 73, 3, 'test', '2023-04-14 07:55:48'),
(52, 73, 1, 's', '2023-04-14 07:55:51'),
(53, 73, 1, 'sample', '2023-04-14 07:55:56'),
(54, 75, 76, 'Hello client, how are you?', '2023-04-24 14:44:40'),
(55, 75, 1, 'Oki lang po', '2023-04-24 14:44:50');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_consult_join`
--

CREATE TABLE `tbl_consult_join` (
  `consult_join_id` int(11) NOT NULL,
  `consult_id` int(11) NOT NULL,
  `current_id` int(11) NOT NULL,
  `current_in` int(11) NOT NULL,
  `join_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_consult_join`
--

INSERT INTO `tbl_consult_join` (`consult_join_id`, `consult_id`, `current_id`, `current_in`, `join_time`) VALUES
(1, 32, 1, 1, '2023-02-16 01:10:08'),
(2, 32, 3, 1, '2023-02-16 01:23:56'),
(4, 34, 3, 1, '2023-02-17 11:26:55'),
(5, 34, 1, 1, '2023-02-17 11:29:07'),
(6, 35, 3, 1, '2023-02-17 08:55:19'),
(7, 35, 1, 1, '2023-02-17 08:55:07'),
(8, 36, 17, 1, '2023-02-18 01:23:02'),
(9, 36, 1, 1, '2023-02-18 01:23:06'),
(10, 37, 3, 1, '2023-02-18 11:43:55'),
(11, 37, 1, 1, '2023-02-18 12:05:30'),
(12, 38, 3, 1, '2023-02-18 02:35:57'),
(13, 38, 1, 1, '2023-02-18 02:37:52'),
(14, 39, 3, 1, '2023-02-18 02:51:26'),
(15, 39, 1, 1, '2023-02-18 02:50:54'),
(16, 40, 3, 1, '2023-02-19 10:10:00'),
(17, 40, 1, 1, '2023-02-19 10:10:06'),
(18, 41, 3, 1, '2023-02-19 10:59:44'),
(19, 41, 1, 1, '2023-02-19 10:59:30'),
(20, 42, 3, 0, '2023-02-19 07:54:15'),
(21, 42, 1, 0, '2023-02-19 07:54:15'),
(22, 43, 3, 1, '2023-02-22 04:21:50'),
(23, 43, 1, 1, '2023-02-22 04:21:28'),
(24, 44, 3, 1, '2023-02-23 03:13:26'),
(25, 44, 1, 1, '2023-02-23 03:13:38'),
(26, 45, 3, 0, '2023-02-23 10:00:12'),
(27, 45, 1, 0, '2023-02-23 10:00:12'),
(28, 46, 3, 1, '2023-02-23 08:56:30'),
(29, 46, 1, 1, '2023-02-23 08:56:35'),
(30, 47, 3, 0, '2023-02-24 07:40:15'),
(31, 47, 1, 0, '2023-02-24 07:40:15'),
(32, 48, 3, 1, '2023-02-25 06:49:27'),
(33, 48, 1, 1, '2023-02-25 06:49:21'),
(34, 49, 3, 0, '2023-02-25 03:40:30'),
(35, 49, 18, 0, '2023-02-25 03:40:30'),
(36, 50, 3, 1, '2023-02-25 10:47:33'),
(37, 50, 18, 1, '2023-02-25 10:47:27'),
(38, 51, 3, 1, '2023-02-26 01:46:19'),
(39, 51, 18, 1, '2023-02-26 01:46:16'),
(40, 52, 3, 0, '2023-02-25 08:45:04'),
(41, 52, 1, 0, '2023-02-25 08:45:04'),
(42, 53, 3, 0, '2023-02-25 10:23:56'),
(43, 53, 1, 0, '2023-02-25 10:23:56'),
(44, 54, 3, 0, '2023-02-26 07:42:05'),
(45, 54, 19, 0, '2023-02-26 07:42:05'),
(46, 55, 3, 1, '2023-02-27 06:23:32'),
(47, 55, 1, 1, '2023-02-27 06:23:21'),
(48, 56, 3, 0, '2023-02-28 11:38:53'),
(49, 56, 1, 0, '2023-02-28 11:38:53'),
(50, 57, 3, 0, '2023-03-01 12:04:21'),
(51, 57, 1, 0, '2023-03-01 12:04:21'),
(52, 58, 3, 1, '2023-03-01 07:12:47'),
(53, 58, 1, 1, '2023-03-01 07:12:50'),
(54, 59, 3, 0, '2023-03-01 12:43:38'),
(55, 59, 1, 0, '2023-03-01 12:43:38'),
(56, 60, 3, 0, '2023-03-02 09:22:56'),
(57, 60, 1, 0, '2023-03-02 09:22:56'),
(58, 61, 3, 0, '2023-03-02 10:15:10'),
(59, 61, 1, 0, '2023-03-02 10:15:10'),
(60, 62, 3, 0, '2023-03-02 10:17:54'),
(61, 62, 1, 0, '2023-03-02 10:17:54'),
(62, 63, 3, 0, '2023-03-02 10:19:29'),
(63, 63, 1, 0, '2023-03-02 10:19:29'),
(64, 64, 3, 0, '2023-03-02 10:20:56'),
(65, 64, 1, 0, '2023-03-02 10:20:56'),
(66, 65, 3, 0, '2023-03-05 12:45:51'),
(67, 65, 1, 0, '2023-03-05 12:45:51'),
(68, 66, 17, 1, '2023-03-05 07:50:20'),
(69, 66, 1, 1, '2023-03-05 07:50:15'),
(70, 67, 17, 0, '2023-03-05 01:03:03'),
(71, 67, 1, 0, '2023-03-05 01:03:03'),
(72, 67, 1, 0, '2023-03-23 11:09:24'),
(73, 67, 1, 0, '2023-03-23 11:09:24'),
(74, 67, 1, 0, '2023-03-23 11:09:37'),
(75, 67, 1, 0, '2023-03-23 11:09:37'),
(76, 70, 3, 0, '2023-03-24 03:42:28'),
(77, 70, 1, 0, '2023-03-24 03:42:28'),
(78, 71, 3, 0, '2023-03-28 08:12:49'),
(79, 71, 72, 0, '2023-03-28 08:12:49'),
(80, 72, 3, 0, '2023-03-31 04:14:02'),
(81, 72, 1, 0, '2023-03-31 04:14:02'),
(82, 73, 3, 0, '2023-04-14 09:55:15'),
(83, 73, 1, 0, '2023-04-14 09:55:15'),
(84, 74, 3, 1, '2023-04-16 01:26:17'),
(85, 74, 1, 1, '2023-04-16 01:26:14'),
(86, 75, 76, 0, '2023-04-24 04:44:02'),
(87, 75, 1, 0, '2023-04-24 04:44:02'),
(88, 76, 3, 0, '2023-04-26 08:36:42'),
(89, 76, 1, 0, '2023-04-26 08:36:42');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gender`
--

CREATE TABLE `tbl_gender` (
  `gender_id` int(11) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_gender`
--

INSERT INTO `tbl_gender` (`gender_id`, `type`) VALUES
(2, 'female'),
(1, 'male');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_monitor`
--

CREATE TABLE `tbl_monitor` (
  `monitor_id` int(11) NOT NULL,
  `transact_id` int(11) NOT NULL,
  `monitor_date` date NOT NULL,
  `total_week` int(11) NOT NULL,
  `current_week` int(11) NOT NULL,
  `current_day` int(11) NOT NULL,
  `board_page` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_monitor`
--

INSERT INTO `tbl_monitor` (`monitor_id`, `transact_id`, `monitor_date`, `total_week`, `current_week`, `current_day`, `board_page`) VALUES
(1, 1, '2023-04-01', 2, 1, 1, 2),
(2, 2, '2023-04-10', 2, 1, 1, 1),
(3, 253, '2023-11-11', 2, 1, 1, 1),
(4, 254, '2023-11-11', 2, 1, 1, 1),
(5, 255, '2023-04-16', 3, 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_monitor_client_goal`
--

CREATE TABLE `tbl_monitor_client_goal` (
  `monitor_client_goal_id` int(11) NOT NULL,
  `monitor_id` int(11) NOT NULL,
  `goal_name` varchar(255) NOT NULL,
  `goal_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_monitor_client_goal`
--

INSERT INTO `tbl_monitor_client_goal` (`monitor_client_goal_id`, `monitor_id`, `goal_name`, `goal_status`) VALUES
(1, 1, 'Goal 1', 1),
(2, 1, 'Goal 2', 0),
(3, 2, 'test 1', 0),
(4, 2, 'test 2', 1),
(9, 5, 'food consume test 1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_monitor_day`
--

CREATE TABLE `tbl_monitor_day` (
  `monitor_day_id` int(11) NOT NULL,
  `monitor_week_id` int(11) NOT NULL,
  `day_num` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_monitor_day`
--

INSERT INTO `tbl_monitor_day` (`monitor_day_id`, `monitor_week_id`, `day_num`, `date`) VALUES
(2, 1, 1, '2023-04-01'),
(3, 1, 2, '2023-04-02'),
(4, 1, 3, '2023-04-03'),
(5, 1, 4, '2023-04-04'),
(6, 1, 5, '2023-04-05'),
(7, 1, 6, '2023-04-06'),
(8, 1, 7, '2023-04-07'),
(9, 3, 1, '2023-04-10'),
(10, 3, 2, '2023-04-11'),
(11, 3, 3, '2023-04-12'),
(12, 3, 4, '2023-04-13'),
(13, 3, 5, '2023-04-14'),
(14, 3, 6, '2023-04-15'),
(15, 3, 7, '2023-04-16'),
(16, 5, 1, '2023-11-12'),
(17, 5, 2, '2023-11-13'),
(18, 5, 3, '2023-11-14'),
(19, 5, 4, '2023-11-15'),
(20, 5, 5, '2023-11-16'),
(21, 5, 6, '2023-11-17'),
(22, 5, 7, '2023-11-18'),
(23, 6, 8, '2023-11-19'),
(24, 6, 9, '2023-11-20'),
(25, 6, 10, '2023-11-21'),
(26, 6, 11, '2023-11-22'),
(27, 6, 12, '2023-11-23'),
(28, 6, 13, '2023-11-24'),
(29, 6, 14, '2023-11-25'),
(30, 13, 1, '2023-11-12'),
(31, 13, 2, '2023-11-13'),
(32, 13, 3, '2023-11-14'),
(33, 13, 4, '2023-11-15'),
(34, 13, 5, '2023-11-16'),
(35, 13, 6, '2023-11-17'),
(36, 13, 7, '2023-11-18'),
(37, 14, 1, '2023-11-19'),
(38, 14, 2, '2023-11-20'),
(39, 14, 3, '2023-11-21'),
(40, 14, 4, '2023-11-22'),
(41, 14, 5, '2023-11-23'),
(42, 14, 6, '2023-11-24'),
(43, 14, 7, '2023-11-25'),
(44, 15, 1, '2023-04-17'),
(45, 15, 2, '2023-04-18'),
(46, 15, 3, '2023-04-19'),
(47, 15, 4, '2023-04-20'),
(48, 15, 5, '2023-04-21'),
(49, 15, 6, '2023-04-22'),
(50, 15, 7, '2023-04-23'),
(51, 16, 1, '2023-04-24'),
(52, 16, 2, '2023-04-25'),
(53, 16, 3, '2023-04-26'),
(54, 16, 4, '2023-04-27'),
(55, 16, 5, '2023-04-28'),
(56, 16, 6, '2023-04-29'),
(57, 16, 7, '2023-04-30'),
(58, 18, 1, '2023-05-01'),
(59, 18, 2, '2023-05-02'),
(60, 18, 3, '2023-05-03'),
(61, 18, 4, '2023-05-04'),
(62, 18, 5, '2023-05-05'),
(63, 18, 6, '2023-05-06'),
(64, 18, 7, '2023-05-07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_monitor_food_intake`
--

CREATE TABLE `tbl_monitor_food_intake` (
  `food_intake_id` int(11) NOT NULL,
  `monitor_day_id` int(11) NOT NULL,
  `time_type` varchar(20) NOT NULL,
  `time` time NOT NULL,
  `food_consumed` varchar(255) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `method` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_monitor_food_intake`
--

INSERT INTO `tbl_monitor_food_intake` (`food_intake_id`, `monitor_day_id`, `time_type`, `time`, `food_consumed`, `quantity`, `amount`, `method`) VALUES
(1, 2, 'breakfast', '09:14:13', 'Test food', 'cup', 1, 'test method'),
(2, 2, 'lunch', '03:33:43', 'test 2', 'cup', 1, 'wi'),
(3, 2, 'lunch', '03:33:43', 'test 3', 'cup', 1, 'wsi'),
(20, 3, 'breakfast', '09:00:00', 'food consume test 1', 'volvo', 1, 'method test'),
(21, 3, 'lunch', '09:00:00', 'food consume test 1', 'volvo', 1, 'method test'),
(22, 3, 'dinner', '09:00:00', 'food consume test 1', 'volvo', 1, 'method test'),
(23, 3, 'snacks', '09:00:00', 'food consume test 1', 'volvo', 1, 'method test'),
(24, 4, 'breakfast', '09:00:00', 'food consume test 1', 'volvo', 1, 'method test'),
(25, 4, 'breakfast', '02:00:00', 'food consume test 1', 'volvo', 1, 'method test'),
(26, 4, 'lunch', '09:00:00', 'food consume test 1', 'volvo', 1, 'method test'),
(27, 4, 'dinner', '09:00:00', 'food consume test 1', 'volvo', 1, 'method test'),
(28, 4, 'snacks', '09:00:00', 'food consume test 1', 'volvo', 1, 'method test'),
(29, 4, 'snacks', '02:00:00', 'food consume test 1', 'volvo', 1, 'method test'),
(30, 5, 'breakfast', '09:00:00', 'food consume test 1', 'volvo', 1, 'method test'),
(31, 5, 'lunch', '09:00:00', 'food consume test 1', 'volvo', 1, 'method test'),
(32, 5, 'dinner', '09:00:00', 'food consume test 1', 'volvo', 1, 'method test'),
(33, 5, 'snacks', '09:00:00', 'food consume test 1', 'volvo', 1, 'method test'),
(34, 7, 'breakfast', '09:00:00', 'food consume test 1', 'volvo', 1, 'method test'),
(35, 7, 'lunch', '09:00:00', 'food consume test 1', 'volvo', 1, 'method test'),
(36, 7, 'dinner', '09:00:00', 'food consume test 1', 'volvo', 1, 'method test'),
(37, 7, 'snacks', '09:00:00', 'food consume test 1', 'volvo', 1, 'method test'),
(38, 6, 'breakfast', '09:00:00', 'food consume test 1', 'volvo', 1, 'method test'),
(39, 6, 'lunch', '09:00:00', 'food consume test 1', 'volvo', 1, 'method test'),
(40, 6, 'dinner', '09:00:00', 'food consume test 1', 'volvo', 1, 'method test'),
(41, 6, 'snacks', '09:00:00', 'food consume test 1', 'volvo', 1, 'method test'),
(42, 8, 'breakfast', '09:00:00', 'food consume test 1', 'volvo', 1, 'method test'),
(43, 8, 'lunch', '09:00:00', 'food consume test 1', 'volvo', 1, 'method test'),
(44, 8, 'dinner', '09:00:00', 'food consume test 1', 'volvo', 1, 'method test'),
(45, 8, 'snacks', '09:00:00', 'food consume test 1', 'volvo', 1, 'method test'),
(46, 3, 'breakfast', '02:00:00', 'food consume test 1', 'volvo', 1, 'method test'),
(47, 3, 'lunch', '02:00:00', 'food consume test 1', 'volvo', 1, 'method test'),
(48, 3, 'dinner', '02:00:00', 'food consume test 1', 'volvo', 1, 'method test'),
(49, 3, 'snacks', '02:00:00', 'food consume test 1', 'volvo', 1, 'method test');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_monitor_pending`
--

CREATE TABLE `tbl_monitor_pending` (
  `monitor_pending_id` int(11) NOT NULL,
  `transact_id` int(11) NOT NULL,
  `client_status` varchar(30) NOT NULL,
  `monitor_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_monitor_pending`
--

INSERT INTO `tbl_monitor_pending` (`monitor_pending_id`, `transact_id`, `client_status`, `monitor_date`) VALUES
(1, 253, 'ACCEPTED', '2023-11-11'),
(2, 254, 'ACCEPTED', '2023-11-11'),
(3, 255, 'ACCEPTED', '2023-04-16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_monitor_physical`
--

CREATE TABLE `tbl_monitor_physical` (
  `monitor_physical_id` int(11) NOT NULL,
  `monitor_day_id` int(11) NOT NULL,
  `physical_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_monitor_physical`
--

INSERT INTO `tbl_monitor_physical` (`monitor_physical_id`, `monitor_day_id`, `physical_level`) VALUES
(1, 2, 2),
(2, 3, 0),
(3, 4, 0),
(4, 5, 0),
(5, 7, 0),
(6, 6, 0),
(7, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_monitor_supplement`
--

CREATE TABLE `tbl_monitor_supplement` (
  `monitor_supplement_id` int(11) NOT NULL,
  `monitor_day_id` int(11) NOT NULL,
  `supplement_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_monitor_supplement`
--

INSERT INTO `tbl_monitor_supplement` (`monitor_supplement_id`, `monitor_day_id`, `supplement_name`) VALUES
(1, 2, 'test'),
(2, 3, 'supplement test day 2'),
(3, 4, 'supplement test'),
(4, 5, 'supplement test'),
(5, 7, 'supplement test'),
(6, 6, 'supplement test'),
(7, 8, 'supplement test');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_monitor_week`
--

CREATE TABLE `tbl_monitor_week` (
  `monitor_week_id` int(11) NOT NULL,
  `monitor_id` int(11) NOT NULL,
  `week_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_monitor_week`
--

INSERT INTO `tbl_monitor_week` (`monitor_week_id`, `monitor_id`, `week_num`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 3, 1),
(6, 3, 2),
(7, 2, 3),
(8, 3, 3),
(9, 3, 4),
(10, 2, 4),
(11, 2, 5),
(12, 1, 3),
(13, 4, 1),
(14, 4, 2),
(15, 5, 1),
(16, 5, 2),
(18, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_monitor_weight_goal`
--

CREATE TABLE `tbl_monitor_weight_goal` (
  `monitor_weight_goal_id` int(11) NOT NULL,
  `monitor_day_id` int(11) NOT NULL,
  `current_body_weight` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_monitor_weight_goal`
--

INSERT INTO `tbl_monitor_weight_goal` (`monitor_weight_goal_id`, `monitor_day_id`, `current_body_weight`) VALUES
(1, 2, 60),
(6, 3, 10),
(7, 4, 10),
(8, 5, 10),
(9, 7, 10),
(10, 6, 10),
(11, 8, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification`
--

CREATE TABLE `tbl_notification` (
  `tbl_notif_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `is_read` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_notification`
--

INSERT INTO `tbl_notification` (`tbl_notif_id`, `user_id`, `message`, `is_read`, `created_at`, `link`) VALUES
(1, 1, 'Test notif', 0, '2023-04-26 12:35:54', 'http://localhost/clinic/homepage/consultation/consultation.php');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pending_appoint_rnd`
--

CREATE TABLE `tbl_pending_appoint_rnd` (
  `pending_appoint_rnd_id` int(11) NOT NULL,
  `transact_id` int(11) NOT NULL,
  `rnd_id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pending_appoint_rnd`
--

INSERT INTO `tbl_pending_appoint_rnd` (`pending_appoint_rnd_id`, `transact_id`, `rnd_id`, `status`) VALUES
(131, 119, 3, 'APPROVED'),
(135, 120, 3, 'APPROVED'),
(137, 116, 4, 'CURRENT'),
(138, 116, 5, 'DENAID'),
(139, 116, 6, 'PROGRESS'),
(142, 121, 3, 'ACCEPTED'),
(143, 122, 3, 'ACCEPTED'),
(144, 123, 3, 'ACCEPTED'),
(145, 124, 3, 'ACCEPTED'),
(146, 125, 3, 'ACCEPTED'),
(147, 126, 3, 'DENAID'),
(148, 126, 17, 'DENAID'),
(149, 126, 8, 'ACCEPTED'),
(150, 127, 3, 'DENAID'),
(151, 127, 17, 'DENAID'),
(152, 127, 8, 'DENAID'),
(153, 128, 3, 'DENAID'),
(154, 128, 17, 'DENAID'),
(155, 128, 8, 'ACCEPTED'),
(156, 129, 3, 'DENAID'),
(157, 129, 17, 'ACCEPTED'),
(159, 130, 3, 'DENAID'),
(160, 130, 17, 'ACCEPTED'),
(162, 131, 3, 'ACCEPTED'),
(165, 132, 3, 'ACCEPTED'),
(168, 133, 3, 'ACCEPTED'),
(171, 134, 3, 'ACCEPTED'),
(174, 135, 3, 'ACCEPTED'),
(177, 136, 3, 'ACCEPTED'),
(180, 137, 3, 'ACCEPTED'),
(183, 138, 3, 'DENAID'),
(184, 138, 17, 'ACCEPTED'),
(186, 139, 3, 'ACCEPTED'),
(189, 140, 3, 'ACCEPTED'),
(192, 141, 3, 'ACCEPTED'),
(195, 142, 3, 'ACCEPTED'),
(198, 143, 3, 'ACCEPTED'),
(201, 144, 3, 'ACCEPTED'),
(204, 171, 3, 'ACCEPTED'),
(207, 179, 3, 'ACCEPTED'),
(210, 180, 3, 'ACCEPTED'),
(213, 185, 3, 'ACCEPTED'),
(216, 186, 3, 'ACCEPTED'),
(219, 187, 3, 'CURRENT'),
(220, 187, 17, 'PROGRESS'),
(221, 187, 8, 'PROGRESS'),
(222, 188, 3, 'ACCEPTED'),
(225, 194, 3, 'ACCEPTED'),
(228, 198, 3, 'ACCEPTED'),
(231, 199, 3, 'ACCEPTED'),
(234, 215, 3, 'ACCEPTED'),
(237, 216, 3, 'ACCEPTED'),
(240, 217, 3, 'ACCEPTED'),
(243, 218, 3, 'ACCEPTED'),
(246, 234, 3, 'ACCEPTED'),
(249, 235, 3, 'ACCEPTED'),
(252, 236, 3, 'ACCEPTED'),
(255, 241, 3, 'ACCEPTED'),
(258, 242, 3, 'ACCEPTED'),
(261, 243, 3, 'ACCEPTED'),
(264, 244, 3, 'ACCEPTED'),
(267, 245, 3, 'ACCEPTED'),
(270, 246, 3, 'ACCEPTED'),
(273, 247, 3, 'ACCEPTED'),
(280, 248, 17, 'ACCEPTED'),
(284, 249, 17, 'ACCEPTED'),
(285, 250, 3, 'ACCEPTED'),
(289, 252, 3, 'ACCEPTED'),
(293, 252, 3, 'ACCEPTED'),
(297, 253, 3, 'ACCEPTED'),
(301, 254, 3, 'ACCEPTED'),
(305, 255, 3, 'ACCEPTED'),
(309, 255, 3, 'CURRENT'),
(310, 255, 6, 'CURRENT'),
(311, 255, 8, 'CURRENT'),
(312, 255, 17, 'CURRENT'),
(318, 256, 76, 'ACCEPTED'),
(319, 264, 3, 'ACCEPTED');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_physical_activity`
--

CREATE TABLE `tbl_physical_activity` (
  `physical_activity_id` int(11) NOT NULL,
  `physical_act_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_physical_activity`
--

INSERT INTO `tbl_physical_activity` (`physical_activity_id`, `physical_act_name`) VALUES
(1, 'sedentary'),
(2, 'light'),
(3, 'moderate'),
(4, 'very active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_physical_body_type`
--

CREATE TABLE `tbl_physical_body_type` (
  `physical_body_type_id` int(11) NOT NULL,
  `body_type_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_physical_body_type`
--

INSERT INTO `tbl_physical_body_type` (`physical_body_type_id`, `body_type_name`) VALUES
(1, 'endomorph'),
(2, 'ectomorph'),
(3, 'mesomorph');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status`
--

CREATE TABLE `tbl_status` (
  `status_id` int(11) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_status`
--

INSERT INTO `tbl_status` (`status_id`, `status`) VALUES
(1, 'good'),
(2, 'bad');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplement`
--

CREATE TABLE `tbl_supplement` (
  `supplement_id` int(11) NOT NULL,
  `monitor_day_id` int(11) NOT NULL,
  `supplement_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_supplement`
--

INSERT INTO `tbl_supplement` (`supplement_id`, `monitor_day_id`, `supplement_name`) VALUES
(1, 1, 'Vitamin D'),
(2, 2, 'test supplement'),
(3, 2, 'test supplement'),
(4, 2, 'test supplement'),
(5, 3, 'test supplement'),
(6, 3, 'test supplement'),
(7, 4, 'test supplement'),
(8, 6, 'test supplement'),
(9, 5, 'test supplement'),
(10, 7, 'test supplement');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transact`
--

CREATE TABLE `tbl_transact` (
  `transact_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `board_page` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transact`
--

INSERT INTO `tbl_transact` (`transact_id`, `user_id`, `board_page`) VALUES
(1, 1, 5),
(2, 1, 2),
(184, 1, 2),
(185, 1, 5),
(186, 1, 3),
(187, 1, 2),
(188, 1, 5),
(189, 18, 2),
(194, 18, 5),
(195, 18, 2),
(196, 18, 2),
(197, 18, 2),
(198, 18, 5),
(199, 18, 5),
(200, 1, 2),
(201, 1, 2),
(202, 1, 2),
(203, 1, 2),
(204, 1, 2),
(205, 1, 2),
(206, 1, 2),
(207, 1, 2),
(208, 1, 2),
(209, 1, 2),
(210, 1, 2),
(211, 1, 2),
(212, 1, 2),
(213, 1, 2),
(214, 1, 2),
(215, 1, 5),
(216, 1, 5),
(217, 19, 5),
(218, 1, 5),
(219, 1, 2),
(220, 1, 2),
(221, 1, 2),
(222, 1, 2),
(223, 1, 2),
(224, 1, 2),
(225, 1, 2),
(226, 1, 2),
(227, 1, 2),
(228, 1, 2),
(229, 1, 2),
(230, 1, 2),
(231, 1, 2),
(232, 1, 2),
(233, 1, 2),
(234, 1, 3),
(235, 1, 3),
(236, 1, 5),
(237, 1, 2),
(238, 1, 2),
(239, 1, 2),
(240, 1, 2),
(241, 1, 5),
(242, 1, 4),
(243, 1, 4),
(244, 1, 4),
(245, 1, 4),
(246, 1, 5),
(247, 1, 3),
(248, 1, 5),
(249, 1, 7),
(250, 1, 5),
(251, 72, 2),
(252, 72, 5),
(253, 1, 5),
(254, 1, 5),
(255, 1, 5),
(256, 1, 3),
(257, 1, 2),
(258, 1, 2),
(259, 1, 2),
(260, 1, 2),
(261, 1, 2),
(262, 1, 2),
(263, 1, 2),
(264, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transact_appoint`
--

CREATE TABLE `tbl_transact_appoint` (
  `appoint_id` int(11) NOT NULL,
  `transact_id` int(11) NOT NULL,
  `appoint_for` int(11) NOT NULL,
  `consult_info_id` int(11) DEFAULT NULL,
  `food_info_id` int(11) DEFAULT NULL,
  `physical_info_id` int(11) DEFAULT NULL,
  `medical_info_id` int(11) DEFAULT NULL,
  `appoint_date_submitted` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transact_appoint`
--

INSERT INTO `tbl_transact_appoint` (`appoint_id`, `transact_id`, `appoint_for`, `consult_info_id`, `food_info_id`, `physical_info_id`, `medical_info_id`, `appoint_date_submitted`) VALUES
(1, 1, 1, 1, 1, 1, 1, '2023-02-06 03:34:47'),
(108, 120, 1, NULL, NULL, NULL, NULL, '2023-02-13 04:13:38'),
(109, 121, 1, NULL, NULL, NULL, NULL, '2023-02-13 06:05:29'),
(110, 122, 1, NULL, NULL, NULL, NULL, '2023-02-13 07:43:58'),
(111, 123, 1, NULL, NULL, NULL, NULL, '2023-02-13 07:46:39'),
(112, 124, 1, NULL, NULL, NULL, NULL, '2023-02-13 07:48:47'),
(113, 125, 1, NULL, NULL, NULL, NULL, '2023-02-13 07:51:16'),
(114, 126, 1, NULL, NULL, NULL, NULL, '2023-02-13 08:24:54'),
(115, 127, 1, NULL, NULL, NULL, NULL, '2023-02-13 08:54:37'),
(116, 128, 1, NULL, NULL, NULL, NULL, '2023-02-13 08:57:03'),
(117, 129, 1, NULL, NULL, NULL, NULL, '2023-02-13 09:02:29'),
(118, 130, 1, NULL, NULL, NULL, NULL, '2023-02-13 09:22:34'),
(119, 131, 1, NULL, NULL, NULL, NULL, '2023-02-15 04:40:11'),
(120, 132, 1, NULL, NULL, NULL, NULL, '2023-02-15 05:03:42'),
(121, 133, 1, NULL, NULL, NULL, NULL, '2023-02-15 07:58:40'),
(122, 134, 1, NULL, NULL, NULL, NULL, '2023-02-15 11:44:18'),
(123, 135, 1, NULL, NULL, NULL, NULL, '2023-02-16 08:08:02'),
(124, 136, 1, NULL, NULL, NULL, NULL, '2023-02-17 03:19:44'),
(125, 137, 1, NULL, NULL, NULL, NULL, '2023-02-17 12:47:54'),
(126, 138, 1, NULL, NULL, NULL, NULL, '2023-02-17 13:50:26'),
(127, 139, 1, NULL, NULL, NULL, NULL, '2023-02-17 17:39:51'),
(128, 140, 1, NULL, NULL, NULL, NULL, '2023-02-18 06:34:29'),
(129, 141, 1, NULL, NULL, NULL, NULL, '2023-02-18 06:48:36'),
(130, 142, 1, NULL, NULL, NULL, NULL, '2023-02-19 14:09:16'),
(131, 143, 1, NULL, NULL, NULL, NULL, '2023-02-19 14:42:34'),
(132, 144, 1, NULL, NULL, NULL, NULL, '2023-02-19 18:53:57'),
(133, 145, 1, NULL, NULL, NULL, NULL, '2023-02-21 19:01:57'),
(134, 146, 1, NULL, NULL, NULL, NULL, '2023-02-21 19:12:38'),
(135, 147, 1, NULL, NULL, NULL, NULL, '2023-02-21 19:13:27'),
(136, 148, 1, NULL, NULL, NULL, NULL, '2023-02-21 19:15:28'),
(137, 149, 1, NULL, NULL, NULL, NULL, '2023-02-21 19:19:47'),
(138, 150, 1, NULL, NULL, NULL, NULL, '2023-02-21 19:24:36'),
(139, 151, 1, NULL, NULL, NULL, NULL, '2023-02-21 19:35:01'),
(140, 152, 1, NULL, NULL, NULL, NULL, '2023-02-21 19:36:38'),
(141, 153, 1, NULL, NULL, NULL, NULL, '2023-02-21 19:41:04'),
(142, 154, 1, NULL, NULL, NULL, NULL, '2023-02-21 19:41:26'),
(143, 155, 1, NULL, NULL, NULL, NULL, '2023-02-21 19:41:55'),
(144, 156, 1, NULL, NULL, NULL, NULL, '2023-02-21 19:43:05'),
(145, 157, 1, NULL, NULL, NULL, NULL, '2023-02-21 19:45:07'),
(146, 158, 1, NULL, NULL, NULL, NULL, '2023-02-21 19:52:56'),
(147, 159, 1, NULL, NULL, NULL, NULL, '2023-02-21 19:53:22'),
(148, 160, 1, NULL, NULL, NULL, NULL, '2023-02-21 20:01:24'),
(149, 161, 1, NULL, NULL, NULL, NULL, '2023-02-21 20:01:39'),
(150, 162, 1, NULL, NULL, NULL, NULL, '2023-02-21 20:01:55'),
(151, 163, 1, NULL, NULL, NULL, NULL, '2023-02-21 20:02:14'),
(152, 164, 1, NULL, NULL, NULL, NULL, '2023-02-21 20:08:08'),
(153, 165, 1, NULL, NULL, NULL, NULL, '2023-02-21 20:12:36'),
(154, 166, 1, NULL, NULL, NULL, NULL, '2023-02-21 20:14:33'),
(155, 167, 1, NULL, NULL, NULL, NULL, '2023-02-21 20:14:43'),
(156, 168, 1, NULL, NULL, NULL, NULL, '2023-02-21 20:15:04'),
(157, 169, 1, NULL, NULL, NULL, NULL, '2023-02-21 20:15:50'),
(158, 170, 1, NULL, NULL, NULL, NULL, '2023-02-21 20:19:27'),
(159, 171, 1, NULL, NULL, NULL, NULL, '2023-02-21 20:20:05'),
(160, 172, 1, NULL, NULL, NULL, NULL, '2023-02-22 11:21:47'),
(161, 173, 1, NULL, NULL, NULL, NULL, '2023-02-22 11:29:00'),
(162, 174, 1, NULL, NULL, NULL, NULL, '2023-02-22 11:29:49'),
(163, 175, 1, NULL, NULL, NULL, NULL, '2023-02-22 11:32:37'),
(164, 176, 1, NULL, NULL, NULL, NULL, '2023-02-22 12:07:23'),
(165, 177, 1, NULL, NULL, NULL, NULL, '2023-02-22 12:08:26'),
(166, 178, 1, NULL, NULL, NULL, NULL, '2023-02-22 12:10:59'),
(167, 179, 1, NULL, NULL, NULL, NULL, '2023-02-22 12:12:18'),
(168, 180, 1, NULL, NULL, NULL, NULL, '2023-02-23 08:58:58'),
(169, 181, 1, NULL, NULL, NULL, NULL, '2023-02-23 12:40:16'),
(170, 182, 1, NULL, NULL, NULL, NULL, '2023-02-23 12:49:13'),
(171, 183, 1, NULL, NULL, NULL, NULL, '2023-02-23 12:51:30'),
(172, 184, 1, NULL, NULL, NULL, NULL, '2023-02-23 12:54:30'),
(173, 185, 1, NULL, NULL, NULL, NULL, '2023-02-23 12:54:56'),
(174, 186, 1, NULL, NULL, NULL, NULL, '2023-02-24 18:29:22'),
(175, 187, 1, NULL, NULL, NULL, NULL, '2023-02-24 18:40:32'),
(176, 188, 1, NULL, NULL, NULL, NULL, '2023-02-24 18:40:48'),
(177, 189, 1, NULL, NULL, NULL, NULL, '2023-02-25 14:37:40'),
(178, 190, 1, NULL, NULL, NULL, NULL, '2023-02-25 14:37:42'),
(179, 191, 1, NULL, NULL, NULL, NULL, '2023-02-25 14:37:44'),
(180, 192, 1, NULL, NULL, NULL, NULL, '2023-02-25 14:37:45'),
(181, 193, 1, NULL, NULL, NULL, NULL, '2023-02-25 14:38:03'),
(182, 194, 1, NULL, NULL, NULL, NULL, '2023-02-25 14:39:54'),
(183, 195, 1, NULL, NULL, NULL, NULL, '2023-02-25 14:43:50'),
(184, 196, 1, NULL, NULL, NULL, NULL, '2023-02-25 14:44:19'),
(185, 197, 1, NULL, NULL, NULL, NULL, '2023-02-25 14:44:49'),
(186, 198, 1, NULL, NULL, NULL, NULL, '2023-02-25 14:45:05'),
(187, 199, 1, NULL, NULL, NULL, NULL, '2023-02-25 17:44:22'),
(188, 214, 1, NULL, NULL, NULL, NULL, '2023-02-25 19:44:20'),
(189, 215, 1, NULL, NULL, NULL, NULL, '2023-02-25 19:44:37'),
(190, 216, 1, NULL, NULL, NULL, NULL, '2023-02-25 21:22:54'),
(191, 217, 1, NULL, NULL, NULL, NULL, '2023-02-26 06:41:25'),
(192, 218, 1, NULL, NULL, NULL, NULL, '2023-02-27 09:40:13'),
(193, 219, 1, NULL, NULL, NULL, NULL, '2023-02-28 21:55:59'),
(194, 220, 1, NULL, NULL, NULL, NULL, '2023-02-28 21:57:09'),
(195, 221, 1, NULL, NULL, NULL, NULL, '2023-02-28 21:58:59'),
(196, 222, 1, NULL, NULL, NULL, NULL, '2023-02-28 21:59:14'),
(197, 223, 1, NULL, NULL, NULL, NULL, '2023-02-28 21:59:54'),
(198, 224, 1, NULL, NULL, NULL, NULL, '2023-02-28 22:01:20'),
(199, 225, 1, NULL, NULL, NULL, NULL, '2023-02-28 22:04:55'),
(200, 226, 1, NULL, NULL, NULL, NULL, '2023-02-28 22:06:40'),
(201, 227, 1, NULL, NULL, NULL, NULL, '2023-02-28 22:09:37'),
(202, 228, 1, NULL, NULL, NULL, NULL, '2023-02-28 22:10:31'),
(203, 229, 1, NULL, NULL, NULL, NULL, '2023-02-28 22:11:40'),
(204, 230, 1, NULL, NULL, NULL, NULL, '2023-02-28 22:18:27'),
(205, 231, 1, NULL, NULL, NULL, NULL, '2023-02-28 22:18:40'),
(206, 232, 1, NULL, NULL, NULL, NULL, '2023-02-28 22:29:21'),
(207, 233, 1, NULL, NULL, NULL, NULL, '2023-02-28 22:32:23'),
(208, 234, 1, NULL, NULL, NULL, NULL, '2023-02-28 22:35:06'),
(209, 235, 1, NULL, NULL, NULL, NULL, '2023-02-28 23:03:56'),
(210, 236, 1, NULL, NULL, NULL, NULL, '2023-02-28 23:10:18'),
(211, 237, 2, NULL, NULL, NULL, NULL, '2023-02-28 23:18:32'),
(212, 238, 2, NULL, NULL, NULL, NULL, '2023-02-28 23:19:32'),
(213, 239, 2, NULL, NULL, NULL, NULL, '2023-02-28 23:20:34'),
(214, 240, 1, NULL, NULL, NULL, NULL, '2023-02-28 23:20:52'),
(215, 241, 1, NULL, NULL, NULL, NULL, '2023-02-28 23:43:08'),
(216, 242, 1, NULL, NULL, NULL, NULL, '2023-03-02 20:22:04'),
(217, 243, 1, NULL, NULL, NULL, NULL, '2023-03-02 21:14:55'),
(218, 244, 1, NULL, NULL, NULL, NULL, '2023-03-02 21:17:43'),
(219, 245, 1, NULL, NULL, NULL, NULL, '2023-03-02 21:19:16'),
(220, 246, 1, NULL, NULL, NULL, NULL, '2023-03-02 21:20:43'),
(221, 247, 1, NULL, NULL, NULL, NULL, '2023-03-04 23:21:46'),
(222, 248, 1, NULL, NULL, NULL, NULL, '2023-03-04 23:47:50'),
(223, 249, 1, NULL, NULL, NULL, NULL, '2023-03-05 00:01:54'),
(224, 250, 1, NULL, NULL, NULL, NULL, '2023-03-24 02:41:26'),
(225, 251, 1, NULL, NULL, NULL, NULL, '2023-03-28 15:44:27'),
(226, 252, 1, NULL, NULL, NULL, NULL, '2023-03-28 18:08:15'),
(227, 253, 1, NULL, NULL, NULL, NULL, '2023-03-31 14:13:28'),
(228, 254, 1, NULL, NULL, NULL, NULL, '2023-04-14 07:53:41'),
(229, 255, 1, NULL, NULL, NULL, NULL, '2023-04-16 05:25:38'),
(230, 256, 1, NULL, NULL, NULL, NULL, '2023-04-24 14:42:54'),
(231, 257, 1, NULL, NULL, NULL, NULL, '2023-04-26 00:40:04'),
(232, 258, 1, NULL, NULL, NULL, NULL, '2023-04-26 00:42:05'),
(233, 259, 1, NULL, NULL, NULL, NULL, '2023-04-26 06:08:45'),
(234, 260, 1, NULL, NULL, NULL, NULL, '2023-04-26 06:10:52'),
(235, 261, 1, NULL, NULL, NULL, NULL, '2023-04-26 06:22:25'),
(236, 262, 1, NULL, NULL, NULL, NULL, '2023-04-26 06:23:33'),
(237, 263, 1, NULL, NULL, NULL, NULL, '2023-04-26 06:24:47'),
(238, 264, 1, NULL, NULL, NULL, NULL, '2023-04-26 06:27:57');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transact_appoint_checkpoint_appoint_status`
--

CREATE TABLE `tbl_transact_appoint_checkpoint_appoint_status` (
  `appoint_checkpoint_appoint_status_id` int(11) NOT NULL,
  `transact_id` int(11) NOT NULL,
  `appoint_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transact_appoint_checkpoint_appoint_status`
--

INSERT INTO `tbl_transact_appoint_checkpoint_appoint_status` (`appoint_checkpoint_appoint_status_id`, `transact_id`, `appoint_status`) VALUES
(1, 1, 'APPROVED'),
(28, 120, 'APPROVED'),
(29, 121, 'APPROVED'),
(30, 122, 'APPROVED'),
(31, 123, 'APPROVED'),
(32, 124, 'APPROVED'),
(33, 125, 'APPROVED'),
(34, 126, 'APPROVED'),
(35, 127, 'APPROVED'),
(36, 128, 'APPROVED'),
(37, 129, 'APPROVED'),
(38, 130, 'APPROVED'),
(39, 131, 'APPROVED'),
(40, 132, 'APPROVED'),
(41, 133, 'APPROVED'),
(42, 134, 'APPROVED'),
(43, 135, 'APPROVED'),
(44, 136, 'APPROVED'),
(45, 137, 'APPROVED'),
(46, 138, 'APPROVED'),
(47, 139, 'APPROVED'),
(48, 140, 'APPROVED'),
(49, 141, 'APPROVED'),
(50, 142, 'APPROVED'),
(51, 143, 'APPROVED'),
(52, 144, 'APPROVED'),
(53, 145, 'PENDING'),
(54, 146, 'PENDING'),
(55, 147, 'PENDING'),
(56, 148, 'PENDING'),
(57, 149, 'PENDING'),
(58, 150, 'PENDING'),
(59, 151, 'PENDING'),
(60, 152, 'PENDING'),
(61, 153, 'PENDING'),
(62, 154, 'PENDING'),
(63, 155, 'PENDING'),
(64, 156, 'PENDING'),
(65, 157, 'PENDING'),
(66, 158, 'PENDING'),
(67, 159, 'PENDING'),
(68, 160, 'PENDING'),
(69, 161, 'PENDING'),
(70, 162, 'PENDING'),
(71, 163, 'PENDING'),
(72, 164, 'PENDING'),
(73, 165, 'PENDING'),
(74, 166, 'PENDING'),
(75, 167, 'PENDING'),
(76, 168, 'PENDING'),
(77, 169, 'PENDING'),
(78, 170, 'PENDING'),
(79, 171, 'APPROVED'),
(80, 172, 'PENDING'),
(81, 173, 'PENDING'),
(82, 174, 'PENDING'),
(83, 175, 'PENDING'),
(84, 176, 'PENDING'),
(85, 177, 'PENDING'),
(86, 178, 'PENDING'),
(87, 179, 'APPROVED'),
(88, 180, 'APPROVED'),
(89, 181, 'PENDING'),
(90, 182, 'PENDING'),
(91, 183, 'PENDING'),
(92, 184, 'PENDING'),
(93, 185, 'APPROVED'),
(94, 186, 'APPROVED'),
(95, 187, 'APPROVED'),
(96, 188, 'APPROVED'),
(97, 189, 'PENDING'),
(98, 190, 'PENDING'),
(99, 191, 'PENDING'),
(100, 192, 'PENDING'),
(101, 193, 'PENDING'),
(102, 194, 'APPROVED'),
(103, 195, 'PENDING'),
(104, 196, 'PENDING'),
(105, 197, 'PENDING'),
(106, 198, 'APPROVED'),
(107, 199, 'APPROVED'),
(108, 214, 'PENDING'),
(109, 215, 'APPROVED'),
(110, 216, 'APPROVED'),
(111, 217, 'APPROVED'),
(112, 218, 'APPROVED'),
(113, 219, 'PENDING'),
(114, 220, 'PENDING'),
(115, 221, 'PENDING'),
(116, 222, 'PENDING'),
(117, 223, 'PENDING'),
(118, 224, 'PENDING'),
(119, 225, 'PENDING'),
(120, 226, 'PENDING'),
(121, 227, 'PENDING'),
(122, 228, 'PENDING'),
(123, 229, 'PENDING'),
(124, 230, 'PENDING'),
(125, 231, 'PENDING'),
(126, 232, 'PENDING'),
(127, 233, 'PENDING'),
(128, 234, 'APPROVED'),
(129, 235, 'APPROVED'),
(130, 236, 'APPROVED'),
(131, 240, 'PENDING'),
(132, 241, 'APPROVED'),
(133, 242, 'APPROVED'),
(134, 243, 'APPROVED'),
(135, 244, 'APPROVED'),
(136, 245, 'APPROVED'),
(137, 246, 'APPROVED'),
(138, 247, 'APPROVED'),
(139, 248, 'APPROVED'),
(140, 249, 'APPROVED'),
(141, 250, 'APPROVED'),
(142, 251, 'PENDING'),
(143, 252, 'APPROVED'),
(144, 253, 'APPROVED'),
(145, 254, 'APPROVED'),
(146, 255, 'APPROVED'),
(147, 256, 'APPROVED'),
(148, 257, 'PENDING'),
(149, 258, 'PENDING'),
(150, 259, 'PENDING'),
(151, 260, 'PENDING'),
(152, 261, 'PENDING'),
(153, 262, 'PENDING'),
(154, 263, 'PENDING'),
(155, 264, 'APPROVED');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transact_appoint_checkpoint_rnd_status`
--

CREATE TABLE `tbl_transact_appoint_checkpoint_rnd_status` (
  `appoint_checkpoint_rnd_status_id` int(11) NOT NULL,
  `transact_id` int(11) NOT NULL,
  `rnd_status` varchar(10) NOT NULL,
  `rnd_id` int(11) DEFAULT NULL COMMENT 'insert the id of the rnd (acts as an user id)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transact_appoint_checkpoint_rnd_status`
--

INSERT INTO `tbl_transact_appoint_checkpoint_rnd_status` (`appoint_checkpoint_rnd_status_id`, `transact_id`, `rnd_status`, `rnd_id`) VALUES
(1, 1, 'APPROVED', 3),
(56, 120, 'APPROVED', 3),
(57, 121, 'APPROVED', 3),
(58, 122, 'APPROVED', 3),
(59, 123, 'APPROVED', 3),
(60, 124, 'APPROVED', 3),
(61, 125, 'APPROVED', 3),
(62, 126, 'APPROVED', 8),
(63, 127, 'PENDING', NULL),
(64, 128, 'APPROVED', 8),
(65, 129, 'APPROVED', 17),
(66, 130, 'APPROVED', 17),
(67, 131, 'APPROVED', 3),
(68, 132, 'APPROVED', 3),
(69, 133, 'APPROVED', 3),
(70, 134, 'APPROVED', 3),
(71, 135, 'APPROVED', 3),
(72, 136, 'APPROVED', 3),
(73, 137, 'APPROVED', 3),
(74, 138, 'APPROVED', 17),
(75, 139, 'APPROVED', 3),
(76, 140, 'APPROVED', 3),
(77, 141, 'APPROVED', 3),
(78, 142, 'APPROVED', 3),
(79, 143, 'APPROVED', 3),
(80, 144, 'APPROVED', 3),
(81, 145, 'PENDING', NULL),
(82, 146, 'PENDING', NULL),
(83, 147, 'PENDING', NULL),
(84, 148, 'PENDING', NULL),
(85, 149, 'PENDING', NULL),
(86, 150, 'PENDING', NULL),
(87, 151, 'PENDING', NULL),
(88, 152, 'PENDING', NULL),
(89, 153, 'PENDING', NULL),
(90, 154, 'PENDING', NULL),
(91, 155, 'PENDING', NULL),
(92, 156, 'PENDING', NULL),
(93, 157, 'PENDING', NULL),
(94, 158, 'PENDING', NULL),
(95, 159, 'PENDING', NULL),
(96, 160, 'PENDING', NULL),
(97, 161, 'PENDING', NULL),
(98, 162, 'PENDING', NULL),
(99, 163, 'PENDING', NULL),
(100, 164, 'PENDING', NULL),
(101, 165, 'PENDING', NULL),
(102, 166, 'PENDING', NULL),
(103, 167, 'PENDING', NULL),
(104, 168, 'PENDING', NULL),
(105, 169, 'PENDING', NULL),
(106, 170, 'PENDING', NULL),
(107, 171, 'APPROVED', 3),
(108, 172, 'PENDING', NULL),
(109, 173, 'PENDING', NULL),
(110, 174, 'PENDING', NULL),
(111, 175, 'PENDING', NULL),
(112, 176, 'PENDING', NULL),
(113, 177, 'PENDING', NULL),
(114, 178, 'PENDING', NULL),
(115, 179, 'APPROVED', 3),
(116, 180, 'APPROVED', 3),
(117, 181, 'PENDING', NULL),
(118, 182, 'PENDING', NULL),
(119, 183, 'PENDING', NULL),
(120, 184, 'PENDING', NULL),
(121, 185, 'APPROVED', 3),
(122, 186, 'APPROVED', 3),
(123, 187, 'PENDING', NULL),
(124, 188, 'APPROVED', 3),
(125, 189, 'PENDING', NULL),
(126, 190, 'PENDING', NULL),
(127, 191, 'PENDING', NULL),
(128, 192, 'PENDING', NULL),
(129, 193, 'PENDING', NULL),
(130, 194, 'APPROVED', 3),
(131, 195, 'PENDING', NULL),
(132, 196, 'PENDING', NULL),
(133, 197, 'PENDING', NULL),
(134, 198, 'APPROVED', 3),
(135, 199, 'APPROVED', 3),
(136, 214, 'PENDING', NULL),
(137, 215, 'APPROVED', 3),
(138, 216, 'APPROVED', 3),
(139, 217, 'APPROVED', 3),
(140, 218, 'APPROVED', 3),
(141, 219, 'PENDING', NULL),
(142, 220, 'PENDING', NULL),
(143, 221, 'PENDING', NULL),
(144, 222, 'PENDING', NULL),
(145, 223, 'PENDING', NULL),
(146, 224, 'PENDING', NULL),
(147, 225, 'PENDING', NULL),
(148, 226, 'PENDING', NULL),
(149, 227, 'PENDING', NULL),
(150, 228, 'PENDING', NULL),
(151, 229, 'PENDING', NULL),
(152, 230, 'PENDING', NULL),
(153, 231, 'PENDING', NULL),
(154, 232, 'PENDING', NULL),
(155, 233, 'PENDING', NULL),
(156, 234, 'APPROVED', 3),
(157, 235, 'APPROVED', 3),
(158, 236, 'APPROVED', 3),
(159, 240, 'PENDING', NULL),
(160, 241, 'APPROVED', 3),
(161, 242, 'APPROVED', 3),
(162, 243, 'APPROVED', 3),
(163, 244, 'APPROVED', 3),
(164, 245, 'APPROVED', 3),
(165, 246, 'APPROVED', 3),
(166, 247, 'APPROVED', 3),
(167, 248, 'APPROVED', 17),
(168, 249, 'APPROVED', 17),
(169, 250, 'APPROVED', 3),
(170, 251, 'PENDING', NULL),
(171, 252, 'APPROVED', 3),
(172, 253, 'APPROVED', 3),
(173, 254, 'APPROVED', 3),
(174, 255, 'APPROVED', 3),
(175, 256, 'APPROVED', 76),
(176, 257, 'PENDING', NULL),
(177, 258, 'PENDING', NULL),
(178, 259, 'PENDING', NULL),
(179, 260, 'PENDING', NULL),
(180, 261, 'PENDING', NULL),
(181, 262, 'PENDING', NULL),
(182, 263, 'PENDING', NULL),
(183, 264, 'APPROVED', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transact_appoint_client`
--

CREATE TABLE `tbl_transact_appoint_client` (
  `client_id` int(11) NOT NULL,
  `appoint_id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) NOT NULL,
  `gender` int(11) NOT NULL,
  `birthdate` date NOT NULL,
  `mobile_num` varchar(20) NOT NULL,
  `email_add` varchar(20) NOT NULL,
  `relationship_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transact_appoint_client`
--

INSERT INTO `tbl_transact_appoint_client` (`client_id`, `appoint_id`, `first_name`, `middle_name`, `last_name`, `gender`, `birthdate`, `mobile_num`, `email_add`, `relationship_status`) VALUES
(1, 1, 'Wilhelmus', 'Regondola', 'Ole', 1, '2001-11-11', '09972976807', 'test@gmail.com', 1),
(83, 108, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(84, 109, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(85, 110, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(86, 111, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(87, 112, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(88, 113, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(89, 114, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(90, 115, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(91, 116, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(92, 117, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(93, 118, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(94, 119, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(95, 120, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(96, 121, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(97, 122, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(98, 123, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(99, 124, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(100, 125, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(101, 126, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(102, 127, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(103, 128, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(104, 129, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(105, 130, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(106, 131, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(107, 132, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(108, 133, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(109, 134, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(110, 135, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(111, 136, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(112, 137, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(113, 138, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(114, 139, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(115, 140, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(116, 141, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(117, 142, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(118, 143, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(119, 144, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(120, 145, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(121, 146, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(122, 147, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(123, 148, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(124, 149, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(125, 150, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(126, 151, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(127, 152, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(128, 153, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(129, 154, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(130, 155, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(131, 156, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(132, 157, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(133, 158, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(134, 159, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(135, 160, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(136, 161, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(137, 162, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(138, 163, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(139, 164, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(140, 165, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(141, 166, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(142, 167, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(143, 168, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(144, 169, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(145, 170, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(146, 171, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(147, 172, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(148, 173, 'Test', 'Regondola', 'Client', 2, '2001-11-11', '09972976807', 'test@gmail.com', 0),
(149, 174, 'Test', 'Regondola', 'Client', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(150, 175, 'Test', 'Regondola', 'Client', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(151, 176, 'Test', 'Regondola', 'Client', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(152, 177, 'Layla', '', 'Lorenjin', 2, '2000-05-11', '09972975374', 'layla.lorenjin@gmail', 0),
(153, 178, 'Layla', '', 'Lorenjin', 2, '2000-05-11', '09972975374', 'layla.lorenjin@gmail', 0),
(154, 179, 'Layla', '', 'Lorenjin', 2, '2000-05-11', '09972975374', 'layla.lorenjin@gmail', 0),
(155, 180, 'Layla', '', 'Lorenjin', 2, '2000-05-11', '09972975374', 'layla.lorenjin@gmail', 0),
(156, 181, 'Layla', '', 'Lorenjin', 2, '2000-05-11', '09972975374', 'layla.lorenjin@gmail', 0),
(157, 182, 'Layla', '', 'Lorenjin', 2, '2000-05-11', '09972975374', 'layla.lorenjin@gmail', 0),
(158, 183, 'Layla', '', 'Lorenjin', 2, '2000-05-11', '09972975374', 'layla.lorenjin@gmail', 0),
(159, 184, 'Layla', '', 'Lorenjin', 2, '2000-05-11', '09972975374', 'layla.lorenjin@gmail', 0),
(160, 185, 'Layla', '', 'Lorenjin', 2, '2000-05-11', '09972975374', 'layla.lorenjin@gmail', 0),
(161, 186, 'Layla', '', 'Lorenjin', 2, '2000-05-11', '09972975374', 'layla.lorenjin@gmail', 0),
(162, 187, 'Layla', '', 'Lorenjin', 2, '2000-05-11', '09972975374', 'layla.lorenjin@gmail', 0),
(163, 188, 'Test', 'Regondola', 'Client', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(164, 189, 'Test', 'Regondola', 'Client', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(165, 190, 'Test', 'Regondola', 'Client', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(166, 191, 'kokoes', '', 'Monaxia', 2, '2023-02-03', '09972975374', 'kokoes.monaxia@gmail', 0),
(167, 192, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(168, 193, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(169, 194, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(170, 195, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(171, 196, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(172, 197, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(173, 198, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(174, 199, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(175, 200, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(176, 201, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(177, 202, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(178, 203, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(179, 204, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(180, 205, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(181, 206, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(182, 207, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(183, 208, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(184, 209, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(185, 210, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(186, 214, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(187, 215, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(188, 216, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(189, 217, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(190, 218, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(191, 219, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(192, 220, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(193, 221, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(194, 222, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(195, 223, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(196, 224, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(197, 225, 'bense', '', 'monaxia', 2, '2001-01-01', '099999999', 'bense.monaxia@gmail.', 0),
(198, 226, 'bense', '', 'monaxia', 2, '2001-01-01', '099999999', 'bense.monaxia@gmail.', 0),
(199, 227, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(200, 228, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(201, 229, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(202, 230, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(203, 231, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(204, 232, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(205, 233, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(206, 234, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(207, 235, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(208, 236, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(209, 237, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0),
(210, 238, 'Client', 'Regondola', 'One', 2, '2001-11-12', '09972976807', 'test@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transact_appoint_consult`
--

CREATE TABLE `tbl_transact_appoint_consult` (
  `consult_id` int(11) NOT NULL,
  `appoint_id` int(11) NOT NULL,
  `chief_complaint` varchar(255) NOT NULL,
  `appoint_date` date NOT NULL,
  `appoint_time` time NOT NULL,
  `referral_form_id` varchar(255) DEFAULT NULL,
  `medical_record_id` varchar(255) DEFAULT NULL,
  `appoint_more_info` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transact_appoint_consult`
--

INSERT INTO `tbl_transact_appoint_consult` (`consult_id`, `appoint_id`, `chief_complaint`, `appoint_date`, `appoint_time`, `referral_form_id`, `medical_record_id`, `appoint_more_info`) VALUES
(1, 1, 'Nutrition Counseling', '2023-02-03', '00:12:00', '1', '1', 'More info test'),
(119, 132, 'chief complaint test', '2002-01-01', '01:00:00', '0', '0', ''),
(120, 133, 'chief complaint test', '2002-01-01', '01:00:00', '1677006117.jpg', '1677006117.jpg', ''),
(121, 134, 'chief complaint test', '2002-01-01', '01:00:00', '1391677006759472.jpg', '2721677006759346.jpg', ''),
(122, 135, 'chief complaint test', '2002-01-01', '01:00:00', '3371677006808152.jpg', NULL, ''),
(123, 136, 'chief complaint test', '2002-01-01', '01:00:00', '3371677006929324.pdf', '1271677006929446.jpg', ''),
(124, 137, 'chief complaint test', '2002-01-01', '01:00:00', '3581677007187345.pdf', '3701677007187214.pdf', ''),
(125, 138, 'chief complaint test', '2002-01-01', '01:00:00', '2651677007477492.pdf', '1961677007477203.pdf', ''),
(126, 139, 'chief complaint test', '2002-01-01', '01:00:00', '2751677008102171.jpg', NULL, ''),
(127, 140, 'chief complaint test', '2002-01-01', '01:00:00', '4241677008199217.jpg', '1791677008199159.jpg', ''),
(128, 141, 'chief complaint test', '2002-01-01', '01:00:00', '2991677008464155.pdf', '3671677008464302.jpg', ''),
(129, 142, 'chief complaint test', '2002-01-01', '01:00:00', '4141677008487295.jpg', '4401677008487393.jpg', ''),
(130, 143, 'chief complaint test', '2002-01-01', '01:00:00', '3971677008516280.jpg', NULL, ''),
(131, 144, 'chief complaint test', '2002-01-01', '01:00:00', '2271677008585390.pdf', NULL, ''),
(132, 145, 'chief complaint test', '2002-01-01', '01:00:00', '4541677008707205.jpg', NULL, ''),
(133, 146, 'chief complaint test', '2002-01-01', '01:00:00', NULL, NULL, ''),
(134, 147, 'chief complaint test', '2002-01-01', '01:00:00', NULL, NULL, ''),
(135, 148, 'chief complaint test', '2002-01-01', '01:00:00', NULL, NULL, ''),
(136, 149, 'chief complaint test', '2002-01-01', '01:00:00', NULL, NULL, ''),
(137, 150, 'chief complaint test', '2002-01-01', '01:00:00', NULL, NULL, ''),
(138, 151, 'meow', '2002-01-01', '01:00:00', NULL, NULL, ''),
(139, 152, 'chief complaint test', '2002-01-01', '01:00:00', NULL, NULL, ''),
(140, 153, 'chief complaint test', '2002-01-01', '01:00:00', NULL, NULL, ''),
(141, 154, 'chief complaint test', '2002-01-01', '01:00:00', NULL, NULL, ''),
(142, 155, 'chief complaint test', '2002-01-01', '01:00:00', NULL, NULL, ''),
(143, 156, 'chief complaint test', '2002-01-01', '01:00:00', NULL, NULL, ''),
(144, 157, 'chief complaint test', '2002-01-01', '01:00:00', NULL, NULL, ''),
(145, 158, 'chief complaint test', '2002-01-01', '01:00:00', NULL, NULL, ''),
(146, 159, 'chief complaint test', '2002-01-01', '01:00:00', NULL, NULL, ''),
(147, 160, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(148, 161, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(149, 162, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(150, 163, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(151, 164, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(152, 165, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(153, 166, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(154, 167, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(155, 168, 'chief complaint', '2002-01-01', '01:00:00', '4671677142738498.pdf', '4211677142738163.jpg', ''),
(156, 169, 'chief complaint', '2002-01-01', '01:00:00', '4201677156016468.jpg', '2621677156016404.jpg', ''),
(157, 170, 'chief complaint', '2002-01-01', '01:00:00', '4651677156554289.jpg', NULL, ''),
(158, 171, 'chief complaint', '2002-01-01', '01:00:00', '3811677156690183.pdf', NULL, ''),
(159, 172, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(160, 173, 'chief complaint', '2002-01-01', '01:00:00', '3991677156897201.pdf', NULL, ''),
(161, 174, 'test', '2002-01-01', '01:00:00', NULL, NULL, ''),
(162, 175, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(163, 176, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(164, 177, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(165, 178, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(166, 179, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(167, 180, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(168, 181, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(169, 182, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(170, 183, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(171, 184, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(172, 185, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(173, 186, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(174, 187, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(175, 188, 'chief complaint', '2002-01-01', '01:00:00', NULL, 'medical_file_214.pdf', ''),
(176, 189, 'chief complaint', '2002-01-01', '01:00:00', 'referral_file_215.pdf', NULL, ''),
(177, 190, 'chief complaint', '2002-01-01', '01:00:00', 'referral_file_216.jpg', 'medical_file_216.jpg', ''),
(178, 191, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(179, 192, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(180, 193, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(181, 194, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(182, 195, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(183, 196, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(184, 197, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(185, 198, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(186, 199, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(187, 200, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(188, 201, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(189, 202, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(190, 203, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(191, 204, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(192, 205, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(193, 206, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(194, 207, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(195, 208, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(196, 209, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(197, 210, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(198, 214, 'chief complaint', '2002-01-01', '01:00:00', NULL, 'medical_file_240.docx', ''),
(199, 215, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(200, 216, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(201, 217, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(202, 218, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(203, 219, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(204, 220, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(205, 221, 'tite', '2002-01-01', '01:00:00', NULL, NULL, ''),
(206, 222, 'meow', '2002-01-01', '01:00:00', NULL, NULL, ''),
(207, 223, 'we', '2002-01-01', '01:00:00', NULL, NULL, ''),
(208, 224, 'chief complaint', '2002-01-01', '01:00:00', NULL, NULL, ''),
(209, 225, 'chief complaint', '2023-04-01', '14:42:00', NULL, NULL, ''),
(210, 226, 'chief complaint', '2023-03-31', '13:49:00', NULL, NULL, ''),
(211, 227, 'chief complaint', '2028-06-06', '10:15:00', NULL, NULL, ''),
(212, 228, 'chief complaint', '2023-04-22', '15:54:00', NULL, NULL, ''),
(213, 229, 'chief complaint', '2023-04-21', '13:25:00', NULL, NULL, ''),
(214, 230, 'Tite', '2023-04-27', '10:42:00', NULL, NULL, 'My dick is broken'),
(215, 231, 'chief complaint', '2023-10-11', '09:00:00', NULL, NULL, ''),
(216, 232, 'chief complaint', '2023-10-11', '09:00:00', NULL, NULL, ''),
(217, 233, 'chief complaint', '2023-10-11', '09:00:00', NULL, NULL, ''),
(218, 234, 'chief complaint', '2023-10-11', '09:00:00', NULL, NULL, ''),
(219, 235, 'chief complaint', '2023-10-11', '09:00:00', NULL, NULL, ''),
(220, 236, 'chief complaint', '2023-10-11', '09:00:00', NULL, NULL, ''),
(221, 237, 'chief complaint', '2023-10-11', '09:00:00', NULL, NULL, ''),
(222, 238, 'chief complaint', '2023-10-11', '09:00:00', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transact_appoint_food`
--

CREATE TABLE `tbl_transact_appoint_food` (
  `food_id` int(11) NOT NULL,
  `appoint_id` int(11) NOT NULL,
  `food_allergies_id` int(11) DEFAULT NULL,
  `food_like_id` int(11) DEFAULT NULL,
  `food_dislike_id` int(11) DEFAULT NULL,
  `type_diet_id` varchar(30) NOT NULL,
  `smoke_level_id` int(11) NOT NULL,
  `drink_level_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transact_appoint_food`
--

INSERT INTO `tbl_transact_appoint_food` (`food_id`, `appoint_id`, `food_allergies_id`, `food_like_id`, `food_dislike_id`, `type_diet_id`, `smoke_level_id`, `drink_level_id`) VALUES
(1, 1, 1, 1, 1, '1', 2, 4),
(77, 108, NULL, NULL, NULL, 'food type diet test', 1, 2),
(78, 109, NULL, NULL, NULL, 'food type diet test', 1, 2),
(79, 110, NULL, NULL, NULL, 'food type diet test', 1, 2),
(80, 111, NULL, NULL, NULL, 'food type diet test', 1, 2),
(81, 112, NULL, NULL, NULL, 'food type diet test', 1, 2),
(82, 113, NULL, NULL, NULL, 'food type diet test', 1, 2),
(83, 114, NULL, NULL, NULL, 'food type diet test', 1, 2),
(84, 115, NULL, NULL, NULL, 'food type diet test', 1, 2),
(85, 116, NULL, NULL, NULL, 'food type diet test', 1, 2),
(86, 117, NULL, NULL, NULL, 'food type diet test', 1, 2),
(87, 118, NULL, NULL, NULL, 'food type diet test', 1, 2),
(88, 119, NULL, NULL, NULL, 'food type diet test', 1, 2),
(89, 120, NULL, NULL, NULL, 'food type diet test', 1, 2),
(90, 121, NULL, NULL, NULL, 'food type diet test', 1, 2),
(91, 122, NULL, NULL, NULL, 'food type diet test', 1, 2),
(92, 123, NULL, NULL, NULL, 'food type diet test', 1, 2),
(93, 124, NULL, NULL, NULL, 'food type diet test', 1, 2),
(94, 125, NULL, NULL, NULL, 'food type diet test', 1, 2),
(95, 126, NULL, NULL, NULL, 'food type diet test', 1, 2),
(96, 127, NULL, NULL, NULL, 'food type diet test', 1, 2),
(97, 128, NULL, NULL, NULL, 'food type diet test', 1, 2),
(98, 129, NULL, NULL, NULL, 'food type diet test', 1, 2),
(99, 130, NULL, NULL, NULL, 'food type diet test', 1, 2),
(100, 131, NULL, NULL, NULL, 'food type diet test', 1, 2),
(101, 132, NULL, NULL, NULL, 'food type diet test', 1, 2),
(102, 133, NULL, NULL, NULL, 'food type diet test', 1, 2),
(103, 134, NULL, NULL, NULL, 'food type diet test', 1, 2),
(104, 135, NULL, NULL, NULL, 'food type diet test', 1, 2),
(105, 136, NULL, NULL, NULL, 'food type diet test', 1, 2),
(106, 137, NULL, NULL, NULL, 'food type diet test', 1, 2),
(107, 138, NULL, NULL, NULL, 'food type diet test', 1, 2),
(108, 139, NULL, NULL, NULL, 'food type diet test', 1, 2),
(109, 140, NULL, NULL, NULL, 'food type diet test', 1, 2),
(110, 141, NULL, NULL, NULL, 'food type diet test', 1, 2),
(111, 142, NULL, NULL, NULL, 'food type diet test', 1, 2),
(112, 143, NULL, NULL, NULL, 'food type diet test', 1, 2),
(113, 144, NULL, NULL, NULL, 'food type diet test', 1, 2),
(114, 145, NULL, NULL, NULL, 'food type diet test', 1, 2),
(115, 146, NULL, NULL, NULL, 'food type diet test', 1, 2),
(116, 147, NULL, NULL, NULL, 'food type diet test', 1, 2),
(117, 148, NULL, NULL, NULL, 'food type diet test', 1, 2),
(118, 149, NULL, NULL, NULL, 'food type diet test', 1, 2),
(119, 150, NULL, NULL, NULL, 'food type diet test', 1, 2),
(120, 151, NULL, NULL, NULL, 'food type diet test', 1, 2),
(121, 152, NULL, NULL, NULL, 'food type diet test', 1, 2),
(122, 153, NULL, NULL, NULL, 'food type diet test', 1, 2),
(123, 154, NULL, NULL, NULL, 'food type diet test', 1, 2),
(124, 155, NULL, NULL, NULL, 'food type diet test', 1, 2),
(125, 156, NULL, NULL, NULL, 'food type diet test', 1, 2),
(126, 157, NULL, NULL, NULL, 'food type diet test', 1, 2),
(127, 158, NULL, NULL, NULL, 'food type diet test', 1, 2),
(128, 159, NULL, NULL, NULL, 'food type diet test', 1, 2),
(129, 160, NULL, NULL, NULL, 'food type diet test', 1, 2),
(130, 161, NULL, NULL, NULL, 'food type diet test', 1, 2),
(131, 162, NULL, NULL, NULL, 'food type diet test', 1, 2),
(132, 163, NULL, NULL, NULL, 'food type diet test', 1, 2),
(133, 164, NULL, NULL, NULL, 'food type diet test', 1, 2),
(134, 165, NULL, NULL, NULL, 'food type diet test', 1, 2),
(135, 166, NULL, NULL, NULL, 'food type diet test', 1, 2),
(136, 167, NULL, NULL, NULL, 'food type diet test', 1, 2),
(137, 168, NULL, NULL, NULL, 'food type diet test', 1, 2),
(138, 169, NULL, NULL, NULL, 'food type diet test', 1, 2),
(139, 170, NULL, NULL, NULL, 'food type diet test', 1, 2),
(140, 171, NULL, NULL, NULL, 'food type diet test', 1, 2),
(141, 172, NULL, NULL, NULL, 'food type diet test', 1, 2),
(142, 173, NULL, NULL, NULL, 'food type diet test', 1, 2),
(143, 174, NULL, NULL, NULL, 'food type diet test', 1, 2),
(144, 175, NULL, NULL, NULL, 'food type diet test', 1, 2),
(145, 176, NULL, NULL, NULL, 'food type diet test', 1, 2),
(146, 177, NULL, NULL, NULL, 'food type diet test', 1, 2),
(147, 178, NULL, NULL, NULL, 'food type diet test', 1, 2),
(148, 179, NULL, NULL, NULL, 'food type diet test', 1, 2),
(149, 180, NULL, NULL, NULL, 'food type diet test', 1, 2),
(150, 181, NULL, NULL, NULL, 'food type diet test', 1, 2),
(151, 182, NULL, NULL, NULL, 'food type diet test', 1, 2),
(152, 183, NULL, NULL, NULL, 'food type diet test', 1, 2),
(153, 184, NULL, NULL, NULL, 'food type diet test', 1, 2),
(154, 185, NULL, NULL, NULL, 'food type diet test', 1, 2),
(155, 186, NULL, NULL, NULL, 'food type diet test', 1, 2),
(156, 187, NULL, NULL, NULL, 'food type diet test', 1, 2),
(157, 188, NULL, NULL, NULL, 'food type diet test', 1, 2),
(158, 189, NULL, NULL, NULL, 'food type diet test', 1, 2),
(159, 190, NULL, NULL, NULL, 'food type diet test', 1, 2),
(160, 191, NULL, NULL, NULL, 'food type diet test', 1, 2),
(161, 192, NULL, NULL, NULL, 'food type diet test', 1, 2),
(162, 193, NULL, NULL, NULL, 'food type diet test', 1, 2),
(163, 194, NULL, NULL, NULL, 'food type diet test', 1, 2),
(164, 195, NULL, NULL, NULL, 'food type diet test', 1, 2),
(165, 196, NULL, NULL, NULL, 'food type diet test', 1, 2),
(166, 197, NULL, NULL, NULL, 'food type diet test', 1, 2),
(167, 198, NULL, NULL, NULL, 'food type diet test', 1, 2),
(168, 199, NULL, NULL, NULL, 'food type diet test', 1, 2),
(169, 200, NULL, NULL, NULL, 'food type diet test', 1, 2),
(170, 201, NULL, NULL, NULL, 'food type diet test', 1, 2),
(171, 202, NULL, NULL, NULL, 'food type diet test', 1, 2),
(172, 203, NULL, NULL, NULL, 'food type diet test', 1, 2),
(173, 204, NULL, NULL, NULL, 'food type diet test', 1, 2),
(174, 205, NULL, NULL, NULL, 'food type diet test', 1, 2),
(175, 206, NULL, NULL, NULL, 'food type diet test', 1, 2),
(176, 207, NULL, NULL, NULL, 'food type diet test', 1, 2),
(177, 208, NULL, NULL, NULL, 'food type diet test', 1, 2),
(178, 209, NULL, NULL, NULL, 'food type diet test', 1, 2),
(179, 210, NULL, NULL, NULL, 'food type diet test', 1, 2),
(180, 214, NULL, NULL, NULL, 'food type diet test', 1, 2),
(181, 215, NULL, NULL, NULL, 'food type diet test', 1, 2),
(182, 216, NULL, NULL, NULL, 'food type diet test', 1, 2),
(183, 217, NULL, NULL, NULL, 'food type diet test', 1, 2),
(184, 218, NULL, NULL, NULL, 'food type diet test', 1, 2),
(185, 219, NULL, NULL, NULL, 'food type diet test', 1, 2),
(186, 220, NULL, NULL, NULL, 'food type diet test', 1, 2),
(187, 221, NULL, NULL, NULL, 'food type diet test', 1, 2),
(188, 222, NULL, NULL, NULL, 'food type diet test', 1, 2),
(189, 223, NULL, NULL, NULL, 'food type diet test', 1, 2),
(190, 224, NULL, NULL, NULL, 'food type diet test', 1, 2),
(191, 225, NULL, NULL, NULL, 'food type diet test', 1, 2),
(192, 226, NULL, NULL, NULL, 'food type diet test', 1, 2),
(193, 227, NULL, NULL, NULL, 'food type diet test', 1, 2),
(194, 228, NULL, NULL, NULL, 'food type diet test', 1, 2),
(195, 229, NULL, NULL, NULL, 'food type diet test', 1, 2),
(196, 230, NULL, NULL, NULL, 'food type diet test', 1, 2),
(197, 231, NULL, NULL, NULL, 'Vegan diet', 1, 2),
(198, 232, NULL, NULL, NULL, 'Vegan diet', 2, 2),
(199, 233, NULL, NULL, NULL, 'Vegan diet', 1, 1),
(200, 234, NULL, NULL, NULL, 'Vegan diet', 5, 4),
(201, 235, NULL, NULL, NULL, 'Vegan diet', 5, 5),
(202, 236, NULL, NULL, NULL, 'Vegan diet', 5, 5),
(203, 237, NULL, NULL, NULL, 'Vegan diet', 4, 4),
(204, 238, NULL, NULL, NULL, 'Vegan diet', 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transact_appoint_food_allergy`
--

CREATE TABLE `tbl_transact_appoint_food_allergy` (
  `food_allergy_id` int(11) NOT NULL,
  `appoint_id` int(11) NOT NULL,
  `allergy_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transact_appoint_food_allergy`
--

INSERT INTO `tbl_transact_appoint_food_allergy` (`food_allergy_id`, `appoint_id`, `allergy_name`) VALUES
(1, 1, 'allegy1'),
(3, 1, 'allegy2'),
(116, 108, 'food'),
(117, 108, 'allergy'),
(118, 108, 'test'),
(119, 109, 'food'),
(120, 109, 'allergy'),
(121, 109, 'test'),
(122, 110, 'food'),
(123, 110, 'allergy'),
(124, 110, 'test'),
(125, 111, 'food'),
(126, 111, 'allergy'),
(127, 111, 'test'),
(128, 112, 'food'),
(129, 112, 'allergy'),
(130, 112, 'test'),
(131, 113, 'food'),
(132, 113, 'allergy'),
(133, 113, 'test'),
(134, 114, 'food'),
(135, 114, 'allergy'),
(136, 114, 'test'),
(137, 115, 'food'),
(138, 115, 'allergy'),
(139, 115, 'test'),
(140, 116, 'food'),
(141, 116, 'allergy'),
(142, 116, 'test'),
(143, 117, 'food'),
(144, 117, 'allergy'),
(145, 117, 'test'),
(146, 118, 'food'),
(147, 118, 'allergy'),
(148, 118, 'test'),
(149, 119, 'food'),
(150, 119, 'allergy'),
(151, 119, 'test'),
(152, 120, 'food'),
(153, 120, 'allergy'),
(154, 120, 'test'),
(155, 121, 'food'),
(156, 121, 'allergy'),
(157, 121, 'test'),
(158, 122, 'food'),
(159, 122, 'allergy'),
(160, 122, 'test'),
(161, 123, 'food'),
(162, 123, 'allergy'),
(163, 123, 'test'),
(164, 124, 'food'),
(165, 124, 'allergy'),
(166, 124, 'test'),
(167, 125, 'food'),
(168, 125, 'allergy'),
(169, 125, 'test'),
(170, 126, 'food'),
(171, 126, 'allergy'),
(172, 126, 'test'),
(173, 127, 'food'),
(174, 127, 'allergy'),
(175, 127, 'test'),
(176, 128, 'food'),
(177, 128, 'allergy'),
(178, 128, 'test'),
(179, 129, 'food'),
(180, 129, 'allergy'),
(181, 129, 'test'),
(182, 130, 'food'),
(183, 130, 'allergy'),
(184, 130, 'test'),
(185, 131, 'food'),
(186, 131, 'allergy'),
(187, 131, 'test'),
(188, 132, 'food'),
(189, 132, 'allergy'),
(190, 132, 'test'),
(191, 133, 'food'),
(192, 133, 'allergy'),
(193, 133, 'test'),
(194, 134, 'food'),
(195, 134, 'allergy'),
(196, 134, 'test'),
(197, 135, 'food'),
(198, 135, 'allergy'),
(199, 135, 'test'),
(200, 136, 'food'),
(201, 136, 'allergy'),
(202, 136, 'test'),
(203, 137, 'food'),
(204, 137, 'allergy'),
(205, 137, 'test'),
(206, 138, 'food'),
(207, 138, 'allergy'),
(208, 138, 'test'),
(209, 139, 'food'),
(210, 139, 'allergy'),
(211, 139, 'test'),
(212, 140, 'food'),
(213, 140, 'allergy'),
(214, 140, 'test'),
(215, 141, 'food'),
(216, 141, 'allergy'),
(217, 141, 'test'),
(218, 142, 'food'),
(219, 142, 'allergy'),
(220, 142, 'test'),
(221, 143, 'food'),
(222, 143, 'allergy'),
(223, 143, 'test'),
(224, 144, 'food'),
(225, 144, 'allergy'),
(226, 144, 'test'),
(227, 145, 'food'),
(228, 145, 'allergy'),
(229, 145, 'test'),
(230, 146, 'food'),
(231, 146, 'allergy'),
(232, 146, 'test'),
(233, 147, 'food'),
(234, 147, 'allergy'),
(235, 147, 'test'),
(236, 148, 'food'),
(237, 148, 'allergy'),
(238, 148, 'test'),
(239, 149, 'food'),
(240, 149, 'allergy'),
(241, 149, 'test'),
(242, 150, 'food'),
(243, 150, 'allergy'),
(244, 150, 'test'),
(245, 151, 'food'),
(246, 151, 'allergy'),
(247, 151, 'test'),
(248, 152, 'food'),
(249, 152, 'allergy'),
(250, 152, 'test'),
(251, 153, 'food'),
(252, 153, 'allergy'),
(253, 153, 'test'),
(254, 154, 'food'),
(255, 154, 'allergy'),
(256, 154, 'test'),
(257, 155, 'food'),
(258, 155, 'allergy'),
(259, 155, 'test'),
(260, 156, 'food'),
(261, 156, 'allergy'),
(262, 156, 'test'),
(263, 157, 'food'),
(264, 157, 'allergy'),
(265, 157, 'test'),
(266, 158, 'food'),
(267, 158, 'allergy'),
(268, 158, 'test'),
(269, 159, 'food'),
(270, 159, 'allergy'),
(271, 159, 'test'),
(272, 160, 'food'),
(273, 160, 'allergy'),
(274, 160, 'test'),
(275, 161, 'food'),
(276, 161, 'allergy'),
(277, 161, 'test'),
(278, 162, 'food'),
(279, 162, 'allergy'),
(280, 162, 'test'),
(281, 163, 'food'),
(282, 163, 'allergy'),
(283, 163, 'test'),
(284, 164, 'food'),
(285, 164, 'allergy'),
(286, 164, 'test'),
(287, 165, 'food'),
(288, 165, 'allergy'),
(289, 165, 'test'),
(290, 166, 'food'),
(291, 166, 'allergy'),
(292, 166, 'test'),
(293, 167, 'food'),
(294, 167, 'allergy'),
(295, 167, 'test'),
(296, 168, 'food'),
(297, 168, 'allergy'),
(298, 168, 'test'),
(299, 169, 'food'),
(300, 169, 'allergy'),
(301, 169, 'test'),
(302, 170, 'food'),
(303, 170, 'allergy'),
(304, 170, 'test'),
(305, 171, 'food'),
(306, 171, 'allergy'),
(307, 171, 'test'),
(308, 172, 'food'),
(309, 172, 'allergy'),
(310, 172, 'test'),
(311, 173, 'food'),
(312, 173, 'allergy'),
(313, 173, 'test'),
(314, 174, 'food'),
(315, 174, 'allergy'),
(316, 174, 'test'),
(317, 175, 'food'),
(318, 175, 'allergy'),
(319, 175, 'test'),
(320, 176, 'food'),
(321, 176, 'allergy'),
(322, 176, 'test'),
(323, 177, 'food'),
(324, 177, 'allergy'),
(325, 177, 'test'),
(326, 178, 'food'),
(327, 178, 'allergy'),
(328, 178, 'test'),
(329, 179, 'food'),
(330, 179, 'allergy'),
(331, 179, 'test'),
(332, 180, 'food'),
(333, 180, 'allergy'),
(334, 180, 'test'),
(335, 181, 'food'),
(336, 181, 'allergy'),
(337, 181, 'test'),
(338, 182, 'food'),
(339, 182, 'allergy'),
(340, 182, 'test'),
(341, 183, 'food'),
(342, 183, 'allergy'),
(343, 183, 'test'),
(344, 184, 'food'),
(345, 184, 'allergy'),
(346, 184, 'test'),
(347, 185, 'food'),
(348, 185, 'allergy'),
(349, 185, 'test'),
(350, 186, 'food'),
(351, 186, 'allergy'),
(352, 186, 'test'),
(353, 187, 'food'),
(354, 187, 'allergy'),
(355, 187, 'test'),
(356, 188, 'food'),
(357, 188, 'allergy'),
(358, 188, 'test'),
(359, 189, 'food'),
(360, 189, 'allergy'),
(361, 189, 'test'),
(362, 190, 'food'),
(363, 190, 'allergy'),
(364, 190, 'test'),
(365, 191, 'food'),
(366, 191, 'allergy'),
(367, 191, 'test'),
(368, 192, 'food'),
(369, 192, 'allergy'),
(370, 192, 'test'),
(371, 193, 'food'),
(372, 193, 'allergy'),
(373, 193, 'test'),
(374, 194, 'food'),
(375, 194, 'allergy'),
(376, 194, 'test'),
(377, 195, 'food'),
(378, 195, 'allergy'),
(379, 195, 'test'),
(380, 196, 'food'),
(381, 196, 'allergy'),
(382, 196, 'test'),
(383, 197, 'food'),
(384, 197, 'allergy'),
(385, 197, 'test'),
(386, 198, 'food'),
(387, 198, 'allergy'),
(388, 198, 'test'),
(389, 199, 'food'),
(390, 199, 'allergy'),
(391, 199, 'test'),
(392, 200, 'food'),
(393, 200, 'allergy'),
(394, 200, 'test'),
(395, 201, 'food'),
(396, 201, 'allergy'),
(397, 201, 'test'),
(398, 202, 'food'),
(399, 202, 'allergy'),
(400, 202, 'test'),
(401, 203, 'food'),
(402, 203, 'allergy'),
(403, 203, 'test'),
(404, 204, 'food'),
(405, 204, 'allergy'),
(406, 204, 'test'),
(407, 205, 'food'),
(408, 205, 'allergy'),
(409, 205, 'test'),
(410, 206, 'food'),
(411, 206, 'allergy'),
(412, 206, 'test'),
(413, 207, 'food'),
(414, 207, 'allergy'),
(415, 207, 'test'),
(416, 208, 'food'),
(417, 208, 'allergy'),
(418, 208, 'test'),
(419, 209, 'food'),
(420, 209, 'allergy'),
(421, 209, 'test'),
(422, 210, 'food'),
(423, 210, 'allergy'),
(424, 210, 'test'),
(425, 214, 'food'),
(426, 214, 'allergy'),
(427, 214, 'test'),
(428, 215, 'food'),
(429, 215, 'allergy'),
(430, 215, 'test'),
(431, 216, 'food'),
(432, 216, 'allergy'),
(433, 216, 'test'),
(434, 217, 'food'),
(435, 217, 'allergy'),
(436, 217, 'test'),
(437, 218, 'food'),
(438, 218, 'allergy'),
(439, 218, 'test'),
(440, 219, 'food'),
(441, 219, 'allergy'),
(442, 219, 'test'),
(443, 220, 'food'),
(444, 220, 'allergy'),
(445, 220, 'test'),
(446, 221, 'food'),
(447, 221, 'allergy'),
(448, 221, 'test'),
(449, 222, 'food'),
(450, 222, 'allergy'),
(451, 222, 'test'),
(452, 223, 'food'),
(453, 223, 'allergy'),
(454, 223, 'test'),
(455, 224, 'food'),
(456, 224, 'allergy'),
(457, 224, 'test'),
(458, 225, 'food'),
(459, 225, 'allergy'),
(460, 225, 'test'),
(461, 226, 'food'),
(462, 226, 'allergy'),
(463, 226, 'test'),
(464, 227, 'food'),
(465, 227, 'allergy'),
(466, 227, 'test'),
(467, 228, 'food'),
(468, 228, 'allergy'),
(469, 228, 'test'),
(470, 229, 'food'),
(471, 229, 'allergy'),
(472, 229, 'test'),
(473, 230, 'food'),
(474, 230, 'allergy'),
(475, 230, 'test'),
(476, 231, 'Example1'),
(477, 231, 'Example'),
(478, 231, '2'),
(479, 232, 'Example1'),
(480, 232, 'Example'),
(481, 232, '2'),
(482, 233, ''),
(483, 234, ''),
(484, 235, ''),
(485, 236, ''),
(486, 237, ''),
(487, 238, 'Example1'),
(488, 238, 'Example'),
(489, 238, '2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transact_appoint_food_diet`
--

CREATE TABLE `tbl_transact_appoint_food_diet` (
  `diet_type_id` int(11) NOT NULL,
  `diet_type_name` varchar(20) NOT NULL,
  `appoint_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transact_appoint_food_diet`
--

INSERT INTO `tbl_transact_appoint_food_diet` (`diet_type_id`, `diet_type_name`, `appoint_id`) VALUES
(1, 'Vegan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transact_appoint_food_dislike`
--

CREATE TABLE `tbl_transact_appoint_food_dislike` (
  `food_dislike_id` int(11) NOT NULL,
  `appoint_id` int(11) NOT NULL,
  `food_dislike_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transact_appoint_food_dislike`
--

INSERT INTO `tbl_transact_appoint_food_dislike` (`food_dislike_id`, `appoint_id`, `food_dislike_name`) VALUES
(1, 1, 'dislike 1'),
(2, 1, 'dislike 2'),
(3, 1, 'dislike 3'),
(109, 108, 'food'),
(110, 108, 'dislike'),
(111, 108, 'test'),
(112, 109, 'food'),
(113, 109, 'dislike'),
(114, 109, 'test'),
(115, 110, 'food'),
(116, 110, 'dislike'),
(117, 110, 'test'),
(118, 111, 'food'),
(119, 111, 'dislike'),
(120, 111, 'test'),
(121, 112, 'food'),
(122, 112, 'dislike'),
(123, 112, 'test'),
(124, 113, 'food'),
(125, 113, 'dislike'),
(126, 113, 'test'),
(127, 114, 'food'),
(128, 114, 'dislike'),
(129, 114, 'test'),
(130, 115, 'food'),
(131, 115, 'dislike'),
(132, 115, 'test'),
(133, 116, 'food'),
(134, 116, 'dislike'),
(135, 116, 'test'),
(136, 117, 'food'),
(137, 117, 'dislike'),
(138, 117, 'test'),
(139, 118, 'food'),
(140, 118, 'dislike'),
(141, 118, 'test'),
(142, 119, 'food'),
(143, 119, 'dislike'),
(144, 119, 'test'),
(145, 120, 'food'),
(146, 120, 'dislike'),
(147, 120, 'test'),
(148, 121, 'food'),
(149, 121, 'dislike'),
(150, 121, 'test'),
(151, 122, 'food'),
(152, 122, 'dislike'),
(153, 122, 'test'),
(154, 123, 'food'),
(155, 123, 'dislike'),
(156, 123, 'test'),
(157, 124, 'food'),
(158, 124, 'dislike'),
(159, 124, 'test'),
(160, 125, 'food'),
(161, 125, 'dislike'),
(162, 125, 'test'),
(163, 126, 'food'),
(164, 126, 'dislike'),
(165, 126, 'test'),
(166, 127, 'food'),
(167, 127, 'dislike'),
(168, 127, 'test'),
(169, 128, 'food'),
(170, 128, 'dislike'),
(171, 128, 'test'),
(172, 129, 'food'),
(173, 129, 'dislike'),
(174, 129, 'test'),
(175, 130, 'food'),
(176, 130, 'dislike'),
(177, 130, 'test'),
(178, 131, 'food'),
(179, 131, 'dislike'),
(180, 131, 'test'),
(181, 132, 'food'),
(182, 132, 'dislike'),
(183, 132, 'test'),
(184, 133, 'food'),
(185, 133, 'dislike'),
(186, 133, 'test'),
(187, 134, 'food'),
(188, 134, 'dislike'),
(189, 134, 'test'),
(190, 135, 'food'),
(191, 135, 'dislike'),
(192, 135, 'test'),
(193, 136, 'food'),
(194, 136, 'dislike'),
(195, 136, 'test'),
(196, 137, 'food'),
(197, 137, 'dislike'),
(198, 137, 'test'),
(199, 138, 'food'),
(200, 138, 'dislike'),
(201, 138, 'test'),
(202, 139, 'food'),
(203, 139, 'dislike'),
(204, 139, 'test'),
(205, 140, 'food'),
(206, 140, 'dislike'),
(207, 140, 'test'),
(208, 141, 'food'),
(209, 141, 'dislike'),
(210, 141, 'test'),
(211, 142, 'food'),
(212, 142, 'dislike'),
(213, 142, 'test'),
(214, 143, 'food'),
(215, 143, 'dislike'),
(216, 143, 'test'),
(217, 144, 'food'),
(218, 144, 'dislike'),
(219, 144, 'test'),
(220, 145, 'food'),
(221, 145, 'dislike'),
(222, 145, 'test'),
(223, 146, 'food'),
(224, 146, 'dislike'),
(225, 146, 'test'),
(226, 147, 'food'),
(227, 147, 'dislike'),
(228, 147, 'test'),
(229, 148, 'food'),
(230, 148, 'dislike'),
(231, 148, 'test'),
(232, 149, 'food'),
(233, 149, 'dislike'),
(234, 149, 'test'),
(235, 150, 'food'),
(236, 150, 'dislike'),
(237, 150, 'test'),
(238, 151, 'food'),
(239, 151, 'dislike'),
(240, 151, 'test'),
(241, 152, 'food'),
(242, 152, 'dislike'),
(243, 152, 'test'),
(244, 153, 'food'),
(245, 153, 'dislike'),
(246, 153, 'test'),
(247, 154, 'food'),
(248, 154, 'dislike'),
(249, 154, 'test'),
(250, 155, 'food'),
(251, 155, 'dislike'),
(252, 155, 'test'),
(253, 156, 'food'),
(254, 156, 'dislike'),
(255, 156, 'test'),
(256, 157, 'food'),
(257, 157, 'dislike'),
(258, 157, 'test'),
(259, 158, 'food'),
(260, 158, 'dislike'),
(261, 158, 'test'),
(262, 159, 'food'),
(263, 159, 'dislike'),
(264, 159, 'test'),
(265, 160, 'food'),
(266, 160, 'dislike'),
(267, 160, 'test'),
(268, 161, 'food'),
(269, 161, 'dislike'),
(270, 161, 'test'),
(271, 162, 'food'),
(272, 162, 'dislike'),
(273, 162, 'test'),
(274, 163, 'food'),
(275, 163, 'dislike'),
(276, 163, 'test'),
(277, 164, 'food'),
(278, 164, 'dislike'),
(279, 164, 'test'),
(280, 165, 'food'),
(281, 165, 'dislike'),
(282, 165, 'test'),
(283, 166, 'food'),
(284, 166, 'dislike'),
(285, 166, 'test'),
(286, 167, 'food'),
(287, 167, 'dislike'),
(288, 167, 'test'),
(289, 168, 'food'),
(290, 168, 'dislike'),
(291, 168, 'test'),
(292, 169, 'food'),
(293, 169, 'dislike'),
(294, 169, 'test'),
(295, 170, 'food'),
(296, 170, 'dislike'),
(297, 170, 'test'),
(298, 171, 'food'),
(299, 171, 'dislike'),
(300, 171, 'test'),
(301, 172, 'food'),
(302, 172, 'dislike'),
(303, 172, 'test'),
(304, 173, 'food'),
(305, 173, 'dislike'),
(306, 173, 'test'),
(307, 174, 'food'),
(308, 174, 'dislike'),
(309, 174, 'test'),
(310, 175, 'food'),
(311, 175, 'dislike'),
(312, 175, 'test'),
(313, 176, 'food'),
(314, 176, 'dislike'),
(315, 176, 'test'),
(316, 177, 'food'),
(317, 177, 'dislike'),
(318, 177, 'test'),
(319, 178, 'food'),
(320, 178, 'dislike'),
(321, 178, 'test'),
(322, 179, 'food'),
(323, 179, 'dislike'),
(324, 179, 'test'),
(325, 180, 'food'),
(326, 180, 'dislike'),
(327, 180, 'test'),
(328, 181, 'food'),
(329, 181, 'dislike'),
(330, 181, 'test'),
(331, 182, 'food'),
(332, 182, 'dislike'),
(333, 182, 'test'),
(334, 183, 'food'),
(335, 183, 'dislike'),
(336, 183, 'test'),
(337, 184, 'food'),
(338, 184, 'dislike'),
(339, 184, 'test'),
(340, 185, 'food'),
(341, 185, 'dislike'),
(342, 185, 'test'),
(343, 186, 'food'),
(344, 186, 'dislike'),
(345, 186, 'test'),
(346, 187, 'food'),
(347, 187, 'dislike'),
(348, 187, 'test'),
(349, 188, 'food'),
(350, 188, 'dislike'),
(351, 188, 'test'),
(352, 189, 'food'),
(353, 189, 'dislike'),
(354, 189, 'test'),
(355, 190, 'food'),
(356, 190, 'dislike'),
(357, 190, 'test'),
(358, 191, 'food'),
(359, 191, 'dislike'),
(360, 191, 'test'),
(361, 192, 'food'),
(362, 192, 'dislike'),
(363, 192, 'test'),
(364, 193, 'food'),
(365, 193, 'dislike'),
(366, 193, 'test'),
(367, 194, 'food'),
(368, 194, 'dislike'),
(369, 194, 'test'),
(370, 195, 'food'),
(371, 195, 'dislike'),
(372, 195, 'test'),
(373, 196, 'food'),
(374, 196, 'dislike'),
(375, 196, 'test'),
(376, 197, 'food'),
(377, 197, 'dislike'),
(378, 197, 'test'),
(379, 198, 'food'),
(380, 198, 'dislike'),
(381, 198, 'test'),
(382, 199, 'food'),
(383, 199, 'dislike'),
(384, 199, 'test'),
(385, 200, 'food'),
(386, 200, 'dislike'),
(387, 200, 'test'),
(388, 201, 'food'),
(389, 201, 'dislike'),
(390, 201, 'test'),
(391, 202, 'food'),
(392, 202, 'dislike'),
(393, 202, 'test'),
(394, 203, 'food'),
(395, 203, 'dislike'),
(396, 203, 'test'),
(397, 204, 'food'),
(398, 204, 'dislike'),
(399, 204, 'test'),
(400, 205, 'food'),
(401, 205, 'dislike'),
(402, 205, 'test'),
(403, 206, 'food'),
(404, 206, 'dislike'),
(405, 206, 'test'),
(406, 207, 'food'),
(407, 207, 'dislike'),
(408, 207, 'test'),
(409, 208, 'food'),
(410, 208, 'dislike'),
(411, 208, 'test'),
(412, 209, 'food'),
(413, 209, 'dislike'),
(414, 209, 'test'),
(415, 210, 'food'),
(416, 210, 'dislike'),
(417, 210, 'test'),
(418, 214, 'food'),
(419, 214, 'dislike'),
(420, 214, 'test'),
(421, 215, 'food'),
(422, 215, 'dislike'),
(423, 215, 'test'),
(424, 216, 'food'),
(425, 216, 'dislike'),
(426, 216, 'test'),
(427, 217, 'food'),
(428, 217, 'dislike'),
(429, 217, 'test'),
(430, 218, 'food'),
(431, 218, 'dislike'),
(432, 218, 'test'),
(433, 219, 'food'),
(434, 219, 'dislike'),
(435, 219, 'test'),
(436, 220, 'food'),
(437, 220, 'dislike'),
(438, 220, 'test'),
(439, 221, 'food'),
(440, 221, 'dislike'),
(441, 221, 'test'),
(442, 222, 'food'),
(443, 222, 'dislike'),
(444, 222, 'test'),
(445, 223, 'food'),
(446, 223, 'dislike'),
(447, 223, 'test'),
(448, 224, 'food'),
(449, 224, 'dislike'),
(450, 224, 'test'),
(451, 225, 'food'),
(452, 225, 'dislike'),
(453, 225, 'test'),
(454, 226, 'food'),
(455, 226, 'dislike'),
(456, 226, 'test'),
(457, 227, 'food'),
(458, 227, 'dislike'),
(459, 227, 'test'),
(460, 228, 'food'),
(461, 228, 'dislike'),
(462, 228, 'test'),
(463, 229, 'food'),
(464, 229, 'dislike'),
(465, 229, 'test'),
(466, 230, 'food'),
(467, 230, 'dislike'),
(468, 230, 'test'),
(469, 231, 'Example1'),
(470, 231, 'Example'),
(471, 231, '2'),
(472, 232, 'Example1'),
(473, 232, 'Example'),
(474, 232, '2'),
(475, 233, 'Example1'),
(476, 233, 'Example'),
(477, 233, '2'),
(478, 234, 'Example1'),
(479, 234, 'Example'),
(480, 234, '2'),
(481, 235, 'Example1'),
(482, 235, 'Example'),
(483, 235, '2'),
(484, 236, 'Example1'),
(485, 236, 'Example'),
(486, 236, '2'),
(487, 237, 'Example1'),
(488, 237, 'Example'),
(489, 237, '2'),
(490, 238, 'Example1'),
(491, 238, 'Example'),
(492, 238, '2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transact_appoint_food_like`
--

CREATE TABLE `tbl_transact_appoint_food_like` (
  `food_like_id` int(11) NOT NULL,
  `appoint_id` int(11) NOT NULL,
  `food_like_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transact_appoint_food_like`
--

INSERT INTO `tbl_transact_appoint_food_like` (`food_like_id`, `appoint_id`, `food_like_name`) VALUES
(1, 1, 'foodLikeTest1'),
(90, 101, 'food'),
(91, 101, 'like'),
(92, 101, 'test'),
(93, 102, 'food'),
(94, 102, 'like'),
(95, 102, 'test'),
(96, 103, 'food'),
(97, 103, 'like'),
(98, 103, 'test'),
(99, 104, 'food'),
(100, 104, 'like'),
(101, 104, 'test'),
(102, 105, 'food'),
(103, 105, 'like'),
(104, 105, 'test'),
(105, 106, 'food'),
(106, 106, 'like'),
(107, 106, 'test'),
(108, 107, 'food'),
(109, 107, 'like'),
(110, 107, 'test'),
(111, 108, 'food'),
(112, 108, 'like'),
(113, 108, 'test'),
(114, 109, 'food'),
(115, 109, 'like'),
(116, 109, 'test'),
(117, 110, 'food'),
(118, 110, 'like'),
(119, 110, 'test'),
(120, 111, 'food'),
(121, 111, 'like'),
(122, 111, 'test'),
(123, 112, 'food'),
(124, 112, 'like'),
(125, 112, 'test'),
(126, 113, 'food'),
(127, 113, 'like'),
(128, 113, 'test'),
(129, 114, 'food'),
(130, 114, 'like'),
(131, 114, 'test'),
(132, 115, 'food'),
(133, 115, 'like'),
(134, 115, 'test'),
(135, 116, 'food'),
(136, 116, 'like'),
(137, 116, 'test'),
(138, 117, 'food'),
(139, 117, 'like'),
(140, 117, 'test'),
(141, 118, 'Adobo'),
(142, 118, 'Ampalaya'),
(143, 118, 'Egg'),
(144, 119, 'food'),
(145, 119, 'like'),
(146, 119, 'test'),
(147, 120, 'food'),
(148, 120, 'like'),
(149, 120, 'test'),
(150, 121, 'food'),
(151, 121, 'like'),
(152, 121, 'test'),
(153, 122, 'food'),
(154, 122, 'like'),
(155, 122, 'test'),
(156, 123, 'food'),
(157, 123, 'like'),
(158, 123, 'test'),
(159, 124, 'food'),
(160, 124, 'like'),
(161, 124, 'test'),
(162, 125, 'food'),
(163, 125, 'like'),
(164, 125, 'test'),
(165, 126, 'food'),
(166, 126, 'like'),
(167, 126, 'test'),
(168, 127, 'food'),
(169, 127, 'like'),
(170, 127, 'test'),
(171, 128, 'food'),
(172, 128, 'like'),
(173, 128, 'test'),
(174, 129, 'food'),
(175, 129, 'like'),
(176, 129, 'test'),
(177, 130, 'food'),
(178, 130, 'like'),
(179, 130, 'test'),
(180, 131, 'food'),
(181, 131, 'like'),
(182, 131, 'test'),
(183, 132, 'food'),
(184, 132, 'like'),
(185, 132, 'test'),
(186, 133, 'food'),
(187, 133, 'like'),
(188, 133, 'test'),
(189, 134, 'food'),
(190, 134, 'like'),
(191, 134, 'test'),
(192, 135, 'food'),
(193, 135, 'like'),
(194, 135, 'test'),
(195, 136, 'food'),
(196, 136, 'like'),
(197, 136, 'test'),
(198, 137, 'food'),
(199, 137, 'like'),
(200, 137, 'test'),
(201, 138, 'food'),
(202, 138, 'like'),
(203, 138, 'test'),
(204, 139, 'food'),
(205, 139, 'like'),
(206, 139, 'test'),
(207, 140, 'food'),
(208, 140, 'like'),
(209, 140, 'test'),
(210, 141, 'food'),
(211, 141, 'like'),
(212, 141, 'test'),
(213, 142, 'food'),
(214, 142, 'like'),
(215, 142, 'test'),
(216, 143, 'food'),
(217, 143, 'like'),
(218, 143, 'test'),
(219, 144, 'food'),
(220, 144, 'like'),
(221, 144, 'test'),
(222, 145, 'food'),
(223, 145, 'like'),
(224, 145, 'test'),
(225, 146, 'food'),
(226, 146, 'like'),
(227, 146, 'test'),
(228, 147, 'food'),
(229, 147, 'like'),
(230, 147, 'test'),
(231, 148, 'food'),
(232, 148, 'like'),
(233, 148, 'test'),
(234, 149, 'food'),
(235, 149, 'like'),
(236, 149, 'test'),
(237, 150, 'food'),
(238, 150, 'like'),
(239, 150, 'test'),
(240, 151, 'food'),
(241, 151, 'like'),
(242, 151, 'test'),
(243, 152, 'food'),
(244, 152, 'like'),
(245, 152, 'test'),
(246, 153, 'food'),
(247, 153, 'like'),
(248, 153, 'test'),
(249, 154, 'food'),
(250, 154, 'like'),
(251, 154, 'test'),
(252, 155, 'food'),
(253, 155, 'like'),
(254, 155, 'test'),
(255, 156, 'food'),
(256, 156, 'like'),
(257, 156, 'test'),
(258, 157, 'food'),
(259, 157, 'like'),
(260, 157, 'test'),
(261, 158, 'food'),
(262, 158, 'like'),
(263, 158, 'test'),
(264, 159, 'food'),
(265, 159, 'like'),
(266, 159, 'test'),
(267, 160, 'food'),
(268, 160, 'like'),
(269, 160, 'test'),
(270, 161, 'food'),
(271, 161, 'like'),
(272, 161, 'test'),
(273, 162, 'food'),
(274, 162, 'like'),
(275, 162, 'test'),
(276, 163, 'food'),
(277, 163, 'like'),
(278, 163, 'test'),
(279, 164, 'food'),
(280, 164, 'like'),
(281, 164, 'test'),
(282, 165, 'food'),
(283, 165, 'like'),
(284, 165, 'test'),
(285, 166, 'food'),
(286, 166, 'like'),
(287, 166, 'test'),
(288, 167, 'food'),
(289, 167, 'like'),
(290, 167, 'test'),
(291, 168, 'food'),
(292, 168, 'like'),
(293, 168, 'test'),
(294, 169, 'food'),
(295, 169, 'like'),
(296, 169, 'test'),
(297, 170, 'food'),
(298, 170, 'like'),
(299, 170, 'test'),
(300, 171, 'food'),
(301, 171, 'like'),
(302, 171, 'test'),
(303, 172, 'food'),
(304, 172, 'like'),
(305, 172, 'test'),
(306, 173, 'food'),
(307, 173, 'like'),
(308, 173, 'test'),
(309, 174, 'food'),
(310, 174, 'like'),
(311, 174, 'test'),
(312, 175, 'food'),
(313, 175, 'like'),
(314, 175, 'test'),
(315, 176, 'food'),
(316, 176, 'like'),
(317, 176, 'test'),
(318, 177, 'food'),
(319, 177, 'like'),
(320, 177, 'test'),
(321, 178, 'food'),
(322, 178, 'like'),
(323, 178, 'test'),
(324, 179, 'food'),
(325, 179, 'like'),
(326, 179, 'test'),
(327, 180, 'food'),
(328, 180, 'like'),
(329, 180, 'test'),
(330, 181, 'food'),
(331, 181, 'like'),
(332, 181, 'test'),
(333, 182, 'food'),
(334, 182, 'like'),
(335, 182, 'test'),
(336, 183, 'food'),
(337, 183, 'like'),
(338, 183, 'test'),
(339, 184, 'food'),
(340, 184, 'like'),
(341, 184, 'test'),
(342, 185, 'food'),
(343, 185, 'like'),
(344, 185, 'test'),
(345, 186, 'food'),
(346, 186, 'like'),
(347, 186, 'test'),
(348, 187, 'food'),
(349, 187, 'like'),
(350, 187, 'test'),
(351, 188, 'food'),
(352, 188, 'like'),
(353, 188, 'test'),
(354, 189, 'food'),
(355, 189, 'like'),
(356, 189, 'test'),
(357, 190, 'food'),
(358, 190, 'like'),
(359, 190, 'test'),
(360, 191, 'food'),
(361, 191, 'like'),
(362, 191, 'test'),
(363, 192, 'food'),
(364, 192, 'like'),
(365, 192, 'test'),
(366, 193, 'food'),
(367, 193, 'like'),
(368, 193, 'test'),
(369, 194, 'food'),
(370, 194, 'like'),
(371, 194, 'test'),
(372, 195, 'food'),
(373, 195, 'like'),
(374, 195, 'test'),
(375, 196, 'food'),
(376, 196, 'like'),
(377, 196, 'test'),
(378, 197, 'food'),
(379, 197, 'like'),
(380, 197, 'test'),
(381, 198, 'food'),
(382, 198, 'like'),
(383, 198, 'test'),
(384, 199, 'food'),
(385, 199, 'like'),
(386, 199, 'test'),
(387, 200, 'food'),
(388, 200, 'like'),
(389, 200, 'test'),
(390, 201, 'food'),
(391, 201, 'like'),
(392, 201, 'test'),
(393, 202, 'food'),
(394, 202, 'like'),
(395, 202, 'test'),
(396, 203, 'food'),
(397, 203, 'like'),
(398, 203, 'test'),
(399, 204, 'food'),
(400, 204, 'like'),
(401, 204, 'test'),
(402, 205, 'food'),
(403, 205, 'like'),
(404, 205, 'test'),
(405, 206, 'food'),
(406, 206, 'like'),
(407, 206, 'test'),
(408, 207, 'food'),
(409, 207, 'like'),
(410, 207, 'test'),
(411, 208, 'food'),
(412, 208, 'like'),
(413, 208, 'test'),
(414, 209, 'food'),
(415, 209, 'like'),
(416, 209, 'test'),
(417, 210, 'food'),
(418, 210, 'like'),
(419, 210, 'test'),
(420, 214, 'food'),
(421, 214, 'like'),
(422, 214, 'test'),
(423, 215, 'food'),
(424, 215, 'like'),
(425, 215, 'test'),
(426, 216, 'food'),
(427, 216, 'like'),
(428, 216, 'test'),
(429, 217, 'food'),
(430, 217, 'like'),
(431, 217, 'test'),
(432, 218, 'food'),
(433, 218, 'like'),
(434, 218, 'test'),
(435, 219, 'food'),
(436, 219, 'like'),
(437, 219, 'test'),
(438, 220, 'food'),
(439, 220, 'like'),
(440, 220, 'test'),
(441, 221, 'food'),
(442, 221, 'like'),
(443, 221, 'test'),
(444, 222, 'food'),
(445, 222, 'like'),
(446, 222, 'test'),
(447, 223, 'food'),
(448, 223, 'like'),
(449, 223, 'test'),
(450, 224, 'food'),
(451, 224, 'like'),
(452, 224, 'test'),
(453, 225, 'food'),
(454, 225, 'like'),
(455, 225, 'test'),
(456, 226, 'food'),
(457, 226, 'like'),
(458, 226, 'test'),
(459, 227, 'food'),
(460, 227, 'like'),
(461, 227, 'test'),
(462, 228, 'food'),
(463, 228, 'like'),
(464, 228, 'test'),
(465, 229, 'food'),
(466, 229, 'like'),
(467, 229, 'test'),
(468, 230, 'food'),
(469, 230, 'like'),
(470, 230, 'test'),
(471, 231, 'Example1'),
(472, 231, 'Example'),
(473, 231, '2'),
(474, 232, 'Example1'),
(475, 232, 'Example'),
(476, 232, '2'),
(477, 233, 'Example1'),
(478, 233, 'Example'),
(479, 233, '2'),
(480, 234, 'Example1'),
(481, 234, 'Example'),
(482, 234, '2'),
(483, 235, 'Example1'),
(484, 235, 'Example'),
(485, 235, '2'),
(486, 236, 'Example1'),
(487, 236, 'Example'),
(488, 236, '2'),
(489, 237, 'Example1'),
(490, 237, 'Example'),
(491, 237, '2'),
(492, 238, 'Example1'),
(493, 238, 'Example'),
(494, 238, '2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transact_appoint_food_status`
--

CREATE TABLE `tbl_transact_appoint_food_status` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transact_appoint_food_status`
--

INSERT INTO `tbl_transact_appoint_food_status` (`status_id`, `status_name`) VALUES
(1, 'daily'),
(2, 'weekly'),
(3, 'monthly'),
(4, 'ocassionally'),
(5, 'never');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transact_appoint_medical`
--

CREATE TABLE `tbl_transact_appoint_medical` (
  `medical_id` int(11) NOT NULL,
  `appoint_id` int(11) NOT NULL,
  `current_medication` int(11) NOT NULL,
  `self_past_condition_id` int(11) NOT NULL,
  `family_past_condition_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transact_appoint_medical`
--

INSERT INTO `tbl_transact_appoint_medical` (`medical_id`, `appoint_id`, `current_medication`, `self_past_condition_id`, `family_past_condition_id`) VALUES
(1, 1, 1, 1, 1),
(83, 108, 0, 1, 1),
(84, 109, 0, 1, 1),
(85, 110, 0, 1, 1),
(86, 111, 0, 1, 1),
(87, 112, 0, 1, 1),
(88, 113, 0, 1, 1),
(89, 114, 0, 1, 1),
(90, 115, 0, 1, 1),
(91, 116, 0, 1, 1),
(92, 117, 0, 1, 1),
(93, 118, 0, 1, 1),
(94, 119, 0, 1, 1),
(95, 120, 0, 1, 1),
(96, 121, 0, 1, 1),
(97, 122, 0, 1, 1),
(98, 123, 0, 1, 1),
(99, 124, 0, 1, 1),
(100, 125, 0, 1, 1),
(101, 126, 0, 1, 1),
(102, 127, 0, 1, 1),
(103, 128, 0, 1, 1),
(104, 129, 0, 1, 1),
(105, 130, 0, 1, 1),
(106, 131, 0, 1, 1),
(107, 132, 0, 1, 1),
(108, 133, 0, 1, 1),
(109, 134, 0, 1, 1),
(110, 135, 0, 1, 1),
(111, 136, 0, 1, 1),
(112, 137, 0, 1, 1),
(113, 138, 0, 1, 1),
(114, 139, 0, 1, 1),
(115, 140, 0, 1, 1),
(116, 141, 0, 1, 1),
(117, 142, 0, 1, 1),
(118, 143, 0, 1, 1),
(119, 144, 0, 1, 1),
(120, 145, 0, 1, 1),
(121, 146, 0, 1, 1),
(122, 147, 0, 1, 1),
(123, 148, 0, 1, 1),
(124, 149, 0, 1, 1),
(125, 150, 0, 1, 1),
(126, 151, 0, 1, 1),
(127, 152, 0, 1, 1),
(128, 153, 0, 1, 1),
(129, 154, 0, 1, 1),
(130, 155, 0, 1, 1),
(131, 156, 0, 1, 1),
(132, 157, 0, 1, 1),
(133, 158, 0, 1, 1),
(134, 159, 0, 1, 1),
(135, 160, 0, 1, 1),
(136, 161, 0, 1, 1),
(137, 162, 0, 1, 1),
(138, 163, 0, 1, 1),
(139, 164, 0, 1, 1),
(140, 165, 0, 1, 1),
(141, 166, 0, 1, 1),
(142, 167, 0, 1, 1),
(143, 168, 0, 1, 1),
(144, 169, 0, 1, 1),
(145, 170, 0, 1, 1),
(146, 171, 0, 1, 1),
(147, 172, 0, 1, 1),
(148, 173, 0, 1, 1),
(149, 174, 0, 1, 1),
(150, 175, 0, 1, 1),
(151, 176, 0, 1, 1),
(152, 177, 0, 1, 1),
(153, 178, 0, 1, 1),
(154, 179, 0, 1, 1),
(155, 180, 0, 1, 1),
(156, 181, 0, 1, 1),
(157, 182, 0, 1, 1),
(158, 183, 0, 1, 1),
(159, 184, 0, 1, 1),
(160, 185, 0, 1, 1),
(161, 186, 0, 1, 1),
(162, 187, 0, 1, 1),
(163, 188, 0, 1, 1),
(164, 189, 0, 1, 1),
(165, 190, 0, 1, 1),
(166, 191, 0, 1, 1),
(167, 192, 0, 1, 1),
(168, 193, 0, 1, 1),
(169, 194, 0, 1, 1),
(170, 195, 0, 1, 1),
(171, 196, 0, 1, 1),
(172, 197, 0, 1, 1),
(173, 198, 0, 1, 1),
(174, 199, 0, 1, 1),
(175, 200, 0, 1, 1),
(176, 201, 0, 1, 1),
(177, 202, 0, 1, 1),
(178, 203, 0, 1, 1),
(179, 204, 0, 1, 1),
(180, 205, 0, 1, 1),
(181, 206, 0, 1, 1),
(182, 207, 0, 1, 1),
(183, 208, 0, 1, 1),
(184, 209, 0, 1, 1),
(185, 210, 0, 1, 1),
(186, 214, 0, 1, 1),
(187, 215, 0, 1, 1),
(188, 216, 0, 1, 1),
(189, 217, 0, 1, 1),
(190, 218, 0, 1, 1),
(191, 219, 0, 1, 1),
(192, 220, 0, 1, 1),
(193, 221, 0, 1, 1),
(194, 222, 0, 1, 1),
(195, 223, 0, 1, 1),
(196, 224, 0, 1, 1),
(197, 225, 0, 1, 1),
(198, 226, 0, 1, 1),
(199, 227, 0, 1, 1),
(200, 228, 0, 1, 1),
(201, 229, 0, 1, 1),
(202, 230, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transact_appoint_medical_current_med`
--

CREATE TABLE `tbl_transact_appoint_medical_current_med` (
  `medical_current_med_id` int(11) NOT NULL,
  `appoint_id` int(11) NOT NULL,
  `medical_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transact_appoint_medical_current_med`
--

INSERT INTO `tbl_transact_appoint_medical_current_med` (`medical_current_med_id`, `appoint_id`, `medical_name`) VALUES
(1, 231, 'Example1'),
(2, 231, 'Example 2'),
(3, 232, 'Example1'),
(4, 232, 'Example 2'),
(5, 233, 'Example1'),
(6, 233, 'Example 2'),
(7, 234, 'Example1'),
(8, 234, 'Example 2'),
(9, 235, 'Example1'),
(10, 235, 'Example 2'),
(11, 236, 'Example1'),
(12, 236, 'Example 2'),
(13, 237, 'Example1'),
(14, 237, 'Example 2'),
(15, 238, 'Example1'),
(16, 238, 'Example 2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transact_appoint_medical_family_past_con`
--

CREATE TABLE `tbl_transact_appoint_medical_family_past_con` (
  `medical_family_past_con_id` int(11) NOT NULL,
  `appoint_id` int(11) NOT NULL,
  `family_past_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transact_appoint_medical_family_past_con`
--

INSERT INTO `tbl_transact_appoint_medical_family_past_con` (`medical_family_past_con_id`, `appoint_id`, `family_past_name`) VALUES
(1, 231, 'Diabetes'),
(2, 231, 'Example1'),
(3, 231, 'Example 2'),
(4, 232, 'Diabetes'),
(5, 232, 'Example1'),
(6, 232, 'Example 2'),
(7, 233, 'Diabetes'),
(8, 233, 'Example1'),
(9, 233, 'Example 2'),
(10, 234, 'Diabetes'),
(11, 234, 'Example1'),
(12, 234, 'Example 2'),
(13, 235, 'Diabetes'),
(14, 235, 'Example1'),
(15, 235, 'Example 2'),
(16, 236, 'Diabetes'),
(17, 236, 'Example1'),
(18, 236, 'Example 2'),
(19, 237, 'Diabetes'),
(20, 237, 'Example1'),
(21, 237, 'Example 2'),
(22, 238, 'Diabetes'),
(23, 238, 'Example1'),
(24, 238, 'Example 2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transact_appoint_medical_self_past_con`
--

CREATE TABLE `tbl_transact_appoint_medical_self_past_con` (
  `medical_self_past_con_id` int(11) NOT NULL,
  `appoint_id` int(11) NOT NULL,
  `self_past_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transact_appoint_medical_self_past_con`
--

INSERT INTO `tbl_transact_appoint_medical_self_past_con` (`medical_self_past_con_id`, `appoint_id`, `self_past_name`) VALUES
(1, 231, 'Diabetes'),
(2, 231, 'Example1'),
(3, 231, 'Example 2'),
(4, 232, 'Diabetes'),
(5, 232, 'Example1'),
(6, 232, 'Example 2'),
(7, 233, 'Diabetes'),
(8, 233, 'Example1'),
(9, 233, 'Example 2'),
(10, 234, 'Diabetes'),
(11, 234, 'Example1'),
(12, 234, 'Example 2'),
(13, 235, 'Diabetes'),
(14, 235, 'Example1'),
(15, 235, 'Example 2'),
(16, 236, 'Diabetes'),
(17, 236, 'Example1'),
(18, 236, 'Example 2'),
(19, 237, 'Diabetes'),
(20, 237, 'Example1'),
(21, 237, 'Example 2'),
(22, 238, 'Diabetes'),
(23, 238, 'Example1'),
(24, 238, 'Example 2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transact_appoint_physical`
--

CREATE TABLE `tbl_transact_appoint_physical` (
  `physical_id` int(11) NOT NULL,
  `appoint_id` int(11) NOT NULL,
  `actual_weight` varchar(20) NOT NULL,
  `current_height` varchar(20) NOT NULL,
  `body_type_id` int(11) DEFAULT NULL,
  `physical_activity_id` int(11) NOT NULL,
  `gain_weight_level_id` int(11) NOT NULL,
  `lose_weight_level_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transact_appoint_physical`
--

INSERT INTO `tbl_transact_appoint_physical` (`physical_id`, `appoint_id`, `actual_weight`, `current_height`, `body_type_id`, `physical_activity_id`, `gain_weight_level_id`, `lose_weight_level_id`) VALUES
(1, 1, 'weight test', 'height test', 1, 1, 1, 1),
(77, 108, '1', '1', NULL, 0, 0, 0),
(78, 109, '1', '1', NULL, 0, 0, 0),
(79, 110, '1', '1', NULL, 0, 0, 0),
(80, 111, '1', '1', NULL, 0, 0, 0),
(81, 112, '1', '1', NULL, 0, 0, 0),
(82, 113, '1', '1', NULL, 0, 0, 0),
(83, 114, '1', '1', NULL, 0, 0, 0),
(84, 115, '1', '1', NULL, 0, 0, 0),
(85, 116, '1', '1', NULL, 0, 0, 0),
(86, 117, '1', '1', NULL, 0, 0, 0),
(87, 118, '1', '1', NULL, 0, 0, 0),
(88, 119, '1', '1', NULL, 0, 0, 0),
(89, 120, '1', '1', NULL, 0, 0, 0),
(90, 121, '1', '1', NULL, 0, 0, 0),
(91, 122, '1', '1', NULL, 0, 0, 0),
(92, 123, '1', '1', NULL, 0, 0, 0),
(93, 124, '1', '1', NULL, 0, 0, 0),
(94, 125, '1', '1', NULL, 0, 0, 0),
(95, 126, '1', '1', NULL, 0, 0, 0),
(96, 127, '1', '1', NULL, 0, 0, 0),
(97, 128, '1', '1', NULL, 0, 0, 0),
(98, 129, '1', '1', NULL, 0, 0, 0),
(99, 130, '1', '1', NULL, 0, 0, 0),
(100, 131, '1', '1', NULL, 0, 0, 0),
(101, 132, '1', '1', NULL, 0, 0, 0),
(102, 133, '1', '1', NULL, 0, 0, 0),
(103, 134, '1', '1', NULL, 0, 0, 0),
(104, 135, '1', '1', NULL, 0, 0, 0),
(105, 136, '1', '1', NULL, 0, 0, 0),
(106, 137, '1', '1', NULL, 0, 0, 0),
(107, 138, '1', '1', NULL, 0, 0, 0),
(108, 139, '1', '1', NULL, 0, 0, 0),
(109, 140, '1', '1', NULL, 0, 0, 0),
(110, 141, '1', '1', NULL, 0, 0, 0),
(111, 142, '1', '1', NULL, 0, 0, 0),
(112, 143, '1', '1', NULL, 0, 0, 0),
(113, 144, '1', '1', NULL, 0, 0, 0),
(114, 145, '1', '1', NULL, 0, 0, 0),
(115, 146, '1', '1', NULL, 0, 0, 0),
(116, 147, '1', '1', NULL, 0, 0, 0),
(117, 148, '1', '1', NULL, 0, 0, 0),
(118, 149, '1', '1', NULL, 0, 0, 0),
(119, 150, '1', '1', NULL, 0, 0, 0),
(120, 151, '1', '1', NULL, 0, 0, 0),
(121, 152, '1', '1', NULL, 0, 0, 0),
(122, 153, '1', '1', NULL, 0, 0, 0),
(123, 154, '1', '1', NULL, 0, 0, 0),
(124, 155, '1', '1', NULL, 0, 0, 0),
(125, 156, '1', '1', NULL, 0, 0, 0),
(126, 157, '1', '1', NULL, 0, 0, 0),
(127, 158, '1', '1', NULL, 0, 0, 0),
(128, 159, '1', '1', NULL, 0, 0, 0),
(129, 160, '1', '1', NULL, 0, 0, 0),
(130, 161, '1', '1', NULL, 0, 0, 0),
(131, 162, '1', '1', NULL, 0, 0, 0),
(132, 163, '1', '1', NULL, 0, 0, 0),
(133, 164, '1', '1', NULL, 0, 0, 0),
(134, 165, '1', '1', NULL, 0, 0, 0),
(135, 166, '1', '1', NULL, 0, 0, 0),
(136, 167, '1', '1', NULL, 0, 0, 0),
(137, 168, '1', '1', NULL, 0, 0, 0),
(138, 169, '1', '1', NULL, 0, 0, 0),
(139, 170, '1', '1', NULL, 0, 0, 0),
(140, 171, '1', '1', NULL, 0, 0, 0),
(141, 172, '1', '1', NULL, 0, 0, 0),
(142, 173, '1', '1', NULL, 0, 0, 0),
(143, 174, '1', '1', NULL, 0, 0, 0),
(144, 175, '1', '1', NULL, 0, 0, 0),
(145, 176, '1', '1', NULL, 0, 0, 0),
(146, 177, '1', '1', NULL, 0, 0, 0),
(147, 178, '1', '1', NULL, 0, 0, 0),
(148, 179, '1', '1', NULL, 0, 0, 0),
(149, 180, '1', '1', NULL, 0, 0, 0),
(150, 181, '1', '1', NULL, 0, 0, 0),
(151, 182, '1', '1', NULL, 0, 0, 0),
(152, 183, '1', '1', NULL, 0, 0, 0),
(153, 184, '1', '1', NULL, 0, 0, 0),
(154, 185, '1', '1', NULL, 0, 0, 0),
(155, 186, '1', '1', NULL, 0, 0, 0),
(156, 187, '1', '1', NULL, 0, 0, 0),
(157, 188, '1', '1', NULL, 0, 0, 0),
(158, 189, '1', '1', NULL, 0, 0, 0),
(159, 190, '1', '1', NULL, 0, 0, 0),
(160, 191, '1', '1', NULL, 0, 0, 0),
(161, 192, '1', '1', NULL, 0, 0, 0),
(162, 193, '1', '1', NULL, 0, 0, 0),
(163, 194, '1', '1', NULL, 0, 0, 0),
(164, 195, '1', '1', NULL, 0, 0, 0),
(165, 196, '1', '1', NULL, 0, 0, 0),
(166, 197, '1', '1', NULL, 0, 0, 0),
(167, 198, '1', '1', NULL, 0, 0, 0),
(168, 199, '1', '1', NULL, 0, 0, 0),
(169, 200, '1', '1', NULL, 0, 0, 0),
(170, 201, '1', '1', NULL, 0, 0, 0),
(171, 202, '1', '1', NULL, 0, 0, 0),
(172, 203, '1', '1', NULL, 0, 0, 0),
(173, 204, '1', '1', NULL, 0, 0, 0),
(174, 205, '1', '1', NULL, 0, 0, 0),
(175, 206, '1', '1', NULL, 0, 0, 0),
(176, 207, '1', '1', NULL, 0, 0, 0),
(177, 208, '1', '1', NULL, 0, 0, 0),
(178, 209, '1', '1', NULL, 0, 0, 0),
(179, 210, '1', '1', NULL, 0, 0, 0),
(180, 214, '1', '1', NULL, 0, 0, 0),
(181, 215, '1', '1', NULL, 0, 0, 0),
(182, 216, '1', '1', NULL, 0, 0, 0),
(183, 217, '1', '1', NULL, 0, 0, 0),
(184, 218, '1', '1', NULL, 0, 0, 0),
(185, 219, '1', '1', NULL, 0, 0, 0),
(186, 220, '1', '1', NULL, 0, 0, 0),
(187, 221, '1', '1', NULL, 0, 0, 0),
(188, 222, '1', '1', NULL, 0, 0, 0),
(189, 223, '1', '1', NULL, 0, 0, 0),
(190, 224, '1', '1', NULL, 0, 0, 0),
(191, 225, '1', '1', NULL, 0, 0, 0),
(192, 226, '1', '1', NULL, 0, 0, 0),
(193, 227, '1', '1', NULL, 0, 0, 0),
(194, 228, '1', '1', NULL, 0, 0, 0),
(195, 229, '1', '1', NULL, 0, 0, 0),
(196, 230, '1', '1', NULL, 0, 0, 0),
(197, 231, '1', '1', NULL, 0, 0, 0),
(198, 232, '1', '1', NULL, 0, 0, 0),
(199, 233, '1', '1', NULL, 4, 4, 4),
(200, 234, '1', '1', NULL, 4, 4, 4),
(201, 235, '1', '1', NULL, 4, 4, 4),
(202, 236, '1', '1', NULL, 4, 4, 4),
(203, 237, '1', '1', NULL, 4, 4, 4),
(204, 238, '1', '1', NULL, 4, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transact_appoint_physical_bodytype`
--

CREATE TABLE `tbl_transact_appoint_physical_bodytype` (
  `body_type_id` int(11) NOT NULL,
  `appoint_id` int(11) NOT NULL,
  `body_type_name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transact_appoint_physical_bodytype`
--

INSERT INTO `tbl_transact_appoint_physical_bodytype` (`body_type_id`, `appoint_id`, `body_type_name`) VALUES
(1, 1, 0),
(2, 1, 0),
(37, 108, 0),
(38, 109, 0),
(39, 110, 0),
(40, 111, 0),
(41, 112, 0),
(42, 113, 0),
(43, 114, 0),
(44, 115, 0),
(45, 116, 0),
(46, 117, 0),
(47, 118, 0),
(48, 119, 0),
(49, 120, 0),
(50, 121, 0),
(51, 122, 0),
(52, 123, 0),
(53, 124, 0),
(54, 125, 0),
(55, 126, 0),
(56, 127, 0),
(57, 128, 0),
(58, 129, 0),
(59, 130, 0),
(60, 131, 0),
(61, 132, 0),
(62, 133, 0),
(63, 134, 0),
(64, 135, 0),
(65, 136, 0),
(66, 137, 0),
(67, 138, 0),
(68, 139, 0),
(69, 140, 0),
(70, 141, 0),
(71, 142, 0),
(72, 143, 0),
(73, 144, 0),
(74, 145, 0),
(75, 146, 0),
(76, 147, 0),
(77, 148, 0),
(78, 149, 0),
(79, 150, 0),
(80, 151, 0),
(81, 152, 0),
(82, 153, 0),
(83, 154, 0),
(84, 155, 0),
(85, 156, 0),
(86, 157, 0),
(87, 158, 0),
(88, 159, 0),
(89, 160, 0),
(90, 161, 0),
(91, 162, 0),
(92, 163, 0),
(93, 164, 0),
(94, 165, 0),
(95, 166, 0),
(96, 167, 0),
(97, 168, 0),
(98, 169, 0),
(99, 170, 0),
(100, 171, 0),
(101, 172, 0),
(102, 173, 0),
(103, 174, 0),
(104, 175, 0),
(105, 176, 0),
(106, 177, 0),
(107, 178, 0),
(108, 179, 0),
(109, 180, 0),
(110, 181, 0),
(111, 182, 0),
(112, 183, 0),
(113, 184, 0),
(114, 185, 0),
(115, 186, 0),
(116, 187, 0),
(117, 188, 0),
(118, 189, 0),
(119, 190, 0),
(120, 191, 0),
(121, 192, 0),
(122, 193, 0),
(123, 194, 0),
(124, 195, 0),
(125, 196, 0),
(126, 197, 0),
(127, 198, 0),
(128, 199, 0),
(129, 200, 0),
(130, 201, 0),
(131, 202, 0),
(132, 203, 0),
(133, 204, 0),
(134, 205, 0),
(135, 206, 0),
(136, 207, 0),
(137, 208, 0),
(138, 209, 0),
(139, 210, 0),
(140, 214, 0),
(141, 215, 0),
(142, 216, 0),
(143, 217, 0),
(144, 218, 0),
(145, 219, 0),
(146, 220, 0),
(147, 221, 0),
(148, 222, 0),
(149, 223, 0),
(150, 224, 0),
(151, 225, 0),
(152, 226, 0),
(153, 227, 0),
(154, 228, 0),
(155, 229, 0),
(156, 230, 0),
(157, 231, 0),
(158, 232, 1),
(159, 233, 1),
(160, 233, 2),
(161, 234, 1),
(162, 234, 3),
(163, 235, 2),
(164, 235, 3),
(165, 236, 2),
(166, 236, 3),
(167, 237, 1),
(168, 237, 3),
(169, 238, 1),
(170, 238, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transact_consult`
--

CREATE TABLE `tbl_transact_consult` (
  `consult_id` int(11) NOT NULL,
  `transact_id` int(11) NOT NULL,
  `rnd_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transact_consult`
--

INSERT INTO `tbl_transact_consult` (`consult_id`, `transact_id`, `rnd_id`) VALUES
(1, 1, 4),
(21, 121, 3),
(22, 123, 3),
(23, 124, 3),
(24, 125, 3),
(25, 126, 8),
(26, 129, 17),
(27, 128, 8),
(28, 130, 17),
(29, 131, 3),
(30, 132, 3),
(31, 133, 3),
(32, 134, 3),
(33, 135, 3),
(34, 136, 3),
(35, 137, 3),
(36, 138, 17),
(37, 139, 3),
(38, 140, 3),
(39, 141, 3),
(40, 142, 3),
(41, 143, 3),
(42, 144, 3),
(43, 171, 3),
(44, 179, 3),
(45, 180, 3),
(46, 185, 3),
(47, 186, 3),
(48, 188, 3),
(49, 194, 3),
(50, 198, 3),
(51, 199, 3),
(52, 215, 3),
(53, 216, 3),
(54, 217, 3),
(55, 218, 3),
(56, 234, 3),
(57, 235, 3),
(58, 236, 3),
(59, 241, 3),
(60, 242, 3),
(61, 243, 3),
(62, 244, 3),
(63, 245, 3),
(64, 246, 3),
(65, 247, 3),
(66, 248, 17),
(67, 249, 17),
(68, 249, 17),
(69, 249, 17),
(70, 250, 3),
(71, 252, 3),
(72, 253, 3),
(73, 254, 3),
(74, 255, 3),
(75, 256, 76),
(76, 264, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transact_consult_checkpoint_result_status`
--

CREATE TABLE `tbl_transact_consult_checkpoint_result_status` (
  `consult_result_status_id` int(11) NOT NULL,
  `transact_id` int(11) NOT NULL,
  `consult_result_status` varchar(10) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `date_consultation_completed` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transact_consult_checkpoint_result_status`
--

INSERT INTO `tbl_transact_consult_checkpoint_result_status` (`consult_result_status_id`, `transact_id`, `consult_result_status`, `filename`, `date_consultation_completed`) VALUES
(1, 1, 'APPROVED', '', '2023-02-14 14:07:58'),
(18, 130, 'APPROVED', '', '2023-02-15 03:44:23'),
(20, 131, 'APPROVED', '', '2023-02-15 04:52:36'),
(21, 132, 'APPROVED', '', '2023-02-15 05:19:16'),
(22, 133, 'APPROVED', '', '2023-02-15 09:29:52'),
(23, 134, 'APPROVED', '', '2023-02-15 19:12:26'),
(24, 136, 'APPROVED', '', '2023-02-17 03:32:45'),
(25, 137, 'APPROVED', '', '2023-02-17 12:56:10'),
(26, 138, 'APPROVED', '', '2023-02-17 17:24:32'),
(27, 139, 'APPROVED', '', '2023-02-18 05:47:39'),
(28, 141, 'APPROVED', '', '2023-02-19 14:08:29'),
(29, 142, 'APPROVED', '', '2023-02-19 14:36:34'),
(30, 143, 'APPROVED', '', '2023-02-19 15:00:02'),
(31, 144, 'APPROVEDD', '1676961227.jpg', '2023-02-21 06:33:46'),
(32, 171, 'APPROVED', '1677010997.jpg', '2023-02-21 20:23:16'),
(33, 180, 'APPROVED', '1677144987.pdf', '2023-02-23 09:36:27'),
(34, 185, 'APPROVED', '1677157224.jpg', '2023-02-23 13:00:24'),
(35, 188, 'APPROVED', '1677322206.docx', '2023-02-25 10:50:05'),
(36, 194, 'APPROVED', '1677336112.pdf', '2023-02-25 14:41:51'),
(37, 198, 'APPROVED', '1677336498.jpg', '2023-02-25 14:48:18'),
(38, 199, 'APPROVED', '1677347230.docx', '2023-02-25 17:47:10'),
(39, 215, 'APPROVED', '1677354344.jpg', '2023-02-25 19:45:44'),
(40, 216, 'APPROVED', 'result_file_216.pdf', '2023-02-25 21:24:40'),
(41, 217, 'APPROVED', 'result_file_217.pdf', '2023-02-26 10:48:08'),
(42, 218, 'APPROVED', 'result_file_218.JPG', '2023-02-27 10:27:11'),
(43, 236, 'APPROVED', 'result_file_236.jpg', '2023-02-28 23:13:51'),
(44, 241, 'APPROVED', 'result_file_241.jpg', '2023-02-28 23:44:23'),
(45, 242, 'PENDING', NULL, '2023-03-02 21:13:03'),
(46, 243, 'PENDING', NULL, '2023-03-02 21:16:37'),
(47, 244, 'PENDING', NULL, '2023-03-02 21:18:04'),
(48, 245, 'PENDING', NULL, '2023-03-02 21:19:39'),
(49, 246, 'APPROVED', 'result_file_246.jpg', '2023-03-02 21:44:32'),
(50, 248, 'APPROVED', 'result_file_248.jpg', '2023-03-04 23:59:51'),
(51, 249, 'APPROVED', 'result_file_249.jpg', '2023-03-05 00:39:24'),
(52, 250, 'APPROVED', 'result_file_250.jpg', '2023-03-24 02:42:47'),
(53, 252, 'APPROVED', 'result_file_252.jpg', '2023-03-28 18:13:20'),
(54, 253, 'APPROVED', 'result_file_253.jpg', '2023-03-31 14:14:36'),
(55, 254, 'APPROVED', 'result_file_254.jpg', '2023-04-14 07:57:05'),
(56, 255, 'APPROVED', 'result_file_255.jpg', '2023-04-16 05:26:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transact_consult_schedule`
--

CREATE TABLE `tbl_transact_consult_schedule` (
  `consult_schedule_id` int(11) NOT NULL,
  `consult_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `rnd_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transact_consult_schedule`
--

INSERT INTO `tbl_transact_consult_schedule` (`consult_schedule_id`, `consult_id`, `client_id`, `rnd_id`, `date`, `time`) VALUES
(1, 1, 1, 3, '2023-04-01', '03:32:48'),
(57, 28, 1, 17, '2023-02-16', '08:57:00'),
(61, 30, 1, 3, '2023-02-24', '13:05:00'),
(68, 32, 1, 3, '2023-02-25', '08:22:00'),
(70, 32, 1, 3, '2023-02-23', '20:32:00'),
(71, 34, 1, 3, '2023-02-18', '11:32:00'),
(72, 36, 1, 17, '2023-02-23', '01:26:00'),
(73, 37, 1, 3, '2023-02-22', '03:14:00'),
(75, 38, 1, 3, '2023-03-01', '02:35:00'),
(77, 40, 1, 3, '2023-02-23', '10:10:00'),
(79, 40, 1, 3, '2023-02-27', '04:20:00'),
(82, 44, 1, 3, '2023-03-10', '03:14:00'),
(83, 46, 1, 3, '2023-03-02', '11:57:00'),
(84, 50, 1, 3, '2023-03-01', '10:50:00'),
(85, 58, 1, 3, '2023-03-11', '07:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_acc_info`
--

CREATE TABLE `tbl_user_acc_info` (
  `acc_no` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user_acc_info`
--

INSERT INTO `tbl_user_acc_info` (`acc_no`, `user_id`, `email`, `pass`, `status`) VALUES
(1, 1, 'test@gmail.com', 'Qw09058222!', 'VERIFIED'),
(2, 0, 'test1@gmail.com', 'Qw0950825@', 'VERIFIED'),
(3, 3, 'test2@gmail.com', 'test', 'VERIFIED'),
(5, 6, 'randong@gmail.com', 'jaydee', 'VERIFIED'),
(7, 8, 'jenny.humbong@gmail.com', 'test', 'VERIFIED'),
(9, 10, 'wilhelmus.morales@gmail.com', 'jaydee', 'VERIFIED'),
(10, 11, 'testr@gmail.com', 'test', 'UNVERIFIED'),
(11, 11, 'testasd@gmail.com', 'test', 'UNVERIFIED'),
(12, 11, 'tesssst@gmail.com', 'test', 'UNVERIFIED'),
(13, 11, 'testaaa@gmail.com', 'test', 'UNVERIFIED'),
(14, 11, 'tesaat@gmail.com', 'test', 'UNVERIFIED'),
(15, 11, 'tesSSt@gmail.com', 'test', 'UNVERIFIED'),
(16, 17, 'test3@gmail.com', 'test', 'VERIFIED'),
(17, 18, 'layla.lorenjin@gmail.com', 'test', 'VERIFIED'),
(18, 19, 'kokoes.monaxia@gmail.com', 'test', 'VERIFIED'),
(27, 28, 'bensosos.paraxeno@gmail.com', 'test', 'VERIFIED'),
(28, 29, 'johnyhalol@gmail.com', 'Qw09058222!', 'VERIFIED'),
(29, 30, 'Tite@test.com', 'Qw09058222!', 'UNVERIFIED'),
(30, 31, '18@testdummy.com', 'Qw0905!Dummy', 'UNVERIFIED'),
(31, 31, '324@testdummy.com', 'Qw0905!Dummy', 'UNVERIFIED'),
(32, 31, '325@testdummy.com', 'Qw0905!Dummy', 'UNVERIFIED'),
(33, 31, '112@testdummy.com', 'Qw0905!Dummy', 'UNVERIFIED'),
(34, 31, '245@testdummy.com', 'Qw0905!Dummy', 'UNVERIFIED'),
(35, 31, '213@testdummy.com', 'Qw0905!Dummy', 'UNVERIFIED'),
(36, 31, '64@testdummy.com', 'Qw0905!Dummy', 'UNVERIFIED'),
(37, 31, '55@testdummy.com', 'Qw0905!Dummy', 'UNVERIFIED'),
(38, 31, '181@testdummy.com', 'Qw0905!Dummy', 'UNVERIFIED'),
(39, 31, '338@testdummy.com', 'Qw0905!Dummy', 'UNVERIFIED'),
(40, 31, '268@testdummy.com', 'Qw0905!Dummy', 'UNVERIFIED'),
(41, 42, '226@testdummy.com', 'Qw0905!Dummy', 'UNVERIFIED'),
(42, 43, '200@testdummy.com', 'Qw0905!Dummy', 'UNVERIFIED'),
(43, 44, 'apendicitis.paraxeno@gmail.com', 'Qw0905!Dummy', 'VERIFIED'),
(44, 45, 'jamaica.solona@gmail.com', 'Qw0905!Dummy', 'VERIFIED'),
(45, 46, 'kenny.sofer@gmail.com', 'Qw0905!Dummy', 'VERIFIED'),
(46, 47, 'ken.ny.sofer@gmail.com', 'Qw0905!Dummy', 'UNVERIFIED'),
(47, 48, 'ke.n.ny.sofer@gmail.com', 'Qw0905!Dummy', 'UNVERIFIED'),
(48, 49, 'kenn.y.sofer@gmail.com', 'Qw0905!Dummy', 'UNVERIFIED'),
(49, 47, '260@testdummy.com', 'Qw0905!Dummy', 'UNVERIFIED'),
(50, 43, 'ke.nny.sofer@gmail.com', 'Qw0905!Dummy', 'UNVERIFIED'),
(51, 52, 'john.yhalol@gmail.com', 'Qw0905!Dummy', 'UNVERIFIED'),
(52, 43, 'joshuayasil@gmail.com', 'Qw0905!Dummy', 'UNVERIFIED'),
(53, 54, 'wacov66475@youke1.com', 'Qw0905!Dummy', 'UNVERIFIED'),
(54, 55, 'fabivem808@wiroute.com', 'Qw0905!Dummy', 'UNVERIFIED'),
(55, 56, 'megab17278@youke1.com', 'Qw0905!Dummy', 'UNVERIFIED'),
(56, 57, 'rihola1532@youke1.com', 'Qw0905!Dummy', 'VERIFIED'),
(57, 58, 'jenny.h.umbong@gmail.com', 'Qw0905!Dummy', 'UNVERIFIED'),
(58, 57, 'jenny.h.u.mbong@gmail.com', 'Qw0905!Dummy', 'VERIFIED'),
(59, 60, 'jenny.h.umb.ong@gmail.com', 'Qw0905!Dummy', 'VERIFIED'),
(60, 61, 'jenn.y.h.umbong@gmail.com', 'Qw0905!Dummy', 'VERIFIED'),
(61, 62, 'bipeliy766@youke1.com', 'Qw0905!Dummy', 'VERIFIED'),
(62, 63, 'wriwiljbccqllk@eurokool.com', 'Qw09058222!', 'VERIFIED'),
(63, 64, 'jovofo9257@necktai.com', 'Qw0905!Dummy', 'UNVERIFIED'),
(64, 65, 'fosedyme@lyft.live', 'Qw0905!Dummy', 'UNVERIFIED'),
(71, 72, 'bense.monaxia@gmail.com', 'Qw09058222!', 'VERIFIED'),
(74, 75, 'jenny.hackerman@gmail.com', 'qw09058222', 'VERIFIED'),
(75, 76, 'Rando@gmail', 'Qw0905!Dummy', 'VERIFIED');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_email_verification`
--

CREATE TABLE `tbl_user_email_verification` (
  `email_vericiation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `verification_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user_email_verification`
--

INSERT INTO `tbl_user_email_verification` (`email_vericiation_id`, `user_id`, `verification_code`) VALUES
(3, 9, 'S5mJfx6ILG3684'),
(4, 31, '8CgWthYaXJ4546'),
(5, 42, 'w21aEvClbX1281'),
(6, 43, 'hiWMqTouUl3148'),
(7, 44, 'lXcgei3LKj2200'),
(9, 46, 'QJ2eqWvmxU4926'),
(10, 47, '8klAFQKE4u2999'),
(11, 48, '1c0ASiBove4051'),
(12, 49, '79AQRvZ86j1757'),
(13, 43, 'pRIsZS5XLk3436'),
(14, 52, 'g7Awz5CYoH1255'),
(15, 43, 'HRiPOK3fvp2287'),
(16, 54, 'sNfXZVTauG2354'),
(17, 55, 'KThxb0DkNz4184'),
(18, 56, 'H8D9G32Vd71643'),
(38, 58, 'A5CBYj9vpl4775'),
(57, 45, 'bfgz27HAtO6464'),
(58, 8, '10nJxzG5L71006'),
(59, 1, 'x0zALpUNKd3170'),
(64, 65, '0mkP5zNEG39580'),
(69, 64, 'Q3ZWe7moz61423');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_identification`
--

CREATE TABLE `tbl_user_identification` (
  `identification_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL,
  `remark` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user_identification`
--

INSERT INTO `tbl_user_identification` (`identification_id`, `user_id`, `image`, `status`, `remark`) VALUES
(1, 1, 'test.jpg', 'VERIFIED', ''),
(3, 28, 'id_file_wilhelmus_ole.jpg', 'DECLINED', ''),
(4, 19, 'id_file_kokoes_Monaxia_71.png', 'VERIFIED', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_profile`
--

CREATE TABLE `tbl_user_profile` (
  `user_id` int(11) NOT NULL,
  `user_privilege` varchar(20) NOT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `gender` int(11) NOT NULL,
  `birthdate` date NOT NULL,
  `profile_img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user_profile`
--

INSERT INTO `tbl_user_profile` (`user_id`, `user_privilege`, `user_type`, `first_name`, `middle_name`, `last_name`, `contact`, `gender`, `birthdate`, `profile_img`) VALUES
(1, 'client', 'Alumni', 'Client', 'Regondola', 'One', '09972976807', 2, '2001-11-12', 'profile_img_file_Client_One_22.jpg'),
(3, 'rnd', 'Student', 'Rnd', 'TITE', 'One', '09943568375', 2, '2001-11-11', 'profile_img_file_Client_Two_64.jpg'),
(6, 'rnd', '', 'Test', 'tite', 'Admin 2', '09963573468', 1, '2023-02-02', NULL),
(8, 'rnd', '', 'Jenny', '', 'Humbong', '09963573468', 1, '2023-02-02', NULL),
(10, 'client', 'Student', 'wilhelmus', '', 'Ole', '09943568375', 1, '2023-02-08', NULL),
(11, 'client', 'Student', 'test', 'test', 'test', '09953546246', 1, '2001-05-02', NULL),
(12, 'client', 'Student', 'test', 'test', 'test', '09953546246', 1, '2001-05-02', NULL),
(13, 'client', 'Student', 'test', 'test', 'test', '09953546246', 1, '2001-05-02', NULL),
(14, 'client', 'Student', 'test', 'test', 'test', '09953546246', 1, '2001-05-02', NULL),
(15, 'client', 'Student', 'test', 'test', 'test', '09953546246', 1, '2001-05-02', NULL),
(16, 'client', 'Student', 'test', 'test', 'test', '09953546246', 1, '2001-05-02', NULL),
(17, 'rnd', 'Student', 'TEST', '', 'ADMIN 3', '09974673468', 1, '2023-01-31', NULL),
(18, 'client', 'Student', 'Layla', '', 'Lorenjin', '09972975374', 1, '2000-05-11', NULL),
(19, 'client', 'Faculty', 'kokoes', '', 'Monaxia', '09972975374', 2, '2023-02-03', 'profile_img_file_kokoes_Monaxia_100.jpg'),
(28, 'client', 'Faculty', 'Bensosos', '', 'Paraxeno', '09972975374', 1, '2023-02-02', NULL),
(29, 'client', 'Student', 'Johny', '', 'Halol', '099999999', 2, '2001-01-01', NULL),
(30, 'client', 'Student', 'Wilhelmus', '', 'Test', '09963466845', 1, '2001-05-02', NULL),
(31, 'client', 'Student', 'Test name', '', 'Test name', '093434343', 1, '2001-05-02', NULL),
(32, 'client', 'Student', 'Test name', '', 'Test name', '093434343', 1, '2001-05-02', NULL),
(33, 'client', 'Student', 'Test name', '', 'Test name', '093434343', 1, '2001-05-02', NULL),
(34, 'client', 'Student', 'Test name', '', 'Test name', '093434343', 1, '2001-05-02', NULL),
(35, 'client', 'Student', 'Test name', '', 'Test name', '093434343', 1, '2001-05-02', NULL),
(36, 'client', 'Student', 'Test name', '', 'Test name', '093434343', 1, '2001-05-02', NULL),
(37, 'client', 'Student', 'Test name', '', 'Test name', '093434343', 1, '2001-05-02', NULL),
(38, 'client', 'Student', 'Test name', '', 'Test name', '093434343', 1, '2001-05-02', NULL),
(39, 'client', 'Student', 'Test name', '', 'Test name', '093434343', 1, '2001-05-02', NULL),
(40, 'client', 'Student', 'Test name', '', 'Test name', '093434343', 1, '2001-05-02', NULL),
(41, 'client', 'Student', 'Test name', '', 'Test name', '093434343', 1, '2001-05-02', NULL),
(42, 'client', 'Student', 'Meowers', '', 'Test name', '093434343', 1, '1995-05-02', NULL),
(43, 'client', 'Student', 'Meowers', '', 'Tame', '093434343', 1, '1994-05-02', NULL),
(44, 'client', 'Student', 'Meowers', '', 'Tame', '093434343', 1, '1988-05-02', NULL),
(45, 'client', 'Student', 'Meowers', '', 'Tame', '093434343', 1, '1999-05-02', NULL),
(46, 'client', 'Student', 'Meowers', '', 'Tame', '093434343', 1, '1997-05-02', NULL),
(47, 'client', 'Student', 'Meowers', '', 'Tame', '093434343', 1, '2007-05-02', NULL),
(48, 'client', 'Student', 'Meowers', '', 'Tame', '093434343', 1, '1991-05-02', NULL),
(49, 'client', 'Student', 'Meowers', '', 'Tame', '093434343', 1, '1985-05-02', NULL),
(50, 'client', 'Student', 'Meowers', '', 'Tame', '093434343', 1, '2007-05-02', NULL),
(51, 'client', 'Student', 'Meowers', '', 'Tame', '093434343', 1, '1994-05-02', NULL),
(52, 'client', 'Student', 'Meowers', '', 'Tame', '093434343', 1, '1981-05-02', NULL),
(53, 'client', 'Student', 'Meowers', '', 'Tame', '093434343', 1, '1994-05-02', NULL),
(54, 'client', 'Student', 'Meowers', '', 'Tame', '093434343', 1, '2004-05-02', NULL),
(55, 'client', 'Student', 'Meowers', '', 'Tame', '093434343', 1, '1982-05-02', NULL),
(56, 'client', 'Student', 'Meowers', '', 'Tame', '093434343', 1, '1992-05-02', NULL),
(57, 'client', 'Student', 'Meowers', '', 'Tame', '093434343', 1, '2005-05-02', NULL),
(58, 'client', 'Student', 'Meowers', '', 'Tame', '093434343', 1, '1983-05-02', NULL),
(59, 'client', 'Student', 'Meowers', '', 'Tame', '093434343', 1, '2005-05-02', NULL),
(60, 'client', 'Student', 'test343', '', 'Tame', '093434343', 1, '1988-05-02', NULL),
(61, 'client', 'Student', '325', '', 'Tame', '093434343', 1, '2007-05-02', NULL),
(62, 'client', 'Student', '187', '', 'Tame', '093434343', 1, '1989-05-02', NULL),
(63, 'client', 'Student', '261', '', 'Tame', '093434343', 1, '1995-05-02', NULL),
(64, 'client', 'Student', '409', '', 'Tame', '093434343', 1, '1998-05-02', NULL),
(65, 'client', 'Student', '121', '', 'Tame', '093434343', 1, '1997-05-02', NULL),
(72, 'client', 'Student', 'bense', '', 'monaxia', '099999999', 2, '2001-01-01', NULL),
(75, 'rnd', 'instructor', 'Jenny', 'Hackerman', 'Hackerman', '09972976807', 0, '2001-01-01', '1677157224.jpg'),
(76, 'rnd', 'rnd', 'Rando', 'Afapan', 'Hackerman', '09972768072', 2, '2001-01-26', 'profile_img_file_Rando_Hackerman_87.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_videocall`
--

CREATE TABLE `tbl_user_videocall` (
  `videocall_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `videocall_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user_videocall`
--

INSERT INTO `tbl_user_videocall` (`videocall_id`, `user_id`, `videocall_link`) VALUES
(1, 3, 'https://www.youtube.com/watch?v=QtzNW8_06Cs&list=RDMM&index=41'),
(2, 6, 'https://www.youtube.com/watch?v=QtzNW8_06Cs&list=RDMM&index=41'),
(3, 8, 'https://www.youtube.com/watch?v=QtzNW8_06Cs&list=RDMM&index=41'),
(4, 17, 'https://www.youtube.com/watch?v=QtzNW8_06Cs&list=RDMM&index=41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_weight_gain_lose_status`
--

CREATE TABLE `tbl_weight_gain_lose_status` (
  `gain_lose_status_id` int(11) NOT NULL,
  `status_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_weight_gain_lose_status`
--

INSERT INTO `tbl_weight_gain_lose_status` (`gain_lose_status_id`, `status_name`) VALUES
(1, 'easily'),
(2, 'moderately'),
(3, 'slowly'),
(4, 'very slowly');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_chat`
--
ALTER TABLE `tbl_chat`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `tbl_consult_join`
--
ALTER TABLE `tbl_consult_join`
  ADD PRIMARY KEY (`consult_join_id`);

--
-- Indexes for table `tbl_gender`
--
ALTER TABLE `tbl_gender`
  ADD PRIMARY KEY (`gender_id`),
  ADD UNIQUE KEY `type` (`type`);

--
-- Indexes for table `tbl_monitor`
--
ALTER TABLE `tbl_monitor`
  ADD PRIMARY KEY (`monitor_id`);

--
-- Indexes for table `tbl_monitor_client_goal`
--
ALTER TABLE `tbl_monitor_client_goal`
  ADD PRIMARY KEY (`monitor_client_goal_id`);

--
-- Indexes for table `tbl_monitor_day`
--
ALTER TABLE `tbl_monitor_day`
  ADD PRIMARY KEY (`monitor_day_id`);

--
-- Indexes for table `tbl_monitor_food_intake`
--
ALTER TABLE `tbl_monitor_food_intake`
  ADD PRIMARY KEY (`food_intake_id`);

--
-- Indexes for table `tbl_monitor_pending`
--
ALTER TABLE `tbl_monitor_pending`
  ADD PRIMARY KEY (`monitor_pending_id`);

--
-- Indexes for table `tbl_monitor_physical`
--
ALTER TABLE `tbl_monitor_physical`
  ADD PRIMARY KEY (`monitor_physical_id`);

--
-- Indexes for table `tbl_monitor_supplement`
--
ALTER TABLE `tbl_monitor_supplement`
  ADD PRIMARY KEY (`monitor_supplement_id`);

--
-- Indexes for table `tbl_monitor_week`
--
ALTER TABLE `tbl_monitor_week`
  ADD PRIMARY KEY (`monitor_week_id`);

--
-- Indexes for table `tbl_monitor_weight_goal`
--
ALTER TABLE `tbl_monitor_weight_goal`
  ADD PRIMARY KEY (`monitor_weight_goal_id`);

--
-- Indexes for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  ADD PRIMARY KEY (`tbl_notif_id`);

--
-- Indexes for table `tbl_pending_appoint_rnd`
--
ALTER TABLE `tbl_pending_appoint_rnd`
  ADD PRIMARY KEY (`pending_appoint_rnd_id`);

--
-- Indexes for table `tbl_physical_activity`
--
ALTER TABLE `tbl_physical_activity`
  ADD PRIMARY KEY (`physical_activity_id`);

--
-- Indexes for table `tbl_physical_body_type`
--
ALTER TABLE `tbl_physical_body_type`
  ADD PRIMARY KEY (`physical_body_type_id`);

--
-- Indexes for table `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `tbl_supplement`
--
ALTER TABLE `tbl_supplement`
  ADD PRIMARY KEY (`supplement_id`);

--
-- Indexes for table `tbl_transact`
--
ALTER TABLE `tbl_transact`
  ADD PRIMARY KEY (`transact_id`);

--
-- Indexes for table `tbl_transact_appoint`
--
ALTER TABLE `tbl_transact_appoint`
  ADD PRIMARY KEY (`appoint_id`);

--
-- Indexes for table `tbl_transact_appoint_checkpoint_appoint_status`
--
ALTER TABLE `tbl_transact_appoint_checkpoint_appoint_status`
  ADD PRIMARY KEY (`appoint_checkpoint_appoint_status_id`);

--
-- Indexes for table `tbl_transact_appoint_checkpoint_rnd_status`
--
ALTER TABLE `tbl_transact_appoint_checkpoint_rnd_status`
  ADD PRIMARY KEY (`appoint_checkpoint_rnd_status_id`);

--
-- Indexes for table `tbl_transact_appoint_client`
--
ALTER TABLE `tbl_transact_appoint_client`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `tbl_transact_appoint_consult`
--
ALTER TABLE `tbl_transact_appoint_consult`
  ADD PRIMARY KEY (`consult_id`);

--
-- Indexes for table `tbl_transact_appoint_food`
--
ALTER TABLE `tbl_transact_appoint_food`
  ADD PRIMARY KEY (`food_id`);

--
-- Indexes for table `tbl_transact_appoint_food_allergy`
--
ALTER TABLE `tbl_transact_appoint_food_allergy`
  ADD PRIMARY KEY (`food_allergy_id`);

--
-- Indexes for table `tbl_transact_appoint_food_diet`
--
ALTER TABLE `tbl_transact_appoint_food_diet`
  ADD PRIMARY KEY (`diet_type_id`);

--
-- Indexes for table `tbl_transact_appoint_food_dislike`
--
ALTER TABLE `tbl_transact_appoint_food_dislike`
  ADD PRIMARY KEY (`food_dislike_id`);

--
-- Indexes for table `tbl_transact_appoint_food_like`
--
ALTER TABLE `tbl_transact_appoint_food_like`
  ADD PRIMARY KEY (`food_like_id`);

--
-- Indexes for table `tbl_transact_appoint_food_status`
--
ALTER TABLE `tbl_transact_appoint_food_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `tbl_transact_appoint_medical`
--
ALTER TABLE `tbl_transact_appoint_medical`
  ADD PRIMARY KEY (`medical_id`);

--
-- Indexes for table `tbl_transact_appoint_medical_current_med`
--
ALTER TABLE `tbl_transact_appoint_medical_current_med`
  ADD PRIMARY KEY (`medical_current_med_id`);

--
-- Indexes for table `tbl_transact_appoint_medical_family_past_con`
--
ALTER TABLE `tbl_transact_appoint_medical_family_past_con`
  ADD PRIMARY KEY (`medical_family_past_con_id`);

--
-- Indexes for table `tbl_transact_appoint_medical_self_past_con`
--
ALTER TABLE `tbl_transact_appoint_medical_self_past_con`
  ADD PRIMARY KEY (`medical_self_past_con_id`);

--
-- Indexes for table `tbl_transact_appoint_physical`
--
ALTER TABLE `tbl_transact_appoint_physical`
  ADD PRIMARY KEY (`physical_id`);

--
-- Indexes for table `tbl_transact_appoint_physical_bodytype`
--
ALTER TABLE `tbl_transact_appoint_physical_bodytype`
  ADD PRIMARY KEY (`body_type_id`);

--
-- Indexes for table `tbl_transact_consult`
--
ALTER TABLE `tbl_transact_consult`
  ADD PRIMARY KEY (`consult_id`);

--
-- Indexes for table `tbl_transact_consult_checkpoint_result_status`
--
ALTER TABLE `tbl_transact_consult_checkpoint_result_status`
  ADD PRIMARY KEY (`consult_result_status_id`);

--
-- Indexes for table `tbl_transact_consult_schedule`
--
ALTER TABLE `tbl_transact_consult_schedule`
  ADD PRIMARY KEY (`consult_schedule_id`);

--
-- Indexes for table `tbl_user_acc_info`
--
ALTER TABLE `tbl_user_acc_info`
  ADD PRIMARY KEY (`acc_no`);

--
-- Indexes for table `tbl_user_email_verification`
--
ALTER TABLE `tbl_user_email_verification`
  ADD PRIMARY KEY (`email_vericiation_id`);

--
-- Indexes for table `tbl_user_identification`
--
ALTER TABLE `tbl_user_identification`
  ADD PRIMARY KEY (`identification_id`);

--
-- Indexes for table `tbl_user_profile`
--
ALTER TABLE `tbl_user_profile`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `gender` (`gender`);

--
-- Indexes for table `tbl_user_videocall`
--
ALTER TABLE `tbl_user_videocall`
  ADD PRIMARY KEY (`videocall_id`);

--
-- Indexes for table `tbl_weight_gain_lose_status`
--
ALTER TABLE `tbl_weight_gain_lose_status`
  ADD PRIMARY KEY (`gain_lose_status_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_chat`
--
ALTER TABLE `tbl_chat`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `tbl_consult_join`
--
ALTER TABLE `tbl_consult_join`
  MODIFY `consult_join_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `tbl_gender`
--
ALTER TABLE `tbl_gender`
  MODIFY `gender_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_monitor`
--
ALTER TABLE `tbl_monitor`
  MODIFY `monitor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_monitor_client_goal`
--
ALTER TABLE `tbl_monitor_client_goal`
  MODIFY `monitor_client_goal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_monitor_day`
--
ALTER TABLE `tbl_monitor_day`
  MODIFY `monitor_day_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tbl_monitor_food_intake`
--
ALTER TABLE `tbl_monitor_food_intake`
  MODIFY `food_intake_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tbl_monitor_pending`
--
ALTER TABLE `tbl_monitor_pending`
  MODIFY `monitor_pending_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_monitor_physical`
--
ALTER TABLE `tbl_monitor_physical`
  MODIFY `monitor_physical_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_monitor_supplement`
--
ALTER TABLE `tbl_monitor_supplement`
  MODIFY `monitor_supplement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_monitor_week`
--
ALTER TABLE `tbl_monitor_week`
  MODIFY `monitor_week_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_monitor_weight_goal`
--
ALTER TABLE `tbl_monitor_weight_goal`
  MODIFY `monitor_weight_goal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  MODIFY `tbl_notif_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_pending_appoint_rnd`
--
ALTER TABLE `tbl_pending_appoint_rnd`
  MODIFY `pending_appoint_rnd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT for table `tbl_physical_activity`
--
ALTER TABLE `tbl_physical_activity`
  MODIFY `physical_activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_physical_body_type`
--
ALTER TABLE `tbl_physical_body_type`
  MODIFY `physical_body_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_status`
--
ALTER TABLE `tbl_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_supplement`
--
ALTER TABLE `tbl_supplement`
  MODIFY `supplement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_transact`
--
ALTER TABLE `tbl_transact`
  MODIFY `transact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `tbl_transact_appoint`
--
ALTER TABLE `tbl_transact_appoint`
  MODIFY `appoint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT for table `tbl_transact_appoint_checkpoint_appoint_status`
--
ALTER TABLE `tbl_transact_appoint_checkpoint_appoint_status`
  MODIFY `appoint_checkpoint_appoint_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `tbl_transact_appoint_checkpoint_rnd_status`
--
ALTER TABLE `tbl_transact_appoint_checkpoint_rnd_status`
  MODIFY `appoint_checkpoint_rnd_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `tbl_transact_appoint_client`
--
ALTER TABLE `tbl_transact_appoint_client`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `tbl_transact_appoint_consult`
--
ALTER TABLE `tbl_transact_appoint_consult`
  MODIFY `consult_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `tbl_transact_appoint_food`
--
ALTER TABLE `tbl_transact_appoint_food`
  MODIFY `food_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `tbl_transact_appoint_food_allergy`
--
ALTER TABLE `tbl_transact_appoint_food_allergy`
  MODIFY `food_allergy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=490;

--
-- AUTO_INCREMENT for table `tbl_transact_appoint_food_diet`
--
ALTER TABLE `tbl_transact_appoint_food_diet`
  MODIFY `diet_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_transact_appoint_food_dislike`
--
ALTER TABLE `tbl_transact_appoint_food_dislike`
  MODIFY `food_dislike_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=493;

--
-- AUTO_INCREMENT for table `tbl_transact_appoint_food_like`
--
ALTER TABLE `tbl_transact_appoint_food_like`
  MODIFY `food_like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=495;

--
-- AUTO_INCREMENT for table `tbl_transact_appoint_food_status`
--
ALTER TABLE `tbl_transact_appoint_food_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_transact_appoint_medical`
--
ALTER TABLE `tbl_transact_appoint_medical`
  MODIFY `medical_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `tbl_transact_appoint_medical_current_med`
--
ALTER TABLE `tbl_transact_appoint_medical_current_med`
  MODIFY `medical_current_med_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_transact_appoint_medical_family_past_con`
--
ALTER TABLE `tbl_transact_appoint_medical_family_past_con`
  MODIFY `medical_family_past_con_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_transact_appoint_medical_self_past_con`
--
ALTER TABLE `tbl_transact_appoint_medical_self_past_con`
  MODIFY `medical_self_past_con_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_transact_appoint_physical`
--
ALTER TABLE `tbl_transact_appoint_physical`
  MODIFY `physical_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `tbl_transact_appoint_physical_bodytype`
--
ALTER TABLE `tbl_transact_appoint_physical_bodytype`
  MODIFY `body_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `tbl_transact_consult`
--
ALTER TABLE `tbl_transact_consult`
  MODIFY `consult_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `tbl_transact_consult_checkpoint_result_status`
--
ALTER TABLE `tbl_transact_consult_checkpoint_result_status`
  MODIFY `consult_result_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tbl_transact_consult_schedule`
--
ALTER TABLE `tbl_transact_consult_schedule`
  MODIFY `consult_schedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `tbl_user_acc_info`
--
ALTER TABLE `tbl_user_acc_info`
  MODIFY `acc_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `tbl_user_email_verification`
--
ALTER TABLE `tbl_user_email_verification`
  MODIFY `email_vericiation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `tbl_user_identification`
--
ALTER TABLE `tbl_user_identification`
  MODIFY `identification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_user_profile`
--
ALTER TABLE `tbl_user_profile`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `tbl_user_videocall`
--
ALTER TABLE `tbl_user_videocall`
  MODIFY `videocall_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_weight_gain_lose_status`
--
ALTER TABLE `tbl_weight_gain_lose_status`
  MODIFY `gain_lose_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
