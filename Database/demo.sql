-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2022 at 10:40 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `created_at` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`first_name`, `last_name`, `email`, `city`, `country`, `job_title`, `updated_at`, `created_at`) VALUES
('Al', 'Mamun', 'shamimalmamun.aiub@gmail.com', 'Savar', 'Dhaka', 'Soft Engineer', '2022-12-23 23:18:56', '05:18:56'),
('Al', 'Mamun', 'shamimalmamun.aiub@gmail.com', 'Savar', 'Dhaka', 'Soft Engineer', '2022-12-23 23:20:13', '05:20:13'),
('Al', 'Mamun', 'shamimalmamun.aiub@gmail.com', 'Savar', 'Dhaka', 'Soft Engineer', '2022-12-23 23:25:42', '05:25:42'),
('Al', 'Mamun', 'shamimalmamun.aiub@gmail.com', 'Savar', 'Dhaka', 'Soft Engineer', '2022-12-23 23:59:44', '05:59:44'),
('Al', 'Mamun', 'shamimalmamun.aiub@gmail.com', 'Savar', 'Dhaka', 'Soft Engineer', '2022-12-24 00:00:15', '06:00:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` tinyint(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `updated_at`, `created_at`) VALUES
(1, 'Mamun updated', 'almamun@gmail.com', '$2y$10$oUKYd.PVE9xFUoErRO0paeZWPW6eLqLysTk3uNsf04xadxL6yHPGS', '2022-12-24 09:13:12', '2022-12-24 09:07:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
