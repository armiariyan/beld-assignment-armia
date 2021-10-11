-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2021 at 04:23 PM
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
-- Database: `db_beld_api`
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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_11_131805_create_products_table', 1);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Bogisich Ltd', 542209, 'Esse maiores sit minima praesentium molestiae nemo corrupti. Deleniti est quis necessitatibus voluptatem maxime eaque itaque. Tenetur occaecati labore odio eum dolorem accusantium. Accusamus soluta vero id.', '2021-10-11 06:27:59', '2021-10-11 06:27:59'),
(3, 'Sporer, Torp and Ruecker', 285169, 'Voluptatem vero deserunt omnis dolores perferendis explicabo. Itaque nam distinctio sapiente nam suscipit omnis aut. Sint veniam dolorum est. Laborum quidem deserunt atque eum. Reprehenderit quia atque velit aperiam quis veniam nisi repellendus.', '2021-10-11 06:27:59', '2021-10-11 06:27:59'),
(4, 'Wilderman-Cummings', 427050, 'At voluptates eligendi aut nulla quia quae ex. Debitis non nisi esse et pariatur impedit aliquid. Nemo sequi ad est iusto sit maiores similique. Qui id excepturi blanditiis possimus. Facilis a laborum blanditiis et. Commodi rem voluptatum sint veritatis odit.', '2021-10-11 06:27:59', '2021-10-11 06:27:59'),
(5, 'Halvorson, Dare and Haag', 924618, 'Qui totam reiciendis cum deserunt dolor totam consequatur consequatur. Earum autem aut nihil dolorem dignissimos odio quia. Exercitationem molestias omnis adipisci facilis eaque perspiciatis. Exercitationem rerum modi nihil quam molestiae.', '2021-10-11 06:27:59', '2021-10-11 06:27:59'),
(6, 'Windler-Wehner', 217044, 'Commodi ut soluta voluptatem autem. Eos culpa neque sunt molestiae nihil quis ipsa temporibus. Et id rem ea consequatur nihil sint molestiae. Delectus sit vero qui. Eos autem dolor et inventore eaque eum voluptatem voluptatibus.', '2021-10-11 06:27:59', '2021-10-11 06:27:59'),
(7, 'Sawayn, Marquardt and King', 298045, 'Voluptatem facere labore neque. Aut excepturi sit cumque sit maxime. Qui molestias porro culpa tempora. Sunt dolorem et eveniet vero aut architecto hic. Perspiciatis id consequuntur non accusamus a.', '2021-10-11 06:27:59', '2021-10-11 06:27:59'),
(8, 'Murazik-Kiehn', 755698, 'Sit asperiores qui minus cumque itaque. Non ipsam fuga eos voluptas omnis. Eaque suscipit nobis eligendi quaerat exercitationem quia. Aut harum dolor eos enim cum.', '2021-10-11 06:27:59', '2021-10-11 06:27:59'),
(9, 'Roob-Heidenreich', 341951, 'Reiciendis in autem ratione aspernatur ab beatae. Non veniam vel et consequatur qui rerum ducimus alias. Et aspernatur tempora quia sed dolor ut. Aut dolores doloremque assumenda omnis necessitatibus aliquam. Unde aliquam qui maxime. Quia nihil illo voluptas porro laudantium.', '2021-10-11 06:27:59', '2021-10-11 06:27:59'),
(10, 'Rau Ltd', 517103, 'Sit ea consequatur sed maxime quae at odit numquam. Consectetur incidunt saepe aspernatur nisi dignissimos mollitia nemo perspiciatis. Eveniet aliquid natus qui praesentium. Ea non blanditiis iure labore est velit aspernatur. Voluptas eveniet harum accusamus aut. Omnis voluptas et molestiae molestiae ut qui assumenda.', '2021-10-11 06:27:59', '2021-10-11 06:27:59'),
(11, 'Hoodie Jacket', 120000, 'Best hoodie jacket in the world earth and mars and venus', '2021-10-11 07:03:30', '2021-10-11 07:03:30'),
(12, 'ARMIA RIYAN TEST CREATE', 120000, 'TEST CREATE DI POSTMAN', '2021-10-11 07:19:42', '2021-10-11 07:19:42'),
(13, 'ARMIA RIYAN TEST CREATE ID 13', 120000, 'TEST CREATE DI POSTMAN', '2021-10-11 07:21:46', '2021-10-11 07:21:46');

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
