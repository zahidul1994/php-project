-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2019 at 07:31 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `r37_ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `details`, `parent_id`, `created`) VALUES
(1, 'Men', 'men', 1, '2018-10-18 17:54:19'),
(2, 'Women', 'Women', 2, '2018-10-18 17:54:32'),
(3, 'Kids', 'Kids', 3, '2018-10-18 17:54:44'),
(4, 'Electronics', 'Electronics', 4, '2018-10-18 17:54:53'),
(5, 'Automobiles', 'Automobiles', 5, '2018-10-18 17:55:08'),
(6, 'Laptop', 'laptop', 6, '2018-11-17 16:35:50');

-- --------------------------------------------------------

--
-- Table structure for table `categories_products`
--

CREATE TABLE `categories_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply` text COLLATE utf8mb4_unicode_ci,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `imagename` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `created` TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `imagename`, `product_id`, `created`) VALUES
(1, '1541846226_56_74084.jpg', 56, '0000-00-00 00:00:00'),
(2, '1541846226_56_21532.jpg', 56, '0000-00-00 00:00:00'),
(3, '1541846227_56_88808.jpg', 56, '0000-00-00 00:00:00'),
(4, '1541846227_56_93949.jpg', 56, '0000-00-00 00:00:00'),
(5, '1541846227_56_37426.jpg', 56, '0000-00-00 00:00:00'),
(6, '1541846485_57_69706.jpg', 57, '2018-11-10 16:41:25'),
(7, '1541846485_57_79942.jpg', 57, '2018-11-10 16:41:25'),
(8, '1541846485_57_56022.jpg', 57, '2018-11-10 16:41:25'),
(9, '1541846491_58_99498.jpg', 58, '2018-11-10 16:41:31'),
(10, '1541846491_58_97142.jpg', 58, '2018-11-10 16:41:31'),
(11, '1541846491_58_95347.jpg', 58, '2018-11-10 16:41:31'),
(12, '1541846491_58_42124.jpg', 58, '2018-11-10 16:41:31'),
(13, '1541846499_59_83609.jpg', 59, '2018-11-10 16:41:39'),
(14, '1541846499_59_79794.jpg', 59, '2018-11-10 16:41:39'),
(15, '1541846499_59_64429.jpg', 59, '2018-11-10 16:41:39'),
(16, '1541846499_59_66844.jpg', 59, '2018-11-10 16:41:39'),
(17, '1541846500_60_23171.jpg', 60, '2018-11-10 16:41:40'),
(18, '1541846500_60_39769.jpg', 60, '2018-11-10 16:41:40'),
(19, '1541846536_61_40506.jpg', 61, '2018-11-10 16:42:16'),
(20, '1541846543_62_49025.jpg', 62, '2018-11-10 16:42:23'),
(21, '1541846543_62_83325.jpg', 62, '2018-11-10 16:42:23'),
(22, '1541846543_62_99594.jpg', 62, '2018-11-10 16:42:23'),
(23, '1541846543_62_73316.jpg', 62, '2018-11-10 16:42:23'),
(24, '1541846580_65_79352.jpg', 65, '2018-11-10 16:43:00'),
(25, '1541846580_65_89095.jpg', 65, '2018-11-10 16:43:00'),
(26, '1541846584_66_48164.jpg', 66, '2018-11-10 16:43:04'),
(27, '1541846593_67_95318.jpg', 67, '2018-11-10 16:43:13'),
(28, '1541846593_67_93368.jpg', 67, '2018-11-10 16:43:13'),
(29, '1541846593_67_26007.jpg', 67, '2018-11-10 16:43:13'),
(30, '1541846593_67_50237.jpg', 67, '2018-11-10 16:43:13'),
(31, '1541846595_68_84731.jpg', 68, '2018-11-10 16:43:15'),
(32, '1541846619_71_18631.jpg', 71, '2018-11-10 16:43:39'),
(33, '1541846627_72_29356.jpg', 72, '2018-11-10 16:43:47'),
(34, '1541846627_72_13996.jpg', 72, '2018-11-10 16:43:47'),
(35, '1541846627_72_50559.jpg', 72, '2018-11-10 16:43:47'),
(36, '1541846627_72_62162.jpg', 72, '2018-11-10 16:43:47'),
(37, '1541846627_72_38055.jpg', 72, '2018-11-10 16:43:47'),
(38, '1541846627_72_85506.jpg', 72, '2018-11-10 16:43:47'),
(39, '1541846627_72_36287.jpg', 72, '2018-11-10 16:43:47'),
(40, '1541846627_72_83298.jpg', 72, '2018-11-10 16:43:47'),
(41, '1541846640_73_14110.jpg', 73, '2018-11-10 16:44:00'),
(42, '1541846640_73_13206.jpg', 73, '2018-11-10 16:44:00'),
(43, '1541846640_73_55682.jpg', 73, '2018-11-10 16:44:00'),
(44, '1541846656_76_29309.jpg', 76, '2018-11-10 16:44:16'),
(45, '1541846662_77_25037.jpg', 77, '2018-11-10 16:44:22'),
(46, '1541846667_78_90206.jpg', 78, '2018-11-10 16:44:27'),
(47, '1541846667_78_94165.jpg', 78, '2018-11-10 16:44:27'),
(48, '1541846667_78_14373.jpg', 78, '2018-11-10 16:44:27'),
(49, '1541846667_78_77333.jpg', 78, '2018-11-10 16:44:27'),
(50, '1541846667_78_48149.jpg', 78, '2018-11-10 16:44:27'),
(51, '1541846705_81_24255.jpg', 81, '2018-11-10 16:45:05'),
(52, '1541846705_81_39475.jpg', 81, '2018-11-10 16:45:05'),
(53, '1541846705_81_76551.jpg', 81, '2018-11-10 16:45:05'),
(54, '1541846743_82_22946.jpg', 82, '2018-11-10 16:45:43'),
(55, '1541846762_83_29719.jpg', 83, '2018-11-10 16:46:02'),
(56, '1541846780_84_18989.jpg', 84, '2018-11-10 16:46:20'),
(57, '1541854237_89_91083.jpg', 89, '2018-11-10 18:50:37'),
(58, '1541854731_90_95722.jpg', 90, '2018-11-10 18:58:51'),
(59, '1541854742_91_90217.jpg', 91, '2018-11-10 18:59:02'),
(60, '1541854743_92_46319.jpg', 92, '2018-11-10 18:59:03'),
(61, '1541854792_93_27812.jpg', 93, '2018-11-10 18:59:52'),
(62, '1541933359_94_24453.jpg', 94, '2018-11-11 16:49:19'),
(63, '1541933360_94_93985.jpg', 94, '2018-11-11 16:49:20'),
(64, '1541933360_94_50981.jpg', 94, '2018-11-11 16:49:20'),
(65, '1541933360_94_17271.jpg', 94, '2018-11-11 16:49:20'),
(66, '1541933360_94_21713.jpg', 94, '2018-11-11 16:49:20'),
(67, '1542104283_83_52199.jpg', 83, '2018-11-13 16:18:03'),
(68, '1542104283_80_14678.jpg', 80, '2018-11-13 16:18:03'),
(69, '1542104283_80_87904.jpg', 80, '2018-11-13 16:18:03'),
(70, '1542104283_80_19919.jpg', 80, '2018-11-13 16:18:03'),
(71, '1542458072_95_89135.jpg', 95, '2018-11-17 18:34:32'),
(72, '1542458073_95_85823.jpg', 95, '2018-11-17 18:34:33'),
(73, '1542458073_95_77624.jpg', 95, '2018-11-17 18:34:33'),
(74, '1542458317_96_80582.jpg', 96, '2018-11-17 18:38:37'),
(75, '1542458317_96_14293.jpg', 96, '2018-11-17 18:38:37'),
(76, '1542458318_96_62928.jpg', 96, '2018-11-17 18:38:38'),
(77, '1542458318_96_99318.jpg', 96, '2018-11-17 18:38:38'),
(78, '1542458351_97_82816.jpg', 97, '2018-11-17 18:39:11'),
(79, '1542458352_97_49692.jpg', 97, '2018-11-17 18:39:12'),
(80, '1542458352_97_18303.jpg', 97, '2018-11-17 18:39:12'),
(81, '1542458352_97_67142.jpg', 97, '2018-11-17 18:39:12'),
(82, '1543572693_99_98181.jpg', 99, '2018-11-30 16:11:33'),
(83, '1543572693_99_54694.jpg', 99, '2018-11-30 16:11:33'),
(84, '1543572693_99_43294.jpg', 99, '2018-11-30 16:11:33'),
(85, '1543572693_99_66305.jpg', 99, '2018-11-30 16:11:33'),
(86, '1543572693_99_45580.jpg', 99, '2018-11-30 16:11:33'),
(87, '1543597176_100_46830.jpg', 100, '2018-11-30 22:59:36'),
(88, '1543597246_101_73261.jpg', 101, '2018-11-30 23:00:46'),
(89, '1543597246_101_61636.jpg', 101, '2018-11-30 23:00:46'),
(90, '1543597246_101_25930.jpg', 101, '2018-11-30 23:00:46'),
(91, '1543598109_102_88486.jpg', 102, '2018-11-30 23:15:09');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `id` int(5) NOT NULL,
  `manuname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`id`, `manuname`, `address`, `logo`, `created`) VALUES
