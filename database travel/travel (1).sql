-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Waktu pembuatan: 28 Jul 2020 pada 16.14
-- Versi server: 10.3.15-MariaDB
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `galleries`
--

INSERT INTO `galleries` (`id`, `travel_packages_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'assets/gallery/3VXtWCggJxVp5S8whGiPGrfkrvlYZPTGeE5Uk24I.jpeg', NULL, '2020-07-21 06:54:14', '2020-07-21 07:25:26'),
(2, 3, 'assets/gallery/XoFdpN3DaGy40BFqwCHXvFK3G6Zq8wkozMO5YSXr.jpeg', NULL, '2020-07-21 07:26:47', '2020-07-21 11:05:01'),
(3, 2, 'assets/gallery/gRho2jO7HjXpCjm8ego8tZ2j7NbVGoTIJnNUA5XP.jpeg', NULL, '2020-07-21 10:59:29', '2020-07-21 11:01:02'),
(4, 4, 'assets/gallery/DP6Lvpj1QtPChrYvIyg7YlMK3JpmuPnkXd8wFe35.jpeg', NULL, '2020-07-23 10:28:55', '2020-07-23 10:28:55'),
(5, 5, 'assets/gallery/QlKT5uDWPrtbkdOn18IPrrttIeGntB5DPjcYUC8m.jpeg', '2020-07-28 13:57:51', '2020-07-28 06:33:26', '2020-07-28 06:33:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_20_075405_create_travel_packages_table', 1),
(5, '2020_07_20_124640_create_galleries_table', 2),
(6, '2020_07_20_125633_create_transactions_table', 3),
(7, '2020_07_20_130756_create_transaction_details_table', 4),
(8, '2020_07_20_132056_create_transaction_details_table', 5),
(9, '2020_07_20_135758_add_roles_field_to_users_table', 6),
(10, '2020_07_20_160410_add_username_field_to_users_table', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `additional_visa` int(11) NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `travel_packages_id`, `users_id`, `additional_visa`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 190, 290, 'SUCCESS', NULL, NULL, '2020-07-23 10:29:45'),
(2, 1, 5, 0, 100, 'SUCCESS', NULL, '2020-07-22 06:23:15', '2020-07-23 10:29:59'),
(3, 2, 5, 0, 60, 'IN_CART', NULL, '2020-07-22 06:55:58', '2020-07-22 06:55:58'),
(4, 2, 5, 0, 60, 'IN_CART', '2020-07-22 09:20:02', '2020-07-22 07:18:47', '2020-07-22 09:20:02'),
(5, 2, 5, 0, 60, 'IN_CART', '2020-07-22 09:19:59', '2020-07-22 08:13:28', '2020-07-22 09:19:59'),
(6, 1, 5, 0, 100, 'IN_CART', '2020-07-22 09:19:56', '2020-07-22 08:32:11', '2020-07-22 09:19:56'),
(7, 3, 3, 190, 390, 'PENDING', NULL, '2020-07-22 09:08:19', '2020-07-22 09:37:49'),
(8, 3, 5, 190, 390, 'IN_CART', NULL, '2020-07-22 10:13:30', '2020-07-22 10:13:46'),
(9, 1, 5, 0, 100, 'PENDING', NULL, '2020-07-27 01:47:24', '2020-07-27 01:47:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_visa` tinyint(1) NOT NULL,
  `doe_passport` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `username`, `nationality`, `is_visa`, `doe_passport`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'yusuf12', 'ID', 1, '2020-07-20', NULL, NULL, NULL),
