-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2024 at 09:57 AM
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
-- Database: `angkatan3_compro`
--

-- --------------------------------------------------------

--
-- Table structure for table `general_setting`
--

CREATE TABLE `general_setting` (
  `id` int(11) NOT NULL,
  `website_name` varchar(50) NOT NULL,
  `website_link` varchar(50) DEFAULT NULL,
  `website_phone` varchar(16) NOT NULL,
  `website_email` varchar(50) NOT NULL,
  `website_address` text NOT NULL,
  `twitter_link` varchar(100) DEFAULT NULL,
  `fb_link` varchar(100) DEFAULT NULL,
  `ig_link` varchar(100) DEFAULT NULL,
  `linkedin_link` varchar(100) DEFAULT NULL,
  `youtube_link` varchar(100) DEFAULT NULL,
  `logo` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `general_setting`
--

INSERT INTO `general_setting` (`id`, `website_name`, `website_link`, `website_phone`, `website_email`, `website_address`, `twitter_link`, `fb_link`, `ig_link`, `linkedin_link`, `youtube_link`, `logo`, `created_at`, `updated_at`) VALUES
(3, 'Me and Myself', 'https://getbootstrap.com/docs/5.3/getting-started/', '0654678678', 'sayaaa@gmail.com', 'Jl. Qertyuiop, Jakarta-Indonesia', NULL, NULL, NULL, NULL, NULL, 'pslogo.png', '2024-10-24 02:54:32', '2024-10-25 06:23:48');

-- --------------------------------------------------------

--
-- Table structure for table `instruktur`
--

CREATE TABLE `instruktur` (
  `id` int(11) NOT NULL,
  `nama_instruktur` varchar(100) NOT NULL,
  `jurusan_instruktur` varchar(40) NOT NULL,
  `fb_link` varchar(50) DEFAULT NULL,
  `ig_link` varchar(50) DEFAULT NULL,
  `twitter_link` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instruktur`
--

INSERT INTO `instruktur` (`id`, `nama_instruktur`, `jurusan_instruktur`, `fb_link`, `ig_link`, `twitter_link`, `created_at`, `updated_at`, `foto`) VALUES
(4, 'Albert Einstein', 'Physics science', NULL, NULL, NULL, '2024-10-25 04:08:02', '2024-10-25 04:32:52', 'download.png'),
(6, 'Marcus Aurelius', 'Faculty of Law', NULL, NULL, NULL, '2024-10-25 04:09:50', '2024-10-25 06:54:47', 'ma.png'),
(8, 'Ibnu Sina', 'Faculty of Medicine', NULL, NULL, NULL, '2024-10-25 04:35:52', '2024-10-25 07:05:33', 'ibnsina.png'),
(9, 'J.R. Oppenheimer', 'Physics and Chemistry', NULL, NULL, NULL, '2024-10-25 07:00:22', '2024-10-25 07:00:22', 'op.png');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_profile`
--

CREATE TABLE `kategori_profile` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori_profile`
--

INSERT INTO `kategori_profile` (`id`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Latar Belakang', '2024-10-25 07:40:27', '2024-10-25 07:40:27'),
(2, 'Visi dan Misi', '2024-10-25 07:40:27', '2024-10-25 07:40:27');

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `id` int(11) NOT NULL,
  `id_kategori` varchar(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `slug` text NOT NULL,
  `isi` text NOT NULL,
  `foto` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `password`, `foto`, `created_at`, `updated_at`) VALUES
(18, 'Lahh Kocakk', 'fufufafa@gmail.com', '728348f63167a287d2509edf88d74dbf79c44480', '', '2024-10-23 03:54:16', '2024-10-23 03:58:11'),
(27, 'Saya', 'saya@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', 'php.png', '2024-10-23 08:14:30', '2024-10-23 08:19:42'),
(29, 'Duarr', 'duarr@gmail.com', '12345678', 'foto.png', '2024-10-24 01:04:06', '2024-10-24 01:04:06'),
(30, 'Admin', 'admin@gmail.com', '12345678', 'images.png', '2024-10-24 01:05:32', '2024-10-24 01:05:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `general_setting`
--
ALTER TABLE `general_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instruktur`
--
ALTER TABLE `instruktur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_profile`
--
ALTER TABLE `kategori_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `general_setting`
--
ALTER TABLE `general_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `instruktur`
--
ALTER TABLE `instruktur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kategori_profile`
--
ALTER TABLE `kategori_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
