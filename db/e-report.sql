-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2024 at 02:16 PM
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
-- Database: `e-report`
--

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `title`, `slug`, `content`, `thumbnail`, `status`, `user_id`, `created_at`) VALUES
(7, 'kami laparrr', 'kami-laparrr', '&amp;lt;p&amp;gt;aaaaaaaa&amp;lt;/p&amp;gt;', '6752a32a1406e.png', 1, 10, '2024-12-06 07:09:30'),
(8, 'pakett', 'pakett', '&amp;lt;p&amp;gt;paket 1 kuintal senter telah kami kirimkan didepan rumah anda&amp;lt;/p&amp;gt;', '6752c595bdf18.png', 1, 12, '2024-12-06 09:36:21'),
(9, 'senter lagi', 'senter-lagi', '&amp;lt;p&amp;gt;maaf pak. senternya kebawa satu. ini saya kembalik kedepan rumah anda&amp;lt;/p&amp;gt;', '6752c5c12913e.png', 0, 12, '2024-12-06 09:37:05'),
(10, 'wayang jogja', 'wayang-jogja', '&amp;lt;p&amp;gt;&amp;lt;strong&amp;gt;WAYANG EKSLUSIF SUDAH TIBA!&amp;lt;/strong&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;p&amp;gt;&amp;amp;nbsp;&amp;lt;/p&amp;gt;&amp;lt;p&amp;gt;Wayang eksklusif dari kulit raja jin telah tiba dikediaman anda&amp;lt;/p&amp;gt;', '6752c617d7a14.jpg', 0, 12, '2024-12-06 09:38:31');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'superadmin'),
(2, 'petugas'),
(3, 'masyarakat');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone_number` varchar(12) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `nik`, `name`, `phone_number`, `password`, `role_id`) VALUES
(8, 'petugas', '222222', 'Petugas', '222222', '$2y$10$6w6UfBZ4Y.idavfLe.OxIuT5ke1AWv4EWrirkbo8t6wCdYi1gf8oW', 2),
(10, 'abc', '2134565', 'abc', '628128898121', '$2y$10$LUoTYZT1svB6f9g4nC6xTeHJRLiY2pvkqoBZ9wyaegtrvXd08zIAi', 3),
(11, 'mimin', '123476', 'Ahmad Raffael Fauzan', '081288981214', '$2y$10$jARhYEzdmrpaVY5dLRzYAenDVciCMALciZv1vAXAoI.U2tAdwbaHq', 1),
(12, 'khalil', '198723', 'khalil bro', '098213532', '$2y$10$EZj/5t.BJgPkZANiqG6i5ui6EC6W2wH7jJsqoLyAcJaLSTG07c0ku', 3),
(13, 'pepetugas', '98737121', 'John Chine', '081276751', '$2y$10$OCwLFn0GMrkUyj9Jq78gReHgvhCRegszEZ8.Ny48Q1TDK01jLq/XO', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
