-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jun 2024 pada 16.46
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `surabaya-school-data`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `genders`
--

CREATE TABLE `genders` (
  `id` int(11) NOT NULL,
  `gender` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `genders`
--

INSERT INTO `genders` (`id`, `gender`) VALUES
(1, 'laki-laki'),
(2, 'perempuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_28_091722_create_personal_access_tokens_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `schools`
--

CREATE TABLE `schools` (
  `id` int(11) NOT NULL,
  `name` varchar(300) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `postal_code` text DEFAULT NULL,
  `school_type_id` int(100) DEFAULT NULL,
  `phone_number` varchar(100) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `schools`
--

INSERT INTO `schools` (`id`, `name`, `address`, `postal_code`, `school_type_id`, `phone_number`, `updated_at`, `created_at`) VALUES
(1, 'sekolah citra berkat', 'wadaw', '22312', 1, '2131231231', NULL, NULL),
(2, 'sekolah citra berkat', 'wadaw', '22312', 2, '2131231231', NULL, NULL),
(3, 'sekolah citra berkat', 'wadaw', '22312', 3, '2131231231', NULL, NULL),
(4, 'Sekolah Clifton Dickens', '47145 Effertz Plains Suite 922\nAubreeside, NC 73156', '43293', 3, '872.612.2495', '2024-06-04 14:33:46', '2024-06-04 14:33:46'),
(5, 'Sekolah Prof. Larue Roberts', '80049 Gideon Wall\nEast Casper, VA 93399-9972', '18366', 3, '661-980-9997', '2024-06-04 14:33:46', '2024-06-04 14:33:46'),
(6, 'Sekolah Alberto Rohan', '274 Heathcote Mission\nKassulkeville, PA 18536-4124', '65170', 3, '458-783-6987', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(7, 'Sekolah Dr. Joan Lesch', '64758 Hessel Fall Apt. 981\nNew Carter, MN 58375', '38548', 1, '574.825.3724', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(8, 'Sekolah Dr. Elmore Cole', '3021 Khalil Manors Suite 565\nKatelinport, ND 47065', '03620-6153', 3, '541.910.4673', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(9, 'Sekolah Viva King Jr.', '4225 Carter Village\nJaclynmouth, TX 52473', '91053-6757', 1, '+1-979-525-2058', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(10, 'Sekolah Leola Considine Jr.', '5834 Emard Drive Suite 385\nLake Josiannemouth, MO 27522-3018', '77486', 1, '775-633-1897', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(11, 'Sekolah Brendon Stiedemann', '514 Judge Manor\nCalistaberg, AZ 92532', '86604', 1, '+16197555020', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(12, 'Sekolah Devin Bins', '215 Beer Row\nKoelpinton, NH 33695', '45700-6340', 2, '479-985-0093', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(13, 'Sekolah Clinton Nienow Jr.', '491 Orn Oval\nDickichester, MD 19180-9713', '49500-6368', 2, '1-440-227-9632', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(14, 'Sekolah Gladys Lubowitz', '1149 Clovis Hill Suite 169\nCassinchester, NH 57051', '51663-9927', 1, '+1 (407) 443-4768', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(15, 'Sekolah Liam Labadie', '20421 Murray Walk\nPort Londonborough, NC 05579', '48256-5058', 2, '(571) 418-4685', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(16, 'Sekolah Prof. Nedra Waelchi', '12716 Jett Overpass Suite 489\nGarrettborough, ID 97250', '10382', 3, '1-979-223-7907', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(17, 'Sekolah Ms. Camilla Spencer DDS', '5245 Kaci Turnpike Apt. 744\nEast Zita, UT 75378-7170', '39660-1209', 1, '1-762-994-3112', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(18, 'Sekolah Gabrielle Heller', '55995 Rempel Curve\nLaishamouth, MA 76228', '75856-4975', 3, '(540) 839-0382', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(19, 'Sekolah Don Schuster', '89060 Shields Center Apt. 199\nLake Shanonton, OR 99982', '14845', 3, '1-781-313-5914', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(20, 'Sekolah Florence Hodkiewicz', '7797 Schiller Viaduct Apt. 692\nMarielleside, WY 01639-1317', '73579-0158', 3, '+1 (571) 392-9509', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(21, 'Sekolah Lamont Abbott', '63568 Lilian Springs\nEast Demarcusland, AZ 95784', '49540-6919', 3, '+1-312-571-5894', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(22, 'Sekolah Donavon Jerde', '210 Liana Radial\nSouth Maximillianmouth, UT 02829', '66967', 2, '+1-203-997-1733', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(23, 'Sekolah Mrs. Savanna Lesch DVM', '66875 Boyle Plaza Apt. 412\nNew Germainechester, MN 69673-3304', '13608-4205', 2, '+1-361-308-7222', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(24, 'Sekolah Zoie Beatty', '8221 Ward Causeway Suite 517\nBodemouth, UT 27565', '22663-8863', 2, '(938) 623-4413', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(25, 'Sekolah Margaretta Jacobi MD', '468 King Meadow\nEvanschester, DC 42514-2880', '31797-6126', 2, '+1-352-600-3873', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(26, 'Sekolah Eulah Hoppe Sr.', '361 Turner Underpass\nHeatherville, IL 20173', '56200', 3, '(954) 535-8670', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(27, 'Sekolah Wilhelm Larkin', '4751 Wilkinson Fort\nAshlynnton, GA 90526', '67335', 2, '1-708-625-6321', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(28, 'Sekolah Justine Smith', '50092 Lesch Villages\nBrookberg, NY 26733-4898', '98955-0228', 3, '929.938.1771', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(29, 'Sekolah Sheldon Carroll', '481 Letitia Village Suite 874\nNew Lyricburgh, OK 31917-2524', '45793-3713', 2, '+1.662.521.2890', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(30, 'Sekolah Pierce Streich', '77204 Parisian Garden\nPort Dameon, TN 05694-3439', '70503', 3, '(838) 741-1950', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(31, 'Sekolah Maudie Rosenbaum', '127 Randall Rapids Apt. 698\nKuhnberg, MI 22554', '60881-0894', 3, '(803) 447-4176', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(32, 'Sekolah Darron Walter', '881 Jeremy Meadows Suite 056\nKurtbury, CO 62399', '45060', 2, '651-513-7106', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(33, 'Sekolah Ethel Corkery', '2950 Alberta Springs\nEast Reinholdberg, UT 29288-9056', '50099', 2, '1-785-994-9954', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(34, 'Sekolah Kaya Nikolaus', '4048 Zachary Shores\nTrevorburgh, ME 78355', '49574-9203', 3, '+1-646-477-4665', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(35, 'Sekolah Ms. Kallie Leannon III', '24736 Hyatt Square Apt. 635\nLake Russview, CO 25939', '98746-7717', 3, '763-999-6680', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(36, 'Sekolah Delphia Hyatt', '634 Alyce Stream\nLake Rey, MT 75080-7668', '29200-5502', 1, '1-662-589-1477', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(37, 'Sekolah Christop Hirthe PhD', '89897 Hyatt Extension\nGabefort, FL 16370-5300', '84602-0356', 3, '(763) 767-5922', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(38, 'Sekolah Rosie Senger V', '40451 Wisozk Plaza\nThorastad, IA 43936', '13598-3147', 2, '+1-743-966-6682', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(39, 'Sekolah Koby Goodwin', '490 Ally Circles Suite 390\nSouth Myah, HI 24642', '04683-9906', 3, '283-794-3070', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(40, 'Sekolah Abagail Mohr DVM', '114 Upton Ferry Apt. 509\nEinarmouth, MT 85290', '69902', 1, '(678) 550-6432', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(41, 'Sekolah Dr. Ashtyn Ritchie IV', '2335 Jay Freeway\nSouth Clemenston, GA 50756-3397', '36679-7704', 3, '1-973-439-5529', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(42, 'Sekolah Dr. Sydnee Turner', '24389 Arnaldo Vista Apt. 414\nBaileyton, ID 26028', '84837', 2, '408-632-8329', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(43, 'Sekolah Prof. Melyssa Gusikowski', '239 Goldner Stravenue Apt. 817\nBalistreriville, NJ 55750-4051', '74649', 3, '(351) 945-1647', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(44, 'Sekolah Francis Hagenes IV', '42809 Nora Roads Suite 922\nKozeyland, NJ 15092', '88484-4539', 3, '740-557-2271', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(45, 'Sekolah Amalia Schmidt', '5811 Spencer Wall Suite 272\nWilkinsonborough, NE 09430-1981', '39643', 2, '+1.364.487.3279', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(46, 'Sekolah Desmond Beatty', '284 Grant Pass\nQuintenberg, CA 71761-4191', '92056', 3, '+15014727503', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(47, 'Sekolah Paul Ferry DVM', '4882 Reinger Mills\nEast Hailee, KS 88386-6163', '49237', 1, '323.386.3412', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(48, 'Sekolah Henderson Padberg', '530 Ibrahim Greens\nLynchshire, CA 50353', '98641-7757', 3, '765.781.5402', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(49, 'Sekolah Mr. Efren Stark III', '2453 Cormier Turnpike\nNorth Carmine, AZ 12787-0033', '95270', 3, '812.440.7442', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(50, 'Sekolah Carson Wiegand', '613 Mauricio Crescent\nWizaport, MT 65156', '59512-1756', 3, '201.572.0625', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(51, 'Sekolah Sunny Langworth', '884 Gardner Club\nWest Stephaniaport, ID 19757-7478', '77066', 3, '1-616-505-7108', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(52, 'Sekolah Cassie Rau I', '2660 Rafael Curve\nLake Hectorchester, CT 26823', '91007-9243', 2, '1-407-380-1135', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(53, 'Sekolah Corbin Larkin', '111 Trantow Shoal Apt. 495\nSwiftborough, TN 09794-2064', '24538', 1, '361.274.4835', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(54, 'Sekolah Haley Kuhlman III', '76290 Alysa Crossroad Apt. 767\nLake Madysonstad, MN 42601', '82647-6413', 3, '+1.612.763.0677', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(55, 'Sekolah Sonny Feest IV', '8174 Quigley Island Suite 511\nNew Roberta, LA 49592-0773', '13616-5115', 3, '380-357-0869', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(56, 'Sekolah Evalyn Adams', '30112 Kshlerin Ville\nNew Neomaberg, HI 47588-2907', '92982', 3, '+1 (989) 803-9845', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(57, 'Sekolah Gunner Robel', '849 Farrell Mount Suite 530\nSouth Ava, MO 43781', '81068', 2, '1-954-545-4835', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(58, 'Sekolah Barbara Paucek', '601 Evert Radial Suite 548\nJustinaland, CA 19479', '03403-6567', 3, '434.284.6503', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(59, 'Sekolah Lavonne Mertz', '716 Margarette Stravenue Suite 399\nPort Nat, TX 54858', '87634-3149', 2, '1-215-522-2402', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(60, 'Sekolah Dee Kuphal DDS', '6232 Jessyca Union Apt. 235\nKohlerfort, HI 47994-7449', '37698', 1, '+12762868936', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(61, 'Sekolah Prof. Jarvis McClure I', '8044 Turcotte Valleys Apt. 536\nEdwinahaven, GA 33080-5233', '20698', 1, '+1 (925) 695-6399', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(62, 'Sekolah Sidney Konopelski', '1612 Kris Forest Suite 816\nPort Ignacio, NJ 73467', '83906', 1, '+1-920-896-2480', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(63, 'Sekolah Regan Gutkowski', '797 Lubowitz Club Suite 725\nDayneville, FL 66685', '44400-4442', 3, '434.518.3135', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(64, 'Sekolah Mr. Howell Jacobson PhD', '2491 Simonis Passage Suite 260\nEast Nikita, NM 21385-1772', '64516', 1, '(269) 404-1283', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(65, 'Sekolah Ms. Chelsea Kshlerin V', '8007 Walker Lock Apt. 038\nSouth Paolochester, DC 40406-7947', '02966', 2, '+1-541-795-6638', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(66, 'Sekolah Norbert Koch', '122 D\'Amore Trail Suite 795\nAbshirefort, RI 35674', '06247', 1, '1-803-321-2814', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(67, 'Sekolah Carolina Schimmel', '54099 McGlynn Skyway Apt. 582\nConnerton, NM 71958', '65655-6447', 2, '351.828.8167', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(68, 'Sekolah Mrs. Amara Labadie PhD', '82212 Melisa Viaduct\nSouth Ross, MT 51840', '12823-8248', 3, '+1.878.673.2787', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(69, 'Sekolah Prof. Derrick Emard', '2265 Tyrique Mission\nSouth Carolyne, DC 34599-8184', '84676-1194', 1, '308-297-7222', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(70, 'Sekolah Perry Kilback DDS', '151 Kling Plaza\nThielside, WY 66735-2547', '19531-0076', 3, '+1.682.692.5964', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(71, 'Sekolah Kelli Weimann', '685 Junior Street Suite 494\nLake Ellahaven, CA 36861-4153', '35100', 2, '+19865539123', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(72, 'Sekolah Dr. Rosendo Hermann V', '7799 Franecki Harbor\nBrennanside, WI 99002-5430', '21236', 1, '541.231.5840', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(73, 'Sekolah Dexter Rutherford', '188 Reynolds Plaza Apt. 769\nKlingmouth, OH 28184-7298', '94350', 2, '629-765-7830', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(74, 'Sekolah Dr. Alexandrea Cremin', '684 Concepcion Hill Suite 603\nShieldsshire, MD 66339', '47099-5389', 1, '925.570.4162', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(75, 'Sekolah Lisandro Stark', '51024 Kertzmann Haven\nLake Saige, LA 08279', '43923-7708', 3, '205-412-1053', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(76, 'Sekolah Garret Schumm', '97729 Vladimir Circle Suite 681\nLauramouth, OR 41183-0114', '55663', 3, '+17868774825', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(77, 'Sekolah Prof. Antwan Bartell', '4387 Rogahn Plains Suite 426\nNew Ottis, MT 45304', '90369-4074', 1, '+1-914-715-6843', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(78, 'Sekolah Neha Luettgen', '73580 Alexandro Walks Apt. 887\nPort Candelariomouth, GA 96671-3503', '36070-5783', 2, '(980) 976-0415', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(79, 'Sekolah Sarina Gibson', '377 Gusikowski Forest Apt. 651\nMarcusview, TN 83605-2192', '73127', 2, '551.864.5341', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(80, 'Sekolah Dr. Vivienne Sipes', '7692 Ledner Stravenue Suite 254\nKendallborough, CO 62698', '47400-5014', 1, '+1 (539) 366-2454', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(81, 'Sekolah Jany Abernathy', '26658 Pagac Corner\nDooleyport, DE 15698-5653', '99779', 1, '+1-225-655-9448', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(82, 'Sekolah Tod Pollich', '240 Caroline Motorway Suite 671\nGenovevatown, NC 94033-6869', '35833', 2, '404.940.2148', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(83, 'Sekolah Dr. Johnathan Welch', '21993 Gianni Coves Apt. 248\nGoodwinmouth, MO 74778', '59298-5448', 2, '(334) 854-8926', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(84, 'Sekolah Shaun Hauck', '5430 Lenny Locks Suite 596\nWest Eldred, NE 70872', '08648', 3, '218.689.3570', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(85, 'Sekolah Wendy McLaughlin', '1425 Goyette Creek Apt. 348\nPort Flavie, MA 40771', '43297-7922', 3, '352-705-5008', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(86, 'Sekolah Dr. Niko Feeney', '79798 Swaniawski Knoll\nEast Izabella, CT 17314-8487', '27444', 3, '+1.754.869.0187', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(87, 'Sekolah Wyatt O\'Connell', '427 Gusikowski Skyway Suite 867\nEast Travisfort, AR 07108-6855', '40641', 2, '+15419286103', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(88, 'Sekolah Lou Schaden', '4037 Bernier Ports\nNorth Levifurt, HI 22166-3387', '28449', 2, '520.966.2786', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(89, 'Sekolah Prof. Granville Hodkiewicz IV', '257 Delpha Hill Suite 563\nSauermouth, AL 98249', '75472', 2, '1-978-269-6290', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(90, 'Sekolah Ashtyn Bins Sr.', '73029 Zulauf Spurs Suite 113\nEast Cathryn, WI 25040-9837', '67554-2829', 2, '+1-878-533-5803', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(91, 'Sekolah Karli Volkman', '560 Doyle Shoal Apt. 925\nNorth Jesse, NJ 20626-4546', '11690', 2, '231-866-7677', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(92, 'Sekolah Fannie Goodwin', '532 Luettgen Well Apt. 945\nPort Selmermouth, MS 92967-7655', '17312-8552', 1, '1-662-559-3752', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(93, 'Sekolah Dr. Edwin Monahan II', '6443 Brett Road Apt. 691\nLake Amandashire, IN 34567-8697', '11871', 2, '+18504342947', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(94, 'Sekolah Catharine Oberbrunner', '36359 Reagan Gateway\nPouroschester, NJ 27460', '69808', 1, '+1-959-907-4678', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(95, 'Sekolah Mose Green MD', '51619 Stanton Rest Apt. 363\nFarrellfurt, CA 82264', '63234', 1, '872.616.3804', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(96, 'Sekolah Garth Harris', '32200 Harris Prairie Apt. 790\nHayesborough, FL 57215-1832', '79206', 1, '432.914.6553', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(97, 'Sekolah Mckenna Moore', '1072 Metz Lakes Suite 309\nSouth Vito, KS 73545-6430', '15923-5163', 3, '(480) 308-1294', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(98, 'Sekolah Aric Koss', '171 McGlynn Highway\nNorth Josephville, NE 49503-7462', '88752-7005', 3, '1-734-638-5187', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(99, 'Sekolah Keenan Veum', '333 Gilbert Forest\nGibsonshire, AZ 53636', '61284-1235', 2, '786-333-5604', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(100, 'Sekolah Graciela Little PhD', '263 Amelie Shore\nKeeblershire, MO 47070-4469', '99744', 1, '+1 (908) 356-6689', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(101, 'Sekolah Dr. Shaun Dibbert', '6253 Swift Run Apt. 238\nNorth Ianbury, KS 36081', '88427-5684', 2, '(828) 595-3637', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(102, 'Sekolah Faustino Marks', '594 Lou Plain Apt. 997\nPort Dantechester, AL 61555-6910', '50734-5278', 2, '(989) 793-8457', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(103, 'Sekolah Mrs. Nayeli Spencer', '3312 Grant Circles\nLake Mike, WV 07661', '54745', 3, '+1.585.938.4519', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(104, 'Sekolah Dr. Zena Towne I', '8768 Eichmann Hill Suite 101\nWolfland, WI 53208', '01652-3473', 2, '+1.878.418.6430', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(105, 'Sekolah Madge Wolf', '90729 Marquise Course\nSouth Mylene, IN 88383', '66414-8651', 2, '279-278-2369', '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(106, 'Sekolah Ms. Loma Schultz Sr.', '97958 Goodwin Court Apt. 209\nJacyntheberg, NH 25716', '83483-0585', 1, '785-231-4929', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(107, 'Sekolah Prof. Dane Stark', '2580 Jakubowski Harbor Suite 266\nNew Sharonland, NH 85863-5382', '13710', 2, '(559) 965-2048', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(108, 'Sekolah Dr. Ari Beahan', '90111 Connelly Divide Apt. 453\nLake Adele, MA 05662', '87682-9976', 3, '678.774.0459', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(109, 'Sekolah Dr. Adah Grant Sr.', '63142 Ruby Trail Suite 717\nBudmouth, MT 39037', '71492-1922', 3, '+15206578482', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(110, 'Sekolah Tessie Yundt', '27302 Greg Ville Apt. 179\nLoyceburgh, AR 57830-4342', '66497', 2, '+1-951-423-5549', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(111, 'Sekolah Dillan Weissnat', '60126 Carmen Knoll\nPort Emilie, ND 98241', '11256-9102', 3, '(940) 899-8711', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(112, 'Sekolah Mrs. Bonita Upton II', '4359 Lola Avenue Apt. 256\nGutkowskiland, NY 16201-5326', '79772-9093', 2, '+1-984-547-8784', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(113, 'Sekolah Mr. Madisen Boyer IV', '88990 Hill Common\nGerryville, CO 89931', '38989-7763', 3, '615.847.6936', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(114, 'Sekolah Hector Medhurst', '8132 Roosevelt Fort\nLake Albertaland, NE 71208', '19652-6441', 2, '(352) 614-9129', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(115, 'Sekolah Prof. Vance Reilly MD', '5411 Walsh Motorway\nWest Eleazarborough, CA 40979', '78907-8213', 3, '870-273-6993', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(116, 'Sekolah Shemar Schroeder', '7582 Graham Light Apt. 520\nPort Kennith, IA 72880-8867', '63998-8759', 2, '+1-743-220-3732', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(117, 'Sekolah Delta Conn', '30599 Katherine Station Suite 966\nEast Saigeton, TX 89396-1282', '49062', 2, '(458) 528-8927', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(118, 'Sekolah Mrs. Kailee Grady IV', '31766 Heathcote Bridge Suite 165\nEast Maximusshire, TX 71636-0766', '42918-7299', 1, '1-607-780-6525', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(119, 'Sekolah Isaac Harvey', '7200 Tate Inlet\nAnnalisemouth, AZ 15204', '65735-7319', 2, '+16802451613', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(120, 'Sekolah Ofelia Funk', '177 Fahey Burgs\nTabithaside, MI 27808-7935', '75183-5664', 3, '(920) 383-8700', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(121, 'Sekolah Mr. Lafayette O\'Connell Sr.', '1307 Rippin Underpass Apt. 853\nWest Leilatown, LA 87123-0723', '00781-2627', 3, '229-976-4487', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(122, 'Sekolah Mr. Jeff Zieme DDS', '68873 Towne Pines Apt. 248\nSatterfieldfort, HI 98371-6278', '43181', 2, '+1 (719) 397-0013', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(123, 'Sekolah Daphne Hoeger', '895 Boyer Hills\nEast Randi, WI 33342-7899', '01567-2893', 1, '443.783.8438', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(124, 'Sekolah Dr. Stewart Harber', '67687 Ferry Neck\nEast Adelbertport, ID 72913-9174', '50617-2649', 1, '1-602-554-2147', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(125, 'Sekolah Rose Lang', '9477 Kuhic Valleys\nNorth Myra, MS 71720-4480', '17300-8980', 2, '309-797-2802', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(126, 'Sekolah Benny Douglas', '155 Hickle Union\nDejonberg, WI 92598-7025', '91416', 2, '+1-435-576-5107', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(127, 'Sekolah Wilfred Fahey', '46326 Schuster Spur\nHirthetown, MO 87893', '06539', 2, '(272) 701-1717', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(128, 'Sekolah Kyla Dicki I', '12321 Ahmad Inlet Apt. 589\nHudsonside, GA 12069', '19066', 3, '+12833148227', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(129, 'Sekolah Lauretta Gusikowski', '71134 Fritz Turnpike Suite 438\nWest Emory, ND 28824', '70589-6730', 1, '646.756.6118', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(130, 'Sekolah Shany Kutch', '6536 Green Squares\nEast Kaylinside, OR 62211', '81298-8381', 1, '+1.830.576.1766', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(131, 'Sekolah Kathleen Dach', '4180 Rowe Estate\nNew Rosa, MI 81965-9240', '43636', 2, '+1-863-712-2265', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(132, 'Sekolah Emely Bradtke', '5847 Heller Streets Suite 165\nJuliannemouth, NM 53035-1208', '03094', 2, '+1-929-941-3791', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(133, 'Sekolah Willie Brown', '13599 Daphnee Landing\nEdgardoville, IL 87321', '34155', 2, '1-678-501-1138', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(134, 'Sekolah Susana Wuckert', '8289 Lizeth Coves\nBaileeberg, MD 83342', '02642-3056', 1, '779-661-8557', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(135, 'Sekolah Mr. Austyn Cole Jr.', '753 Metz Passage Suite 131\nPort Scarlettville, NV 19633-1697', '45473', 2, '520-630-1919', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(136, 'Sekolah Prof. Gonzalo Harvey Jr.', '433 Friesen Ways\nLake Lorainechester, MD 17924-0597', '62082', 3, '1-843-918-4405', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(137, 'Sekolah Dr. Eino Macejkovic', '35205 Gail Harbor\nEast Donnieshire, TN 02843-1473', '12668', 3, '+1.281.306.0021', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(138, 'Sekolah Johan Mertz Sr.', '162 Tyra Walk\nEast Marquis, TX 75447-4481', '26999-5112', 3, '+1-517-444-5194', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(139, 'Sekolah Sydney Bayer', '40239 Metz Extensions Suite 339\nJamelport, NE 21820', '07512', 3, '+1 (860) 557-0527', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(140, 'Sekolah Joana Pfannerstill I', '388 Kian Ports\nSouth Crystal, MO 86204', '04284-7521', 1, '+1.540.563.2962', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(141, 'Sekolah Keaton Kutch IV', '1387 Tess Prairie\nDouglasview, IN 71461-4880', '39117-3198', 3, '952.822.1136', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(142, 'Sekolah Deonte Conroy II', '480 Yundt Forges Suite 134\nPort Manuelaland, MA 65476-0876', '81031-7641', 1, '1-916-739-2091', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(143, 'Sekolah Jessie Zboncak', '4682 Mann Rest Apt. 378\nReichertberg, IA 40634', '49762', 3, '(820) 472-2926', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(144, 'Sekolah Roman Fisher Sr.', '773 Ralph Forest Suite 236\nLueilwitzstad, ID 10722-9747', '37287-3205', 1, '1-747-610-0569', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(145, 'Sekolah Nadia Breitenberg DVM', '1640 Fletcher Turnpike\nLake Denisfort, SD 23076-1532', '66248', 1, '+1-878-665-3127', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(146, 'Sekolah Devin Jacobson', '92036 Leonard Shoal\nLake Keyshawntown, HI 55922-9254', '23397', 3, '726-549-1945', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(147, 'Sekolah Antoinette Rohan', '180 Gutkowski Throughway\nPort Juwan, MO 26466-2081', '72277-3842', 1, '1-734-405-8117', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(148, 'Sekolah Isai Vandervort', '71779 Greta Isle\nNorth Nathanael, ND 47698-3662', '45904', 3, '+1-702-671-1051', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(149, 'Sekolah Prof. Erik Lemke PhD', '647 Schmitt Mountain\nNorth Nayeli, MS 07651', '40964', 2, '+1-551-885-3392', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(150, 'Sekolah Ms. Effie Littel', '482 Hagenes Islands Apt. 640\nParkerhaven, IN 89613-9308', '16924-8074', 3, '+1-610-301-3103', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(151, 'Sekolah Dr. Allan Kohler V', '6559 Dora Ridge Apt. 529\nNew Barrett, OH 73694', '11875-8808', 1, '+1-423-410-4316', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(152, 'Sekolah Mathilde Nikolaus V', '44488 Corwin Pines Apt. 363\nAmparoborough, NE 00087', '26602-9774', 1, '+1-715-888-9783', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(153, 'Sekolah Enola McKenzie', '9297 Reilly Extension Suite 400\nSengerside, ID 48767', '65933-6779', 1, '+1-551-226-0307', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(154, 'Sekolah Immanuel Anderson', '756 Alejandra Coves\nCarrollberg, NE 57328', '11219-9403', 3, '+1.820.233.0252', '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(155, 'Sekolah Franco Gleason', '83827 Buckridge Street Apt. 343\nEast Jayda, MT 29534', '19501-8754', 3, '(425) 888-8427', '2024-06-04 14:34:03', '2024-06-04 14:34:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `school_types`
--

CREATE TABLE `school_types` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `school_types`
--

INSERT INTO `school_types` (`id`, `name`) VALUES
(1, 'SD'),
(2, 'SMP'),
(3, 'SMA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0AqE6nCrcDCrxZCbgQ9BWMoGiVTb2woB8AU0P3lJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV2hVWU9sYlB6WWVnTkZpdVJVOXFsZkVHdTBoZWJyY0x0T1hpZElNaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717594880),
('154OnUsqGK6VFF2QT3zziFWub53ZS9uR9zGpDKKl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTmdpc2Y1Uk1LeUFpZjdSM2pRS3Qwckp6OHEyQWczbDFvSFJKbFBYbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717594523),
('1WmkiJF5WeI2F9hA2qmaFrCRGh8Y2n0F2PInp3Ve', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic21aZXN4N0htZkpjaGd5Smc1bktqRkEwTkxrS2VxSWVuYTVtbGJvNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717594967),
('1yBjubl6selu5SBGKzysyE24JOwQdVolNLO0d0zq', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS1V6OFc4UHoxZldKdTdpUWhXaFRlTkNIVVdDUXFQQndnbExFT1B6eiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717592015),
('32zYl1WbxrRbASLvbH6qJvZTL5oo7DEpljGMTPi6', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaHhTY3dha0x4TkdDR2ZRQjhIQUFZaEwyM2xOWVlHWlVSN0g4c2xnSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717591966),
('8djXf8AcpTtMiDjq5RU6vOs8he0GK15AKkz3QWHO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicmowZlpWZkZicUZtZ0F5VnpWMHAxVzRadHpWZGdqR2V1QmtPb0R1MCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717591023),
('arXFHxLEmpTWb5rgddw4BHeY4toKlzAuy80NSP6Q', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieGlXN0JEaHFTQnI2ME9tVDBQM0FtUHVkRHM4YTI5dENmb3VPWDBqdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717594895),
('AWi80UrpeffjUJS52f8O9scXsseGbfxh56I513kk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZk1zb1JONDlIQ0VCRmI1NmlZV0dyN2dFek9ENlpHcVNNNmxpZmc1MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717592138),
('bQKT8CBPnn6oZjel3b5vxXEZbFpDWOzYrUb5qAxS', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZnhpZ1FQQk5uZE5KT0JMZjgxUFZZZFoxbTYxWFptTWJXa2RpNHBQQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo1O30=', 1717594966),
('cHQMNwPa6XsZHNO7HnElZx3KZTHrFj3u3Ki0l647', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicTJSc1pLbEdnZHB0UEdhSTRlVjBYMldIcXQ2dDBmYjZzd3lZYU55SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717592208),
('cum6BB1IkgWrxfLjUJ86oBf27jrgA2Oliq7dQfTC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidWpNY2hJbzdFOE9wN0hlRUJpWmtEUllCWHpqRFIxU2RmVnZiVmlleiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717594481),
('DqFd3NVclLbRnejTGl00gFqJPBITZTBSzI5EGfGZ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibnJnNUZCaThEVFEyR0dNZG8zS1Z1VjVhSERPSk1FWVpTVTZ2Wm9oaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717592487),
('eHoNtOdbOQK12uufEFZN6Wnlm5hNq7qC0IM5x6ft', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWWRDOFpZZFdBYWlZSU1OTkF5dW1TQlpkRVRNeW9nSlVtRzV1Q3ZXayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717593189),
('F5VBynw8m6Cj8QKjsBsXE3sgY1ioe0ITI5JIqewn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWndwMlpCOTBaRXlYTm9lNThJUTVIbXlTbVBmN0NHTUpRam5YM0ptciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717592772),
('FxbGeJdDcuhEvgxsmXT8qSa4gB5vX8uKrGtOoyr5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0pGY0tHbGhSS3oyWGFNanlSbmxkdXFoM1FXNTVENkdJNEtzSUZoeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717592171),
('HSP0aUjI2C6mhyYRkeNzAxXwuX27ZRlK1UCCy4NZ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidjhVSlBHVHRjeVYzSUJVZko5eE03MEx4TmZkeUpYM29MeGx6ZHNUOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717592836),
('IObv6GyE4MF95kxNvmOQzPUfpQXjL7LHRXQ163aA', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ1QyeWlDd1BBdTQ5YWk1cW1jM0V1cDgwcUR1WlI1WU9pNW14cW1GNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717591076),
('KcCQjO4sSuHKSx9Q1c4Zzn4xPuImrhjKDop7gP6U', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaWVmcERWYTNyUm5JaXhReWR6VWllT2xNQ2lLM2xpdW5hMFVoVjRHUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717594417),
('keqZVTrjXovhvJZ9oW6ZIhypHcZdLsZkTaDVJInT', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWjhOeWNyZjg5Q3RSTnMxWGN0VWdSeHFrNWNndG5UUkR0OEhkV1pUbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717592755),
('L1XJZOcjXOrM9eqAPJ1egeFBc7J35SlCILUkIhtl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZGlqUHg1TVBTZVZjYUVoOGtvZ2o0amFpWjVpd0tLMzhHS2tlUDJjRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717592517),
('rovmzgVOtb2BOKCzsAajB68euJLuzvtaxcpq3KTr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQlBPRFprNWE4VVpxekpCWXlwQzNDWTNUUE1vMkNBTVl4eUFHQ1BjcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717592786),
('strP5Sb7vFzC4LIhuV9lGLV1TWuWA9jLBkdyuKRi', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieWJqTlhLTG9GOEdFU1RKYk0zcjl6eFFvWW5YVFJFQW5UREU3NTl6QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717592413),
('SweI1x4I8ze2op9taTDjdXoIxQ31HIn7rIBT2Xkr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0VsWk5HbDF6WFpMNkJxVHBZQmJvcnk1NDlOQzFaTmR0WWxBQnhUNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717592721),
('XbzH7rzqUpPsdag5YdIaRaIkZMBE5SMLTJrdA50v', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRUM5eEFvZXQ5S01FaVY5cTM4a0ZzRGJEOTFoeEtCZmVpRmd0OG1peSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717593170),
('XUtHkA9z4twz8m175siJX9HLwZmrB7ozCk4HHTym', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3N0RGdsZXFXV3F2ZGUxQmpvSFRySGpnU2RFUWhvM0V2cEQ0emZacCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717594460),
('Xz4nC2NO28CC9fEa6YufDYvkZfGPWuH9DpBfLJ7x', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTnJTN1hicnJLenNVM3RoZHFRSEYyRHFjOUdHdTFvZzlXWjVlQjhMeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717590640),
('YkFx7rNMFh9fAXUAQcM9TCro78Qf9mmriO3tfQDr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidFBJZ0h4WG95VnRWVzAyZ1VBenBVTWc5bXptMzJvbnJIZEI2T1VlOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717591330),
('zBqFgg9tOQa1mRSnjpBDEkJHLKvUDSeChnSlUUUh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicVY3UjVjTEtMZkR5ck95TVBuYUpUbnZ1TEpoTlNiQnpZYWQyaHlCcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717594794),
('zXyQXqsb0BzUewxWFHnHFpxAgY75f28ltqpLVzrm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYlJsbTFTZFVqSEhrdmphdThJeFZmMzdDWmFjNVFmNU50MUJIYTJXOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717594687);

-- --------------------------------------------------------

--
-- Struktur dari tabel `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender_id` int(100) NOT NULL,
  `address` text NOT NULL,
  `height` int(100) NOT NULL,
  `phone_number` varchar(100) NOT NULL,
  `school_id` int(100) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `students`
--

INSERT INTO `students` (`id`, `name`, `gender_id`, `address`, `height`, `phone_number`, `school_id`, `updated_at`, `created_at`) VALUES
(1, 'Prof. Marie Lynch PhD', 1, '5617 Broderick Drive\nLake Romaine, MI 45466-5679', 180, '+1-203-997-6981', 2, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(2, 'Nayeli Turner', 1, '8254 Muller Falls Apt. 465\nWest Scarlett, UT 79476', 186, '570.938.6225', 3, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(3, 'Dr. Randi Stracke', 1, '7278 Johann Lodge Suite 928\nSydnichester, CO 12282', 157, '559-273-1312', 1, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(4, 'Mrs. Maybell Tillman MD', 2, '27020 Gislason Village\nWest Gage, NV 07314', 158, '1-864-636-9597', 1, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(5, 'Alysson Ledner', 2, '4924 Murray Ramp Apt. 541\nOrnhaven, NH 16901-5437', 188, '+1-417-366-5041', 2, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(6, 'Erwin Schneider', 2, '673 Marquardt Radial Apt. 756\nSchultzton, NV 13198-2513', 149, '1-480-598-1976', 1, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(7, 'Dr. Vivienne Grant', 1, '2953 Jenkins Ports\nStrackestad, AZ 81527-5969', 150, '+1-838-925-2706', 2, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(8, 'Dr. Johann Bergnaum I', 2, '8511 Kutch Flat Apt. 775\nWaelchistad, MA 51055', 147, '+1-920-686-1419', 3, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(9, 'Jena Altenwerth', 1, '55054 Weimann Mountains\nSouth Lemuel, NM 13264', 172, '270.723.6229', 3, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(10, 'Carmella Dicki', 1, '8833 Lester Street\nNew Antonehaven, AZ 97210-6396', 152, '(202) 845-8819', 3, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(11, 'Greyson Koch', 2, '5651 Josianne Greens Suite 002\nBarrowschester, AK 43896', 160, '+1 (878) 305-9456', 3, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(12, 'Valentin Schaden II', 2, '7195 Gaylord Route Apt. 586\nPort Ryderfort, AK 75686', 179, '(878) 746-4425', 1, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(13, 'Kyler Aufderhar', 1, '9889 Armani Fall Apt. 592\nSouth Katherine, MA 97669', 172, '680-772-1956', 3, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(14, 'Elmo Shields DDS', 1, '88738 Gislason Village\nNorth Krystel, MO 75674-1525', 157, '+1-820-829-1536', 3, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(15, 'Caleb Friesen', 2, '724 Steuber Trace\nBoganton, WY 38695-4258', 184, '1-854-734-9160', 2, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(16, 'Golda Marvin', 1, '8606 Katrine Throughway Suite 278\nWest Annamariehaven, ID 69490', 163, '+1.940.204.0465', 1, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(17, 'Dakota Kling', 1, '32104 Bertrand Creek\nWest Burleyton, WV 72384-7095', 169, '+1-385-574-5894', 2, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(18, 'Rahsaan Ullrich V', 1, '4232 Gottlieb Mission\nPort Elianeton, NV 08346-3666', 175, '1-531-815-1717', 3, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(19, 'Queen Mueller PhD', 1, '7377 Jessy Burgs Apt. 224\nSouth Serenity, OR 83916-2736', 163, '1-984-600-6281', 1, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(20, 'Andreane Glover MD', 2, '242 Bauch Mews\nNew Loraside, IL 48692', 158, '(504) 657-2661', 1, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(21, 'Rose Johnston MD', 1, '728 Crist Lakes Apt. 177\nSouth Sasha, CT 47229', 177, '(602) 927-7675', 3, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(22, 'Elta Nikolaus', 2, '736 Kenna Prairie\nChayastad, MT 59406-4441', 151, '+16788158421', 3, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(23, 'Rubie Schaden', 2, '24919 Olin Trail\nJakobfort, DC 28060-2123', 188, '+1.225.208.3942', 1, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(24, 'Jacklyn Lynch', 1, '2598 Cristopher Springs Apt. 147\nEast Tysonshire, WV 41567-9876', 183, '+1 (917) 473-4868', 3, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(25, 'Mercedes Kassulke', 1, '973 Yasmin Estates\nPort Jonathon, IN 47018-7858', 190, '(435) 876-0305', 1, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(26, 'Gene Howe I', 2, '546 Christiansen Burgs Apt. 277\nMcCulloughtown, UT 12713-0355', 164, '(305) 493-2704', 1, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(27, 'Delmer Steuber', 2, '26898 Easton Courts\nEast Adelle, MS 40649-9540', 161, '(443) 310-2582', 2, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(28, 'Lavon Goldner', 2, '27881 Jenkins Route\nTysonmouth, IN 21049-0787', 147, '+1 (463) 357-0659', 1, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(29, 'Daphnee Langosh', 2, '32736 Bell Path Apt. 019\nEast Johnsonview, TX 80486', 167, '540.814.4312', 2, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(30, 'Prof. Preston D\'Amore MD', 1, '4751 Nader Branch\nLake Maeganbury, NC 22528', 188, '+1.925.872.0926', 3, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(31, 'Mr. Rudolph Adams IV', 1, '2599 Nicole Circles\nNew Russelview, KS 30527', 173, '857.904.9387', 3, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(32, 'Hans Williamson', 2, '980 Jarvis Cliffs\nSouth Arianeberg, MN 74562', 190, '+12764172223', 1, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(33, 'Otto Hermiston', 1, '182 Willms Camp\nNew Joe, OR 38534-9941', 157, '906.943.0513', 2, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(34, 'Chelsey Fay PhD', 1, '471 Kenya Manors Apt. 190\nNorth Cierraport, PA 31103-5341', 187, '+13516012081', 1, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(35, 'Athena Fahey', 1, '1726 Leola Dale\nNorth Savion, MN 63969-8372', 148, '269.447.7085', 2, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(36, 'Deanna Fadel', 1, '4124 Amely Green\nSouth Christiana, NV 15249', 178, '+1 (657) 749-0609', 2, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(37, 'Prof. Russel Klocko MD', 2, '567 Schaefer Crossroad Suite 192\nMaggioville, WV 54467', 147, '+1-212-982-4943', 3, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(38, 'Lupe Nienow', 2, '832 Jessika Mission\nWest Candida, VT 46377', 179, '+1-682-719-8123', 2, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(39, 'Friedrich Schaden', 1, '93960 Fadel Overpass Apt. 142\nNew Edville, PA 75628-5093', 177, '251-454-7908', 1, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(40, 'Jimmy Davis', 1, '2860 Turcotte Shore Suite 535\nRohanville, MN 92511', 148, '(740) 529-4658', 3, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(41, 'Turner Walker', 2, '66459 Kautzer Rapid Apt. 364\nHardyburgh, DE 89390', 173, '+1-918-885-2085', 1, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(42, 'Mr. Ibrahim Gulgowski PhD', 2, '661 Oran Glens Apt. 271\nLake Carolynemouth, AR 22148', 151, '775.431.7077', 2, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(43, 'Jevon Kuhlman', 1, '47583 Ana Cape Suite 848\nTreton, OH 02893', 146, '+1-619-580-0715', 2, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(44, 'Mackenzie Fisher', 2, '8585 Sim Knoll\nWunschhaven, NC 02810-8127', 165, '+1-612-583-1127', 1, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(45, 'Prof. Godfrey Denesik V', 2, '4720 Hammes Spur Apt. 276\nVidaton, DC 28515-8119', 154, '361.661.3498', 3, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(46, 'Dr. Donny D\'Amore', 1, '26271 Harris Meadow\nMohrburgh, RI 03258', 178, '1-331-590-7254', 1, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(47, 'Kieran Adams', 2, '41513 Keenan Shoal Suite 002\nChazmouth, DE 22671-0119', 186, '+1.843.668.4104', 1, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(48, 'Peter Crona', 1, '886 Mueller Place Apt. 141\nLilyfurt, CA 70774', 176, '+1-341-537-2708', 1, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(49, 'Cheyanne O\'Hara', 2, '304 Dovie Underpass Apt. 101\nJonatanton, OH 65352', 151, '1-918-423-5716', 2, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(50, 'Rocky Ratke', 2, '492 Dietrich Ports\nNorth Kristy, TX 41104-9873', 145, '520-937-0784', 1, '2024-06-04 14:29:45', '2024-06-04 14:29:45'),
(51, 'Trent Pacocha', 2, '26426 Parisian Islands Apt. 690\nRogahnland, NJ 86228-5388', 189, '574-949-6130', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(52, 'Frederic Cummerata', 2, '522 Loy Manors Apt. 271\nWest Kenyattaberg, WV 18716-0314', 185, '229-334-2214', 2, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(53, 'Reilly Bode', 2, '859 Russel Forest Apt. 434\nJeniferton, AZ 32415', 150, '806-613-5634', 2, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(54, 'Augustus Adams', 2, '584 D\'Amore Port Apt. 351\nTurnerborough, AL 45031', 148, '443-985-9224', 2, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(55, 'Dr. Adrien Crooks V', 2, '55196 Harvey Rest\nCademouth, GA 69793-0840', 177, '+1-773-644-9324', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(56, 'Millie Bartell', 2, '860 Bahringer Meadows\nTowneshire, TN 50179', 186, '+1-253-923-0538', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(57, 'Orlando Carter', 2, '2112 Patience Point Suite 306\nKertzmannshire, ID 73436-9933', 179, '+12408221882', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(58, 'Lennie Hoppe', 2, '45123 Ayden Glens\nPearlberg, MA 31335', 173, '+1 (283) 430-8737', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(59, 'Miss Katherine Beier', 1, '753 Harris Mission\nPort Tomasa, NM 51280-2179', 179, '281.630.7368', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(60, 'Mckenna Kozey', 2, '177 Geovanny Mill\nArianestad, KY 83312', 175, '+1.225.417.1999', 2, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(61, 'Jackson O\'Kon', 2, '656 Kaylah Drive Apt. 803\nZulastad, NJ 56790', 169, '(347) 415-8062', 2, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(62, 'Cecilia Doyle DVM', 1, '96914 Arnulfo Ford Apt. 529\nSouth Irwin, MT 21917-6245', 151, '1-845-881-1405', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(63, 'Dr. Zelda Kutch', 1, '8083 Loren Village Apt. 347\nNew Adeliaport, ND 82889-7479', 169, '531.786.0999', 2, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(64, 'Meggie Heathcote', 2, '388 Bradford Stream Apt. 124\nLake Kailee, TN 22555', 162, '321-981-6768', 2, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(65, 'Ervin Toy', 2, '60032 Hegmann Dam\nWisokyshire, NY 76949', 180, '+1 (434) 979-0754', 2, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(66, 'Antonia Franecki', 2, '517 Catalina Lock\nLexiemouth, UT 84000', 172, '+1.310.592.9109', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(67, 'Raheem Nitzsche', 1, '896 Predovic Lock\nNorth Kaileyton, DC 41314', 156, '1-332-504-2196', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(68, 'Miss Verda Will Sr.', 2, '93554 Conor Underpass Suite 842\nNolanhaven, WA 28952-0928', 182, '+1-781-550-7092', 2, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(69, 'Jayde Bauch', 1, '645 Brekke Expressway Apt. 724\nNorth Sylvan, NY 92962', 183, '(850) 692-6312', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(70, 'Alexanne Stark', 1, '7658 Frami Rapid\nJaclynmouth, ID 66030-8354', 180, '+1-720-933-4616', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(71, 'Miss Cydney Sawayn IV', 2, '70565 Colin Burgs\nWest Napoleon, WI 02902-9906', 149, '681.926.4940', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(72, 'Alena Hermiston', 2, '761 Beer Parks Suite 622\nBridiehaven, MD 90165', 146, '660-384-3713', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(73, 'Garrison Daniel', 1, '49535 Grant Point Apt. 941\nMullerstad, WV 77406-0498', 176, '1-727-982-3991', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(74, 'Mr. Sterling Dach', 1, '476 Sawayn Harbor Suite 226\nGiovanniburgh, WI 23849', 159, '1-234-638-6182', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(75, 'Rosina Ritchie', 1, '8069 Humberto Cliffs\nWebstertown, AK 86546', 146, '(831) 844-4591', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(76, 'Jaclyn Kshlerin', 1, '85710 Reilly Cliffs Apt. 418\nNorth Woodrow, SC 57653', 156, '+16086328707', 2, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(77, 'Franz Kovacek', 1, '6148 McGlynn Street Apt. 466\nSouth Robert, TN 55255', 147, '1-769-461-9182', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(78, 'Dr. Clinton Hermann', 2, '794 Bode Cliffs Apt. 299\nPort Abelardoview, CO 28121-4092', 185, '504-529-9593', 2, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(79, 'Miss Janelle Jacobi II', 2, '99878 Litzy Plains\nKuhicmouth, VA 02922', 188, '904-364-5172', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(80, 'Prof. Sigrid Runolfsdottir Jr.', 1, '13812 Windler Extension Suite 204\nThurmanland, KS 88269', 185, '(254) 582-7562', 2, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(81, 'Ross Olson DVM', 1, '235 Brannon Key Suite 607\nNew Hopeberg, NV 86171-9825', 161, '743-606-5213', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(82, 'Oswald Towne', 1, '7398 Krystal Mission Suite 495\nRomagueraside, MS 89291', 187, '+16517130864', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(83, 'Prof. Felicita Roberts', 2, '35461 Herzog Forest Apt. 054\nNew Francomouth, CA 49641-8952', 147, '669-374-3958', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(84, 'Prof. Sonya Fadel IV', 1, '3026 Cremin Rue\nWest Cicero, PA 17184', 160, '+1-908-826-2103', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(85, 'Christa Strosin', 1, '6353 Frami Landing\nNorth Bennie, AZ 95401', 170, '281-265-8724', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(86, 'Dr. Sterling Pfannerstill DDS', 1, '631 Arielle Pines Apt. 134\nSouth Tristinview, OK 35577-2511', 185, '1-337-325-4712', 2, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(87, 'Santos Trantow', 2, '693 Mariano Dale Suite 552\nSouth Dena, AZ 57088', 165, '979.691.3191', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(88, 'Damian Dibbert', 1, '8152 Denesik Pine Apt. 109\nSouth Emery, VA 14688-2915', 186, '636-508-0801', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(89, 'Mrs. Rosemary Schmitt Jr.', 2, '5824 Aiyana River\nBartolettiville, SD 36345-7121', 188, '(252) 649-5598', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(90, 'Braulio Lakin', 1, '90383 Nienow Stravenue\nPort Archibald, NV 13602', 169, '+1 (458) 554-7784', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(91, 'Mr. Anibal Conn I', 2, '4505 Kunze Drives\nNew Keenan, LA 76866', 147, '1-585-329-1825', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(92, 'Dr. Ed Smith DVM', 1, '320 Bryana Parkways Apt. 300\nLake Alvera, KY 97538', 164, '325-273-8194', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(93, 'Prof. Rosalinda Swift', 2, '23238 Mann Field Suite 029\nMacejkovicview, NY 91404', 153, '+16269562156', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(94, 'Mazie Goyette', 1, '19824 Dare Vista Apt. 533\nRossville, SC 10860', 189, '937.949.5713', 2, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(95, 'Clarabelle Zemlak', 2, '45748 Reichel Knolls Apt. 817\nLake Dasiaborough, DE 52270-3892', 156, '(220) 869-9394', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(96, 'Jayden Schuppe', 2, '605 Destinee Roads\nNew Caterinamouth, LA 91841', 169, '+19097556778', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(97, 'Jan Watsica', 1, '3619 Rocio Shoals\nPort Abrahamshire, UT 99702-3678', 186, '947-304-0754', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(98, 'Jon Hintz', 2, '4657 Sandy Tunnel Suite 531\nLake Tobinmouth, MT 68610', 164, '678-228-5780', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(99, 'Tavares Kohler', 2, '34309 Isaias Locks Suite 304\nSouth Jabarifurt, OK 46478-4362', 168, '(619) 432-5982', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(100, 'Ed Gutkowski', 2, '867 Darrion Point Apt. 040\nDareton, NM 70592', 151, '+1-660-998-8644', 2, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(101, 'Brooklyn Douglas', 1, '21978 Karianne Mill Suite 993\nWest Nickolasburgh, NV 25602-3270', 185, '928-566-0563', 6, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(102, 'Dr. Jovani Runolfsson', 1, '34502 Sarai Mill Suite 711\nCorwinfort, OR 11053', 171, '+1.815.791.6800', 7, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(103, 'Miss Dawn Balistreri', 1, '91031 Wilfred Trail\nWest Devin, MA 69478', 166, '1-567-582-7672', 8, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(104, 'Concepcion Flatley', 2, '916 Kris Landing\nLake Sophiatown, ND 77349', 161, '1-425-729-9950', 9, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(105, 'Gaston McDermott', 1, '45097 Kunze Parkways Suite 256\nUniquebury, SD 46502', 155, '332-469-0293', 10, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(106, 'Antwan Stiedemann', 1, '201 Bette Flats\nLake Shaun, NJ 99145', 152, '+1.442.506.6631', 11, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(107, 'Dr. Sincere Hermiston V', 1, '76722 Daron Pine Suite 537\nLake Marion, SC 54376-2024', 164, '662-307-0510', 12, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(108, 'Deron Weber', 1, '383 Collin Prairie\nKirstenberg, ND 28890', 166, '+16675067573', 13, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(109, 'Jaqueline Larson', 2, '453 Runolfsson Plain Suite 429\nEmardmouth, KS 28589-4506', 150, '1-732-425-4493', 14, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(110, 'Werner Hackett', 2, '545 Bethany Views\nSouth Janyfort, WY 26033', 162, '+1-301-550-7625', 15, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(111, 'Dr. Darwin Collins', 1, '217 Glover Brooks Apt. 165\nMayertton, NJ 95384-4525', 170, '737.972.3023', 16, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(112, 'Dr. Filiberto Hirthe IV', 2, '734 Alysson Squares\nCummingsburgh, VA 96349', 154, '1-928-692-0396', 17, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(113, 'Rose Turner III', 1, '12656 Dare Drive Suite 010\nNew Donavon, VT 02590', 166, '1-562-476-3162', 18, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(114, 'Miss Albertha Davis', 1, '76346 Kunde Curve\nGregoriofort, MD 34508', 160, '+1.218.539.9884', 19, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(115, 'Dr. Carli Kshlerin', 2, '8882 Franecki Path Suite 694\nEast Vernice, MT 65549-3093', 145, '+1 (507) 293-1412', 20, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(116, 'Norene Homenick', 1, '85988 Abner Ports Apt. 310\nNettieville, KY 52717-6999', 177, '323-493-0885', 21, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(117, 'Kaylie Runolfsson', 2, '988 Greenfelder Grove Suite 700\nLowelltown, AR 18014-9915', 171, '+1.435.602.5630', 22, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(118, 'Monserrate Macejkovic', 2, '19396 Dillon Stravenue\nNew Doylemouth, NH 13086-1593', 172, '+1-678-525-7326', 23, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(119, 'Ambrose Kiehn', 1, '857 Ziemann Passage Suite 214\nWest Jeremymouth, CO 71144', 173, '820-534-7224', 24, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(120, 'Henry Kihn DDS', 1, '3662 Ziemann Turnpike\nLake Ernesthaven, MS 80159-9598', 183, '831.373.2556', 25, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(121, 'Raymundo Lehner', 1, '764 Gene Run Suite 324\nSporermouth, OK 66146-4085', 166, '+1-813-402-2119', 26, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(122, 'Mr. Seamus Hills I', 1, '7233 Lacy View Apt. 430\nLake Dolores, NE 59038-2349', 170, '1-928-369-2526', 27, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(123, 'Martine Osinski PhD', 2, '89108 Shields Way\nWalshton, TN 08721-3556', 175, '+1-872-816-1845', 28, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(124, 'Prof. Jonathon Erdman', 2, '392 Emard Dale\nMinervaton, AL 39363', 146, '1-435-459-0277', 29, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(125, 'Larissa Casper', 1, '7849 Delphine Fords Suite 242\nNew Leonor, MD 51312', 145, '+1.337.548.9000', 30, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(126, 'Cooper Bins', 1, '5506 Reggie Groves\nPort Esmeraldaberg, AL 01777', 152, '+1-954-828-5274', 31, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(127, 'Cindy Beatty', 1, '4233 Madie Mews Suite 429\nFaustinoside, OR 94495', 161, '+1 (757) 590-4710', 32, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(128, 'Mr. Isom Turcotte', 2, '95401 Yundt Estates Apt. 572\nCronintown, OH 46818', 159, '308-828-1889', 33, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(129, 'Mr. Roberto Schaefer', 2, '97824 Otho Spurs Suite 584\nEast Natstad, UT 91749-9813', 154, '410-276-4654', 34, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(130, 'Prof. Salma Mills DVM', 2, '633 Will Shores Suite 695\nLake Nicholasfort, ID 38257', 189, '1-484-804-3298', 35, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(131, 'Eino Rosenbaum', 1, '47059 Cormier Hill Apt. 927\nLake Tyler, NY 21296', 176, '+12768780266', 36, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(132, 'Minnie Kessler', 1, '367 Yost Vista\nSouth Caylafort, NM 96585', 148, '(951) 823-1544', 37, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(133, 'Laury Emard', 2, '286 Wisoky Courts Apt. 440\nLake Adriel, HI 07042-8691', 189, '+1-402-748-5465', 38, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(134, 'Dr. Ward Rosenbaum', 2, '2200 Xzavier Stravenue Suite 256\nMadysonburgh, IL 27962-2113', 180, '(801) 231-3692', 39, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(135, 'Prof. Erick Nienow Jr.', 2, '265 Erich Forks\nWest Lucileborough, KS 54293', 169, '757.213.2416', 40, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(136, 'Mohammad Hamill', 2, '84509 Daugherty Corners\nLudieport, WV 98018', 149, '541.518.9020', 41, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(137, 'Dr. Stella Mante IV', 1, '8938 Green Route Apt. 421\nWest Rydermouth, OK 88132', 163, '270-468-7103', 42, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(138, 'Jaydon Hettinger', 1, '12192 Lueilwitz Lake\nNorth Ebony, IN 42876', 188, '+17207825914', 43, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(139, 'Dr. Norbert Gottlieb Jr.', 2, '4250 Schaden Passage Suite 471\nErinfort, MN 60455', 154, '+1-210-938-8944', 44, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(140, 'Simone Lind', 1, '98643 Abernathy Lodge Suite 675\nNew Angelaland, NM 13593-3919', 189, '669.548.0828', 45, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(141, 'Jameson Mohr', 2, '214 Schamberger Trail Suite 141\nEast Bertram, ND 55716-2943', 167, '915.904.5681', 46, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(142, 'Prof. Marco Robel', 2, '736 Devante Union\nDejuanfort, IA 18225-3422', 157, '1-740-268-9843', 47, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(143, 'Ms. Burnice Frami PhD', 1, '618 Pagac Branch Suite 377\nConroyport, NC 66035-5476', 146, '909.522.1856', 48, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(144, 'Anne Runolfsdottir', 2, '9970 Ed Courts Suite 115\nJamelborough, OR 79090', 148, '1-480-302-5985', 49, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(145, 'Dr. Petra Jacobs PhD', 1, '97382 Wyman Fields\nWest Opal, NE 13121', 178, '+13033774460', 50, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(146, 'Dr. Camron Huel', 1, '9661 Raquel Cove Apt. 810\nStoltenbergbury, VA 54580-3013', 172, '+1 (540) 956-7795', 51, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(147, 'Jayden Pagac III', 2, '22409 Boyer Shoal\nPort Dawsonbury, NY 35152', 188, '+1 (715) 594-0039', 52, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(148, 'Mr. Johnny Murphy', 1, '88388 Morissette Heights\nLittelfort, NY 55940-2058', 184, '1-220-749-7680', 53, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(149, 'Mr. Markus Schuster Sr.', 2, '93615 Deontae Drives Suite 661\nSouth Tiaraport, MT 89996-2575', 160, '+1.641.973.0217', 54, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(150, 'Prof. Domenico Brown MD', 2, '849 Rogers Tunnel\nNorth Ferne, PA 56193-1450', 152, '+1.970.571.3021', 55, '2024-06-04 14:34:02', '2024-06-04 14:34:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gender_id` int(100) NOT NULL,
  `phone_number` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `school_id` int(100) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `gender_id`, `phone_number`, `address`, `school_id`, `updated_at`, `created_at`) VALUES
(1, 'Mrs. Chanel Walker', 1, '+1-254-582-8138', '21131 Maia Vista Apt. 699\nPriceberg, NJ 12025', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(2, 'Breanne Christiansen', 1, '+1-276-981-0947', '3798 Lulu Well\nMargueriteville, DE 65134-9764', 2, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(3, 'Elmore Rodriguez', 2, '+1 (863) 555-8406', '5431 Liza Trail\nEast Beryl, MS 63578', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(4, 'Jayce Schinner', 2, '+1-347-846-3687', '4434 Dawn Forks\nGregorioside, VA 88722', 2, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(5, 'Adelle Okuneva', 2, '+1-575-881-0672', '7091 Adam Shoals Apt. 845\nWest Leiffurt, IL 44372-7316', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(6, 'Kareem Jones', 2, '+1.719.769.3994', '20854 Kulas Loop\nZeldaland, NV 47872', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(7, 'Mikel Pagac', 1, '+1-757-697-0024', '48397 Bosco Burg\nNorth Darienbury, KY 35992-7760', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(8, 'Jaylen Marquardt', 2, '+12818543559', '433 Allie Falls\nPort Nathanial, DE 29408', 2, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(9, 'Prof. Gunner Schowalter', 1, '1-980-856-9220', '6370 Robb Path Apt. 551\nGretamouth, NJ 31078', 2, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(10, 'Fabian Kuhlman V', 2, '940-404-9480', '46366 Vanessa Lodge\nNelstown, WI 64817-8908', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(11, 'Earl Connelly', 1, '(986) 571-3285', '46969 Prohaska Heights Suite 020\nSouth Fritzside, AR 69764-4357', 2, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(12, 'Icie Pfeffer MD', 2, '570-621-8678', '81116 Quitzon Run\nNew Maggieview, WA 49454-6108', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(13, 'Gaetano Ankunding', 1, '+17704857082', '22393 Aurelia Valley\nLittelfort, NV 00590-0248', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(14, 'Dr. Waino Ullrich III', 1, '818-823-5720', '1459 Malinda Track Suite 768\nMarastad, VA 91144-3280', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(15, 'Maxine Fahey Sr.', 2, '+13524470242', '603 Schimmel Union Suite 549\nWendellville, MO 93339', 2, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(16, 'Myrtie Ortiz', 2, '(803) 888-1575', '610 Celine Highway\nEast Ella, WY 81864', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(17, 'Michel Wilderman', 2, '(512) 412-9835', '145 Alva Isle\nRettachester, IA 05741-1573', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(18, 'Edward Marvin', 1, '725.388.5058', '86766 Hackett Fall Suite 618\nGislasonville, VT 90220', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(19, 'Abdul Boyer', 2, '941.315.5774', '51880 Reichert Park Suite 930\nNorth Einarton, WY 27027-4615', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(20, 'Miss Leola Jakubowski', 1, '769-487-8008', '23344 Audie Pines\nEast Eliezer, KY 65356-6819', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(21, 'Jalon Dietrich Jr.', 1, '1-307-739-8982', '1221 Samantha Lake Apt. 882\nPort Brando, RI 20368', 2, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(22, 'Mauricio Fritsch', 2, '1-531-280-1189', '4663 Dasia Locks\nBlickshire, MO 57266-9595', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(23, 'Delpha Kihn', 2, '+1-929-364-9158', '86106 Padberg Rest\nPort Herminio, NY 30705', 2, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(24, 'Dr. Mireya Kreiger', 1, '+1.850.556.3410', '1379 Ebert Mountain\nNew Celestinoview, MN 65961-7931', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(25, 'Darien Sporer', 1, '+1 (585) 499-6069', '99332 Leuschke Cove\nSouth Elza, MA 51049', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(26, 'Aniya Schinner', 1, '+1.769.879.3670', '161 McGlynn Fords\nSouth Marc, NV 02122-0328', 2, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(27, 'Toney Denesik', 2, '+18024979507', '530 Skiles Spring Suite 289\nWuckertchester, WI 30646-2764', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(28, 'Wilfred Botsford IV', 2, '938-586-5949', '165 Dimitri Springs Suite 344\nThielside, ND 37015', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(29, 'Adrien Cassin', 1, '+1-252-510-9511', '512 Balistreri Center\nEast Orlandoside, LA 76839', 2, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(30, 'Luna Beier', 2, '+12198837343', '252 Roob Shoals Suite 158\nWest Cydney, ND 43390', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(31, 'Ashton Brekke PhD', 1, '+14237785587', '4234 Madge Street Suite 446\nBayermouth, NV 98260-2472', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(32, 'Mrs. Anika Gutmann DDS', 2, '(469) 677-8127', '4795 Hirthe Centers Suite 997\nWest Gino, TX 38291', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(33, 'Prof. Talia Hill MD', 2, '1-978-312-5691', '36728 Toy Rapid\nSpinkaside, LA 65382', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(34, 'Wendell Keebler Jr.', 1, '1-847-970-3158', '499 Teresa Flats Apt. 710\nBinshaven, WV 97955', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(35, 'Max Barrows III', 2, '1-276-900-4913', '31572 Jast Mission Apt. 724\nGerdastad, RI 11578-3694', 2, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(36, 'Mr. Guido Ratke DDS', 2, '520-334-1947', '527 Kovacek Plains\nLake Lempi, HI 96397-8545', 2, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(37, 'Mrs. Serenity Hills III', 2, '+1-317-754-3325', '3934 Jany Corner\nRubyebury, PA 60514', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(38, 'Mrs. Bernita Corkery MD', 1, '+1-279-950-8390', '38229 Keagan Run\nSouth Syble, KS 84209', 2, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(39, 'Maritza Crist', 1, '717-386-7945', '563 Jakubowski Village Suite 523\nKundestad, MA 97085-6177', 2, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(40, 'Dr. Friedrich Reilly PhD', 1, '(805) 346-9849', '6317 Iva Field Apt. 067\nMagdalenaton, DE 48391', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(41, 'Quincy Parker', 1, '1-276-216-8400', '4936 Keeling Brooks Apt. 437\nSouth Albin, WA 08537', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(42, 'Bernita Bauch I', 1, '+1-920-465-0597', '8919 Christophe Court Suite 730\nGutkowskishire, WI 24138-0159', 2, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(43, 'Dr. Angel Shields V', 2, '270.384.2861', '61533 Kemmer Flat Suite 297\nWest Golden, IN 46776-2921', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(44, 'Hilma McClure', 1, '779.317.8766', '979 Newton Hollow Apt. 627\nLeopoldochester, ID 59896-9575', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(45, 'Aric Hauck', 2, '865.836.0017', '635 Reilly Ports\nMoorefort, OR 91150-1964', 2, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(46, 'Dr. Raven Fisher', 2, '773-931-4276', '13841 Larkin Gateway Suite 030\nO\'Connerville, WV 11995', 2, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(47, 'Katharina Turcotte II', 2, '+1-515-894-0966', '922 Bertha Loop Suite 024\nAshleeburgh, PA 29610', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(48, 'Timothy Auer', 1, '832.787.8398', '8790 Feeney Mall\nReynoldsfort, IN 48905', 3, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(49, 'Dr. Adolfo Murazik I', 2, '+15402181151', '99667 Alda Mission Suite 200\nLake Cyril, DE 26895-3251', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(50, 'Prof. Ramona Moore', 1, '+1.540.531.6388', '46262 Gerlach Roads\nPort Russell, PA 54586', 1, '2024-06-04 14:30:18', '2024-06-04 14:30:18'),
(51, 'Ada Hirthe', 2, '971.425.4162', '9025 Charles Ranch\nJohnsonside, AR 96673-2761', 56, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(52, 'Dexter Hudson', 2, '+1-858-699-9820', '1458 Tromp Villages\nWest Isaacton, NY 81021', 57, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(53, 'Etha Orn V', 1, '754-873-9398', '89396 O\'Conner Hills\nCristobalchester, AL 81412-9594', 58, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(54, 'Dr. Kole Adams I', 2, '1-714-259-6104', '3722 Pollich Branch Apt. 486\nCandelarioside, GA 67776', 59, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(55, 'Mr. Thad Pouros', 1, '407-498-7567', '21787 Nicolas Mews\nNorth Ulicesland, NE 31459-1294', 60, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(56, 'Delores Stoltenberg DVM', 1, '+1 (539) 272-9980', '7818 Gleichner Ports Suite 858\nKlockoville, UT 74269', 61, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(57, 'Dr. Laurence Buckridge', 2, '+1.512.208.3739', '3367 Lizeth Trail Suite 086\nEdton, NY 79420-3881', 62, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(58, 'Ms. Fiona Carter DVM', 1, '984-609-1599', '1317 Leif Walks Apt. 559\nO\'Haraborough, AZ 87158-7654', 63, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(59, 'Jeff Miller', 1, '+1-425-833-7322', '898 Josue Land\nSouth Stacey, MS 29981-5522', 64, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(60, 'Lori Johnston', 2, '+12796809920', '431 Daugherty Lakes\nRunteland, NC 40078', 65, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(61, 'Adela Brakus', 2, '1-240-266-4181', '420 Iliana Corner\nNorth Delphia, HI 45436-3249', 66, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(62, 'Robb Cremin', 1, '(364) 286-4642', '30237 Kemmer Alley\nSeamuston, NH 40443-7628', 67, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(63, 'Garry Marquardt', 2, '+16804260007', '512 Verlie Wall Suite 742\nEast Alysson, LA 36849-7197', 68, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(64, 'Sylvia Mante', 1, '857-693-3352', '1258 Reichert Viaduct Suite 803\nWest Blairmouth, KY 16480', 69, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(65, 'Lucienne Kihn V', 2, '(804) 200-4082', '54525 Schuppe Falls\nPatiencemouth, CO 31555', 70, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(66, 'Dr. Sally Labadie', 2, '(530) 968-4467', '123 Breanne Drive\nNorth Petraburgh, MD 12663', 71, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(67, 'Prof. Brody Jacobson Sr.', 1, '(717) 888-2531', '12908 Maggio Lodge Suite 031\nEast Clarabelle, NJ 48489', 72, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(68, 'Abbie Ziemann', 1, '+1.862.901.2523', '850 Hessel Villages\nFinnport, TN 28931-5497', 73, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(69, 'Coty McDermott', 1, '559-988-3107', '2395 Joanny Forest\nPort Marquisville, IA 73230-2993', 74, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(70, 'Prof. Francisco Lockman Sr.', 2, '+1.980.795.0174', '2421 Giovanni Expressway\nPort Vicentetown, VA 18249-1892', 75, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(71, 'Mr. Raul Roob', 1, '318-699-3468', '106 Schultz Village Suite 423\nSouth Winfield, IN 80184-6608', 76, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(72, 'Adelle Torphy', 2, '475-586-4846', '5222 Reilly Manor\nNorth Denachester, NM 73681-7778', 77, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(73, 'Concepcion Kohler', 1, '747.342.8413', '854 Kautzer Square Apt. 777\nJastchester, SC 07493', 78, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(74, 'Ferne Dach', 1, '267.339.3699', '312 Shyanne Spring Suite 560\nOlivershire, WV 00240-4247', 79, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(75, 'Lexi Raynor', 2, '1-830-931-8864', '13590 Beier Unions\nTerrenceburgh, KY 41753-3315', 80, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(76, 'Murphy Howe', 1, '(920) 281-4627', '63491 Gorczany Crescent\nNew Aracely, SC 57961-3926', 81, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(77, 'Donavon Langworth', 2, '+1-970-770-6483', '756 Armstrong Parkway\nPort Jacklyn, CT 07248-5777', 82, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(78, 'Dr. Emmanuelle Wiza Jr.', 2, '1-220-430-3600', '309 Caterina Throughway\nSouth Hendersonfort, GA 88956', 83, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(79, 'Tiffany Will', 1, '+1-223-378-4896', '694 Johathan Manors\nUllrichside, MT 12282', 84, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(80, 'Elbert Schmitt V', 2, '351-291-8911', '261 Schuster Tunnel\nTeresatown, PA 85315', 85, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(81, 'Hershel Kohler II', 1, '+1-808-265-1069', '485 Serena Wall Apt. 399\nNorth Flavieside, AL 77156-6894', 86, '2024-06-04 14:34:02', '2024-06-04 14:34:02'),
(82, 'Javon Gleason', 1, '212.609.6393', '259 Edison Cliff\nLowellport, WY 16595-3584', 87, '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(83, 'Mr. Rashawn Bradtke', 2, '(704) 416-7228', '96727 Rath Vista\nJamarcusstad, IA 93307-6615', 88, '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(84, 'Johann Hoppe III', 2, '(678) 744-0403', '79270 Coralie Courts\nRutherfordhaven, IA 41648-8154', 89, '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(85, 'Ms. Kristina Pagac II', 2, '+18178790090', '4917 Reichel Point\nMadalynmouth, MA 05952-1249', 90, '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(86, 'Floyd Farrell', 1, '1-843-293-0069', '160 Reichel Course Apt. 994\nRautown, WY 70674', 91, '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(87, 'Lila Kohler', 1, '(949) 374-9333', '442 Zulauf Knoll Suite 077\nKesslerville, PA 07306', 92, '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(88, 'Mr. Sofia Ullrich Sr.', 2, '+1.586.680.0797', '665 Joanne Rue\nNew Rhiannon, MD 33807-5946', 93, '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(89, 'Prof. Zackary Greenfelder', 2, '+1-351-670-6640', '56757 Seamus Ridges\nBeerland, FL 78708', 94, '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(90, 'Francesca Gleichner DDS', 2, '(347) 478-0916', '2496 Kassandra Dam Suite 330\nNew Dudley, KS 53268', 95, '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(91, 'Mr. Keyon Franecki Jr.', 2, '(941) 795-5969', '326 Marlin Avenue Suite 887\nEast Misty, WY 39878', 96, '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(92, 'Rosalia Sawayn', 2, '820.554.3690', '583 Ledner Ridge\nBinsport, MS 76733-6469', 97, '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(93, 'Wanda Orn', 1, '283-918-0998', '316 Schaefer Forest Suite 838\nSouth Hazelhaven, MI 80228', 98, '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(94, 'Nola Hauck V', 1, '(850) 873-3033', '7681 Kris Greens Suite 594\nLake Norris, WY 66426', 99, '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(95, 'Ethel West Sr.', 2, '+1-619-417-2906', '2366 Princess Drive\nNew Tristian, MS 58155-8826', 100, '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(96, 'Elyse Moore V', 2, '+1-380-307-4140', '812 Milford Parkway Apt. 041\nPort Allison, MT 74457', 101, '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(97, 'Aracely Zemlak', 1, '+1 (575) 815-2027', '457 Beer Forge\nMcLaughlinbury, NE 13203-5463', 102, '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(98, 'Theron Kuphal', 1, '1-726-523-7377', '9714 Boyer Stream\nNew Francisca, VA 15400', 103, '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(99, 'Dr. Parker Hettinger', 2, '+12706300301', '967 Lind Key\nSouth Susanamouth, AZ 91786', 104, '2024-06-04 14:34:03', '2024-06-04 14:34:03'),
(100, 'Dr. Monique Emmerich', 2, '+19152128400', '5560 Wilford Lodge Suite 449\nNew Gerda, LA 02958', 105, '2024-06-04 14:34:03', '2024-06-04 14:34:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `API_KEY` text NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `API_KEY`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'hehe', 'hehe@gmail.com', NULL, '$2y$12$mlqdcntzCgY45NSeUJsFN.4Uh9gH9.jd5xcjjIzumK5uAy.kqljJS', 'aec6ae8', NULL, '2024-05-28 07:51:11', '2024-05-28 07:51:11'),
(3, 'jack', 'jack@gmail.com', NULL, '$2y$12$FitwieuDD2UFF2fx52wSLuywwEVMYV9jjDyiQqacIw5s7jiCbLpdK', '7a647b6a9063935b009c', NULL, '2024-06-04 05:19:59', '2024-06-04 05:41:03'),
(4, 'jack', 'hehehe@gmail.com', NULL, '$2y$12$SOVF4HwV2iN7Q8KhbErtv.tQv.EFP5u2UJnNWstPsIfU68./n6eJi', '25094bacaa57b263807a', NULL, '2024-06-04 19:31:53', '2024-06-04 19:31:53'),
(5, 'ab', 'ab@gmail.com', NULL, '$2y$12$GoF7HyR5.JuRweCDxU5zou35ysf6JOkGbMuWwGh1yPIXir.hUZYyS', '410a2f593541f620871c', NULL, '2024-06-04 19:45:40', '2024-06-04 19:45:40');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `school_types`
--
ALTER TABLE `school_types`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `teachers`
--
ALTER TABLE `teachers`
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
-- AUTO_INCREMENT untuk tabel `genders`
--
ALTER TABLE `genders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT untuk tabel `school_types`
--
ALTER TABLE `school_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT untuk tabel `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
