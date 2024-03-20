-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2024 at 10:36 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(222) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pic` varchar(111) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `details` varchar(333) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `pic`, `details`, `date`) VALUES
(21, 'شراب', 'دواء-كحة-يسبب-النعاس-وأنواعهم.jpg', '', '2021-12-18 09:03:34'),
(22, 'ابر', 'wbbhk4rvqrp64kscapd56zkh5vify1ep.jpg', '', '2021-12-18 09:04:09'),
(23, 'كبسول', 'fk.jpg', '', '2021-12-18 09:04:45'),
(24, 'كبسول عملي', 'login.jpg', '', '2021-12-18 09:05:07'),
(25, 'مسكنات الالم', 'cap.png', '', '2021-12-18 09:05:31'),
(26, 'حبوب ', 'what-a-treatment-for-migraine-headache.jpg', '', '2021-12-18 09:05:59'),
(27, 'علاج تجميل', '5-free-skin-saving-products-you-can-totally-find-home.jpg', '', '2021-12-18 09:06:16'),
(28, 'علاج الامراض المزمنة', '207136_4_1621846280.jpg', '', '2021-12-18 09:06:55'),
(29, 'علاجات اخرى /منوعة', 'أسرع_علاج_للأنيميا.jpg', '', '2021-12-18 09:07:11'),
(30, 'كريم', 'lotion.png', '', '2021-12-18 09:08:15'),
(31, 'ادوية خاصة', 'tablet.png', '', '2021-12-18 09:08:33'),
(32, 'مرهم حروق', 'cream.png', '', '2021-12-18 09:08:48'),
(33, 'سيتامول', 'what-a-treatment-for-migraine-headache.jpg', '', '2024-03-20 09:19:36');

-- --------------------------------------------------------

--
-- Table structure for table `inventeries`
--

CREATE TABLE `inventeries` (
  `id` int(11) NOT NULL,
  `catId` int(11) NOT NULL,
  `supplier` varchar(222) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unit` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pic` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `company` varchar(111) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `inventeries`
--

INSERT INTO `inventeries` (`id`, `catId`, `supplier`, `name`, `unit`, `price`, `pic`, `description`, `company`, `date`) VALUES
(28, 33, 'GSK', 'سيتامول', '50 ', '500', '', 'حبوب مسكنة باراسيتامول ', 'ابن النفيس', '2024-03-20 09:21:27'),
(29, 21, 'شركة الفا', 'شراب', '50', '1000', '', '3000', 'ابن النفيس', '2024-03-20 09:26:09'),
(30, 24, 'شركة الفا', 'كبسول عملي', '25', '1250', '', '3000', 'ابن النفيس', '2024-03-20 09:27:16'),
(31, 24, 'شركة الفا', 'كبسول عملي', '25', '100', '', '3000', 'ابن النفيس', '2024-03-20 09:28:07');

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `title` varchar(222) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(222) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`id`, `title`, `name`) VALUES
(1, 'القامشلي الحسكة سوريا', 'نظام ادارة الصيدلية');

-- --------------------------------------------------------

--
-- Table structure for table `sold`
--

CREATE TABLE `sold` (
  `id` int(11) NOT NULL,
  `name` varchar(222) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contact` varchar(222) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `discount` varchar(222) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `item` varchar(222) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `amount` varchar(222) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userId` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sold`
--

INSERT INTO `sold` (`id`, `name`, `contact`, `discount`, `item`, `amount`, `userId`, `date`) VALUES
(39, 'منير', '0934563', '50', '2', '-39', 2, '2024-03-17 07:37:47'),
(40, 'منير', '0934563', '3', '1', '997', 2, '2024-03-20 09:29:07');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pic` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `number` text NOT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cnic` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `pic`, `number`, `address`, `cnic`, `date`) VALUES
(1, 'faisal khan', 'fk.jpg', '2432342342', 'adfasdfasfdasdf', '2342342342423423', '2024-11-07 08:23:49'),
(2, 'faisal khan', 'fk.jpg', '2432342342', 'adfasdfasfdasdf', '2342342342423423', '2024-11-07 08:23:53'),
(3, 'faisal khan', 'fk.jpg', '2432342342', 'adfasdfasfdasdf', '2342342342423423', '2024-11-20 08:23:56'),
(4, 'faisal khan', 'fk.jpg', '2432342342', 'adfasdfasfdasdf', '2342342342423423', '2024-11-20 08:23:59'),
(5, 'faisal khan', 'fk.jpg', '2432342342', 'adfasdfasfdasdf', '2342342342423423', '2024-11-14 08:24:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `name` varchar(222) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pic` varchar(222) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `number` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `pic`, `number`, `date`) VALUES
(2, 'admin1@gmail.com', 'admin', 'الصيدلاني منير', 'png.png', '2548574/845485', '2024-12-01 08:45:10'),
(3, 'admin2@gmail.com', 'admin', 'محمد', 'pngwing.png', '4748475748', '2024-12-19 08:52:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventeries`
--
ALTER TABLE `inventeries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sold`
--
ALTER TABLE `sold`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `inventeries`
--
ALTER TABLE `inventeries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sold`
--
ALTER TABLE `sold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