(1, 'squere', 'dhaka', '', '2018-11-17 22:08:50'),
(2, 'uniliver', 'Ctg', '', '2018-11-17 22:09:11'),
(3, 'LG', 'Dhaka', '', '2018-11-17 22:09:27');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `order_id`, `product_id`, `quantity`, `price`, `created`, `updated`) VALUES
(1, 1, 84, 1, '1200.00', '2018-11-14 06:34:17', NULL),
(2, 1, 94, 1, '800.00', '2018-11-14 06:34:17', NULL),
(3, 1, 92, 1, '800.00', '2018-11-14 06:34:17', NULL),
(4, 2, 84, 1, '1200.00', '2018-11-14 06:35:36', NULL),
(5, 2, 94, 1, '800.00', '2018-11-14 06:35:36', NULL),
(6, 2, 92, 1, '800.00', '2018-11-14 06:35:36', NULL),
(7, 3, 94, 1, '800.00', '2018-11-14 06:36:04', NULL),
(8, 3, 82, 1, '2500.00', '2018-11-14 06:36:04', NULL),
(9, 3, 78, 1, '40000.00', '2018-11-14 06:36:04', NULL),
(10, 3, 62, 1, '54544554.00', '2018-11-14 06:36:04', NULL),
(11, 3, 59, 1, '54544554.00', '2018-11-14 06:36:04', NULL),
(12, 4, 94, 1, '800.00', '2018-11-14 06:36:38', NULL),
(13, 4, 82, 1, '2500.00', '2018-11-14 06:36:38', NULL),
(14, 4, 78, 1, '40000.00', '2018-11-14 06:36:38', NULL),
(15, 5, 84, 1, '1200.00', '2018-11-14 06:37:08', NULL),
(16, 6, 82, 1, '2500.00', '2018-11-14 06:37:39', NULL),
(17, 6, 84, 1, '1200.00', '2018-11-14 06:37:39', NULL),
(18, 7, 94, 1, '800.00', '2018-11-14 06:40:51', NULL),
(19, 7, 92, 1, '800.00', '2018-11-14 06:40:51', NULL),
(20, 7, 82, 1, '2500.00', '2018-11-14 06:40:51', NULL),
(21, 7, 78, 1, '40000.00', '2018-11-14 06:40:51', NULL),
(22, 8, 93, 1, '600.00', '2018-11-14 06:41:12', NULL),
(23, 8, 92, 1, '800.00', '2018-11-14 06:41:13', NULL),
(24, 9, 94, 1, '800.00', '2018-11-14 06:41:30', NULL),
(25, 9, 93, 1, '600.00', '2018-11-14 06:41:30', NULL),
(26, 9, 92, 1, '800.00', '2018-11-14 06:41:30', NULL),
(27, 9, 84, 1, '1200.00', '2018-11-14 06:41:30', NULL),
(28, 9, 83, 1, '800.00', '2018-11-14 06:41:30', NULL),
(29, 9, 89, 1, '400.99', '2018-11-14 06:41:30', NULL),
(30, 10, 94, 1, '800.00', '2018-11-14 06:42:42', NULL),
(31, 10, 93, 1, '600.00', '2018-11-14 06:42:42', NULL),
(32, 10, 92, 1, '800.00', '2018-11-14 06:42:42', NULL),
(33, 11, 94, 2, '800.00', '2018-11-14 06:43:28', NULL),
(34, 11, 93, 1, '600.00', '2018-11-14 06:43:28', NULL),
(35, 11, 92, 1, '800.00', '2018-11-14 06:43:28', NULL),
(36, 11, 84, 1, '1200.00', '2018-11-14 06:43:28', NULL),
(37, 11, 83, 1, '800.00', '2018-11-14 06:43:28', NULL),
(38, 11, 89, 1, '400.99', '2018-11-14 06:43:28', NULL),
(39, 12, 94, 7, '800.00', '2018-11-14 06:57:10', NULL),
(40, 12, 93, 5, '600.00', '2018-11-14 06:57:10', NULL),
(41, 12, 89, 1, '400.99', '2018-11-14 06:57:10', NULL),
(42, 13, 95, 1, '600.00', '2018-11-18 05:57:31', NULL),
(43, 14, 95, 1, '600.00', '2018-11-18 05:59:18', NULL),
(44, 14, 94, 2, '800.00', '2018-11-18 05:59:18', NULL),
(45, 14, 92, 1, '800.00', '2018-11-18 05:59:18', NULL),
(46, 15, 95, 1, '600.00', '2018-11-18 06:00:53', NULL),
(47, 15, 89, 1, '400.99', '2018-11-18 06:00:53', NULL),
(48, 15, 93, 1, '600.00', '2018-11-18 06:00:53', NULL),
(49, 15, 90, 1, '0.00', '2018-11-18 06:00:53', NULL),
(50, 16, 97, 2, '800.00', '2018-11-18 06:01:25', NULL),
(51, 16, 94, 1, '800.00', '2018-11-18 06:01:25', NULL),
(52, 16, 95, 1, '600.00', '2018-11-18 06:01:25', NULL),
(53, 17, 91, 1, '60000.00', '2018-11-18 06:18:19', NULL),
(54, 17, 97, 1, '800.00', '2018-11-18 06:18:19', NULL),
(55, 17, 95, 1, '600.00', '2018-11-18 06:18:19', NULL),
(56, 17, 94, 1, '800.00', '2018-11-18 06:18:19', NULL),
(57, 18, 94, 1, '800.00', '2018-11-18 06:22:51', NULL),
(58, 18, 93, 1, '600.00', '2018-11-18 06:22:51', NULL),
(59, 19, 94, 1, '800.00', '2018-11-18 06:25:21', NULL),
(60, 19, 93, 1, '600.00', '2018-11-18 06:25:21', NULL),
(61, 20, 0, 3, '124.00', '2018-11-23 11:03:44', NULL),
(62, 20, 0, 2, '0.00', '2018-11-23 11:03:44', NULL),
(63, 20, 0, 1, '800.00', '2018-11-23 11:03:44', NULL),
(64, 20, 84, 1, '1200.00', '2018-11-23 11:03:44', NULL),
(65, 20, 93, 1, '600.00', '2018-11-23 11:03:44', NULL),
(66, 21, 102, 1, '22.00', '2018-12-27 08:51:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_type` int(11) NOT NULL,
  `trx_id` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `voucher` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `payment_type`, `trx_id`, `total`, `voucher`, `comments`, `created`, `updated`) VALUES