(2, 2, 'alfi10', 'ID', 0, '2020-07-19', NULL, NULL, NULL),
(3, 2, 'yusufUser', 'ID', 0, '2025-07-22', NULL, '2020-07-22 06:23:15', '2020-07-22 06:23:15'),
(4, 3, 'yusufUser', 'ID', 0, '2025-07-22', NULL, '2020-07-22 06:55:58', '2020-07-22 06:55:58'),
(5, 4, 'yusufUser', 'ID', 0, '2025-07-22', NULL, '2020-07-22 07:18:47', '2020-07-22 07:18:47'),
(6, 5, 'yusufUser', 'ID', 0, '2025-07-22', NULL, '2020-07-22 08:13:28', '2020-07-22 08:13:28'),
(7, 6, 'yusufUser', 'ID', 0, '2025-07-22', NULL, '2020-07-22 08:32:11', '2020-07-22 08:32:11'),
(8, 7, 'icha20', 'ID', 0, '2025-07-22', '2020-07-22 09:13:09', '2020-07-22 09:08:19', '2020-07-22 09:13:09'),
(9, 7, 'icha20', 'CN', 0, '2020-08-01', NULL, '2020-07-22 09:15:32', '2020-07-22 09:15:32'),
(10, 7, 'icha20', 'CN', 1, '2020-07-22', '2020-07-22 09:21:20', '2020-07-22 09:16:17', '2020-07-22 09:21:20'),
(11, 7, 'icha20', 'ID', 1, '2020-12-17', NULL, '2020-07-22 09:29:00', '2020-07-22 09:29:00'),
(12, 8, 'yusufUser', 'ID', 0, '2025-07-22', NULL, '2020-07-22 10:13:30', '2020-07-22 10:13:30'),
(13, 8, 'icha20', 'CN', 1, '2020-07-25', NULL, '2020-07-22 10:13:46', '2020-07-22 10:13:46'),
(14, 9, 'yusufUser', 'ID', 0, '2025-07-27', NULL, '2020-07-27 01:47:24', '2020-07-27 01:47:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foods` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_date` date NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `title`, `slug`, `location`, `about`, `featured_event`, `language`, `foods`, `departure_date`, `duration`, `type`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'liburan', 'liburan', 'Pulau Komodo', 'famget', 'karnaval', 'bahasa indonesia', 'sea foods', '2020-07-25', '2D', 'open trip', 100, NULL, '2020-07-21 03:14:10', '2020-07-21 03:14:10'),
(2, 'piknik part1', 'piknik-part1', 'Raja Ampat', 'piknik part1', 'konser', 'bahasa indonesia', 'ikan bakar', '2020-07-21', '2D', 'free', 60, NULL, '2020-07-21 03:35:22', '2020-07-21 05:30:18'),
(3, 'liburan part2', 'liburan-part2', 'bali', 'Happy Happy', 'camping ground', 'bahasa indonesia', 'ikan bakar', '2020-07-21', '2D', 'open trip', 100, NULL, '2020-07-21 11:04:00', '2020-07-21 11:04:37'),
(4, 'liburan keluarga', 'liburan-keluarga', 'jakarta', 'liburan keluarga', 'karnaval', 'bahasa indonesia', 'ikan bakar', '2020-07-25', '2D', 'open trip', 100, NULL, '2020-07-23 10:28:01', '2020-07-23 10:28:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`, `username`) VALUES
(1, 'yusuf', 'yusuf@gmail.com', NULL, '$2y$10$hr7Yn1IBF6EV3pdbQVUJ/ur5NyAoXA2dyOnchGQi88X3kxXYNdyp.', NULL, '2020-07-20 08:01:57', '2020-07-20 08:01:57', 'ADMIN', 'yusuf12'),
(2, 'alfi', 'alfi@gmail.com', NULL, '$2y$10$LBLReuzfYXSr.Q1lZHtInOmJiFPd33ObLQTriOdupYX34QwjjstQG', NULL, '2020-07-20 08:14:25', '2020-07-20 08:14:25', 'ADMIN', 'alfi10'),
(3, 'icha', 'icha20@gmail.com', '2020-07-20 08:44:44', '$2y$10$OATxorXTZpyOECwZhJXciO5RuJnp//ICRlp.ZJhK4T.0IFGBybNIS', NULL, '2020-07-20 08:41:26', '2020-07-20 08:44:44', 'USER', 'icha20'),
(4, 'ucupAlfi', 'ucup10@gmail.com', NULL, '$2y$10$yb7nm76JuOBHlRMDEaYge.eZRL0goxky3/OQBCuBsHTVHwvaqFoBK', NULL, '2020-07-20 09:34:01', '2020-07-20 09:34:01', 'USER', 'ucup alfi'),
(5, 'YusufUser', 'yusufjasin38@gmail.com', '2020-07-22 06:23:02', '$2y$10$8g15HzFqBcHM9oCWI9fa/OB3C/Q6djiI/mbT7x1PM.Mv1hYeRE3Lq', 'rdZm5Oc8ydFahpJfpuoY6cxkI9J5GFBNX2aM54rvfSLgtnzXAlDKIMiYY0rg', '2020-07-22 06:21:12', '2020-07-27 02:06:02', 'ADMIN', 'yusufUser'),
(6, 'elida suherman', 'elida@gmail.com', '2020-07-23 09:59:43', '$2y$10$vC1/jG5VpVCmQE8xltfZvuJvi18Ftgdx5XUSW6AdWIIldrhI.Itda', NULL, '2020-07-23 09:58:52', '2020-07-23 09:59:43', 'USER', 'elida');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `travel_packages`
--
ALTER TABLE `travel_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
