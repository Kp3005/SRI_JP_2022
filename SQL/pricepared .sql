-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2022 at 04:35 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pricepared`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(255) NOT NULL,
  `c_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `store` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `l_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `c_id`, `name`, `price`, `image`, `quantity`, `store`, `location`, `l_date`) VALUES
(15, 1, 'Organic India White Rice Basmati 1kg', 400, '2.webp', 1, 'Reliance SMART', 'Naroda', '2022-06-29 11:36:56'),
(16, 1, 'Himalayan Natives Premium Basmati Rice 1kg', 350, '4.webp', 1, 'D-mart', 'Motera', '2022-06-29 11:36:59');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `PID` int(255) NOT NULL,
  `p_category` varchar(255) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`PID`, `p_category`, `p_name`, `p_img`) VALUES
(5, 'Rice', 'India Gate Basmati Super Long Grain Rice 1kg', '5.webp'),
(7, 'Wheat', 'Organic Premium Wheat Atta 1kg', '7.webp'),
(8, 'Wheat', 'Amul Whole Wheat Atta, 1 kg', '8.webp'),
(9, 'Wheat', '24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch', '9.webp'),
(10, 'Wheat', 'BB Royal Organic - Whole Wheat Atta/Ghau No Lot, 1 kg', '10.webp'),
(11, 'Dal', 'Tata Sampann Toor Dal/Arhar Dal, 1 kg Pouch', '11.webp'),
(12, 'Dal', 'Rentio RPROTO - CLASSIC TOOR DAL, 1 Kg', '12.webp'),
(13, 'Dal', '24 Mantra Organic Toor Dal, 1 kg Pouch', '13.webp'),
(14, 'Dal', 'Organic Tattva Arhar (Tur) Dal, 1 kg Pouch', '14.webp'),
(15, 'Dal', 'BIOAYURVEDA Arhar Dal, 1kg', '15.webp'),
(16, 'Ghee', 'Fresho Organic Cow Desi Ghee/Tuppa, 500 ml', '16.webp'),
(17, 'Ghee', 'Organic Cow Ghee 500 ml', '17.png'),
(18, 'Ghee', 'Aashirvaad Svasti Pure Cow Ghee 500ml Ceka', '18.png'),
(19, 'Ghee', 'Himalayan Natives A2 Gir cow Bilona ghee - 500ML', '19.webp'),
(20, 'Ghee', 'Amul Pure Ghee, 500ml', '20.png'),
(21, 'Oils', 'Sundrop Oil - Heart, 1 L Pouch', '21.webp'),
(22, 'Oils', 'Saffola Active Refined Cooking oil | Blended Rice Bran & SoyaBean oil, 1 L Pouch', '22.png'),
(23, 'Oils', 'Emami Healthy & Tasty - Refined Sunflower Oil, 1 L Pouch', '23.png'),
(24, 'Oils', 'Fortune Refined - Cotton Seed Oil, 1 L', '24.png'),
(25, 'Oils', '24 Mantra Organic Expeller Pressed - Sunflower Oil, 1 L Bottle', '25.webp'),
(28, 'Oils', 'Oleev Active Olive Oil with Energocules, 1 L Bottle', '26.png'),
(37, 'Salt', 'Aashirvaad Salt - Iodised 1 Kg', '32.webp'),
(39, 'Rice', 'Organic India White Rice Basmati 1kg', '2.webp'),
(40, 'Rice', 'Daawat Brown Rice 1kg', '3.webp'),
(41, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', '4.webp'),
(42, 'Wheat', 'Aashirvaad Atta with Multigrains 1kg', '6.webp'),
(43, 'Oils', 'Saffola Aura Extra Virgin Olive Oil - 1L', '27.webp'),
(44, 'Oils', 'Mature Harvest Olive oil', '28.jpg'),
(45, 'Oils', 'Figaro Olive Oil-1Ltr', '29.webp'),
(46, 'Oils', 'Del Monte Extra Virgin Olive Oil PET, 1L', '30.jpg'),
(47, 'Salt', 'Patanjali Namak, 1 kg', '31.webp'),
(48, 'Salt', 'Tata Salt, 1kg Pack', '33.jpg'),
(49, 'Salt', 'Catch Rock Salt 1Kg', '34.webp'),
(50, 'Salt', 'TATA Salt Rock Salt, 1kg', '35.webp'),
(51, 'Sugar', 'Fortune Sugar, 1 kg', '36.webp'),
(52, 'Sugar', 'Nourish Sugar – 1 Kg', '37.webp'),
(53, 'Sugar', 'Pure&Sure Organic Sugar, 1kg', '38.webp'),
(54, 'Sugar', 'Conscious Food Golden Sugar 1kg', '39.webp'),
(55, 'Sugar', 'Madhur Sugar, 1Kg', '40.webp'),
(56, 'Tea', 'Red Label Tea - Natural Care, 1 kg', '41.webp'),
(57, 'Tea', 'Cambridge Tea Party Masala Chai Tea, 1 Kg', '42.webp'),
(58, 'Tea', 'Society Premium Pure Assam CTC Leaf Tea, 1 Kg Pouch', '43.webp'),
(59, 'Tea', 'Wagh Bakri Premium Leaf Tea Poly Pack, 1kg', '44.jpg'),
(60, 'Tea', 'Tata Tea Premium - The Countrys Tea 1 Kg', '45.webp');

-- --------------------------------------------------------

--
-- Table structure for table `categoryhistory`
--

CREATE TABLE `categoryhistory` (
  `PID` int(255) NOT NULL,
  `p_category` varchar(255) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_img` varchar(255) NOT NULL,
  `last_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categoryhistory`
--

