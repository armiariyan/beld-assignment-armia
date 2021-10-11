-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2021 at 03:44 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_beld`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Armia Riyan', 'akunarmia@gmail.com', '2021-10-08 06:11:40', '$2y$10$760qkOQuqnvovE767zwWD.1edD1mPEPR4/YDMGx6ffEHCIdh3Mf76', '0QmFmtuwVcwzS5SV9wgi2H93WUVexD2jk1F2sd6S6MsD84iJjTcoNPVHN92X', '2021-10-08 06:11:41', '2021-10-08 06:18:21'),
(2, 'Martaka Prakosa Kusumo', 'qmayasari@example.org', '2021-10-08 06:11:40', '$2y$10$gNriMpkMvre33uzvWKfTqOfeQkdbs2UsUJMrjnrka3fM803FkQegu', 'bNKvNWnQma', '2021-10-08 06:11:41', '2021-10-08 06:11:41'),
(3, 'Widya Zulaikha Wulandari S.Sos', 'mangunsong.hana@example.net', '2021-10-08 06:11:40', '$2y$10$iVoaRSghjMKPvKeB7E8UVuXfqzIXwW/Vzi9VTb9STuDuQpXaRXs/u', 'sj4XHD2YScym5Mxy1iFh8oYY6m66x5C8T65RTRiV4bCg6zOUYfSwBWeaiCke', '2021-10-08 06:11:41', '2021-10-08 06:11:41'),
(4, 'Arsipatra Wibisono S.Ked', 'hidayat.hasan@example.com', '2021-10-08 06:11:40', '$2y$10$s3GF9K/uT/BrrA26ZoXELe5dfwhp6fnTcldbc4LaG2kbcsheMVKkK', 'oJNnmYk884', '2021-10-08 06:11:41', '2021-10-08 06:11:41'),
(5, 'Diana Halimah', 'susanti.olivia@example.com', '2021-10-08 06:11:40', '$2y$10$mTHWLl0JKbexhm/rFFvCj.6TqLeJiD2uEcUJ0VMphNR/1DhZAQyMq', 'x0s1Kde5lq', '2021-10-08 06:11:41', '2021-10-08 06:11:41'),
(6, 'Amalia Nurdiyanti', 'santoso.prasetya@example.net', '2021-10-08 06:11:41', '$2y$10$elejPLtHPsaVgv81s.zn5uGcPNc1W23Psufd40aVSohCkxl3L8QxC', '8lMEMdxI7p', '2021-10-08 06:11:41', '2021-10-08 06:11:41'),
(7, 'Kamaria Yolanda', 'kacung.mardhiyah@example.net', '2021-10-08 06:11:41', '$2y$10$Pz5IbKL/Sww6RAGeHv7ZWOhCPSGIVg.Mkuq77Ds2QIuo9MVAiGC.2', 'gqiFtCAKP5', '2021-10-08 06:11:41', '2021-10-08 06:11:41'),
(8, 'Wasis Wacana', 'zsaragih@example.net', '2021-10-08 06:11:41', '$2y$10$AJBdXZRxDVK7B2hgF0HDWOGaWYwn/AMAbiFoQJhOc.Qvo/NaZI8nm', 'Xic7ufmrNV', '2021-10-08 06:11:41', '2021-10-08 06:11:41'),
(9, 'Hasna Irma Widiastuti', 'lurhur35@example.net', '2021-10-08 06:11:41', '$2y$10$tuQPZc4D2fI6OBphw6LgGellpru/L2pcMBwnyPFVVHETw4cNNXqs.', 'iv2vwOzk5d', '2021-10-08 06:11:41', '2021-10-08 06:11:41'),
(10, 'Laswi Sihotang', 'keisha.nugroho@example.com', '2021-10-08 06:11:41', '$2y$10$p6HboXO42FenPonoSQ9OOOJ3zDaGKaHq/k5wK1ZrpU58Dc2Z9cyCS', 'WJ59jQZr16', '2021-10-08 06:11:41', '2021-10-08 06:11:41'),
(11, 'Maya Maya Farida', 'sihombing.saadat@example.com', '2021-10-08 06:11:41', '$2y$10$osC32e/Kzys50ZKwZRVPU.FzL0swM5n9UytQ3EbwAZzbBpDhJXEWK', 'YzD1pvrwKt', '2021-10-08 06:11:41', '2021-10-08 06:11:41'),
(12, 'Kayla Permata', 'rama.maheswara@example.net', '2021-10-08 06:11:41', '$2y$10$OUXW3G65n9WwxQivIrTIZO4PaEyL0lSIRoiqPTVWXuaTxqjCrYN9q', 'EUYcM053A0', '2021-10-08 06:11:41', '2021-10-08 06:11:41'),
(13, 'Pranata Maulana S.Psi', 'hendra.pertiwi@example.com', '2021-10-08 06:11:41', '$2y$10$Ghb8RI0hoJ9acpdNqup95uicTEDVwY.Sk5KGrcoljp5yuMFErMtFG', '6sgmh4HXnf', '2021-10-08 06:11:41', '2021-10-08 06:11:41'),
(14, 'Lantar Sihotang', 'pratama.langgeng@example.org', '2021-10-08 06:11:41', '$2y$10$VSOGSvYgAuLB4oSitp9VsubUauRRdI.v8gcSbd/kI0yvxomcZJ/9.', 'LpJVtxt7za', '2021-10-08 06:11:41', '2021-10-08 06:11:41'),
(15, 'Suci Ayu Puspita S.Psi', 'uyainah.nurul@example.com', '2021-10-08 06:11:41', '$2y$10$5dDX5KaT3LdVJfws10R3leFwxNp6Wv9KgHQlCXf9QaK5AWYAoPRKW', 'gBXiSTfLtp', '2021-10-08 06:11:41', '2021-10-08 06:11:41'),
(18, 'Agusthina', 'thina@gmail.com', NULL, '$2y$10$w/KSbap9rb5G1XniEVfFz.5YndstldEO4n4KqQjpQHzWSv7MLTp86', NULL, '2021-10-08 06:43:14', '2021-10-08 06:43:14'),
(19, 'Pantene', 'pantene@gmail.com', NULL, '$2y$10$tPtshdHstvppMi7AtLBT.OlFYjwn0326lq7JCTTi5zUzHtDOQvD.y', NULL, '2021-10-08 06:43:35', '2021-10-08 06:43:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
