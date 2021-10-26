-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 26, 2021 at 06:15 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(3, '2020_04_23_060411_create_posts_table', 1),
(4, '2020_04_23_061259_create_post2s_table', 1),
(11, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(12, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(13, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(14, '2016_06_01_000004_create_oauth_clients_table', 2),
(15, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(16, '2019_08_19_000000_create_failed_jobs_table', 2),
(17, '2019_12_14_000001_create_personal_access_tokens_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0f8de617e75c38411d8dff99d6a1f2ce4f1610bbcfad475374f5df3c22b31c99a99c5f1275d95deb', 3, '9098e509-d68f-4591-9e06-4ca27c36d5b8', NULL, '[\"*\"]', 0, '2020-05-18 22:17:46', '2020-05-18 22:17:46', '2021-05-19 05:17:46'),
('3e648a71d1a8f5d7dfb942dcd70af8e68da1b6cb309e272e5c7c0b29303c8e69d59734aeb7dc862a', 2, '9098e509-d68f-4591-9e06-4ca27c36d5b8', NULL, '[\"*\"]', 0, '2020-05-18 21:55:58', '2020-05-18 21:55:58', '2021-05-19 04:55:58'),
('5ef8d13fb16e137745133f1fce72e98976b36e21c8c8eb3cfcdfd9f51bed1a825b4131abc68782a7', 2, '9098e509-d68f-4591-9e06-4ca27c36d5b8', NULL, '[\"*\"]', 0, '2020-05-18 22:10:34', '2020-05-18 22:10:34', '2021-05-19 05:10:34'),
('752a8b6293fe2da1f0351d5f4a480174d737a489c681076ac1240fac144ed9dd8ad8c9b6faba4d51', 2, '9098e509-d68f-4591-9e06-4ca27c36d5b8', NULL, '[\"*\"]', 0, '2020-05-18 21:56:27', '2020-05-18 21:56:27', '2021-05-19 04:56:27'),
('75be782356289bbe83ae68c9000fe1371fe27dcf6e50e516623973b05c53256bf961b53e68c6af93', 2, '9098e509-d68f-4591-9e06-4ca27c36d5b8', NULL, '[\"*\"]', 0, '2020-05-18 22:17:32', '2020-05-18 22:17:32', '2021-05-19 05:17:32'),
('ddf4d02b2431b4371632cb39eaf60b1730be37878f117202d5dd80037a0da8662a5f1c5ee603decd', 2, '9098d707-ce82-4927-9ba3-9181f6335538', 'aaaa', '[]', 0, '2020-05-18 21:14:50', '2020-05-18 21:14:50', '2021-05-19 04:14:50'),
('e48629bcc49b357886cba9939fa38a480600bb85de9fa961216d9d3b36e5fd2791590da2a809fd43', 2, '9098e509-d68f-4591-9e06-4ca27c36d5b8', NULL, '[\"*\"]', 0, '2020-05-18 21:56:15', '2020-05-18 21:56:15', '2021-05-19 04:56:15');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_auth_codes`
--

INSERT INTO `oauth_auth_codes` (`id`, `user_id`, `client_id`, `scopes`, `revoked`, `expires_at`) VALUES
('0f92f89fa8cae628433188bbf87675ef95311be2fb716539170799d4aab89cc2e838692708421eac', 2, '9098e081-81ec-4d0d-8597-9f573aeda446', '[]', 0, '2020-05-19 04:50:33'),
('48b7a681830d2a52622b5735ed464a9c2a2d1feb1907991859d178e6d14fd401d0dcabd16f0bbbc4', 2, '9098e081-81ec-4d0d-8597-9f573aeda446', '[]', 0, '2020-05-19 04:57:16'),
('6e474afbbb8efd858ac86a7e3654eb50802da0d1a30b09c57426eb48c2062a8df0f26dfc84eadf4c', 2, '9098e081-81ec-4d0d-8597-9f573aeda446', '[]', 0, '2020-05-19 04:50:14');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
('9098d707-ce82-4927-9ba3-9181f6335538', NULL, 'Laravel Personal Access Client', 'Jl5CV9UNy36HVVmy9dn2rr7qJvD0Sa4glXQz6R6m', NULL, 'http://localhost', 1, 0, 0, '2020-05-18 21:06:10', '2020-05-18 21:06:10'),
('9098d707-ee12-4f7b-9b9f-08932e79d0b5', NULL, 'Laravel Password Grant Client', '80MCFd3q76u4yc8Veo8p3hSqs8FuarfOdJT9g8Rq', 'users', 'http://localhost', 0, 1, 0, '2020-05-18 21:06:10', '2020-05-18 21:06:10'),
('9098d72d-00b4-4686-a682-60956f4e2cce', 2, 'Akwhan', 'Wd91ZKernCBeFspKZZhY91CFcEqHnrxmF5lhZml3', NULL, 'http://akhwan.web.id', 0, 0, 1, '2020-05-18 21:06:34', '2020-05-18 21:32:26'),
('9098d781-1832-46a9-a2dd-1a1369047a44', 2, 'Nur', 'VawLjr2VxVQ5j0PbxastbwIwaTRGNqe6ubTrDAN4', NULL, 'http://nur.web.id', 0, 0, 1, '2020-05-18 21:07:29', '2020-05-18 21:32:25'),
('9098e081-81ec-4d0d-8597-9f573aeda446', 2, 'Localhost', 'SzWlx0g10P6j146bSxod2WYUUqoy8hDmjoYLAUJ4', NULL, 'http://localhost/coba/redir.php', 0, 0, 0, '2020-05-18 21:32:40', '2020-05-18 21:32:40'),
('9098e509-d68f-4591-9e06-4ca27c36d5b8', NULL, 'akhwan', 'WJYzRbDlhqtEsGOacth8rrXICxggWKcVTSBimINr', 'users', 'http://localhost', 0, 1, 0, '2020-05-18 21:45:20', '2020-05-18 21:45:20');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, '9098d707-ce82-4927-9ba3-9181f6335538', '2020-05-18 21:06:10', '2020-05-18 21:06:10');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('3bf904ff9e20d821fa4701a832994545253920f6626ba98e1e25467dfc91a31d0693e15a72f9deca', '752a8b6293fe2da1f0351d5f4a480174d737a489c681076ac1240fac144ed9dd8ad8c9b6faba4d51', 0, '2021-05-19 04:56:27'),
('4cb75fce229c462b8f452bc3b06adcc3f688b786d6ab7831f8e8f892359643fe45d534da87eba3cd', '3e648a71d1a8f5d7dfb942dcd70af8e68da1b6cb309e272e5c7c0b29303c8e69d59734aeb7dc862a', 0, '2021-05-19 04:55:58'),
('5b86748009b9a4b1809b80998d06caaacec6f88c47006cff654fa1d36d0281b10cfce5c9ffe4da30', '5ef8d13fb16e137745133f1fce72e98976b36e21c8c8eb3cfcdfd9f51bed1a825b4131abc68782a7', 0, '2021-05-19 05:10:35'),
('6e1b9c331d78272f30a3dbbd4924284c3eaab044aa77d58c6fad23993f44d6f0b4f0000f77449278', 'e48629bcc49b357886cba9939fa38a480600bb85de9fa961216d9d3b36e5fd2791590da2a809fd43', 0, '2021-05-19 04:56:15'),
('b08c95a6416bce154f2484f2399b42cfb5f85eb2336c8add1a56a3791eb2f30099466745126c5c1e', '0f8de617e75c38411d8dff99d6a1f2ce4f1610bbcfad475374f5df3c22b31c99a99c5f1275d95deb', 0, '2021-05-19 05:17:46'),
('ff659799529ad7916f5b0f614df358c7ad7e543ce11eb88c972627c1bffcd542af14339dcdc3308f', '75be782356289bbe83ae68c9000fe1371fe27dcf6e50e516623973b05c53256bf961b53e68c6af93', 0, '2021-05-19 05:17:32');

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(2, 'akhwan', 'akhwan90@gmail.com', NULL, '$2y$10$yqr8ELsBba3UjW6vUQtajOECFx/NgKtwgxVKF1EvfV/ggH6pA7bGu', NULL, '2020-05-18 18:51:31', '2020-05-18 18:51:31'),
(3, 'infosa90@gmail.com', 'infosa90@gmail.com', NULL, '$2y$10$iwkNAxmqd7fcC8q9QXcfQuqgQlFZXPm9zWH8o.x0DCrIdE76iTOFu', NULL, '2020-05-18 22:17:22', '2020-05-18 22:17:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
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
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