INSERT INTO `categoryhistory` (`PID`, `p_category`, `p_name`, `p_img`, `last_date`, `status`) VALUES
(13, 'Dal', '24 Mantra Organic Toor Dal, 1 kg Pouch', '13.webp', '2022-06-28 05:36:48', 0),
(15, 'Dal', 'BIOAYURVEDA Arhar Dal, 1kg', '15.webp', '2022-06-28 05:36:48', 0),
(14, 'Dal', 'Organic Tattva Arhar (Tur) Dal, 1 kg Pouch', '14.webp', '2022-06-28 05:36:48', 0),
(12, 'Dal', 'Rentio RPROTO - CLASSIC TOOR DAL, 1 Kg', '12.webp', '2022-06-28 05:36:48', 0),
(11, 'Dal', 'Tata Sampann Toor Dal/Arhar Dal, 1 kg Pouch', '11.webp', '2022-06-28 05:36:48', 0),
(18, 'Ghee', 'Aashirvaad Svasti Pure Cow Ghee 500ml Ceka', '18.png', '2022-06-28 05:36:48', 0),
(20, 'Ghee', 'Amul Pure Ghee, 500ml', '20.png', '2022-06-28 05:36:48', 0),
(16, 'Ghee', 'Fresho Organic Cow Desi Ghee/Tuppa, 500 ml', '16.webp', '2022-06-28 05:36:48', 0),
(19, 'Ghee', 'Himalayan Natives A2 Gir cow Bilona ghee - 500ML', '19.webp', '2022-06-28 05:36:48', 0),
(17, 'Ghee', 'Organic Cow Ghee 500 ml', '17.png', '2022-06-28 05:36:48', 0),
(25, 'Oils', '24 Mantra Organic Expeller Pressed - Sunflower Oil, 1 L Bottle', '25.webp', '2022-06-28 05:36:48', 0),
(23, 'Oils', 'Emami Healthy & Tasty - Refined Sunflower Oil, 1 L Pouch', '23.png', '2022-06-28 05:36:48', 0),
(24, 'Oils', 'Fortune Refined - Cotton Seed Oil, 1 L', '24.png', '2022-06-28 05:36:48', 0),
(32, 'Oils', 'Mature Harvest Olive oil', '28.jpg', '2022-06-28 05:36:48', 0),
(33, 'Oils', 'Mature Harvest Olive oil 1L', '28.jpg', '2022-06-28 05:57:31', 1),
(28, 'Oils', 'Oleev Active Olive Oil with Energocules, 1 L Bottle', '26.png', '2022-06-28 05:36:48', 0),
(22, 'Oils', 'Saffola Active Refined Cooking oil | Blended Rice Bran & SoyaBean oil, 1 L Pouch', '22.png', '2022-06-28 05:36:48', 0),
(31, 'Oils', 'Saffola Aura Extra Virgin Olive Oil - 1L', '27.webp', '2022-06-28 05:36:48', 0),
(21, 'Oils', 'Sundrop Oil - Heart, 1 L Pouch', '21.webp', '2022-06-28 05:36:48', 0),
(4, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', '4.webp', '2022-06-28 05:36:48', 0),
(5, 'Rice', 'India Gate Basmati Super Long Grain Rice 1kg', '5.webp', '2022-06-28 05:36:48', 0),
(2, 'Rice', 'Organic India White Rice Basmati 1kg', '2.webp', '2022-06-28 05:36:48', 0),
(36, 'Salt', 'Patanjali Namak, 1 kg', '31.webp', '2022-06-28 06:18:00', 0),
(9, 'Wheat', '24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch', '9.webp', '2022-06-28 05:36:48', 0),
(8, 'Wheat', 'Amul Whole Wheat Atta, 1 kg', '8.webp', '2022-06-28 05:36:48', 0),
(3, 'Wheat', 'Ashirvad Aata 1kg', '8.webp', '2022-06-28 05:36:48', 0),
(10, 'Wheat', 'BB Royal Organic - Whole Wheat Atta/Ghau No Lot, 1 kg', '10.webp', '2022-06-28 05:36:48', 0),
(6, 'Wheat', 'India Gate Basmati Super Long Grain Rice 1kg', '6.webp', '2022-06-28 05:36:48', 0),
(7, 'Wheat', 'Organic Premium Whole Wheat Atta 1kg', '7.webp', '2022-06-28 05:36:48', 0),
(7, 'Wheat', 'Organic Premium Wheat Atta 1kg', '7.webp', '2022-06-28 06:25:42', 1),
(6, 'Wheat', 'India Gate Basmati Super Long Grain Rice 1kg', '6.webp', '2022-06-28 06:33:21', 2),
(37, 'Salt', 'Aashirvaad Salt - Iodised 1 Kg', '32.webp', '2022-06-29 12:09:53', 0),
(38, 'Rice', 'Daawat Traditional Basmati Rice 1kg', '3.webp', '2022-07-11 17:32:31', 0),
(2, 'Rice', 'Organic India White Rice Basmati 1kg', '2.webp', '2022-07-22 13:01:32', 2),
(3, 'Wheat', 'Ashirvad Aata 1kg', '8.webp', '2022-07-22 13:01:36', 2),
(4, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', '4.webp', '2022-07-22 13:01:40', 2),
(39, 'Rice', 'Organic India White Rice Basmati 1kg', '2.webp', '2022-07-22 13:08:24', 0),
(40, 'Rice', 'Daawat Brown Rice 1kg', '3.webp', '2022-07-22 13:08:59', 0),
(38, '', 'Daawat Traditional Basmati Rice 1kg', '1.webp', '2022-07-22 13:14:01', 1),
(40, 'Rice', 'Daawat Brown Rice 1kg', '1.webp', '2022-07-22 13:18:08', 1),
(40, 'Rice', 'Daawat Brown Rice 1kg', '3.webp', '2022-07-22 13:18:28', 1),
(41, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', '4.webp', '2022-07-22 13:19:12', 0),
(42, 'Wheat', 'Aashirvaad Atta with Multigrains 1kg', '6.webp', '2022-07-22 13:22:01', 0),
(43, 'Oils', 'Saffola Aura Extra Virgin Olive Oil - 1L', '27.webp', '2022-07-22 13:23:52', 0),
(44, 'Oils', 'Mature Harvest Olive oil', '28.jpg', '2022-07-22 13:24:14', 0),
(45, 'Oils', 'Figaro Olive Oil-1Ltr', '29.webp', '2022-07-22 13:24:34', 0),
(46, 'Oils', 'Del Monte Extra Virgin Olive Oil PET, 1L', '30.jpg', '2022-07-22 13:24:56', 0),
(47, 'Salt', 'Patanjali Namak, 1 kg', '31.webp', '2022-07-22 13:25:36', 0),
(48, 'Salt', 'Tata Salt, 1kg Pack', '33.jpg', '2022-07-22 13:25:57', 0),
(49, 'Salt', 'Catch Rock Salt 1Kg', '34.webp', '2022-07-22 13:26:20', 0),
(50, 'Salt', 'TATA Salt Rock Salt, 1kg', '35.webp', '2022-07-22 13:27:28', 0),
(51, 'Sugar', 'Fortune Sugar, 1 kg', '36.webp', '2022-07-22 13:29:17', 0),
(52, 'Sugar', 'Nourish Sugar – 1 Kg', '37.webp', '2022-07-22 13:29:38', 0),
(53, 'Sugar', 'Pure&Sure Organic Sugar, 1kg', '38.webp', '2022-07-22 13:30:03', 0),
(54, 'Sugar', 'Conscious Food Golden Sugar 1kg', '39.webp', '2022-07-22 13:30:25', 0),
(55, 'Sugar', 'Madhur Sugar, 1Kg', '40.webp', '2022-07-22 13:30:47', 0),
(56, 'Tea', 'Red Label Tea - Natural Care, 1 kg', '41.webp', '2022-07-22 13:31:27', 0),
(57, 'Tea', 'Cambridge Tea Party Masala Chai Tea, 1 Kg', '42.webp', '2022-07-22 13:31:45', 0),
(58, 'Tea', 'Society Premium Pure Assam CTC Leaf Tea, 1 Kg Pouch', '43.webp', '2022-07-22 13:32:10', 0),
(59, 'Tea', 'Wagh Bakri Premium Leaf Tea Poly Pack, 1kg', '44.jpg', '2022-07-22 13:32:33', 0),
(60, 'Tea', 'Tata Tea Premium - The Countrys Tea 1 Kg', '45.webp', '2022-07-22 13:33:05', 0),
(38, 'Rice', 'Daawat Traditional Basmati Rice 1kg', '1.webp', '2022-07-22 13:42:13', 2);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `msg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `msg`) VALUES
('Parita', '201901236@daiict.ac.in', 'Hello , I just want to know whether online delivery is available or not?'),
('Madhvi', 'madhvi111patel@gmail.com', 'Can we use the token even after its expiry date?');

-- --------------------------------------------------------

--
-- Table structure for table `current`
--

CREATE TABLE `current` (
  `mall_id` int(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `last_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `current`
--

INSERT INTO `current` (`mall_id`, `category`, `product_name`, `price`, `last_date`) VALUES
(1, 'Wheat', 'Organic Premium Wheat Atta 1kg', 375, '2022-06-28 16:40:09'),
(1, 'Wheat', 'Amul Whole Wheat Atta, 1 kg', 0, '2022-06-26 06:41:19'),
(1, 'Wheat', '24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch', 400, '2022-06-28 16:40:37'),
(1, 'Wheat', 'BB Royal Organic - Whole Wheat Atta/Ghau No Lot, 1 kg', 450, '2022-06-28 16:40:46'),
(1, 'Dal', 'Tata Sampann Toor Dal/Arhar Dal, 1 kg Pouch', 155, '2022-07-22 13:43:12'),
(1, 'Dal', 'Rentio RPROTO - CLASSIC TOOR DAL, 1 Kg', 180, '2022-07-22 13:43:21'),
(1, 'Dal', '24 Mantra Organic Toor Dal, 1 kg Pouch', 260, '2022-07-22 13:43:30'),
(1, 'Dal', 'Organic Tattva Arhar (Tur) Dal, 1 kg Pouch', 270, '2022-07-22 13:43:40'),
(1, 'Dal', 'BIOAYURVEDA Arhar Dal, 1kg', 165, '2022-07-22 13:43:54'),
(1, 'Ghee', 'Fresho Organic Cow Desi Ghee/Tuppa, 500 ml', 0, '2022-06-26 06:41:19'),
(1, 'Ghee', 'Organic Cow Ghee 500 ml', 649, '2022-07-22 13:44:26'),
(1, 'Ghee', 'Aashirvaad Svasti Pure Cow Ghee 500ml Ceka', 286, '2022-07-22 13:44:37'),
(1, 'Ghee', 'Himalayan Natives A2 Gir cow Bilona ghee - 500ML', 958, '2022-07-22 13:44:48'),
(1, 'Ghee', 'Amul Pure Ghee, 500ml', 255, '2022-07-22 13:44:58'),
(1, 'Oils', 'Sundrop Oil - Heart, 1 L Pouch', 227, '2022-07-22 13:45:27'),
(1, 'Oils', 'Saffola Active Refined Cooking oil | Blended Rice Bran & SoyaBean oil, 1 L Pouch', 221, '2022-07-22 13:45:36'),
(1, 'Oils', 'Emami Healthy & Tasty - Refined Sunflower Oil, 1 L Pouch', 209, '2022-07-22 13:47:06'),
(1, 'Oils', 'Fortune Refined - Cotton Seed Oil, 1 L', 180, '2022-07-22 13:47:17'),
(1, 'Oils', '24 Mantra Organic Expeller Pressed - Sunflower Oil, 1 L Bottle', 335, '2022-07-22 13:47:26'),
(1, 'Oils', 'Oleev Active Olive Oil with Energocules, 1 L Bottle', 275, '2022-07-22 13:47:37'),
(2, 'Wheat', 'Organic Premium Wheat Atta 1kg', 0, '2022-06-28 06:25:42'),
(2, 'Wheat', 'Amul Whole Wheat Atta, 1 kg', 0, '2022-06-26 06:41:19'),
(2, 'Wheat', '24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(2, 'Wheat', 'BB Royal Organic - Whole Wheat Atta/Ghau No Lot, 1 kg', 0, '2022-06-26 06:41:19'),
(2, 'Dal', 'Tata Sampann Toor Dal/Arhar Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(2, 'Dal', 'Rentio RPROTO - CLASSIC TOOR DAL, 1 Kg', 0, '2022-06-26 06:41:19'),
(2, 'Dal', '24 Mantra Organic Toor Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(2, 'Dal', 'Organic Tattva Arhar (Tur) Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(2, 'Dal', 'BIOAYURVEDA Arhar Dal, 1kg', 0, '2022-06-26 06:41:19'),
(2, 'Ghee', 'Fresho Organic Cow Desi Ghee/Tuppa, 500 ml', 0, '2022-06-26 06:41:19'),
(2, 'Ghee', 'Organic Cow Ghee 500 ml', 0, '2022-06-26 06:41:19'),
(2, 'Ghee', 'Aashirvaad Svasti Pure Cow Ghee 500ml Ceka', 0, '2022-06-26 06:41:19'),
(2, 'Ghee', 'Himalayan Natives A2 Gir cow Bilona ghee - 500ML', 0, '2022-06-26 06:41:19'),
(2, 'Ghee', 'Amul Pure Ghee, 500ml', 0, '2022-06-26 06:41:19'),
(2, 'Oils', 'Sundrop Oil - Heart, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(2, 'Oils', 'Saffola Active Refined Cooking oil | Blended Rice Bran & SoyaBean oil, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(2, 'Oils', 'Emami Healthy & Tasty - Refined Sunflower Oil, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(2, 'Oils', 'Fortune Refined - Cotton Seed Oil, 1 L', 0, '2022-06-26 06:41:19'),
(2, 'Oils', '24 Mantra Organic Expeller Pressed - Sunflower Oil, 1 L Bottle', 0, '2022-06-26 06:41:19'),
(2, 'Oils', 'Oleev Active Olive Oil with Energocules, 1 L Bottle', 0, '2022-06-26 06:41:19'),
(3, 'Wheat', 'Organic Premium Wheat Atta 1kg', 0, '2022-06-28 06:25:42'),
(3, 'Wheat', 'Amul Whole Wheat Atta, 1 kg', 457, '2022-06-28 16:44:42'),
(3, 'Wheat', '24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch', 500, '2022-06-28 16:44:59'),
(3, 'Wheat', 'BB Royal Organic - Whole Wheat Atta/Ghau No Lot, 1 kg', 560, '2022-06-28 16:45:10'),
(3, 'Dal', 'Tata Sampann Toor Dal/Arhar Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(3, 'Dal', 'Rentio RPROTO - CLASSIC TOOR DAL, 1 Kg', 0, '2022-06-26 06:41:19'),
(3, 'Dal', '24 Mantra Organic Toor Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(3, 'Dal', 'Organic Tattva Arhar (Tur) Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(3, 'Dal', 'BIOAYURVEDA Arhar Dal, 1kg', 0, '2022-06-26 06:41:19'),
(3, 'Ghee', 'Fresho Organic Cow Desi Ghee/Tuppa, 500 ml', 0, '2022-06-26 06:41:19'),
(3, 'Ghee', 'Organic Cow Ghee 500 ml', 0, '2022-06-26 06:41:19'),
(3, 'Ghee', 'Aashirvaad Svasti Pure Cow Ghee 500ml Ceka', 0, '2022-06-26 06:41:19'),
(3, 'Ghee', 'Himalayan Natives A2 Gir cow Bilona ghee - 500ML', 0, '2022-06-26 06:41:19'),
(3, 'Ghee', 'Amul Pure Ghee, 500ml', 0, '2022-06-26 06:41:19'),
(3, 'Oils', 'Sundrop Oil - Heart, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(3, 'Oils', 'Saffola Active Refined Cooking oil | Blended Rice Bran & SoyaBean oil, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(3, 'Oils', 'Emami Healthy & Tasty - Refined Sunflower Oil, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(3, 'Oils', 'Fortune Refined - Cotton Seed Oil, 1 L', 0, '2022-06-26 06:41:19'),
(3, 'Oils', '24 Mantra Organic Expeller Pressed - Sunflower Oil, 1 L Bottle', 0, '2022-06-26 06:41:19'),
(3, 'Oils', 'Oleev Active Olive Oil with Energocules, 1 L Bottle', 0, '2022-06-26 06:41:19'),
(4, 'Wheat', 'Organic Premium Wheat Atta 1kg', 0, '2022-06-28 06:25:42'),
(4, 'Wheat', 'Amul Whole Wheat Atta, 1 kg', 450, '2022-06-30 16:23:06'),
(4, 'Wheat', '24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(4, 'Wheat', 'BB Royal Organic - Whole Wheat Atta/Ghau No Lot, 1 kg', 0, '2022-06-26 06:41:19'),
(4, 'Dal', 'Tata Sampann Toor Dal/Arhar Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(4, 'Dal', 'Rentio RPROTO - CLASSIC TOOR DAL, 1 Kg', 0, '2022-06-26 06:41:19'),
(4, 'Dal', '24 Mantra Organic Toor Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(4, 'Dal', 'Organic Tattva Arhar (Tur) Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(4, 'Dal', 'BIOAYURVEDA Arhar Dal, 1kg', 0, '2022-06-26 06:41:19'),
(4, 'Ghee', 'Fresho Organic Cow Desi Ghee/Tuppa, 500 ml', 0, '2022-06-26 06:41:19'),
(4, 'Ghee', 'Organic Cow Ghee 500 ml', 0, '2022-06-26 06:41:19'),
(4, 'Ghee', 'Aashirvaad Svasti Pure Cow Ghee 500ml Ceka', 0, '2022-06-26 06:41:19'),
(4, 'Ghee', 'Himalayan Natives A2 Gir cow Bilona ghee - 500ML', 0, '2022-06-26 06:41:19'),
(4, 'Ghee', 'Amul Pure Ghee, 500ml', 0, '2022-06-26 06:41:19'),
(4, 'Oils', 'Sundrop Oil - Heart, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(4, 'Oils', 'Saffola Active Refined Cooking oil | Blended Rice Bran & SoyaBean oil, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(4, 'Oils', 'Emami Healthy & Tasty - Refined Sunflower Oil, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(4, 'Oils', 'Fortune Refined - Cotton Seed Oil, 1 L', 0, '2022-06-26 06:41:19'),
(4, 'Oils', '24 Mantra Organic Expeller Pressed - Sunflower Oil, 1 L Bottle', 0, '2022-06-26 06:41:19'),
(4, 'Oils', 'Oleev Active Olive Oil with Energocules, 1 L Bottle', 0, '2022-06-26 06:41:19'),
(5, 'Wheat', 'Organic Premium Wheat Atta 1kg', 0, '2022-06-28 06:25:42'),
(5, 'Wheat', 'Amul Whole Wheat Atta, 1 kg', 0, '2022-06-26 06:41:19'),
(5, 'Wheat', '24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(5, 'Wheat', 'BB Royal Organic - Whole Wheat Atta/Ghau No Lot, 1 kg', 0, '2022-06-26 06:41:19'),
(5, 'Dal', 'Tata Sampann Toor Dal/Arhar Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(5, 'Dal', 'Rentio RPROTO - CLASSIC TOOR DAL, 1 Kg', 0, '2022-06-26 06:41:19'),
(5, 'Dal', '24 Mantra Organic Toor Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(5, 'Dal', 'Organic Tattva Arhar (Tur) Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(5, 'Dal', 'BIOAYURVEDA Arhar Dal, 1kg', 0, '2022-06-26 06:41:19'),
(5, 'Ghee', 'Fresho Organic Cow Desi Ghee/Tuppa, 500 ml', 0, '2022-06-26 06:41:19'),
(5, 'Ghee', 'Organic Cow Ghee 500 ml', 0, '2022-06-26 06:41:19'),
(5, 'Ghee', 'Aashirvaad Svasti Pure Cow Ghee 500ml Ceka', 0, '2022-06-26 06:41:19'),
(5, 'Ghee', 'Himalayan Natives A2 Gir cow Bilona ghee - 500ML', 0, '2022-06-26 06:41:19'),
(5, 'Ghee', 'Amul Pure Ghee, 500ml', 0, '2022-06-26 06:41:19'),
(5, 'Oils', 'Sundrop Oil - Heart, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(5, 'Oils', 'Saffola Active Refined Cooking oil | Blended Rice Bran & SoyaBean oil, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(5, 'Oils', 'Emami Healthy & Tasty - Refined Sunflower Oil, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(5, 'Oils', 'Fortune Refined - Cotton Seed Oil, 1 L', 0, '2022-06-26 06:41:19'),
(5, 'Oils', '24 Mantra Organic Expeller Pressed - Sunflower Oil, 1 L Bottle', 0, '2022-06-26 06:41:19'),
(5, 'Oils', 'Oleev Active Olive Oil with Energocules, 1 L Bottle', 0, '2022-06-26 06:41:19'),
(6, 'Wheat', 'Organic Premium Wheat Atta 1kg', 0, '2022-06-28 06:25:42'),
(6, 'Wheat', 'Amul Whole Wheat Atta, 1 kg', 0, '2022-06-26 06:41:19'),
(6, 'Wheat', '24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(6, 'Wheat', 'BB Royal Organic - Whole Wheat Atta/Ghau No Lot, 1 kg', 0, '2022-06-26 06:41:19'),
(6, 'Dal', 'Tata Sampann Toor Dal/Arhar Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(6, 'Dal', 'Rentio RPROTO - CLASSIC TOOR DAL, 1 Kg', 0, '2022-06-26 06:41:19'),
(6, 'Dal', '24 Mantra Organic Toor Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(6, 'Dal', 'Organic Tattva Arhar (Tur) Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(6, 'Dal', 'BIOAYURVEDA Arhar Dal, 1kg', 0, '2022-06-26 06:41:19'),
(6, 'Ghee', 'Fresho Organic Cow Desi Ghee/Tuppa, 500 ml', 0, '2022-06-26 06:41:19'),
(6, 'Ghee', 'Organic Cow Ghee 500 ml', 0, '2022-06-26 06:41:19'),
(6, 'Ghee', 'Aashirvaad Svasti Pure Cow Ghee 500ml Ceka', 0, '2022-06-26 06:41:19'),
(6, 'Ghee', 'Himalayan Natives A2 Gir cow Bilona ghee - 500ML', 0, '2022-06-26 06:41:19'),
(6, 'Ghee', 'Amul Pure Ghee, 500ml', 0, '2022-06-26 06:41:19'),
(6, 'Oils', 'Sundrop Oil - Heart, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(6, 'Oils', 'Saffola Active Refined Cooking oil | Blended Rice Bran & SoyaBean oil, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(6, 'Oils', 'Emami Healthy & Tasty - Refined Sunflower Oil, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(6, 'Oils', 'Fortune Refined - Cotton Seed Oil, 1 L', 0, '2022-06-26 06:41:19'),
(6, 'Oils', '24 Mantra Organic Expeller Pressed - Sunflower Oil, 1 L Bottle', 0, '2022-06-26 06:41:19'),
(6, 'Oils', 'Oleev Active Olive Oil with Energocules, 1 L Bottle', 0, '2022-06-26 06:41:19'),
(10, 'Wheat', 'Organic Premium Wheat Atta 1kg', 0, '2022-06-28 06:25:42'),
(10, 'Wheat', 'Amul Whole Wheat Atta, 1 kg', 0, '2022-06-26 06:41:19'),
(10, 'Wheat', '24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(10, 'Wheat', 'BB Royal Organic - Whole Wheat Atta/Ghau No Lot, 1 kg', 0, '2022-06-26 06:41:19'),
(10, 'Dal', 'Tata Sampann Toor Dal/Arhar Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(10, 'Dal', 'Rentio RPROTO - CLASSIC TOOR DAL, 1 Kg', 0, '2022-06-26 06:41:19'),
(10, 'Dal', '24 Mantra Organic Toor Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(10, 'Dal', 'Organic Tattva Arhar (Tur) Dal, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(10, 'Dal', 'BIOAYURVEDA Arhar Dal, 1kg', 0, '2022-06-26 06:41:19'),
(10, 'Ghee', 'Fresho Organic Cow Desi Ghee/Tuppa, 500 ml', 0, '2022-06-26 06:41:19'),
(10, 'Ghee', 'Organic Cow Ghee 500 ml', 0, '2022-06-26 06:41:19'),
(10, 'Ghee', 'Aashirvaad Svasti Pure Cow Ghee 500ml Ceka', 0, '2022-06-26 06:41:19'),
(10, 'Ghee', 'Himalayan Natives A2 Gir cow Bilona ghee - 500ML', 0, '2022-06-26 06:41:19'),
(10, 'Ghee', 'Amul Pure Ghee, 500ml', 0, '2022-06-26 06:41:19'),
(10, 'Oils', 'Sundrop Oil - Heart, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(10, 'Oils', 'Saffola Active Refined Cooking oil | Blended Rice Bran & SoyaBean oil, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(10, 'Oils', 'Emami Healthy & Tasty - Refined Sunflower Oil, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(10, 'Oils', 'Fortune Refined - Cotton Seed Oil, 1 L', 0, '2022-06-26 06:41:19'),
(10, 'Oils', '24 Mantra Organic Expeller Pressed - Sunflower Oil, 1 L Bottle', 0, '2022-06-26 06:41:19'),
(10, 'Oils', 'Oleev Active Olive Oil with Energocules, 1 L Bottle', 0, '2022-06-26 06:41:19'),
(11, 'Wheat', 'Organic Premium Wheat Atta 1kg', 0, '2022-06-28 06:25:42'),
(11, 'Wheat', 'Amul Whole Wheat Atta, 1 kg', 0, '2022-06-26 06:41:19'),
(11, 'Wheat', '24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch', 0, '2022-06-26 06:41:19'),
(11, 'Wheat', 'BB Royal Organic - Whole Wheat Atta/Ghau No Lot, 1 kg', 0, '2022-06-26 06:41:19'),
(11, 'Dal', 'Tata Sampann Toor Dal/Arhar Dal, 1 kg Pouch', 160, '2022-07-22 14:23:39'),
(11, 'Dal', 'Rentio RPROTO - CLASSIC TOOR DAL, 1 Kg', 180, '2022-07-22 14:23:46'),
(11, 'Dal', '24 Mantra Organic Toor Dal, 1 kg Pouch', 265, '2022-07-22 14:23:55'),
(11, 'Dal', 'Organic Tattva Arhar (Tur) Dal, 1 kg Pouch', 275, '2022-07-22 14:24:02'),
(11, 'Dal', 'BIOAYURVEDA Arhar Dal, 1kg', 165, '2022-07-22 14:24:11'),
(11, 'Ghee', 'Fresho Organic Cow Desi Ghee/Tuppa, 500 ml', 600, '2022-07-22 14:25:03'),
(11, 'Ghee', 'Organic Cow Ghee 500 ml', 650, '2022-07-22 14:25:21'),
(11, 'Ghee', 'Aashirvaad Svasti Pure Cow Ghee 500ml Ceka', 286, '2022-07-22 14:25:38'),
(11, 'Ghee', 'Himalayan Natives A2 Gir cow Bilona ghee - 500ML', 960, '2022-07-22 14:25:58'),
(11, 'Ghee', 'Amul Pure Ghee, 500ml', 350, '2022-07-22 14:26:11'),
(11, 'Oils', 'Sundrop Oil - Heart, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(11, 'Oils', 'Saffola Active Refined Cooking oil | Blended Rice Bran & SoyaBean oil, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(11, 'Oils', 'Emami Healthy & Tasty - Refined Sunflower Oil, 1 L Pouch', 0, '2022-06-26 06:41:19'),
(11, 'Oils', 'Fortune Refined - Cotton Seed Oil, 1 L', 0, '2022-06-26 06:41:19'),
(11, 'Oils', '24 Mantra Organic Expeller Pressed - Sunflower Oil, 1 L Bottle', 0, '2022-06-26 06:41:19'),
(11, 'Oils', 'Oleev Active Olive Oil with Energocules, 1 L Bottle', 0, '2022-06-26 06:41:19'),
(12, 'Wheat', 'Organic Premium Wheat Atta 1kg', 70, '2022-07-22 14:07:43'),
(12, 'Wheat', 'Amul Whole Wheat Atta, 1 kg', 40, '2022-07-22 14:07:57'),
(12, 'Wheat', '24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch', 60, '2022-07-22 14:08:11'),
(12, 'Wheat', 'BB Royal Organic - Whole Wheat Atta/Ghau No Lot, 1 kg', 60, '2022-07-22 14:08:23'),
(12, 'Dal', 'Tata Sampann Toor Dal/Arhar Dal, 1 kg Pouch', 159, '2022-07-22 14:09:03'),
(12, 'Dal', 'Rentio RPROTO - CLASSIC TOOR DAL, 1 Kg', 190, '2022-07-22 13:59:59'),
(12, 'Dal', '24 Mantra Organic Toor Dal, 1 kg Pouch', 265, '2022-07-22 14:00:07'),
(12, 'Dal', 'Organic Tattva Arhar (Tur) Dal, 1 kg Pouch', 270, '2022-07-22 14:00:15'),
(12, 'Dal', 'BIOAYURVEDA Arhar Dal, 1kg', 170, '2022-07-22 14:00:24'),
(12, 'Ghee', 'Fresho Organic Cow Desi Ghee/Tuppa, 500 ml', 600, '2022-07-22 14:00:36'),
(12, 'Ghee', 'Organic Cow Ghee 500 ml', 799, '2022-07-14 06:33:49'),
(12, 'Ghee', 'Aashirvaad Svasti Pure Cow Ghee 500ml Ceka', 290, '2022-07-22 14:00:49'),
(12, 'Ghee', 'Himalayan Natives A2 Gir cow Bilona ghee - 500ML', 1000, '2022-07-22 14:01:00'),
(12, 'Ghee', 'Amul Pure Ghee, 500ml', 300, '2022-07-22 14:01:13'),
(12, 'Oils', 'Sundrop Oil - Heart, 1 L Pouch', 300, '2022-07-22 14:01:27'),
(12, 'Oils', 'Saffola Active Refined Cooking oil | Blended Rice Bran & SoyaBean oil, 1 L Pouch', 230, '2022-07-22 14:01:36'),
(12, 'Oils', 'Emami Healthy & Tasty - Refined Sunflower Oil, 1 L Pouch', 210, '2022-07-22 14:01:44'),
(12, 'Oils', 'Fortune Refined - Cotton Seed Oil, 1 L', 190, '2022-07-22 14:01:55'),
(12, 'Oils', '24 Mantra Organic Expeller Pressed - Sunflower Oil, 1 L Bottle', 340, '2022-07-22 14:02:05'),
(12, 'Oils', 'Oleev Active Olive Oil with Energocules, 1 L Bottle', 280, '2022-07-22 14:02:15'),
(1, 'Salt', 'Aashirvaad Salt - Iodised 1 Kg', 24, '2022-07-22 13:52:48'),
(3, 'Salt', 'Aashirvaad Salt - Iodised 1 Kg', 0, '2022-06-29 12:09:53'),
(4, 'Salt', 'Aashirvaad Salt - Iodised 1 Kg', 0, '2022-06-29 12:09:53'),
(5, 'Salt', 'Aashirvaad Salt - Iodised 1 Kg', 0, '2022-06-29 12:09:53'),
(6, 'Salt', 'Aashirvaad Salt - Iodised 1 Kg', 0, '2022-06-29 12:09:53'),
(10, 'Salt', 'Aashirvaad Salt - Iodised 1 Kg', 0, '2022-06-29 12:09:53'),
(11, 'Salt', 'Aashirvaad Salt - Iodised 1 Kg', 0, '2022-06-29 12:09:53'),
(12, 'Salt', 'Aashirvaad Salt - Iodised 1 Kg', 30, '2022-07-22 14:04:19'),
(13, 'Rice', 'India Gate Basmati Super Long Grain Rice 1kg', 0, '2022-07-22 12:53:39'),
(13, 'Wheat', 'Organic Premium Wheat Atta 1kg', 0, '2022-07-22 12:53:39'),
(13, 'Wheat', 'Amul Whole Wheat Atta, 1 kg', 0, '2022-07-22 12:53:39'),
(13, 'Wheat', '24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch', 0, '2022-07-22 12:53:39'),
(13, 'Wheat', 'BB Royal Organic - Whole Wheat Atta/Ghau No Lot, 1 kg', 0, '2022-07-22 12:53:39'),
(13, 'Dal', 'Tata Sampann Toor Dal/Arhar Dal, 1 kg Pouch', 0, '2022-07-22 12:53:39'),
(13, 'Dal', 'Rentio RPROTO - CLASSIC TOOR DAL, 1 Kg', 0, '2022-07-22 12:53:39'),
(13, 'Dal', '24 Mantra Organic Toor Dal, 1 kg Pouch', 0, '2022-07-22 12:53:39'),
(13, 'Dal', 'Organic Tattva Arhar (Tur) Dal, 1 kg Pouch', 0, '2022-07-22 12:53:39'),
(13, 'Dal', 'BIOAYURVEDA Arhar Dal, 1kg', 0, '2022-07-22 12:53:39'),
(13, 'Ghee', 'Fresho Organic Cow Desi Ghee/Tuppa, 500 ml', 0, '2022-07-22 12:53:39'),
(13, 'Ghee', 'Organic Cow Ghee 500 ml', 0, '2022-07-22 12:53:39'),
(13, 'Ghee', 'Aashirvaad Svasti Pure Cow Ghee 500ml Ceka', 0, '2022-07-22 12:53:39'),
(13, 'Ghee', 'Himalayan Natives A2 Gir cow Bilona ghee - 500ML', 0, '2022-07-22 12:53:39'),
(13, 'Ghee', 'Amul Pure Ghee, 500ml', 0, '2022-07-22 12:53:39'),
(13, 'Oils', 'Sundrop Oil - Heart, 1 L Pouch', 0, '2022-07-22 12:53:39'),
(13, 'Oils', 'Saffola Active Refined Cooking oil | Blended Rice Bran & SoyaBean oil, 1 L Pouch', 0, '2022-07-22 12:53:39'),
(13, 'Oils', 'Emami Healthy & Tasty - Refined Sunflower Oil, 1 L Pouch', 0, '2022-07-22 12:53:39'),
(13, 'Oils', 'Fortune Refined - Cotton Seed Oil, 1 L', 0, '2022-07-22 12:53:39'),
(13, 'Oils', '24 Mantra Organic Expeller Pressed - Sunflower Oil, 1 L Bottle', 0, '2022-07-22 12:53:39'),
(13, 'Oils', 'Oleev Active Olive Oil with Energocules, 1 L Bottle', 0, '2022-07-22 12:53:39'),
(13, 'Salt', 'Aashirvaad Salt - Iodised 1 Kg', 0, '2022-07-22 12:53:39'),
(14, 'Rice', 'India Gate Basmati Super Long Grain Rice 1kg', 0, '2022-07-22 12:59:19'),
(14, 'Wheat', 'Organic Premium Wheat Atta 1kg', 0, '2022-07-22 12:59:19'),
(14, 'Wheat', 'Amul Whole Wheat Atta, 1 kg', 0, '2022-07-22 12:59:19'),
(14, 'Wheat', '24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch', 0, '2022-07-22 12:59:19'),
(14, 'Wheat', 'BB Royal Organic - Whole Wheat Atta/Ghau No Lot, 1 kg', 0, '2022-07-22 12:59:19'),
(14, 'Dal', 'Tata Sampann Toor Dal/Arhar Dal, 1 kg Pouch', 0, '2022-07-22 12:59:19'),
(14, 'Dal', 'Rentio RPROTO - CLASSIC TOOR DAL, 1 Kg', 0, '2022-07-22 12:59:19'),
(14, 'Dal', '24 Mantra Organic Toor Dal, 1 kg Pouch', 0, '2022-07-22 12:59:19'),
(14, 'Dal', 'Organic Tattva Arhar (Tur) Dal, 1 kg Pouch', 0, '2022-07-22 12:59:19'),
(14, 'Dal', 'BIOAYURVEDA Arhar Dal, 1kg', 0, '2022-07-22 12:59:19'),
(14, 'Ghee', 'Fresho Organic Cow Desi Ghee/Tuppa, 500 ml', 0, '2022-07-22 12:59:19'),
(14, 'Ghee', 'Organic Cow Ghee 500 ml', 0, '2022-07-22 12:59:19'),
(14, 'Ghee', 'Aashirvaad Svasti Pure Cow Ghee 500ml Ceka', 0, '2022-07-22 12:59:19'),
(14, 'Ghee', 'Himalayan Natives A2 Gir cow Bilona ghee - 500ML', 0, '2022-07-22 12:59:19'),
(14, 'Ghee', 'Amul Pure Ghee, 500ml', 0, '2022-07-22 12:59:19'),
(14, 'Oils', 'Sundrop Oil - Heart, 1 L Pouch', 0, '2022-07-22 12:59:19'),
(14, 'Oils', 'Saffola Active Refined Cooking oil | Blended Rice Bran & SoyaBean oil, 1 L Pouch', 0, '2022-07-22 12:59:19'),
(14, 'Oils', 'Emami Healthy & Tasty - Refined Sunflower Oil, 1 L Pouch', 0, '2022-07-22 12:59:19'),
(14, 'Oils', 'Fortune Refined - Cotton Seed Oil, 1 L', 0, '2022-07-22 12:59:19'),
(14, 'Oils', '24 Mantra Organic Expeller Pressed - Sunflower Oil, 1 L Bottle', 0, '2022-07-22 12:59:19'),
(14, 'Oils', 'Oleev Active Olive Oil with Energocules, 1 L Bottle', 0, '2022-07-22 12:59:19'),
(14, 'Salt', 'Aashirvaad Salt - Iodised 1 Kg', 0, '2022-07-22 12:59:19'),
(1, 'Rice', 'Organic India White Rice Basmati 1kg', 221, '2022-07-22 13:48:28'),
(3, 'Rice', 'Organic India White Rice Basmati 1kg', 0, '2022-07-22 13:08:24'),
(4, 'Rice', 'Organic India White Rice Basmati 1kg', 0, '2022-07-22 13:08:24'),
(5, 'Rice', 'Organic India White Rice Basmati 1kg', 0, '2022-07-22 13:08:24'),
(6, 'Rice', 'Organic India White Rice Basmati 1kg', 0, '2022-07-22 13:08:24'),
(10, 'Rice', 'Organic India White Rice Basmati 1kg', 0, '2022-07-22 13:08:24'),
(11, 'Rice', 'Organic India White Rice Basmati 1kg', 0, '2022-07-22 13:08:24'),
(12, 'Rice', 'Organic India White Rice Basmati 1kg', 221, '2022-07-22 14:03:32'),
(13, 'Rice', 'Organic India White Rice Basmati 1kg', 0, '2022-07-22 13:08:24'),
(14, 'Rice', 'Organic India White Rice Basmati 1kg', 0, '2022-07-22 13:08:24'),
(1, 'Rice', 'Daawat Brown Rice 1kg', 175, '2022-07-22 13:48:44'),
(3, 'Rice', 'Daawat Brown Rice 1kg', 0, '2022-07-22 13:08:59'),
(4, 'Rice', 'Daawat Brown Rice 1kg', 0, '2022-07-22 13:08:59'),
(5, 'Rice', 'Daawat Brown Rice 1kg', 0, '2022-07-22 13:08:59'),
(6, 'Rice', 'Daawat Brown Rice 1kg', 0, '2022-07-22 13:08:59'),
(10, 'Rice', 'Daawat Brown Rice 1kg', 0, '2022-07-22 13:08:59'),
(11, 'Rice', 'Daawat Brown Rice 1kg', 0, '2022-07-22 13:08:59'),
(12, 'Rice', 'Daawat Brown Rice 1kg', 180, '2022-07-22 14:03:48'),
(13, 'Rice', 'Daawat Brown Rice 1kg', 0, '2022-07-22 13:08:59'),
(14, 'Rice', 'Daawat Brown Rice 1kg', 0, '2022-07-22 13:08:59'),
(1, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', 162, '2022-07-22 13:52:23'),
(3, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', 0, '2022-07-22 13:19:12'),
(4, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', 0, '2022-07-22 13:19:12'),
(5, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', 0, '2022-07-22 13:19:12'),
(6, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', 0, '2022-07-22 13:19:12'),
(10, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', 0, '2022-07-22 13:19:12'),
(11, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', 0, '2022-07-22 13:19:12'),
(12, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', 163, '2022-07-22 14:10:50'),
(13, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', 0, '2022-07-22 13:19:12'),
(14, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', 0, '2022-07-22 13:19:12'),
(1, 'Wheat', 'Aashirvaad Atta with Multigrains 1kg', 0, '2022-07-22 13:22:01'),
(3, 'Wheat', 'Aashirvaad Atta with Multigrains 1kg', 0, '2022-07-22 13:22:01'),
(4, 'Wheat', 'Aashirvaad Atta with Multigrains 1kg', 0, '2022-07-22 13:22:01'),
(5, 'Wheat', 'Aashirvaad Atta with Multigrains 1kg', 0, '2022-07-22 13:22:01'),
(6, 'Wheat', 'Aashirvaad Atta with Multigrains 1kg', 0, '2022-07-22 13:22:01'),
(10, 'Wheat', 'Aashirvaad Atta with Multigrains 1kg', 0, '2022-07-22 13:22:01'),
(11, 'Wheat', 'Aashirvaad Atta with Multigrains 1kg', 0, '2022-07-22 13:22:01'),
(12, 'Wheat', 'Aashirvaad Atta with Multigrains 1kg', 50, '2022-07-22 14:08:33'),
(13, 'Wheat', 'Aashirvaad Atta with Multigrains 1kg', 0, '2022-07-22 13:22:01'),
(14, 'Wheat', 'Aashirvaad Atta with Multigrains 1kg', 0, '2022-07-22 13:22:01'),
(1, 'Oils', 'Saffola Aura Extra Virgin Olive Oil - 1L', 0, '2022-07-22 13:23:52'),
(3, 'Oils', 'Saffola Aura Extra Virgin Olive Oil - 1L', 0, '2022-07-22 13:23:52'),
(4, 'Oils', 'Saffola Aura Extra Virgin Olive Oil - 1L', 0, '2022-07-22 13:23:52'),
(5, 'Oils', 'Saffola Aura Extra Virgin Olive Oil - 1L', 0, '2022-07-22 13:23:52'),
(6, 'Oils', 'Saffola Aura Extra Virgin Olive Oil - 1L', 0, '2022-07-22 13:23:52'),
(10, 'Oils', 'Saffola Aura Extra Virgin Olive Oil - 1L', 0, '2022-07-22 13:23:52'),
(11, 'Oils', 'Saffola Aura Extra Virgin Olive Oil - 1L', 0, '2022-07-22 13:23:52'),
(12, 'Oils', 'Saffola Aura Extra Virgin Olive Oil - 1L', 1360, '2022-07-22 14:02:26'),
(13, 'Oils', 'Saffola Aura Extra Virgin Olive Oil - 1L', 0, '2022-07-22 13:23:52'),
(14, 'Oils', 'Saffola Aura Extra Virgin Olive Oil - 1L', 0, '2022-07-22 13:23:52'),
(1, 'Oils', 'Mature Harvest Olive oil', 1299, '2022-07-22 13:47:49'),
(3, 'Oils', 'Mature Harvest Olive oil', 0, '2022-07-22 13:24:14'),
(4, 'Oils', 'Mature Harvest Olive oil', 0, '2022-07-22 13:24:14'),
(5, 'Oils', 'Mature Harvest Olive oil', 0, '2022-07-22 13:24:14'),
(6, 'Oils', 'Mature Harvest Olive oil', 0, '2022-07-22 13:24:14'),
(10, 'Oils', 'Mature Harvest Olive oil', 0, '2022-07-22 13:24:14'),
(11, 'Oils', 'Mature Harvest Olive oil', 0, '2022-07-22 13:24:14'),
(12, 'Oils', 'Mature Harvest Olive oil', 1300, '2022-07-22 14:02:35'),
(13, 'Oils', 'Mature Harvest Olive oil', 0, '2022-07-22 13:24:14'),
(14, 'Oils', 'Mature Harvest Olive oil', 0, '2022-07-22 13:24:14'),
(1, 'Oils', 'Figaro Olive Oil-1Ltr', 999, '2022-07-22 13:47:59'),
(3, 'Oils', 'Figaro Olive Oil-1Ltr', 0, '2022-07-22 13:24:34'),
(4, 'Oils', 'Figaro Olive Oil-1Ltr', 0, '2022-07-22 13:24:34'),
(5, 'Oils', 'Figaro Olive Oil-1Ltr', 0, '2022-07-22 13:24:34'),
(6, 'Oils', 'Figaro Olive Oil-1Ltr', 0, '2022-07-22 13:24:34'),
(10, 'Oils', 'Figaro Olive Oil-1Ltr', 0, '2022-07-22 13:24:34'),
(11, 'Oils', 'Figaro Olive Oil-1Ltr', 0, '2022-07-22 13:24:34'),
(12, 'Oils', 'Figaro Olive Oil-1Ltr', 1000, '2022-07-22 14:02:44'),
(13, 'Oils', 'Figaro Olive Oil-1Ltr', 0, '2022-07-22 13:24:34'),
(14, 'Oils', 'Figaro Olive Oil-1Ltr', 0, '2022-07-22 13:24:34'),
(1, 'Oils', 'Del Monte Extra Virgin Olive Oil PET, 1L', 699, '2022-07-22 13:48:09'),
(3, 'Oils', 'Del Monte Extra Virgin Olive Oil PET, 1L', 0, '2022-07-22 13:24:56'),
(4, 'Oils', 'Del Monte Extra Virgin Olive Oil PET, 1L', 0, '2022-07-22 13:24:56'),
(5, 'Oils', 'Del Monte Extra Virgin Olive Oil PET, 1L', 0, '2022-07-22 13:24:56'),
(6, 'Oils', 'Del Monte Extra Virgin Olive Oil PET, 1L', 0, '2022-07-22 13:24:56'),
(10, 'Oils', 'Del Monte Extra Virgin Olive Oil PET, 1L', 0, '2022-07-22 13:24:56'),
(11, 'Oils', 'Del Monte Extra Virgin Olive Oil PET, 1L', 0, '2022-07-22 13:24:56'),
(12, 'Oils', 'Del Monte Extra Virgin Olive Oil PET, 1L', 700, '2022-07-22 14:02:54'),
(13, 'Oils', 'Del Monte Extra Virgin Olive Oil PET, 1L', 0, '2022-07-22 13:24:56'),
(14, 'Oils', 'Del Monte Extra Virgin Olive Oil PET, 1L', 0, '2022-07-22 13:24:56'),
(1, 'Salt', 'Patanjali Namak, 1 kg', 22, '2022-07-22 13:53:03'),
(3, 'Salt', 'Patanjali Namak, 1 kg', 0, '2022-07-22 13:25:36'),
(4, 'Salt', 'Patanjali Namak, 1 kg', 0, '2022-07-22 13:25:36'),
(5, 'Salt', 'Patanjali Namak, 1 kg', 0, '2022-07-22 13:25:36'),
(6, 'Salt', 'Patanjali Namak, 1 kg', 0, '2022-07-22 13:25:36'),
(10, 'Salt', 'Patanjali Namak, 1 kg', 0, '2022-07-22 13:25:36'),
(11, 'Salt', 'Patanjali Namak, 1 kg', 0, '2022-07-22 13:25:36'),
(12, 'Salt', 'Patanjali Namak, 1 kg', 25, '2022-07-22 14:04:39'),
(13, 'Salt', 'Patanjali Namak, 1 kg', 0, '2022-07-22 13:25:36'),
(14, 'Salt', 'Patanjali Namak, 1 kg', 0, '2022-07-22 13:25:36'),
(1, 'Salt', 'Tata Salt, 1kg Pack', 118, '2022-07-22 13:54:00'),
(3, 'Salt', 'Tata Salt, 1kg Pack', 0, '2022-07-22 13:25:57'),
(4, 'Salt', 'Tata Salt, 1kg Pack', 0, '2022-07-22 13:25:57'),
(5, 'Salt', 'Tata Salt, 1kg Pack', 0, '2022-07-22 13:25:57'),
(6, 'Salt', 'Tata Salt, 1kg Pack', 0, '2022-07-22 13:25:57'),
(10, 'Salt', 'Tata Salt, 1kg Pack', 0, '2022-07-22 13:25:57'),
(11, 'Salt', 'Tata Salt, 1kg Pack', 0, '2022-07-22 13:25:57'),
(12, 'Salt', 'Tata Salt, 1kg Pack', 1305, '2022-07-22 14:04:55'),
(13, 'Salt', 'Tata Salt, 1kg Pack', 0, '2022-07-22 13:25:57'),
(14, 'Salt', 'Tata Salt, 1kg Pack', 0, '2022-07-22 13:25:57'),
(1, 'Salt', 'Catch Rock Salt 1Kg', 130, '2022-07-22 13:54:23'),
(3, 'Salt', 'Catch Rock Salt 1Kg', 0, '2022-07-22 13:26:20'),
(4, 'Salt', 'Catch Rock Salt 1Kg', 0, '2022-07-22 13:26:20'),
(5, 'Salt', 'Catch Rock Salt 1Kg', 0, '2022-07-22 13:26:20'),
(6, 'Salt', 'Catch Rock Salt 1Kg', 0, '2022-07-22 13:26:20'),
(10, 'Salt', 'Catch Rock Salt 1Kg', 0, '2022-07-22 13:26:20'),
(11, 'Salt', 'Catch Rock Salt 1Kg', 0, '2022-07-22 13:26:20'),
(12, 'Salt', 'Catch Rock Salt 1Kg', 140, '2022-07-22 14:05:09'),
(13, 'Salt', 'Catch Rock Salt 1Kg', 0, '2022-07-22 13:26:20'),
(14, 'Salt', 'Catch Rock Salt 1Kg', 0, '2022-07-22 13:26:20'),
(1, 'Salt', 'TATA Salt Rock Salt, 1kg', 118, '2022-07-22 13:54:35'),
(3, 'Salt', 'TATA Salt Rock Salt, 1kg', 0, '2022-07-22 13:27:28'),
(4, 'Salt', 'TATA Salt Rock Salt, 1kg', 0, '2022-07-22 13:27:28'),
(5, 'Salt', 'TATA Salt Rock Salt, 1kg', 0, '2022-07-22 13:27:28'),
(6, 'Salt', 'TATA Salt Rock Salt, 1kg', 0, '2022-07-22 13:27:28'),
(10, 'Salt', 'TATA Salt Rock Salt, 1kg', 0, '2022-07-22 13:27:28'),
(11, 'Salt', 'TATA Salt Rock Salt, 1kg', 0, '2022-07-22 13:27:28'),
(12, 'Salt', 'TATA Salt Rock Salt, 1kg', 120, '2022-07-22 14:05:22'),
(13, 'Salt', 'TATA Salt Rock Salt, 1kg', 0, '2022-07-22 13:27:28'),
(14, 'Salt', 'TATA Salt Rock Salt, 1kg', 0, '2022-07-22 13:27:28'),
(1, 'Sugar', 'Fortune Sugar, 1 kg', 55, '2022-07-22 13:54:48'),
(3, 'Sugar', 'Fortune Sugar, 1 kg', 0, '2022-07-22 13:29:17'),
(4, 'Sugar', 'Fortune Sugar, 1 kg', 0, '2022-07-22 13:29:17'),
(5, 'Sugar', 'Fortune Sugar, 1 kg', 0, '2022-07-22 13:29:17'),
(6, 'Sugar', 'Fortune Sugar, 1 kg', 0, '2022-07-22 13:29:17'),
(10, 'Sugar', 'Fortune Sugar, 1 kg', 0, '2022-07-22 13:29:17'),
(11, 'Sugar', 'Fortune Sugar, 1 kg', 0, '2022-07-22 13:29:17'),
(12, 'Sugar', 'Fortune Sugar, 1 kg', 60, '2022-07-22 14:05:34'),
(13, 'Sugar', 'Fortune Sugar, 1 kg', 0, '2022-07-22 13:29:17'),
(14, 'Sugar', 'Fortune Sugar, 1 kg', 0, '2022-07-22 13:29:17'),
(1, 'Sugar', 'Nourish Sugar – 1 Kg', 55, '2022-07-22 13:55:01'),
(3, 'Sugar', 'Nourish Sugar – 1 Kg', 0, '2022-07-22 13:29:38'),
(4, 'Sugar', 'Nourish Sugar – 1 Kg', 0, '2022-07-22 13:29:38'),
(5, 'Sugar', 'Nourish Sugar – 1 Kg', 0, '2022-07-22 13:29:38'),
(6, 'Sugar', 'Nourish Sugar – 1 Kg', 0, '2022-07-22 13:29:38'),
(10, 'Sugar', 'Nourish Sugar – 1 Kg', 0, '2022-07-22 13:29:38'),
(11, 'Sugar', 'Nourish Sugar – 1 Kg', 0, '2022-07-22 13:29:38'),
(12, 'Sugar', 'Nourish Sugar – 1 Kg', 60, '2022-07-22 14:05:45'),
(13, 'Sugar', 'Nourish Sugar – 1 Kg', 0, '2022-07-22 13:29:38'),
(14, 'Sugar', 'Nourish Sugar – 1 Kg', 0, '2022-07-22 13:29:38'),
(1, 'Sugar', 'Pure&Sure Organic Sugar, 1kg', 130, '2022-07-22 13:55:15'),
(3, 'Sugar', 'Pure&Sure Organic Sugar, 1kg', 0, '2022-07-22 13:30:02'),
(4, 'Sugar', 'Pure&Sure Organic Sugar, 1kg', 0, '2022-07-22 13:30:02'),
(5, 'Sugar', 'Pure&Sure Organic Sugar, 1kg', 0, '2022-07-22 13:30:02'),
(6, 'Sugar', 'Pure&Sure Organic Sugar, 1kg', 0, '2022-07-22 13:30:02'),
(10, 'Sugar', 'Pure&Sure Organic Sugar, 1kg', 0, '2022-07-22 13:30:02'),
(11, 'Sugar', 'Pure&Sure Organic Sugar, 1kg', 0, '2022-07-22 13:30:02'),
(12, 'Sugar', 'Pure&Sure Organic Sugar, 1kg', 135, '2022-07-22 14:05:55'),
(13, 'Sugar', 'Pure&Sure Organic Sugar, 1kg', 0, '2022-07-22 13:30:03'),
(14, 'Sugar', 'Pure&Sure Organic Sugar, 1kg', 0, '2022-07-22 13:30:03'),
(1, 'Sugar', 'Conscious Food Golden Sugar 1kg', 250, '2022-07-22 13:55:27'),
(3, 'Sugar', 'Conscious Food Golden Sugar 1kg', 0, '2022-07-22 13:30:25'),
(4, 'Sugar', 'Conscious Food Golden Sugar 1kg', 0, '2022-07-22 13:30:25'),
(5, 'Sugar', 'Conscious Food Golden Sugar 1kg', 0, '2022-07-22 13:30:25'),
(6, 'Sugar', 'Conscious Food Golden Sugar 1kg', 0, '2022-07-22 13:30:25'),
(10, 'Sugar', 'Conscious Food Golden Sugar 1kg', 0, '2022-07-22 13:30:25'),
(11, 'Sugar', 'Conscious Food Golden Sugar 1kg', 0, '2022-07-22 13:30:25'),
(12, 'Sugar', 'Conscious Food Golden Sugar 1kg', 255, '2022-07-22 14:06:08'),
(13, 'Sugar', 'Conscious Food Golden Sugar 1kg', 0, '2022-07-22 13:30:25'),
(14, 'Sugar', 'Conscious Food Golden Sugar 1kg', 0, '2022-07-22 13:30:25'),
(1, 'Sugar', 'Madhur Sugar, 1Kg', 0, '2022-07-22 13:30:47'),
(3, 'Sugar', 'Madhur Sugar, 1Kg', 0, '2022-07-22 13:30:47'),
(4, 'Sugar', 'Madhur Sugar, 1Kg', 0, '2022-07-22 13:30:47'),
(5, 'Sugar', 'Madhur Sugar, 1Kg', 0, '2022-07-22 13:30:47'),
(6, 'Sugar', 'Madhur Sugar, 1Kg', 0, '2022-07-22 13:30:47'),
(10, 'Sugar', 'Madhur Sugar, 1Kg', 0, '2022-07-22 13:30:47'),
(11, 'Sugar', 'Madhur Sugar, 1Kg', 0, '2022-07-22 13:30:47'),
(12, 'Sugar', 'Madhur Sugar, 1Kg', 55, '2022-07-22 14:06:20'),
(13, 'Sugar', 'Madhur Sugar, 1Kg', 0, '2022-07-22 13:30:47'),
(14, 'Sugar', 'Madhur Sugar, 1Kg', 0, '2022-07-22 13:30:47'),
(1, 'Tea', 'Red Label Tea - Natural Care, 1 kg', 560, '2022-07-22 13:55:47'),
(3, 'Tea', 'Red Label Tea - Natural Care, 1 kg', 0, '2022-07-22 13:31:27'),
(4, 'Tea', 'Red Label Tea - Natural Care, 1 kg', 0, '2022-07-22 13:31:27'),
(5, 'Tea', 'Red Label Tea - Natural Care, 1 kg', 0, '2022-07-22 13:31:27'),
(6, 'Tea', 'Red Label Tea - Natural Care, 1 kg', 0, '2022-07-22 13:31:27'),
(10, 'Tea', 'Red Label Tea - Natural Care, 1 kg', 0, '2022-07-22 13:31:27'),
(11, 'Tea', 'Red Label Tea - Natural Care, 1 kg', 0, '2022-07-22 13:31:27'),
(12, 'Tea', 'Red Label Tea - Natural Care, 1 kg', 560, '2022-07-22 14:06:32'),
(13, 'Tea', 'Red Label Tea - Natural Care, 1 kg', 0, '2022-07-22 13:31:27'),
(14, 'Tea', 'Red Label Tea - Natural Care, 1 kg', 0, '2022-07-22 13:31:27'),
(1, 'Tea', 'Cambridge Tea Party Masala Chai Tea, 1 Kg', 449, '2022-07-22 13:56:04'),
(3, 'Tea', 'Cambridge Tea Party Masala Chai Tea, 1 Kg', 0, '2022-07-22 13:31:45'),
(4, 'Tea', 'Cambridge Tea Party Masala Chai Tea, 1 Kg', 0, '2022-07-22 13:31:45'),
(5, 'Tea', 'Cambridge Tea Party Masala Chai Tea, 1 Kg', 0, '2022-07-22 13:31:45'),
(6, 'Tea', 'Cambridge Tea Party Masala Chai Tea, 1 Kg', 0, '2022-07-22 13:31:45'),
(10, 'Tea', 'Cambridge Tea Party Masala Chai Tea, 1 Kg', 0, '2022-07-22 13:31:45'),
(11, 'Tea', 'Cambridge Tea Party Masala Chai Tea, 1 Kg', 0, '2022-07-22 13:31:45'),
(12, 'Tea', 'Cambridge Tea Party Masala Chai Tea, 1 Kg', 450, '2022-07-22 14:06:42'),
(13, 'Tea', 'Cambridge Tea Party Masala Chai Tea, 1 Kg', 0, '2022-07-22 13:31:45'),
(14, 'Tea', 'Cambridge Tea Party Masala Chai Tea, 1 Kg', 0, '2022-07-22 13:31:45'),
(1, 'Tea', 'Society Premium Pure Assam CTC Leaf Tea, 1 Kg Pouch', 590, '2022-07-22 13:56:53'),
(3, 'Tea', 'Society Premium Pure Assam CTC Leaf Tea, 1 Kg Pouch', 0, '2022-07-22 13:32:09'),
(4, 'Tea', 'Society Premium Pure Assam CTC Leaf Tea, 1 Kg Pouch', 0, '2022-07-22 13:32:09'),
(5, 'Tea', 'Society Premium Pure Assam CTC Leaf Tea, 1 Kg Pouch', 0, '2022-07-22 13:32:09'),
(6, 'Tea', 'Society Premium Pure Assam CTC Leaf Tea, 1 Kg Pouch', 0, '2022-07-22 13:32:09'),
(10, 'Tea', 'Society Premium Pure Assam CTC Leaf Tea, 1 Kg Pouch', 0, '2022-07-22 13:32:09'),
(11, 'Tea', 'Society Premium Pure Assam CTC Leaf Tea, 1 Kg Pouch', 0, '2022-07-22 13:32:09'),
(12, 'Tea', 'Society Premium Pure Assam CTC Leaf Tea, 1 Kg Pouch', 595, '2022-07-22 14:06:52'),
(13, 'Tea', 'Society Premium Pure Assam CTC Leaf Tea, 1 Kg Pouch', 0, '2022-07-22 13:32:09'),
(14, 'Tea', 'Society Premium Pure Assam CTC Leaf Tea, 1 Kg Pouch', 0, '2022-07-22 13:32:10'),
(1, 'Tea', 'Wagh Bakri Premium Leaf Tea Poly Pack, 1kg', 520, '2022-07-22 13:58:15'),
(3, 'Tea', 'Wagh Bakri Premium Leaf Tea Poly Pack, 1kg', 0, '2022-07-22 13:32:33'),
(4, 'Tea', 'Wagh Bakri Premium Leaf Tea Poly Pack, 1kg', 0, '2022-07-22 13:32:33'),
(5, 'Tea', 'Wagh Bakri Premium Leaf Tea Poly Pack, 1kg', 0, '2022-07-22 13:32:33'),
(6, 'Tea', 'Wagh Bakri Premium Leaf Tea Poly Pack, 1kg', 0, '2022-07-22 13:32:33'),
(10, 'Tea', 'Wagh Bakri Premium Leaf Tea Poly Pack, 1kg', 0, '2022-07-22 13:32:33'),
(11, 'Tea', 'Wagh Bakri Premium Leaf Tea Poly Pack, 1kg', 0, '2022-07-22 13:32:33'),
(12, 'Tea', 'Wagh Bakri Premium Leaf Tea Poly Pack, 1kg', 520, '2022-07-22 14:07:02'),
(13, 'Tea', 'Wagh Bakri Premium Leaf Tea Poly Pack, 1kg', 0, '2022-07-22 13:32:33'),
(14, 'Tea', 'Wagh Bakri Premium Leaf Tea Poly Pack, 1kg', 0, '2022-07-22 13:32:33'),
(1, 'Tea', 'Tata Tea Premium - The Countrys Tea 1 Kg', 0, '2022-07-22 13:33:05'),
(3, 'Tea', 'Tata Tea Premium - The Countrys Tea 1 Kg', 0, '2022-07-22 13:33:05'),
(4, 'Tea', 'Tata Tea Premium - The Countrys Tea 1 Kg', 0, '2022-07-22 13:33:05'),
(5, 'Tea', 'Tata Tea Premium - The Countrys Tea 1 Kg', 0, '2022-07-22 13:33:05'),
(6, 'Tea', 'Tata Tea Premium - The Countrys Tea 1 Kg', 0, '2022-07-22 13:33:05'),
(10, 'Tea', 'Tata Tea Premium - The Countrys Tea 1 Kg', 0, '2022-07-22 13:33:05'),
(11, 'Tea', 'Tata Tea Premium - The Countrys Tea 1 Kg', 0, '2022-07-22 13:33:05'),
(12, 'Tea', 'Tata Tea Premium - The Countrys Tea 1 Kg', 520, '2022-07-22 14:07:14'),
(13, 'Tea', 'Tata Tea Premium - The Countrys Tea 1 Kg', 0, '2022-07-22 13:33:05'),
(14, 'Tea', 'Tata Tea Premium - The Countrys Tea 1 Kg', 0, '2022-07-22 13:33:05');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `No` int(255) NOT NULL,
  `mall_id` int(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`No`, `mall_id`, `category`, `product_name`, `price`, `date`) VALUES
(4, 12, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', 300, '2022-06-28 05:12:12'),
(5, 1, 'Rice', 'Organic India White Rice Basmati 1kg', 130, '2022-06-28 16:38:54'),
(6, 1, 'Wheat', 'Ashirvad Aata 1kg', 300, '2022-06-28 16:39:04'),
(7, 1, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', 350, '2022-06-28 16:39:57'),
(8, 1, 'Wheat', 'Organic Premium Wheat Atta 1kg', 375, '2022-06-28 16:40:09'),
(9, 1, 'Wheat', '24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch', 400, '2022-06-28 16:40:37'),
(10, 1, 'Wheat', 'BB Royal Organic - Whole Wheat Atta/Ghau No Lot, 1 kg', 450, '2022-06-28 16:40:46'),
(11, 3, 'Rice', 'Organic India White Rice Basmati 1kg', 400, '2022-06-28 16:44:15'),
(12, 3, 'Wheat', 'Ashirvad Aata 1kg', 350, '2022-06-28 16:44:23'),
(13, 3, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', 500, '2022-06-28 16:44:32'),
(14, 3, 'Wheat', 'Amul Whole Wheat Atta, 1 kg', 457, '2022-06-28 16:44:42'),
(15, 3, 'Wheat', '24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch', 500, '2022-06-28 16:44:59'),
(16, 3, 'Wheat', 'BB Royal Organic - Whole Wheat Atta/Ghau No Lot, 1 kg', 560, '2022-06-28 16:45:10'),
(17, 4, 'Rice', 'Organic India White Rice Basmati 1kg', 100, '2022-06-30 16:21:36'),
(18, 4, 'Wheat', 'Ashirvad Aata 1kg', 200, '2022-06-30 16:22:00'),
(19, 4, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', 300, '2022-06-30 16:22:55'),
(20, 4, 'Wheat', 'Amul Whole Wheat Atta, 1 kg', 450, '2022-06-30 16:23:06'),
(21, 12, 'Wheat', 'Organic Premium Wheat Atta 1kg', 500, '2022-07-14 06:32:46'),
(22, 12, 'Wheat', '24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch', 560, '2022-07-14 06:32:57'),
(23, 12, 'Wheat', 'BB Royal Organic - Whole Wheat Atta/Ghau No Lot, 1 kg', 700, '2022-07-14 06:33:07'),
(24, 12, 'Dal', 'Tata Sampann Toor Dal/Arhar Dal, 1 kg Pouch', 800, '2022-07-14 06:33:17'),
(25, 12, 'Dal', 'Rentio RPROTO - CLASSIC TOOR DAL, 1 Kg', 830, '2022-07-14 06:33:26'),
(26, 12, 'Dal', '24 Mantra Organic Toor Dal, 1 kg Pouch', 825, '2022-07-14 06:33:37'),
(27, 12, 'Ghee', 'Organic Cow Ghee 500 ml', 799, '2022-07-14 06:33:49'),
(28, 12, 'Dal', 'BIOAYURVEDA Arhar Dal, 1kg', 689, '2022-07-14 06:33:59'),
(29, 12, 'Ghee', 'Fresho Organic Cow Desi Ghee/Tuppa, 500 ml', 1000, '2022-07-14 06:34:10'),
(30, 12, 'Ghee', 'Aashirvaad Svasti Pure Cow Ghee 500ml Ceka', 1100, '2022-07-14 06:34:22'),
(31, 12, 'Ghee', 'Amul Pure Ghee, 500ml', 1120, '2022-07-14 06:34:35'),
(32, 12, 'Rice', 'Daawat Traditional Basmati Rice 1kg', 500, '2022-07-14 06:35:10'),
(33, 12, 'Salt', 'Aashirvaad Salt - Iodised 1 Kg', 300, '2022-07-14 06:35:19'),
(34, 12, 'Oils', 'Oleev Active Olive Oil with Energocules, 1 L Bottle', 800, '2022-07-14 06:35:28'),
(35, 12, 'Oils', '24 Mantra Organic Expeller Pressed - Sunflower Oil, 1 L Bottle', 780, '2022-07-14 06:35:37'),
(36, 12, 'Oils', 'Emami Healthy & Tasty - Refined Sunflower Oil, 1 L Pouch', 450, '2022-07-14 06:35:47'),
(37, 12, 'Oils', 'Saffola Active Refined Cooking oil | Blended Rice Bran & SoyaBean oil, 1 L Pouch', 790, '2022-07-14 06:35:59'),
(38, 12, 'Wheat', 'Ashirvad Aata 1kg', 300, '2022-07-14 06:37:52'),
(39, 12, 'Rice', 'Organic India White Rice Basmati 1kg', 130, '2022-07-20 19:12:39'),
(40, 1, 'Dal', 'Tata Sampann Toor Dal/Arhar Dal, 1 kg Pouch', 155, '2022-07-22 13:43:12'),
(41, 1, 'Dal', 'Rentio RPROTO - CLASSIC TOOR DAL, 1 Kg', 180, '2022-07-22 13:43:21'),
(42, 1, 'Dal', '24 Mantra Organic Toor Dal, 1 kg Pouch', 260, '2022-07-22 13:43:30'),
(43, 1, 'Dal', 'Organic Tattva Arhar (Tur) Dal, 1 kg Pouch', 270, '2022-07-22 13:43:40'),
(44, 1, 'Dal', 'BIOAYURVEDA Arhar Dal, 1kg', 165, '2022-07-22 13:43:54'),
(45, 1, 'Ghee', 'Organic Cow Ghee 500 ml', 649, '2022-07-22 13:44:26'),
(46, 1, 'Ghee', 'Aashirvaad Svasti Pure Cow Ghee 500ml Ceka', 286, '2022-07-22 13:44:37'),
(47, 1, 'Ghee', 'Himalayan Natives A2 Gir cow Bilona ghee - 500ML', 958, '2022-07-22 13:44:48'),
(48, 1, 'Ghee', 'Amul Pure Ghee, 500ml', 255, '2022-07-22 13:44:58'),
(49, 1, 'Oils', 'Sundrop Oil - Heart, 1 L Pouch', 227, '2022-07-22 13:45:27'),
(50, 1, 'Oils', 'Saffola Active Refined Cooking oil | Blended Rice Bran & SoyaBean oil, 1 L Pouch', 221, '2022-07-22 13:45:36'),
(51, 1, 'Oils', 'Emami Healthy & Tasty - Refined Sunflower Oil, 1 L Pouch', 209, '2022-07-22 13:47:06'),
(52, 1, 'Oils', 'Fortune Refined - Cotton Seed Oil, 1 L', 180, '2022-07-22 13:47:17'),
(53, 1, 'Oils', '24 Mantra Organic Expeller Pressed - Sunflower Oil, 1 L Bottle', 335, '2022-07-22 13:47:26'),
(54, 1, 'Oils', 'Oleev Active Olive Oil with Energocules, 1 L Bottle', 275, '2022-07-22 13:47:37'),
(55, 1, 'Oils', 'Mature Harvest Olive oil', 1299, '2022-07-22 13:47:49'),
(56, 1, 'Oils', 'Figaro Olive Oil-1Ltr', 999, '2022-07-22 13:47:59'),
(57, 1, 'Oils', 'Del Monte Extra Virgin Olive Oil PET, 1L', 699, '2022-07-22 13:48:09'),
(58, 1, 'Rice', 'Organic India White Rice Basmati 1kg', 221, '2022-07-22 13:48:29'),
(59, 1, 'Rice', 'Daawat Brown Rice 1kg', 175, '2022-07-22 13:48:44'),
(60, 1, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', 162, '2022-07-22 13:52:23'),
(61, 1, 'Salt', 'Aashirvaad Salt - Iodised 1 Kg', 24, '2022-07-22 13:52:48'),
(62, 1, 'Salt', 'Patanjali Namak, 1 kg', 22, '2022-07-22 13:53:03'),
(63, 1, 'Salt', 'Tata Salt, 1kg Pack', 118, '2022-07-22 13:54:00'),
(64, 1, 'Salt', 'Catch Rock Salt 1Kg', 130, '2022-07-22 13:54:23'),
(65, 1, 'Salt', 'TATA Salt Rock Salt, 1kg', 118, '2022-07-22 13:54:35'),
(66, 1, 'Sugar', 'Fortune Sugar, 1 kg', 55, '2022-07-22 13:54:48'),
(67, 1, 'Sugar', 'Nourish Sugar – 1 Kg', 55, '2022-07-22 13:55:01'),
(68, 1, 'Sugar', 'Pure&Sure Organic Sugar, 1kg', 130, '2022-07-22 13:55:15'),
(69, 1, 'Sugar', 'Conscious Food Golden Sugar 1kg', 250, '2022-07-22 13:55:27'),
(70, 1, 'Tea', 'Red Label Tea - Natural Care, 1 kg', 560, '2022-07-22 13:55:47'),
(71, 1, 'Tea', 'Cambridge Tea Party Masala Chai Tea, 1 Kg', 449, '2022-07-22 13:56:04'),
(72, 1, 'Tea', 'Society Premium Pure Assam CTC Leaf Tea, 1 Kg Pouch', 590, '2022-07-22 13:56:53'),
(73, 1, 'Tea', 'Wagh Bakri Premium Leaf Tea Poly Pack, 1kg', 520, '2022-07-22 13:58:15'),
(74, 12, 'Dal', 'Tata Sampann Toor Dal/Arhar Dal, 1 kg Pouch', 160, '2022-07-22 13:59:48'),
(75, 12, 'Dal', 'Rentio RPROTO - CLASSIC TOOR DAL, 1 Kg', 190, '2022-07-22 13:59:59'),
(76, 12, 'Dal', '24 Mantra Organic Toor Dal, 1 kg Pouch', 265, '2022-07-22 14:00:07'),
(77, 12, 'Dal', 'Organic Tattva Arhar (Tur) Dal, 1 kg Pouch', 270, '2022-07-22 14:00:15'),
(78, 12, 'Dal', 'BIOAYURVEDA Arhar Dal, 1kg', 170, '2022-07-22 14:00:24'),
(79, 12, 'Ghee', 'Fresho Organic Cow Desi Ghee/Tuppa, 500 ml', 600, '2022-07-22 14:00:36'),
(80, 12, 'Ghee', 'Aashirvaad Svasti Pure Cow Ghee 500ml Ceka', 290, '2022-07-22 14:00:49'),
(81, 12, 'Ghee', 'Himalayan Natives A2 Gir cow Bilona ghee - 500ML', 1000, '2022-07-22 14:01:00'),
(82, 12, 'Ghee', 'Amul Pure Ghee, 500ml', 300, '2022-07-22 14:01:13'),
(83, 12, 'Oils', 'Sundrop Oil - Heart, 1 L Pouch', 300, '2022-07-22 14:01:27'),
(84, 12, 'Oils', 'Saffola Active Refined Cooking oil | Blended Rice Bran & SoyaBean oil, 1 L Pouch', 230, '2022-07-22 14:01:36'),
(85, 12, 'Oils', 'Emami Healthy & Tasty - Refined Sunflower Oil, 1 L Pouch', 210, '2022-07-22 14:01:44'),
(86, 12, 'Oils', 'Fortune Refined - Cotton Seed Oil, 1 L', 190, '2022-07-22 14:01:55'),
(87, 12, 'Oils', '24 Mantra Organic Expeller Pressed - Sunflower Oil, 1 L Bottle', 340, '2022-07-22 14:02:05'),
(88, 12, 'Oils', 'Oleev Active Olive Oil with Energocules, 1 L Bottle', 280, '2022-07-22 14:02:15'),
(89, 12, 'Oils', 'Saffola Aura Extra Virgin Olive Oil - 1L', 1360, '2022-07-22 14:02:26'),
(90, 12, 'Oils', 'Mature Harvest Olive oil', 1300, '2022-07-22 14:02:35'),
(91, 12, 'Oils', 'Figaro Olive Oil-1Ltr', 1000, '2022-07-22 14:02:44'),
(92, 12, 'Oils', 'Del Monte Extra Virgin Olive Oil PET, 1L', 700, '2022-07-22 14:02:54'),
(93, 12, 'Rice', 'Organic India White Rice Basmati 1kg', 221, '2022-07-22 14:03:32'),
(94, 12, 'Rice', 'Daawat Brown Rice 1kg', 180, '2022-07-22 14:03:48'),
(95, 12, 'Salt', 'Aashirvaad Salt - Iodised 1 Kg', 30, '2022-07-22 14:04:19'),
(96, 12, 'Salt', 'Patanjali Namak, 1 kg', 25, '2022-07-22 14:04:39'),
(97, 12, 'Salt', 'Tata Salt, 1kg Pack', 1305, '2022-07-22 14:04:55'),
(98, 12, 'Salt', 'Catch Rock Salt 1Kg', 140, '2022-07-22 14:05:09'),
(99, 12, 'Salt', 'TATA Salt Rock Salt, 1kg', 120, '2022-07-22 14:05:22'),
(100, 12, 'Sugar', 'Fortune Sugar, 1 kg', 60, '2022-07-22 14:05:34'),
(101, 12, 'Sugar', 'Nourish Sugar – 1 Kg', 60, '2022-07-22 14:05:45'),
(102, 12, 'Sugar', 'Pure&Sure Organic Sugar, 1kg', 135, '2022-07-22 14:05:55'),
(103, 12, 'Sugar', 'Conscious Food Golden Sugar 1kg', 255, '2022-07-22 14:06:08'),
(104, 12, 'Sugar', 'Madhur Sugar, 1Kg', 55, '2022-07-22 14:06:20'),
(105, 12, 'Tea', 'Red Label Tea - Natural Care, 1 kg', 560, '2022-07-22 14:06:32'),
(106, 12, 'Tea', 'Cambridge Tea Party Masala Chai Tea, 1 Kg', 450, '2022-07-22 14:06:42'),
(107, 12, 'Tea', 'Society Premium Pure Assam CTC Leaf Tea, 1 Kg Pouch', 595, '2022-07-22 14:06:52'),
(108, 12, 'Tea', 'Wagh Bakri Premium Leaf Tea Poly Pack, 1kg', 520, '2022-07-22 14:07:02'),
(109, 12, 'Tea', 'Tata Tea Premium - The Countrys Tea 1 Kg', 520, '2022-07-22 14:07:14'),
(110, 12, 'Wheat', 'Organic Premium Wheat Atta 1kg', 70, '2022-07-22 14:07:43'),
(111, 12, 'Wheat', 'Amul Whole Wheat Atta, 1 kg', 40, '2022-07-22 14:07:57'),
(112, 12, 'Wheat', '24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch', 60, '2022-07-22 14:08:11'),
(113, 12, 'Wheat', 'BB Royal Organic - Whole Wheat Atta/Ghau No Lot, 1 kg', 60, '2022-07-22 14:08:23'),
(114, 12, 'Wheat', 'Aashirvaad Atta with Multigrains 1kg', 50, '2022-07-22 14:08:33'),
(115, 12, 'Dal', 'Tata Sampann Toor Dal/Arhar Dal, 1 kg Pouch', 167, '2022-07-22 14:08:55'),
(116, 12, 'Dal', 'Tata Sampann Toor Dal/Arhar Dal, 1 kg Pouch', 159, '2022-07-22 14:09:03'),
(117, 12, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', 162, '2022-07-22 14:10:20'),
(118, 12, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', 170, '2022-07-22 14:10:40'),
(119, 12, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', 180, '2022-07-22 14:10:44'),
(120, 12, 'Rice', 'Himalayan Natives Premium Basmati Rice 1kg', 163, '2022-07-22 14:10:50'),
(121, 11, 'Dal', 'Tata Sampann Toor Dal/Arhar Dal, 1 kg Pouch', 160, '2022-07-22 14:23:39'),
(122, 11, 'Dal', 'Rentio RPROTO - CLASSIC TOOR DAL, 1 Kg', 180, '2022-07-22 14:23:46'),
(123, 11, 'Dal', '24 Mantra Organic Toor Dal, 1 kg Pouch', 265, '2022-07-22 14:23:55'),
(124, 11, 'Dal', 'Organic Tattva Arhar (Tur) Dal, 1 kg Pouch', 275, '2022-07-22 14:24:02'),
(125, 11, 'Dal', 'BIOAYURVEDA Arhar Dal, 1kg', 165, '2022-07-22 14:24:11'),
(126, 11, 'Dal', 'BIOAYURVEDA Arhar Dal, 1kg', 165, '2022-07-22 14:24:21'),
(127, 11, 'Ghee', 'Fresho Organic Cow Desi Ghee/Tuppa, 500 ml', 600, '2022-07-22 14:25:03'),
(128, 11, 'Ghee', 'Organic Cow Ghee 500 ml', 650, '2022-07-22 14:25:21'),
(129, 11, 'Ghee', 'Aashirvaad Svasti Pure Cow Ghee 500ml Ceka', 286, '2022-07-22 14:25:38'),
(130, 11, 'Ghee', 'Himalayan Natives A2 Gir cow Bilona ghee - 500ML', 960, '2022-07-22 14:25:58'),
(131, 11, 'Ghee', 'Amul Pure Ghee, 500ml', 300, '2022-07-22 14:26:07'),
(132, 11, 'Ghee', 'Amul Pure Ghee, 500ml', 350, '2022-07-22 14:26:11');

-- --------------------------------------------------------

--
-- Table structure for table `onlycategory`
--

CREATE TABLE `onlycategory` (
  `index` int(255) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `onlycategory`
--

INSERT INTO `onlycategory` (`index`, `category`) VALUES
(1, 'Rice'),
(2, 'Wheat'),
(3, 'Dal'),
(4, 'Ghee'),
(5, 'Oils'),
(6, 'Salt'),
(7, 'Sugar'),
(8, 'Tea');

-- --------------------------------------------------------

--
-- Table structure for table `order_pick`
--

CREATE TABLE `order_pick` (
  `c_id` int(255) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `total` int(255) NOT NULL,
  `store` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `o_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(255) NOT NULL,
  `feedback` int(255) NOT NULL,
  `token` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_pick`
--

INSERT INTO `order_pick` (`c_id`, `c_name`, `total`, `store`, `location`, `o_date`, `status`, `feedback`, `token`) VALUES
(4, '24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch (2) ', 800, 'D-mart', 'Motera', '2022-07-09 12:50:32', 1, 3, 17834),
(4, 'Organic India White Rice Basmati 1kg (1) , Himalayan Natives Premium Basmati Rice 1kg (1) ', 480, 'D-mart', 'Motera', '2022-07-13 12:51:50', 1, 2, 20384),
(4, 'Organic India White Rice Basmati 1kg (3) ', 390, 'D-mart', 'Motera', '2022-07-20 19:09:57', 0, 0, 30573),
(4, 'Himalayan Natives Premium Basmati Rice 1kg (1) ', 500, 'Reliance SMART', 'Naroda', '2022-07-20 19:10:44', 1, 3, 31181),
(4, 'Organic India White Rice Basmati 1kg (1) ', 130, 'D-mart', 'Motera', '2022-07-07 16:33:15', 1, 0, 39530),
(4, 'Organic India White Rice Basmati 1kg (1) , Himalayan Natives Premium Basmati Rice 1kg (1) ', 480, 'D-mart', 'Motera', '2022-07-07 16:43:10', 1, 0, 43647),
(4, 'Himalayan Natives Premium Basmati Rice 1kg (1) ', 500, 'Reliance SMART', 'Naroda', '2022-07-07 15:55:40', 0, 0, 61384),
(4, '24 Mantra Organic Toor Dal, 1 kg Pouch (2) ', 530, 'D-mart', 'Mira Road', '2022-07-22 14:28:37', 0, 0, 81606),
(4, 'Organic India White Rice Basmati 1kg (3) ', 390, 'D-mart', 'Motera', '2022-07-02 14:06:54', 0, 0, 85288),
(4, 'Organic India White Rice Basmati 1kg (3) , Ashirvad Aata 1kg (2) , 24 Mantra Organic Atta - Whole Wheat, 1 kg Pouch (1) ', 2400, 'Reliance SMART', 'Naroda', '2022-07-07 15:55:40', 0, 0, 96082),
(4, 'Tata Sampann Toor Dal/Arhar Dal, 1 kg Pouch (5) , Rentio RPROTO - CLASSIC TOOR DAL, 1 Kg (1) ', 985, 'Reliance SMART', 'Mira Road', '2022-07-22 14:28:37', 0, 0, 97851);

-- --------------------------------------------------------

--
-- Table structure for table `storetable`
--

CREATE TABLE `storetable` (
  `city` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `store_name` varchar(255) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `storetable`
--

INSERT INTO `storetable` (`city`, `location`, `store_name`, `id`) VALUES
('Ahmedabad', 'Motera', 'D-mart', 1),
('Ahmedabad', 'Naroda', 'Reliance SMART', 3),
('Ahmedabad', 'Ring Road', 'Reliance SMART', 4),
('Ahmedabad', 'Motera', 'Big-Bazaar', 5),
('Ahmedabad', 'Ring Road', 'Big-Bazaar', 6),
('Mumbai', 'Bandra', 'D-mart', 10),
('Mumbai', 'Mira Road', 'D-mart', 11),
('Mumbai', 'Mira Road', 'Reliance SMART', 12),
('Ahmedabad', 'Naroda', 'D-mart', 13),
('Mumbai', 'Malad', 'Reliance SMART', 14);

-- --------------------------------------------------------

--
-- Table structure for table `umtable`
--

CREATE TABLE `umtable` (
  `umid` int(10) NOT NULL,
  `u_name` varchar(255) NOT NULL,
  `u_age` int(255) NOT NULL,
  `u_contact` int(255) NOT NULL,
  `u_email` varchar(255) NOT NULL,
  `u_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `umtable`
--

INSERT INTO `umtable` (`umid`, `u_name`, `u_age`, `u_contact`, `u_email`, `u_password`) VALUES
(1, 'Anjali Prajapati', 30, 4566667, 'anjali_patel@gmail.com', 'madhvi11@122'),
(3, 'Parita', 45, 4556, 'apjt2001@gmail.com', '123'),
(4, 'Hir', 34, 5677, '201901118@daiict.ac.in', '1234'),
(5, 'Parita2', 37, 244555, '201901236@daiict.ac.in', '123'),
(6, 'Ramesh', 30, 456788, 'richa123@gmail.com', 'Richa@123'),
(10, 'Anju2', 45, 456677, 'thekppatel@gmaill.com', '12@kp3'),
(11, 'Dheeraj', 38, 354656, 'madhvi111patel@gmail.com', 'madhvi@123'),
(12, 'Madhvi', 30, 2147483647, '201901171@daiict.ac.in', '123'),
(13, 'Archana', 40, 2147483647, '201901294@daiict.ac.in', 'archana123@'),
(14, 'Richa', 30, 2147483647, '201901190@daiict.ac.in', 'richa123');

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `No` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `code` mediumint(50) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`No`, `name`, `email`, `password`, `contact`, `address`, `code`, `status`) VALUES
(1, 'Madhvi', 'madhvi111patel@gmail.com', '123', '09327099411', 'RAJKOT', 0, 'verified'),
(2, 'Anjali', 'abc@gmail.com', '123', '345677', 'abcdfgrtt', 135312, 'notverified'),
(3, 'Anjali', 'thekppatel30@gmail.com', '1234@anjali', '34555', 'vadodara, gujarat', 0, 'verified'),
(4, 'Madhvi', '201901171@daiict.ac.in', '123', '09825998951', 'RAJKOT', 0, 'verified');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`No`);

--
-- Indexes for table `onlycategory`
--
ALTER TABLE `onlycategory`
  ADD PRIMARY KEY (`index`);

--
-- Indexes for table `order_pick`
--
ALTER TABLE `order_pick`
  ADD PRIMARY KEY (`token`);

--
-- Indexes for table `storetable`
--
ALTER TABLE `storetable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `umtable`
--
ALTER TABLE `umtable`
  ADD PRIMARY KEY (`umid`),
  ADD UNIQUE KEY `u_email` (`u_email`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`No`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `PID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `No` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `onlycategory`
--
ALTER TABLE `onlycategory`
  MODIFY `index` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `storetable`
--
ALTER TABLE `storetable`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `No` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