(1, 2, 1, 'mamun2800', '2800.00', 'no coupon', 'Any Extra Information', '2018-11-14 06:34:17', NULL),
(2, 2, 1, 'mamun2800', '2800.00', 'no coupon', 'Any Extra Information', '2018-11-14 06:35:36', NULL),
(3, 2, 4, 'asdf123', '99999999.99', 'astam', 'market by tanzir', '2018-11-14 06:36:04', NULL),
(4, 2, 1, '12XA345A6', '43300.00', '10A', 'Shopped by Touhid', '2018-11-14 06:36:38', NULL),
(5, 2, 1, '233', '1200.00', 'no ', 'Any Extra Information hh', '2018-11-14 06:37:08', NULL),
(6, 2, 2, '', '3700.00', '', 'nedd fast delevery', '2018-11-14 06:37:39', NULL),
(7, 2, 3, 'asdf', '44100.00', 'as', 'asf', '2018-11-14 06:40:51', NULL),
(8, 2, 2, '101', '1400.00', 'use', 'jum', '2018-11-14 06:41:12', NULL),
(9, 2, 1, 'tax1010', '4600.99', '100', 'best product', '2018-11-14 06:41:30', NULL),
(10, 2, 1, 'as121', '2200.00', '10s', 'sofol', '2018-11-14 06:42:42', NULL),
(11, 2, 1, 'tax1010', '5400.99', '1010', 'Any Extra Information', '2018-11-14 06:43:28', NULL),
(12, 2, 1, '', '9000.99', '', 'Any Extra Information', '2018-11-14 06:57:09', NULL),
(13, 2, 2, '112233', '600.00', '', '', '2018-11-18 05:57:31', NULL),
(14, 2, 2, '125', '3000.00', 'teee', 'afzal habib', '2018-11-18 05:59:18', NULL),
(15, 2, 2, '120', '1600.99', '1254', 'taratari cai', '2018-11-18 06:00:53', NULL),
(16, 2, 1, '1223343', '3000.00', '', '', '2018-11-18 06:01:25', NULL),
(17, 2, 1, '', '62200.00', '', '', '2018-11-18 06:18:19', NULL),
(18, 2, 1, '', '1400.00', '', '', '2018-11-18 06:22:51', NULL),
(19, 2, 1, '', '1400.00', '', '', '2018-11-18 06:25:21', NULL),
(20, 2, 1, '', '2972.00', '', '', '2018-11-23 11:03:44', NULL),
(21, 2, 2, '', '22.00', '', '', '2018-12-27 08:51:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `catname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pprice` decimal(10,2) NOT NULL,
  `sprice` decimal(10,2) NOT NULL,
  `vat` float(5,2) NOT NULL,
  `quantity` decimal(11,1) NOT NULL,
  `new` tinyint(4) NOT NULL DEFAULT '1',
  `hot` tinyint(4) NOT NULL DEFAULT '0',
  `manid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `created` TIMESTAMP,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `catname`, `name`, `sku`, `details`, `pprice`, `sprice`, `vat`, `quantity`, `new`, `hot`, `manid`, `userid`, `created`, `updated`) VALUES
(55, '', 'idb', 'sar-12355', 'asdfs sfd sdaf', '500.00', '3000.00', 0.15, '100.0', 1, 1, 1, 1, '2018-11-10 16:31:59', NULL),
(56, '', 'Saree3', 'saree3-123', 'some details', '566.00', '677.00', 0.15, '50.0', 1, 1, 1, 1, '2018-11-10 16:37:06', NULL),
(57, '', 't-Shirt', 'af', 'tanzir', '1500.00', '1800.00', 0.25, '4.0', 1, 0, 1, 1, '2018-11-10 16:41:25', NULL),
(58, '', 'shirt', '145', 'sghg ty try', '300.00', '350.00', 0.15, '50.0', 1, 0, 1, 1, '2018-11-10 16:41:31', NULL),
(59, '', 'car', 'bb', 'jump', '8555.00', '54544554.00', 0.05, '100.0', 1, 0, 1, 1, '2018-11-10 16:41:39', NULL),
(60, '', 'htmk cass', '125mn', 'Onek juta bedis', '500.00', '560.00', 0.15, '200.0', 1, 0, 1, 1, '2018-11-10 16:41:40', NULL),
(61, '', 'light', '50', 'gf h yh ', '250.00', '290.00', 0.15, '50.0', 1, 0, 1, 1, '2018-11-10 16:42:16', NULL),
(62, '', 'car', 'gg', 'sdsdgsd', '22222.00', '54544554.00', 0.05, '1000.0', 1, 0, 1, 1, '2018-11-10 16:42:23', NULL),
(64, '', 'Dell Computer', 'fgfg67', 'COmputer', '50000.00', '0.00', 0.00, '0.0', 1, 0, 1, 1, '2018-11-10 16:42:46', NULL),
(65, '', '', 'qakjlton', 'jsakdfhjwierjweiohio', '0.00', '0.00', 999.99, '120.0', 1, 0, 1, 1, '2018-11-10 16:43:00', NULL),
(66, '', 'bmw', '454.oio.iu.4545', 'ghj', '952.00', '6332.00', 0.00, '0.0', 1, 0, 1, 1, '2018-11-10 16:43:04', NULL),
(67, '', 'car', 'hg', 'gfdgdfgfdsg', '952200.00', '5454.00', 0.00, '201.0', 1, 0, 1, 1, '2018-11-10 16:43:13', NULL),
(68, '', 'jip', '5', 'alion', '30000.00', '35000.00', 0.15, '2.0', 1, 0, 1, 1, '2018-11-10 16:43:15', NULL),
(71, '', '3 pice', '3pice-red', '3pice-red', '700.00', '2000.00', 15.00, '100.0', 1, 0, 1, 1, '2018-11-10 16:43:39', NULL),
(72, '', 'Mosuse', 'fgf7', 'Mouse', '500.00', '550.00', 0.25, '25.0', 1, 1, 1, 1, '2018-11-10 16:43:47', NULL),
(73, '', 'coorroollaa', 'shofol', 'Car for tanzir with driver', '1500000.00', '1560000.00', 0.50, '2.0', 1, 0, 1, 1, '2018-11-10 16:44:00', NULL),
(76, '', 'htomlaiieljikd', 'alalke ', 'kjsdhfio kajhfkwi kjdifjai kdjfiek ', '125.00', '12354.00', 0.00, '12564522.0', 1, 0, 1, 1, '2018-11-10 16:44:16', NULL),
(77, '', 'rice cooker', '212132.nbnb0nn2', '10 ltr', '546.00', '4565.00', 0.15, '32342.0', 1, 0, 1, 1, '2018-11-10 16:44:22', NULL),
(78, '', 'c ar +23', 'jump', 'automujmok', '50000.00', '40000.00', 0.05, '100.0', 1, 0, 1, 1, '2018-11-10 16:44:27', NULL),
(80, '', 'MotherBoard 2', 'ma3434', 'A motherboard (sometimes alternatively known as the main circuit board, system board, baseboard, planar board or logic board,[1] or colloquially, a mobo) is the main printed circuit board (PCB) found in general purpose microcomputers and other expandable systems. It holds and allows communication between many of the crucial electronic components of a system, such as the central processing unit (CPU) and memory, and provides connectors for other peripherals. Unlike a backplane, a motherboard usually contains significant sub-systems such as the central processor, the chipset\'s input/output and memory controllers, interface connectors, and other components integrated for general purpose use and applications.', '10000.00', '12000.00', 0.15, '5.0', 1, 0, 1, 1, '2018-11-10 16:44:47', NULL),
(81, '', 'fgdgwerte', 'sdfsedfsd', 'fdsfsedfsdaf', '0.00', '0.00', 0.00, '125.0', 1, 0, 1, 1, '2018-11-10 16:45:05', NULL),
(82, '', 'Kurti', 'Kurti12', 'Kurti12', '1000.00', '2500.00', 0.15, '1000.0', 1, 1, 1, 1, '2018-11-10 16:45:43', NULL),
(83, '', '7 no bus er helper nura helper', '655nvmb', 'khali ghumai', '-600.00', '-800.00', -0.15, '545.0', 1, 0, 1, 1, '2018-11-10 16:46:02', NULL),
(84, '', 'Ball', '541rty', 'Exercise ball.', '10000.00', '1200.00', 0.15, '3.0', 1, 0, 1, 1, '2018-11-10 16:46:20', NULL),
(89, '', 'Car', 'as', 'ldajf', '300.99', '400.99', 0.25, '3.0', 1, 1, 1, 1, '2018-11-10 18:50:36', NULL),
(90, '', 'hnjghm', 'nmnmn', 'nmnmm', '0.00', '0.00', 0.15, '55.0', 1, 1, 1, 1, '2018-11-10 18:58:51', NULL),
(91, '', '3 pice', '3 pice-Green', '3 pice-Green', '5000.00', '60000.00', 0.15, '1000.0', 1, 1, 1, 1, '2018-11-10 18:59:02', NULL),
(92, '', 'Toy', 'saas_6464_h', 'toy', '500.00', '800.00', 0.15, '10.0', 1, 1, 1, 1, '2018-11-10 18:59:03', NULL),
(93, '', 'flower', '01', 'A flower, sometimes known as a bloom or blossom, is the reproductive structure found in flowering plants (plants of the division Magnoliophyta, also called angiosperms). The biological function of a flower is to effect reproduction, usually by providing a mechanism for the union of sperm with eggs. Flowers may facilitate outcrossing (fusion of sperm and eggs from different individuals in a population) or allow selfing (fusion of sperm and egg from the same flower). Some flowers produce diaspores without fertilization (parthenocarpy). Flowers contain sporangia and are the site where gametophytes develop. Many flowers have evolved to be attractive to animals, so as to cause them to be vectors for the transfer of pollen. After fertilization, the ovary of the flower develops into fruit containing seeds.A flower, sometimes known as a bloom or blossom, is the reproductive structure found in flowering plants (plants of the division Magnoliophyta, also called angiosperms). The biological function of a flower is to effect reproduction, usually by providing a mechanism for the union of sperm with eggs. Flowers may facilitate outcrossing (fusion of sperm and eggs from different individuals in a population) or allow selfing (fusion of sperm and egg from the same flower). Some flowers produce diaspores without fertilization (parthenocarpy). Flowers contain sporangia and are the site where gametophytes develop. Many flowers have evolved to be attractive to animals, so as to cause them to be vectors for the transfer of pollen. After fertilization, the ovary of the flower develops into fruit containing seeds.', '500.00', '600.00', 0.15, '15.0', 1, 1, 1, 1, '2018-11-10 18:59:52', NULL),
(94, '', 'Iphone', 'res1234577', 'The table below shows all Font Awesome Web Application icons: ... fa fa-american-sign-language-interpreting, Try it ... fa fa-assistive-listening-systems,', '700.00', '800.00', 0.15, '50.0', 1, 1, 1, 1, '2018-11-11 16:49:19', NULL),
(95, '', 'aa', 'asdpp99', 'some content', '500.00', '600.00', 0.15, '50.0', 1, 1, 1, 0, '2018-11-17 18:34:32', NULL),
(97, '', 'Headphone', '12_A_5454454', '\r\nHeadphones on a stand\r\nHeadphones (or head-phones in the early days of telephony and radio) are a pair of small loudspeaker drivers worn on or around the head over a user\'s ears. They are electroacoustic transducers, which convert an electrical signal to a corresponding sound. Headphones let a single user listen to an audio source privately, in contrast to a loudspeaker, which emits sound into the open air for anyone nearby to hear. ', '450.00', '800.00', 0.15, '200.0', 1, 1, 1, 1, '2018-11-17 18:39:11', NULL),
(98, '', '', '', '', '0.00', '0.00', 0.00, '0.0', 1, 1, 1, 1, '2018-11-18 18:27:47', NULL),
(100, '5', 'laks', '12-85', 'fdgf gdfgdfg sdfg gdf', '120.00', '12555.00', 2.00, '120.0', 1, 0, 1, 1, '2018-11-30 22:59:36', NULL),
(101, '3', 'malllta', 'nu-q', 'jhio dsfhjsdhf shhoisdf sioiosafoh sdifosahfosh isdfoisoihsda h sdfsdoi', '120.00', '1520.00', 1.00, '120.0', 1, 0, 1, 1, '2018-11-30 23:00:46', NULL),
(102, '2', 'sddfsdaf', 'sd', 'sdfdsafsadf', '0.00', '22.00', 1.00, '1.0', 0, 0, 1, 1, '2018-11-30 23:15:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `saddress` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `saddress_thana` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `saddress_dist` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `saddress_div` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `saddress_country` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `baddress` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `baddress_thana` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `baddress_dist` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `baddress_div` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `baddress_country` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `saddress`, `saddress_thana`, `saddress_dist`, `saddress_div`, `saddress_country`, `baddress`, `baddress_thana`, `baddress_dist`, `baddress_div`, `baddress_country`, `created`, `updated`) VALUES
(4, 2, 'Taltola, Mirpur, Mirpur', 'Mirpur', 'Dhaka', 'Dhaka', 'Bangladesh', 'Taltola, Mirpur, Mirpur', 'Mirpur', 'Dhaka', 'Dhaka', 'Bangladesh', '2018-11-14 06:15:03', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(2) NOT NULL,
  `created` TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `password`, `phone`, `role`, `created`) VALUES
(1, 'IDB BISEW', '', 'admin1234@gmail.com', '$2y$10$fnjGFbUW/Yb6yXTDAj9UOefqXBfpuApIX4QbMUBvLXA9IGt9', '', 1, '2018-10-18 16:02:13'),
(2, 'Mr.', 'user', 'user@gmail.com', '$2y$10$Oh1c5.ufmomA61YgWLicsepaW6y2GnV/oekzc3lYpSsVP8X4Ewfvy', '321654987', 2, '2018-11-13 16:30:09'),
(7, 'masum billah', 'bd', 'masumidb2018@gmail.com', '$2y$10$JTpK18/z38wP/aCdQRS7Peyo4rtn0SrWObpJxGGk..vrI6N6u371i', '01635398508', 2, '0000-00-00 00:00:00'),
(8, 'Touhidunnabi', 'Sarkar', 'touhi13@gmail.com', '$2y$10$aI.ihOnOno3yqUq0Tm3GTORa6tnvcNuSrbi8vPKNNgzM/UF27FZA6', '01723604950', 2, '0000-00-00 00:00:00'),
(10, 'jaman', 'rokon', 'afzalhabib73@gmail.com', '$2y$10$F79Z/tTBDCdK1FWAvkLb6.F9ZQGzSDAh9NSeBPMpHroNPLe1o7why', '01759960121', 2, '0000-00-00 00:00:00'),
(11, 'Tanzir', 'Nur', 'tanzirnur@gmail.com', '$2y$10$TmKZIijGWtr/zYwFyHHXHOBHZGKz1SfY6Rjses/VUEDdyzZLQ53yO', '01674437137', 2, '0000-00-00 00:00:00'),
(12, 'Aysha', 'khanom', 'ashamony305@gmail.com', '$2y$10$OOBm9z6JgXxLoyKCXclGN.X9wIEgUJvRl9NnCNGXrAUihjkDKaCKC', '01866050531', 2, '0000-00-00 00:00:00'),
(13, 'Nazmoon', 'Naher', 'netu64700@gmailo.com', '$2y$10$zOtAajPpGiny1dq80gREy.3f0/RtSdFk5VIq9jZvKTjhEVtynsF1i', '01913167989', 2, '0000-00-00 00:00:00'),
(14, 'mou', 'Mou', 'fatema@gmail.com', '$2y$10$9r5v6r1HLhMzHyi5C1P8n.uNwtgxb0DVygO6Ii02jjyFI833LmrLm', '016547891', 2, '0000-00-00 00:00:00'),
(15, 'Hasib', 'Uzzaman', 'hasib.2010.hu@gmail.com', '$2y$10$1EdY67QKwQXyQQfCamXa6.05avIDjdfLO4Wk/tYK1.8S4LffWq13i', '01738356180', 2, '0000-00-00 00:00:00'),
(16, 'Munzur', 'Rahman', 'sagorgub13@gmail.com', '$2y$10$cw0wTIZmetBV1TbIcRwRgeUOkGM1iSCulx7sf.lJuIV.483/Ok/eG', '1205', 2, '0000-00-00 00:00:00'),
(17, 'Zahidul', 'islam', 'mjahid1990@gmail.com', '$2y$10$8tgbjb0lf.CqOm6QZNLOjeyw8/X2EdKSvct8iuVQriW3pQdJrlqcG', '01739898764', 1, '0000-00-00 00:00:00'),
(19, 'himu', 'khan', 'himu299089@gmail.com', '$2y$10$TNUXsNQRAcPauCSgQvNLZev6XAA4QGPL1twhGPH0KBAahQYpkakp.', '01773515369', 2, '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories_products`
--
ALTER TABLE `categories_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `skuunique` (`sku`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories_products`
--
ALTER TABLE `categories_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
