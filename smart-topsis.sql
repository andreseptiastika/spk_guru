-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jun 2022 pada 08.36
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart-topsis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'I Nengah Andre Septiastika, S.Pd', '2022-05-30 11:42:49', '2022-05-30 11:42:49'),
(2, 'Gusti Ayu Putu Apriliana Lestari, S.E', '2022-05-30 11:42:59', '2022-05-30 11:42:59'),
(3, 'Ni Luh Sri Karti, S.Tr.Par', '2022-05-30 11:43:08', '2022-05-30 11:43:08'),
(4, 'I Nengah Lusiarta, S.Pr', '2022-05-30 11:43:31', '2022-05-30 11:43:31'),
(5, 'Pak', '2022-06-03 03:41:51', '2022-06-03 03:41:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bobot` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id`, `nama`, `bobot`, `created_at`, `updated_at`) VALUES
(1, 'Kedisiplinan', 70, '2022-05-30 11:30:30', '2022-05-30 12:05:30'),
(2, 'Cara Mengajar', 60, '2022-05-30 11:30:43', '2022-05-30 11:31:27'),
(3, 'Motivasi dan Inovasi', 40, '2022-05-30 11:30:54', '2022-05-30 11:30:54'),
(4, 'Kerjasama', 50, '2022-05-30 11:31:13', '2022-05-30 11:31:13');

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_02_12_083721_create_kriteria_table', 1),
(3, '2022_02_12_083750_create_parameter_table', 1),
(4, '2022_02_12_083809_create_alternatif_table', 1),
(5, '2022_02_12_094116_create_nilai_table', 1),
(6, '2022_02_14_200202_create_users_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_alternatif` bigint(20) UNSIGNED NOT NULL,
  `id_kriteria` bigint(20) UNSIGNED NOT NULL,
  `id_parameter` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id`, `id_alternatif`, `id_kriteria`, `id_parameter`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 8, '2022-05-30 11:44:04', '2022-05-30 11:44:04'),
(2, 1, 2, 34, '2022-05-30 11:44:04', '2022-05-30 11:44:04'),
(3, 1, 3, 45, '2022-05-30 11:44:04', '2022-05-30 11:44:04'),
(4, 1, 4, 70, '2022-05-30 11:44:04', '2022-05-30 11:44:04'),
(5, 2, 1, 13, '2022-05-30 11:44:47', '2022-05-30 11:44:47'),
(6, 2, 2, 29, '2022-05-30 11:44:47', '2022-05-30 11:44:47'),
(7, 2, 3, 47, '2022-05-30 11:44:47', '2022-05-30 11:44:47'),
(8, 2, 4, 80, '2022-05-30 11:44:47', '2022-05-30 11:44:47'),
(9, 3, 1, 14, '2022-05-30 11:50:06', '2022-05-30 11:50:06'),
(10, 3, 2, 28, '2022-05-30 11:50:06', '2022-05-30 11:50:06'),
(11, 3, 3, 47, '2022-05-30 11:50:06', '2022-05-30 11:50:06'),
(12, 3, 4, 76, '2022-05-30 11:50:06', '2022-05-30 11:50:06'),
(13, 4, 1, 3, '2022-05-30 11:50:39', '2022-05-30 11:50:39'),
(14, 4, 2, 39, '2022-05-30 11:50:39', '2022-05-30 11:50:39'),
(15, 4, 3, 50, '2022-05-30 11:50:39', '2022-05-30 11:50:39'),
(16, 4, 4, 76, '2022-05-30 11:50:39', '2022-05-30 11:50:39'),
(17, 5, 1, 11, '2022-06-03 03:42:22', '2022-06-03 03:42:22'),
(18, 5, 2, 34, '2022-06-03 03:42:22', '2022-06-03 03:42:22'),
(19, 5, 3, 50, '2022-06-03 03:42:22', '2022-06-03 03:42:50'),
(20, 5, 4, 67, '2022-06-03 03:42:22', '2022-06-03 03:42:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `parameter`
--

CREATE TABLE `parameter` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kriteria` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bobot` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `parameter`
--

INSERT INTO `parameter` (`id`, `id_kriteria`, `nama`, `bobot`, `created_at`, `updated_at`) VALUES
(3, 1, '80', 80, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(4, 1, '81', 81, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(5, 1, '82', 82, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(6, 1, '83', 83, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(7, 1, '84', 84, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(8, 1, '85', 85, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(9, 1, '86', 86, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(10, 1, '87', 87, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(11, 1, '88', 88, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(12, 1, '89', 89, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(13, 1, '90', 90, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(14, 1, '91', 91, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(15, 1, '92', 92, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(16, 1, '93', 93, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(17, 1, '94', 94, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(18, 1, '95', 95, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(19, 1, '96', 96, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(20, 1, '97', 97, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(21, 1, '98', 98, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(22, 1, '99', 99, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(23, 1, '100', 100, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(24, 2, '80', 80, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(25, 2, '81', 81, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(26, 2, '82', 82, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(27, 2, '83', 83, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(28, 2, '84', 84, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(29, 2, '85', 85, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(30, 2, '86', 86, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(31, 2, '87', 87, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(32, 2, '88', 88, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(33, 2, '89', 89, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(34, 2, '90', 90, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(35, 2, '91', 91, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(36, 2, '92', 92, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(37, 2, '93', 93, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(38, 2, '94', 94, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(39, 2, '95', 95, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(40, 2, '96', 96, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(41, 2, '97', 97, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(42, 2, '98', 98, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(43, 2, '99', 99, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(44, 2, '100', 100, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(45, 3, '80', 80, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(46, 3, '81', 81, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(47, 3, '82', 82, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(48, 3, '83', 83, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(49, 3, '84', 84, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(50, 3, '85', 85, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(51, 3, '86', 86, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(52, 3, '87', 87, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(53, 3, '88', 88, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(54, 3, '89', 89, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(55, 3, '90', 90, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(56, 3, '91', 91, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(57, 3, '92', 92, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(58, 3, '93', 93, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(59, 3, '94', 94, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(60, 3, '95', 95, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(61, 3, '96', 96, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(62, 3, '97', 97, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(63, 3, '98', 98, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(64, 3, '99', 99, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(65, 3, '100', 100, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(66, 4, '80', 80, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(67, 4, '81', 81, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(68, 4, '82', 82, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(69, 4, '83', 83, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(70, 4, '84', 84, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(71, 4, '85', 85, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(72, 4, '86', 86, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(73, 4, '87', 87, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(74, 4, '88', 88, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(75, 4, '89', 89, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(76, 4, '90', 90, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(77, 4, '91', 91, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(78, 4, '92', 92, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(79, 4, '93', 93, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(80, 4, '94', 94, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(81, 4, '95', 95, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(82, 4, '96', 96, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(83, 4, '97', 97, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(84, 4, '98', 98, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(85, 4, '99', 99, '2022-05-30 11:33:41', '2022-05-30 11:33:41'),
(86, 4, '100', 100, '2022-05-30 11:33:41', '2022-05-30 11:33:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `password`, `level`, `created_at`, `updated_at`) VALUES
(1, 'I Nengah Andre Septiastika', 'admin@gmail.com', '$2y$10$0hBa6BZvFDcV5MZIzk1ibOz/64JjhJzOT6NcKDYnrFNV5gETB1tGq', 'admin', '2022-05-30 11:29:51', '2022-05-30 11:29:51'),
(2, 'Kepala Sekolah', 'kepala@gmail.com', '$2y$10$CCxwyCJBn6chC2/jent6Pursoa4ZJ.DSIWf7GjzQtTqaubfgp0U6a', 'user', '2022-05-30 13:53:09', '2022-05-30 13:53:09');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nilai_id_alternatif_foreign` (`id_alternatif`),
  ADD KEY `nilai_id_kriteria_foreign` (`id_kriteria`),
  ADD KEY `nilai_id_parameter_foreign` (`id_parameter`);

--
-- Indeks untuk tabel `parameter`
--
ALTER TABLE `parameter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parameter_id_kriteria_foreign` (`id_kriteria`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `parameter`
--
ALTER TABLE `parameter`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_id_alternatif_foreign` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_id_kriteria_foreign` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_id_parameter_foreign` FOREIGN KEY (`id_parameter`) REFERENCES `parameter` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `parameter`
--
ALTER TABLE `parameter`
  ADD CONSTRAINT `parameter_id_kriteria_foreign` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
