-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 12, 2019 at 03:49 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL DEFAULT '',
  `description` text,
  `price` decimal(11,2) UNSIGNED NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
(9, 'Advanced Penetration Testing For Highly-Secured Environments', '- Learn how to perform an efficient, organized, and effective penetration test from start to finish\r\n- Gain hands-on penetration testing experience by building and testing a virtual lab environment that includes commonly found security measures such as IDS and firewalls\r\n- Take the challenge and perform a virtual penetration test against a fictional corporation from start to finish and then verify your results by walking through step-by-step solutions\r\n- Detailed step-by-step guidance on managing testing results and writing clearly organized and effective penetration testing reports\r\n- Properly scope your penetration test to avoid catastrophe\r\n- Understand in detail how the testing process works from start to finish, not just how to use specific tools\r\n- Use advanced techniques to bypass security controls and remain hidden while testing\r\n- Create a segmented virtual network with several targets, IDS and firewall\r\n- Generate testing reports and statistics\r\n- Perform an efficient, organized, and effective penetration test from start to finish\r\nAlthough the book is intended for someone that has a solid background in information security the step-by-step instructions make it easy to follow for all skill levels. You will learn Linux skills, how to setup your own labs, and much much more.', '3140.48', 'uploads/1.jpg', '2019-03-12 02:26:56', '2019-03-12 02:26:56'),
(10, 'Black Hat Python', 'When it comes to creating powerful and effective hacking tools, Python is the language of choice for most security analysts. But just how does the magic happen?\r\n\r\nIn Black Hat Python, the latest from Justin Seitz (author of the best-selling Gray Hat Python), youâ€™ll explore the darker side of Pythonâ€™s capabilitiesâ€”writing network sniffers, manipulating packets, infecting virtual machines, creating stealthy trojans, and more.', '1465.38', 'uploads/2.jpg', '2019-03-12 02:42:44', '2019-03-12 02:42:44');

-- --------------------------------------------------------

--
-- Table structure for table `books_categories`
--

CREATE TABLE `books_categories` (
  `book_id` int(11) UNSIGNED NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(5, 'Cybersecurity');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `shipping_address` varchar(100) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `full_name`, `shipping_address`, `phone_no`) VALUES
(5, 5, 'Bookstore Admin', NULL, '09123456789');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `book_id` int(11) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `comment`, `rating`, `book_id`, `created_at`, `updated_at`) VALUES
(6, 'Nice book', 3, 10, '2019-03-12 02:48:16', '2019-03-12 02:48:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `uname` varchar(100) NOT NULL DEFAULT '',
  `pass` varchar(60) NOT NULL DEFAULT '',
  `is_admin` tinyint(1) UNSIGNED DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uname`, `pass`, `is_admin`, `created_at`, `updated_at`) VALUES
(5, 'ajdumanhug@gmail.com', 'c378985d629e99a4e86213db0cd5e70d', 1, '2019-03-12 02:15:17', '2019-03-12 02:15:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
