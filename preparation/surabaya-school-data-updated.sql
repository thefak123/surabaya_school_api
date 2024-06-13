-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jun 2024 pada 09.18
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `gender` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `genders`
--

INSERT INTO `genders` (`id`, `gender`, `created_at`, `updated_at`) VALUES
(1, 'laki-laki', NULL, NULL),
(2, 'perempuan', NULL, NULL);

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
(4, '2024_05_28_091722_create_personal_access_tokens_table', 1),
(5, '2024_06_06_013257_create_genders_table', 1),
(6, '2024_06_06_014255_create_school_types_table', 1),
(7, '2024_06_06_014806_create_schools_table', 1),
(8, '2024_06_06_015009_create_students_table', 1),
(9, '2024_06_06_015119_create_teachers_table', 1);

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(300) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `postal_code` text DEFAULT NULL,
  `school_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `phone_number` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `schools`
--

INSERT INTO `schools` (`id`, `name`, `address`, `postal_code`, `school_type_id`, `phone_number`, `created_at`, `updated_at`) VALUES
(1, 'Sekolah Brianne Erdman', '14420 Kennedy Plain Apt. 759\nDenesikshire, NV 82729', '08220-8895', 1, '+19254797199', '2024-06-05 19:46:38', '2024-06-05 19:46:38'),
(2, 'Sekolah Brock Greenfelder', '8388 Darlene Valleys Apt. 849\nLynchhaven, CA 07441-9755', '51856', 2, '+1-640-254-7489', '2024-06-05 19:46:38', '2024-06-05 19:46:38'),
(3, 'Sekolah Brain Dach', '7822 Gage Isle\nMetzton, WI 61562', '77494-2124', 1, '618-283-2172', '2024-06-05 19:46:38', '2024-06-05 19:46:38'),
(4, 'Sekolah Arno Stracke', '537 Ivah River\nOrnchester, IN 15041-4802', '67197-2014', 2, '763.297.4899', '2024-06-05 19:46:38', '2024-06-05 19:46:38'),
(5, 'Sekolah Valentina Pacocha', '34603 Alize Wall Apt. 641\nWuckertborough, LA 17657-8746', '60849', 2, '(520) 920-2968', '2024-06-05 19:46:38', '2024-06-05 19:46:38'),
(6, 'Sekolah Dr. Jess Spinka', '88149 Powlowski Village Suite 190\nLake Robyntown, MI 19757-9186', '85448-7276', 1, '(626) 266-6311', '2024-06-05 19:46:38', '2024-06-05 19:46:38'),
(7, 'Sekolah Edgardo Cassin', '834 Yasmin Stravenue\nLake Emmy, ID 38648-1705', '73282-4840', 1, '+12254984452', '2024-06-05 19:46:38', '2024-06-05 19:46:38'),
(8, 'Sekolah Veronica Stiedemann', '57604 Ankunding Track\nTheaberg, AR 01487', '20365-8587', 1, '+1 (218) 652-8409', '2024-06-05 19:46:38', '2024-06-05 19:46:38'),
(9, 'Sekolah Tess Bednar', '79710 Cremin Mill\nWest Leonie, WY 16952', '79447-9242', 2, '539.363.1735', '2024-06-05 19:46:38', '2024-06-05 19:46:38'),
(10, 'Sekolah Mr. Arch Boehm', '1975 Zakary Lock\nNew Sydneyville, CO 00328', '24078', 1, '1-267-394-7028', '2024-06-05 19:46:38', '2024-06-05 19:46:38'),
(11, 'Sekolah Shanna Rolfson DDS', '32397 Jacky Drive Suite 156\nJohnnyville, AZ 35529-7268', '09755-4189', 2, '+1.802.449.9663', '2024-06-05 19:46:38', '2024-06-05 19:46:38'),
(12, 'Sekolah Mrs. Augusta Romaguera', '4226 Torp Hills Apt. 515\nLake Kaciemouth, OK 13072', '38116', 2, '(817) 450-2814', '2024-06-05 19:46:38', '2024-06-05 19:46:38'),
(13, 'Sekolah Stephania Brakus', '418 Franecki Divide\nLake Casper, KY 17822', '69334-6076', 3, '+1-231-625-0564', '2024-06-05 19:46:38', '2024-06-05 19:46:38'),
(14, 'Sekolah Dario Stark', '675 Douglas Estate\nPort Loistown, MA 51271-2160', '22291', 3, '+1-351-530-1925', '2024-06-05 19:46:38', '2024-06-05 19:46:38'),
(15, 'Sekolah Ms. Esther Gutkowski', '6761 Abdiel Plain Suite 336\nWillborough, CO 93068-2498', '72941', 2, '+1-215-553-1932', '2024-06-05 19:46:38', '2024-06-05 19:46:38'),
(16, 'Sekolah Tiana Daniel', '13470 Lueilwitz Street\nMohrville, AK 25922-1451', '64600', 1, '1-458-294-9706', '2024-06-05 19:46:38', '2024-06-05 19:46:38'),
(17, 'Sekolah Freda Hackett V', '3186 Kareem Trace\nWest Mozellmouth, MD 05934', '92526-3053', 3, '1-630-469-7721', '2024-06-05 19:46:38', '2024-06-05 19:46:38'),
(18, 'Sekolah Priscilla Howell', '77827 Dietrich Haven\nSipesport, FL 69035-9322', '73746', 3, '+1.801.766.4721', '2024-06-05 19:46:38', '2024-06-05 19:46:38'),
(19, 'Sekolah Alaina O\'Keefe Jr.', '516 Stephon View\nAlfonzotown, NH 06182', '00339', 3, '+1 (845) 956-7752', '2024-06-05 19:46:38', '2024-06-05 19:46:38'),
(20, 'Sekolah Dr. Monroe Keeling V', '37005 Jennyfer Brook Apt. 810\nOlsonside, GA 73967-0592', '45907', 3, '1-727-291-5039', '2024-06-05 19:46:38', '2024-06-05 19:46:38'),
(21, 'Sekolah Mrs. Margot Ferry', '250 Santiago Field\nWest Delpha, IN 48192', '46628', 1, '+1.956.299.2115', '2024-06-05 19:46:38', '2024-06-05 19:46:38'),
(22, 'Sekolah Zoie Boehm', '5286 Consuelo Drive\nMcGlynnton, TN 98458', '94739', 2, '(650) 744-6686', '2024-06-05 19:46:38', '2024-06-05 19:46:38'),
(23, 'Sekolah Briana Cole Sr.', '81266 Gottlieb Lake Apt. 016\nEichmannshire, IL 28564-6787', '95123-8888', 1, '520-799-4504', '2024-06-05 19:46:38', '2024-06-05 19:46:38'),
(24, 'Sekolah Camren Johns', '8010 Wunsch Tunnel Suite 235\nEast Carletonberg, OK 12829-6862', '87887-0905', 2, '1-763-930-4870', '2024-06-05 19:46:38', '2024-06-05 19:46:38'),
(25, 'Sekolah Prof. Caroline Anderson DVM', '423 Hannah River\nElmoshire, OH 50473', '84691-4122', 2, '+14755200974', '2024-06-05 19:46:38', '2024-06-05 19:46:38'),
(26, 'Sekolah Mattie Kuhic', '8575 Carolanne Port\nEast Johnson, AL 39407-2881', '99601-2142', 2, '(689) 869-3622', '2024-06-05 19:46:38', '2024-06-05 19:46:38'),
(27, 'Sekolah Ella Funk', '425 Beer Island Suite 583\nCummerataland, FL 33763-0262', '02001-9972', 3, '1-281-464-0076', '2024-06-05 19:46:38', '2024-06-05 19:46:38'),
(28, 'Sekolah Teresa Kessler IV', '832 Maggio Garden\nMadgechester, ND 48882', '01858-5315', 3, '1-717-246-0151', '2024-06-05 19:46:38', '2024-06-05 19:46:38'),
(29, 'Sekolah Dr. Sim Kreiger', '909 Natalie Canyon\nAishachester, GA 03435-8159', '68529-8818', 1, '540-517-9477', '2024-06-05 19:46:38', '2024-06-05 19:46:38'),
(30, 'Sekolah Jakob Hamill', '1697 Bernier Crossroad\nNorth Jeremie, VT 37647', '80360', 2, '+1-716-885-1262', '2024-06-05 19:46:38', '2024-06-05 19:46:38'),
(31, 'Sekolah Ethyl O\'Kon III', '4582 Sienna Islands Suite 548\nDarrylmouth, FL 87921', '81899', 2, '+12257266598', '2024-06-05 19:46:38', '2024-06-05 19:46:38'),
(32, 'Sekolah Malika Koss', '32569 Kyle Highway Apt. 587\nSouth Clair, OK 13199', '04677-4491', 3, '+1-914-800-9423', '2024-06-05 19:46:38', '2024-06-05 19:46:38'),
(33, 'Sekolah Mr. Augustus Kreiger MD', '506 Kathryn Walk\nKiaraton, NC 19889-1586', '10707', 2, '+18546757233', '2024-06-05 19:46:38', '2024-06-05 19:46:38'),
(34, 'Sekolah Dr. Luciano Pouros', '930 Effertz Dam\nCasimerside, CT 02946-4119', '61998', 3, '754-357-4705', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(35, 'Sekolah Erich Bartell', '9736 Koepp Junction Apt. 317\nNorth Ardella, MI 12003-1465', '64269', 3, '+1-972-322-9537', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(36, 'Sekolah Mr. Bradford Hettinger Sr.', '8265 Brekke Hollow Apt. 101\nLeannechester, HI 31303', '66568', 2, '+19204454184', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(37, 'Sekolah Dewayne Herzog', '216 Skiles Canyon Apt. 991\nSouth Ray, OH 98851', '80373', 3, '(580) 492-1958', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(38, 'Sekolah Eloise Nader', '41991 Morar Lodge Apt. 772\nWest Laury, WY 89389', '37122-6504', 2, '+1-743-303-5399', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(39, 'Sekolah Prof. Lina O\'Kon', '298 Skyla Street Suite 262\nKoelpinborough, RI 17942-5371', '60595-7551', 2, '(440) 603-3624', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(40, 'Sekolah Hazle Zboncak', '798 Dibbert Lake Apt. 849\nDibberttown, PA 62421-3957', '14643-8582', 3, '1-559-914-7304', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(41, 'Sekolah Miss Aimee Larkin', '43329 O\'Keefe Pines Suite 855\nSauerchester, AR 29090-7910', '69266', 1, '636.878.7538', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(42, 'Sekolah Assunta Christiansen', '14971 Raphael Stream Apt. 560\nHeaneyfort, SC 75677', '73424', 2, '952.239.1735', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(43, 'Sekolah Ernestine Mayer', '853 Lorena Dale Suite 711\nKleinhaven, MD 14222', '11927-8177', 1, '+12694529810', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(44, 'Sekolah Ms. Dayna White MD', '68694 Thompson Bypass Suite 982\nEast Roelhaven, MS 45450-1919', '42263-5793', 1, '1-281-793-2103', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(45, 'Sekolah Cathy Schroeder', '9322 Gilberto Harbor Suite 882\nDanieltown, PA 22464', '50479-8377', 3, '+18723454659', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(46, 'Sekolah Autumn Okuneva', '53089 Collins Common Suite 266\nLake Deeview, DC 31309-3293', '18286', 1, '469-533-8062', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(47, 'Sekolah Gerry Shanahan', '5095 Auer Alley Suite 700\nEast Willy, CA 13843-7828', '94912-0419', 1, '(864) 372-3872', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(48, 'Sekolah Liana Hills', '111 Kayleigh Corner\nClemmieview, WI 77815', '81344-2774', 1, '762-418-5626', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(49, 'Sekolah Prof. Hester Miller DVM', '6528 Wuckert Lodge\nMaggiofort, CO 62123-3391', '69192', 2, '1-757-346-0298', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(50, 'Sekolah Carson Beier', '187 Morissette Mill Apt. 744\nStehrview, NV 06506', '45522', 3, '+1.351.337.2738', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(51, 'Sekolah Katheryn Ruecker IV', '2249 Maia Stravenue\nWest Brookberg, MN 67692-1570', '04635', 2, '248-659-1852', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(52, 'Sekolah Chris Beatty', '667 Gorczany Curve Suite 622\nJonesland, UT 88811-7811', '23610-2033', 2, '+1-669-273-8274', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(53, 'Sekolah Keely Dach', '2996 Kub Lights\nLindsayview, IL 25715-2081', '97696', 1, '1-725-316-7830', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(54, 'Sekolah Octavia Tillman', '6495 Damaris Streets Suite 217\nEast Velmastad, CO 95213-1820', '66547-2471', 1, '(610) 505-6063', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(55, 'Sekolah Enid Muller III', '251 Herzog Ramp Suite 889\nSouth Zolahaven, DC 13707-8677', '51953', 1, '(479) 273-5527', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(56, 'Sekolah Fredrick Jacobi IV', '942 Alda Trail\nEast Liana, IL 24281-4963', '07987-6223', 2, '1-424-210-5247', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(57, 'Sekolah Mrs. Elva Murray', '904 Reichel Flats\nJakaylamouth, WI 54938', '75695-9403', 1, '+1.727.543.7789', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(58, 'Sekolah Dr. Richmond Purdy Sr.', '8298 Connelly Groves Apt. 345\nNorth Augustuschester, HI 88704-6474', '98282', 1, '1-559-395-4597', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(59, 'Sekolah Dr. Landen Gleichner PhD', '486 Green Cape\nAlliechester, NC 03083', '16439-3378', 2, '+1 (475) 907-8147', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(60, 'Sekolah Domenick Douglas', '33489 Rowe Squares Suite 300\nPort Glenton, WI 45791-9427', '67908', 2, '(650) 779-3478', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(61, 'Sekolah Ayden Schmidt', '30958 Wiegand Street Apt. 685\nEast Irwin, DE 44705', '33422', 3, '651-804-7979', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(62, 'Sekolah Sid Strosin', '26477 Weissnat Mills\nAlexiston, IN 51178', '11506-4556', 1, '+19287832586', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(63, 'Sekolah Leonora Kshlerin', '418 Mayert Corners\nLake Arne, MO 14211', '55423', 1, '630.968.9934', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(64, 'Sekolah Prof. Torrey Connelly DVM', '3724 Vita View\nPort Stephon, WA 59295-8610', '04179-9092', 2, '+1.269.284.4604', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(65, 'Sekolah Mrs. Viviane Fritsch', '1763 Verna Fork\nLake Gilbertmouth, FL 64235-4393', '04136-0621', 2, '+1.678.661.0833', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(66, 'Sekolah Kaylin Kling', '60519 Hermiston Branch\nRaphaelleton, SC 44968', '64414-6596', 1, '+1 (480) 371-0861', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(67, 'Sekolah Dr. Jayce Feil', '26671 Kovacek Terrace\nKoeppburgh, DE 52167-5953', '25771', 2, '1-651-401-3923', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(68, 'Sekolah Jeremie Rogahn', '753 Aurelio Walks Suite 975\nPort Rylan, OK 00578-5566', '36609-9371', 2, '+1-916-664-2733', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(69, 'Sekolah Herman Macejkovic', '3609 Pascale Grove Suite 682\nSerenaburgh, GA 05552', '85925-6625', 3, '539.935.7005', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(70, 'Sekolah Odell Bosco', '5072 Laron Junctions\nWalkerhaven, NE 16936-9210', '58466', 2, '+1-669-572-1681', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(71, 'Sekolah Ms. Florine Schmeler', '473 Jayde Circles\nNorth Lesly, MA 86688', '38593', 2, '(623) 782-5831', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(72, 'Sekolah Irving Boyle PhD', '62054 Lyla Parkways Apt. 869\nDesireetown, AK 17469-1479', '54910', 2, '+1 (256) 592-7545', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(73, 'Sekolah Lera Heathcote IV', '66955 Marian Valleys Apt. 547\nPort Jonatan, AL 76565', '62860', 2, '215-237-2404', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(74, 'Sekolah Davion Berge', '7937 Vaughn Ford Apt. 849\nNew Selenafort, NY 81021', '36751', 3, '+1 (239) 879-3084', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(75, 'Sekolah Oswald Hirthe', '361 Javier Passage Apt. 738\nLake Trishatown, AR 44551-3261', '10407', 1, '954.846.5460', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(76, 'Sekolah Lyla Bauch', '9894 Klein Lock Suite 347\nEast Uriahmouth, DE 61990', '80316', 3, '(458) 770-6352', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(77, 'Sekolah Harold Hackett', '191 Kailee Crescent\nMadelynchester, CO 73771', '32595', 3, '1-928-310-5158', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(78, 'Sekolah Prof. Gaylord Marvin DDS', '1444 Sammy Islands Apt. 900\nHoweberg, WI 25740', '92179', 3, '+1 (419) 908-9327', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(79, 'Sekolah Hans Erdman', '9529 Guido Burg\nNoemymouth, AR 77577', '96638-5339', 2, '+1.850.234.5020', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(80, 'Sekolah Dr. Jaycee Schimmel II', '8900 Cicero Mission\nPort Loyland, IN 40585-1527', '41898-9185', 2, '+1-813-486-6631', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(81, 'Sekolah Noemi Hahn', '17610 Josephine Court\nEvieview, TX 72745-9072', '75308-2387', 3, '1-628-595-9744', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(82, 'Sekolah Claudia Marquardt', '43779 Jessie River Apt. 908\nNorth Clarissaland, DE 68509', '88230', 1, '949.346.0471', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(83, 'Sekolah Mr. Norris Pouros PhD', '6881 Kaylah Inlet Suite 694\nEast Darlenechester, TX 39369', '28911-9426', 1, '+1.559.653.6143', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(84, 'Sekolah Eli Reinger DDS', '61982 Homenick Loop Suite 279\nNorth Samanta, CO 18760-4187', '48837-4312', 1, '+1-774-682-1712', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(85, 'Sekolah Prof. Mustafa Smitham Jr.', '316 Omer Extension Apt. 413\nBertaport, KS 43304-3351', '86850', 2, '(909) 678-9303', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(86, 'Sekolah Emily Wiegand II', '81413 Kassulke Plaza Suite 685\nPort Franciscofort, GA 85060', '36812', 3, '+1-215-412-0499', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(87, 'Sekolah Lucie Lubowitz', '71890 Brooks Lodge Suite 411\nEast Wardtown, RI 35292-9031', '43986-9047', 3, '1-820-210-6976', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(88, 'Sekolah Charity Streich', '6545 Ervin Junction Suite 731\nVioletteton, WI 55554-3119', '01763', 1, '878-408-3512', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(89, 'Sekolah Miss Kasey Stamm', '207 Waelchi Courts\nVolkmanland, AR 78640-9974', '53982', 3, '563.837.2050', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(90, 'Sekolah Ubaldo Jenkins', '7835 Stark Motorway\nClydeberg, TX 67856-4005', '26380-0839', 3, '+1-319-759-0273', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(91, 'Sekolah Javon Lind III', '3439 Kassulke Dale Suite 103\nLefflerstad, MI 11423-3344', '80887-7350', 2, '+1-351-209-5953', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(92, 'Sekolah Wilhelm Brakus', '21593 Cecilia Way Suite 609\nSouth Cary, ID 80280-5526', '78979', 1, '+1-724-859-0876', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(93, 'Sekolah Prof. Mervin Lowe', '9087 Kuvalis Causeway\nBellshire, MS 00775', '81154-5136', 2, '360.650.7549', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(94, 'Sekolah Dr. Fletcher Morissette', '178 Murray Meadow\nTrompberg, WV 51208-6173', '05998', 2, '+1-484-776-3486', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(95, 'Sekolah Mr. Marcos Witting Jr.', '2239 Leffler Viaduct Apt. 429\nEdaburgh, LA 35776-2926', '54048-5017', 2, '863-871-3354', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(96, 'Sekolah Miss Nettie Bayer', '75963 Kautzer Heights Apt. 030\nLeuschketon, MT 05454-3572', '33616-4225', 3, '1-401-544-4926', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(97, 'Sekolah Jake Thompson', '356 Aron Turnpike Apt. 229\nCorytown, CA 26252-0869', '89585-1054', 1, '+1-410-846-3668', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(98, 'Sekolah Dr. Magnolia Keebler V', '927 Devon Isle\nEast Amara, AK 21177', '92473', 2, '720.320.8253', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(99, 'Sekolah Jarrell Spinka', '88798 Sanford Fields Suite 682\nHaleighmouth, OR 51308-0096', '07901-7004', 3, '(424) 356-0814', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(100, 'Sekolah Gerson Mitchell', '9022 Cassie Park Suite 297\nEast Breanabury, HI 15473', '15618-1574', 1, '1-541-896-6146', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(101, 'Sekolah Dr. Lilla Hermiston', '8471 O\'Hara Village\nPriscillamouth, TX 40338-3114', '33401-4255', 3, '(843) 823-5585', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(102, 'Sekolah Marty Oberbrunner PhD', '7097 Jamil Valleys\nMullerbury, FL 72169-4469', '56934-3607', 3, '+1-641-378-7607', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(103, 'Sekolah Prof. Sydney Ebert', '455 Goldner Crescent Apt. 730\nSouth Taniatown, DC 43513-8241', '34700', 1, '570.521.1503', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(104, 'Sekolah Kristoffer Cummings', '53065 Marques Neck\nPort Cloyd, MD 35303-9035', '98207-1676', 1, '1-862-244-8293', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(105, 'Sekolah Name Ruecker', '313 Brennon Junctions Apt. 927\nClaudiechester, ID 87230', '63581', 3, '(276) 314-0137', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(106, 'Sekolah Mr. Jules Nienow MD', '2111 Borer Light\nLake Mia, OH 69993-1556', '16165', 3, '1-769-676-1826', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(107, 'Sekolah Darrion Gusikowski', '1224 Haag Common Suite 185\nWest Rickyland, RI 84783-7119', '77311', 1, '586.966.7622', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(108, 'Sekolah Dr. Sarina Hegmann', '558 Daniel Ways\nLake Cortneytown, AL 51632', '96605', 1, '1-364-602-4700', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(109, 'Sekolah Gayle Torp', '59749 Erdman Cape\nDylanmouth, WY 02326-9063', '16109', 2, '+1-667-938-0439', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(110, 'Sekolah Allie Orn', '66284 Marshall Heights\nNew Felipafurt, MS 67280', '39857', 1, '(724) 913-4076', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(111, 'Sekolah Mayra Cormier I', '159 Ritchie Inlet\nNew Monroechester, AL 61630-8172', '80857', 2, '+1-907-337-1612', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(112, 'Sekolah Rhianna Kiehn', '7467 McCullough Port\nGleasonberg, FL 39955', '59142-1599', 3, '810.853.5793', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(113, 'Sekolah Dr. Mara Kulas', '786 Gibson Spurs Suite 751\nNew Gerardoburgh, MD 63826-5563', '94765-6533', 2, '(515) 993-5016', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(114, 'Sekolah Arnold Farrell', '363 Sipes Neck Suite 963\nLake Eldridgestad, NY 89817', '56794', 3, '(938) 910-5090', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(115, 'Sekolah Ms. Annie Schmidt', '82872 Kallie View Apt. 072\nWest Evie, IA 69242-3160', '93506-5552', 2, '407-368-6655', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(116, 'Sekolah Adeline Spencer', '3460 Yasmine Summit Apt. 359\nEast Layne, NC 22131', '52167-8945', 1, '+1 (779) 246-2987', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(117, 'Sekolah Mariano Collins', '974 Urban Fields\nPort Nicklausville, WA 07622-0774', '78850-0283', 1, '1-850-568-9401', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(118, 'Sekolah Herman Littel', '89897 Schmeler Neck\nEast Jacquelynchester, SD 54648', '52061', 2, '986.506.5368', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(119, 'Sekolah Margarete Mraz', '30554 Joesph Avenue Suite 961\nWest Lorenzfurt, AK 49272', '45074-5210', 1, '+19043692146', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(120, 'Sekolah Ryder Wyman DVM', '49524 Whitney Glen Apt. 773\nCassinview, WI 34174-6079', '68530-1506', 1, '+1-667-625-8714', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(121, 'Sekolah Maximillian Yost IV', '589 Durward Flats Apt. 665\nWeissnatchester, WV 16490', '05022', 1, '567-233-0735', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(122, 'Sekolah Clifton Beahan', '93969 Stroman Meadows\nSengerbury, OR 47035', '67206', 3, '+1.520.222.2203', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(123, 'Sekolah Isidro Dickens', '610 Destany Run\nDevynhaven, HI 66435', '11948', 3, '(309) 446-5666', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(124, 'Sekolah Rusty Turcotte III', '642 White Squares\nColbymouth, WI 33064-4741', '87006-4397', 3, '626.839.0257', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(125, 'Sekolah Della DuBuque', '83252 Reuben Pass Apt. 831\nNew Adriannashire, LA 97467', '68454-8523', 2, '+1.302.826.3724', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(126, 'Sekolah Dr. Deion Koch Sr.', '94119 Gorczany Summit\nSouth Leaport, NE 53867-5202', '52387', 1, '+1 (419) 698-2839', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(127, 'Sekolah Alvis Legros Sr.', '96531 Kenna Ways Apt. 684\nCordiamouth, SD 00893-4168', '62871', 2, '212-291-1262', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(128, 'Sekolah Ethelyn Streich', '938 Larkin Street\nWest Paulineberg, MI 30310-0528', '59147-4683', 2, '1-719-376-6769', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(129, 'Sekolah Cali Rosenbaum', '1967 Kunze Shoal\nRueckerview, IN 18255-7616', '89474-2108', 2, '404-248-3977', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(130, 'Sekolah Isaias Schoen', '625 Julia Oval\nSouth Albin, NE 93210', '25333-3248', 2, '+1.248.982.8477', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(131, 'Sekolah Jovany Waelchi', '33383 Frami Gardens\nPort Wernerburgh, NH 31541-3685', '92345-1676', 1, '+1-830-551-6530', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(132, 'Sekolah Miss Dana Pacocha IV', '415 Okuneva Creek\nDietrichmouth, MN 83772-9624', '65825', 3, '+1-703-953-6551', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(133, 'Sekolah Alfonso Heathcote', '979 Ron Cove Apt. 620\nNorth Erin, DE 13837-2157', '63039-5349', 1, '1-212-894-7969', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(134, 'Sekolah Blanche Reinger', '3341 Roberts Courts\nLake Amir, GA 47915', '41280', 2, '+1 (940) 317-3401', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(135, 'Sekolah Lou O\'Connell', '34946 Russel Shore\nLake Russelstad, MS 23508', '37502-5141', 3, '1-240-794-0829', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(136, 'Sekolah Dr. Alexandrea Mann', '842 Schinner Forge Apt. 368\nSouth Eltonfurt, OR 73761', '37690-0089', 3, '1-281-569-1263', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(137, 'Sekolah Janessa Gleason', '46250 Reichert Skyway\nSalvatoreport, WY 01356', '17501-6805', 1, '+1.551.207.9993', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(138, 'Sekolah Mr. Carey Hodkiewicz Sr.', '482 Juliet Oval Suite 950\nEast Collinland, AZ 23874', '11043-0153', 3, '+1.678.822.4185', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(139, 'Sekolah Mr. Mark Cole', '28878 Kunze Ridges Apt. 448\nNew Opal, AK 12273-2202', '05184-5920', 3, '281-502-4068', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(140, 'Sekolah Keara White', '363 Wintheiser Road Apt. 604\nHipolitochester, AK 30324-5349', '19484', 1, '+1-513-268-2506', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(141, 'Sekolah Ashlynn Hagenes', '9179 Dickinson Islands\nStokeston, FL 81669', '54328', 1, '+15319655169', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(142, 'Sekolah Florian Kunde PhD', '887 Bayer Isle\nWest Alizeview, ME 58398', '67231-2337', 2, '+1-714-561-4101', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(143, 'Sekolah Ms. Yessenia Douglas', '85779 Hirthe Mill Apt. 456\nLake Margarita, IN 64553', '56959-4437', 2, '231-528-9607', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(144, 'Sekolah Ms. Ally Kemmer', '5156 Lang Bypass Apt. 989\nWest Manuel, MI 61019', '48362', 3, '1-740-392-1666', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(145, 'Sekolah Kurt Harvey', '7453 Janelle Fields\nKennithfurt, NC 31547', '69787-1669', 3, '256.595.4464', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(146, 'Sekolah Joannie Russel', '227 Diego Dale\nPort Robinport, OR 20188', '34472-6964', 2, '+1 (856) 763-2386', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(147, 'Sekolah Alisa Goyette III', '7227 Bernhard Street\nNew Maggieport, AL 65932', '36221', 1, '228-295-3474', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(148, 'Sekolah Kariane Waelchi', '44731 Amani Garden Suite 382\nNew Jayson, IN 07252-7044', '37957', 2, '+1.283.241.8641', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(149, 'Sekolah Herminio Gleason', '61886 Rogahn Cliffs Apt. 365\nAbdultown, TN 90382', '37321', 2, '714.949.3319', '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(150, 'Sekolah Dorris Keeling', '937 Bernhard Lock Apt. 257\nDickiton, MO 21937', '67781', 2, '+1.201.772.7221', '2024-06-05 19:46:39', '2024-06-05 19:46:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `school_types`
--

CREATE TABLE `school_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `school_types`
--

INSERT INTO `school_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'SD', NULL, NULL),
(2, 'SMP', NULL, NULL),
(3, 'SMA', NULL, NULL);

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
('48l4qHQL8vOY5dBsYUTlfgtq6zixztnNUJJUELbM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWFJZWWc5bkFyUlBqc1JGd0xCTkozOGZnaEw5Rlo0YnRZekJDRlVWaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717644230),
('7UubRTR4Dp8XdPt5pqrqRgasKDNF5VX8WGvFH5LF', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMUpsM0tobzYwRzRZQTFKeXNxQU5FYU9nVFhGRmJLajJrSFo3MGc2MCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1717645855),
('9mCsIpAvbWSQLCovLAZxyNvlGpr09zLMpK31X3wL', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRzB1NjZnNlcwMTVaSTNnbXRuZ1d5bmdmMWdUdkUzSVJSY1djQ0lDSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717642238),
('Cwz7hl7csYT3Y89ybjSLkwhyXw2pviFKQyks6IiN', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUNMOHBIYzVERjdyYkx4YlNhSlNuMVA3TzNSTTJ1VnNhMkVJR21qOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717643593),
('dRcEHSVrZQhdDZWhsMXGmPo5vBjPrDnMdb0uqWB6', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYWhRaFFuRUlNOVdDV0lSdEUxMXpVbE5HaFVQeXptbHowaWUzMERCeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717645197),
('ISbOJaLRmS7m4hfVbfB2GSTZNjg23pkJBJ2oosdI', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmlQVGlabFBnWnhtUHEwallYRURsUko1WmJoN3U5ejI3cUNUT0JjSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717643830),
('kEfnDwJanETmVUyeFdgMiE791gxNufx0K89Acjj6', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMUtwYmNPVm85RmJxUjd2SVMxeDhPOWFRNnJBdFloMkpyWW55RzlQNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717643061),
('LChXXKDqRo8cRJRxG9Y3rO398yxHWcu6wCiaXwuY', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUVFsRzYwWlRnVU9kM3I0RWdEV01yZWd4TDU1UklxTVhwYTB1bjlOaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717643168),
('MOovdY8pk5Inm3mSioEvf6wKQn8IvQfusIZTeJQ9', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0lSM0Uyc3BEWWJRbzI2TlNzdnowN3dSVXBJSUVQdzhqZG1WNDl3MSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717643804),
('NSlrlc6kr57Jk2OPds7wGykBUyJFR7qZ0KRfcj9k', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicWtvNHN4MFR5UE5pNldpb1FhOVI1N3J6TkRmdkxHTWpxRWxxTGNnbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717643266),
('p8F64tk2GaMR4N0wfp1gEZBxzDzAno1OnEnJfmr8', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1R2bVdNdEN0V2I0V0hBZnRqN0Z4Y1FOUHZjaGdUWXFGQmFzYzNpZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717645671),
('PjcHwBmnTQ3cEQwRnd2Lxri603YHEhGJ9D8AmApG', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid1pBYjlLNk9maXFsSEM4bjI5WFZzNXRMc3U3NlNFV3JNZkxtMklMUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717642255),
('Sjqg8u52jsAdYLfkwytXaoJ4LMR3eYTCRhz6Cs1S', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMEZiYWdQNVB0d01lY2dCWWl2SkZYa1hBRDV6ZXdCQWhLcENkNm5sSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717644116),
('T9fvygHZsXrM72o2zM9eVEjuww1eWVNNiv4PtT8g', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieFRFSVNRSEMyYVl1Wk5rTDhpN2I5YWNUN1ZFRGtIM21xcEZ1ak1PeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717643802),
('tcwhz1j81LmclVgIUO1Hg4EGFk2XXeo6kxsbcPeG', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid0hzUWU1ZExzYlRvcWhMVXR1N0NnME9nNEZWWmZ4ZzU5Vnh5OGFwbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717644066),
('tsB25fTWhrLB6Ti8QKgYsipOu0AFktva8LsU1k9V', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQkRkZlN0dnR5N2Q4Q2Q4bW5qekpJeExDOWg3UUZ3eTBVUlgyYXN2YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717642579),
('tykGi3B9K4dZMgYZov7wx66x1ybvLEUyWU1C8KfK', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNzJyMWFzVlJWcnM1MjBQUkxFeHZNNkJvS3B6VFplMjNmRVEwY3hTNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717643708),
('U31MhuwbHHbFEVsUF1hGacvLYXxU2YLNoNdZstZO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib05Cclp6NWcxZXAwaHRTWkp1Ym9JaVIyUERvQXlXQ3N3T3pZTWtNOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717643475),
('vkwclBaJcqa525X6okOKpHbFTf018UVWeipBjlPu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM01SellvUm0xSG5IQnc3YTU4VlhqMU51VE5zcnBzTlNwNTBNV1plMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717643746),
('WMiFaVoUQbyTIpeua3ZmLPiElI84DDHydMjv55UV', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZm9JT2F5WDR2VDdqSW12dVBqNVVQVG1SWXdQb2I4OUpPcHJpWmpaaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717644439),
('WtZYotw7giTta8sCHIWC6epgH7SJMx8mcMDq1FR7', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieURwT3ltYTljODQ3OFMzYk14WlZkT1VQTW5KbWpkOW4xTzl3OEV0RCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717643734),
('X8bx8ucT3tDV1lj4DFnel8b02nZfgTm5DcQOyzNU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTlJyWW0wYVgyYjVIRmFQVVFTeFQ0QWVJU0V0R1lLOUpTbjJkOEp5MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717644038),
('Xy3HTrUfheMrg0nC5MBP9jc1nT7wh87e1VeLaspb', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUxZazBFakVjS3NWSnRJVDg5MmlzdXJmbWRXWnJINVR1bHZmaVVhcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2NzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717644102);

-- --------------------------------------------------------

--
-- Struktur dari tabel `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender_id` bigint(20) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `height` int(11) NOT NULL,
  `phone_number` varchar(100) NOT NULL,
  `school_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `students`
--

INSERT INTO `students` (`id`, `name`, `gender_id`, `address`, `height`, `phone_number`, `school_id`, `created_at`, `updated_at`) VALUES
(1, 'Ambrose Will', 2, '7136 Fisher Light\nSouth Jaylin, PA 60253-1338', 164, '+1 (224) 732-3747', 1, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(2, 'Raphaelle Dach', 1, '392 Janick Mountain Suite 695\nSouth Demetris, FL 20758-1331', 186, '283-316-5635', 2, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(3, 'Prof. Jillian O\'Hara', 2, '471 Maybell Light\nSouth Giuseppe, GA 05081-2459', 188, '661.875.3818', 3, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(4, 'Lucious Steuber', 2, '907 Bergnaum Flat Apt. 853\nNew Lou, KY 52726-3269', 158, '+1 (614) 737-1755', 4, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(5, 'Anna Murazik', 1, '68462 Cummerata Valley\nCordeliamouth, NJ 94256', 183, '(252) 876-3440', 5, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(6, 'Bridget Fisher', 1, '953 Valentina Ports Suite 216\nWest Ashlee, WV 19203', 180, '+13807133460', 6, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(7, 'Precious Williamson', 2, '4796 Kiehn Isle\nKeanuborough, CT 38700-8945', 163, '+1-304-607-2609', 7, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(8, 'Miss Addison Block IV', 1, '63046 Schuster Station Apt. 770\nMedhurstside, TN 61860', 146, '+1-563-247-8041', 8, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(9, 'Rick Quigley', 1, '9422 Blaze Circle\nParkerstad, KY 07710-5476', 167, '+1.864.679.3909', 9, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(10, 'Ms. Nina Hackett', 1, '1913 Eusebio Falls\nNorth Marietta, WV 64313-3308', 149, '+1.208.693.6106', 10, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(11, 'Gabriel Rosenbaum', 2, '6187 Collier Stravenue\nRheamouth, IL 83459-2452', 165, '+1 (760) 719-5909', 11, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(12, 'Dr. Junius Rath MD', 1, '972 Carroll Coves Apt. 699\nSouth Melisa, CO 81911-7997', 147, '+1 (678) 552-9461', 12, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(13, 'Dayton Franecki DDS', 2, '75832 Sonya View Suite 491\nEast Idellhaven, UT 77083-1105', 167, '630-414-0887', 13, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(14, 'Larry Feeney', 2, '164 Thelma Forks\nDakotaport, NE 59540', 188, '854-391-9954', 14, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(15, 'Ayla Heller', 1, '8839 Scotty Mall\nPort Nellamouth, NY 03678', 162, '+18016896163', 15, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(16, 'Nakia Kub', 2, '215 Dickens Ferry Suite 425\nAkeembury, PA 15442-3823', 176, '352-354-8818', 16, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(17, 'Sigmund Durgan DDS', 2, '19873 Shemar Points Suite 281\nMontanafurt, UT 98057-6050', 190, '+1-620-590-3030', 17, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(18, 'Ms. Noemie Donnelly MD', 2, '665 Ardith Mall Apt. 521\nPort Hildegard, NY 90957-2198', 165, '832.513.7323', 18, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(19, 'Cameron Luettgen', 2, '667 Gislason Oval Suite 779\nNew Riverstad, LA 45044-9417', 174, '985-513-8439', 19, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(20, 'Dr. Kennith Weber', 1, '52234 Shayne Port Suite 460\nNorth Deanna, UT 77442-0650', 159, '+1-445-210-9316', 20, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(21, 'Mrs. Odessa Schuppe Sr.', 2, '299 Lehner Curve Suite 493\nSouth Genevieve, LA 42984', 174, '650-831-7555', 21, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(22, 'Brianne Deckow Sr.', 1, '416 Sanford Via Suite 543\nNew Josianemouth, SD 57553', 186, '443.577.8952', 22, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(23, 'Mr. Ulices Hagenes Jr.', 2, '15573 Stiedemann Well Suite 355\nNorth Madonnaburgh, WI 61077-5742', 158, '(678) 635-1922', 23, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(24, 'Nat Feil I', 1, '80937 Greenholt Junctions Suite 721\nSouth Alaynafurt, RI 03298', 177, '352.540.4793', 24, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(25, 'Laverne Olson', 2, '260 Kaylah Fall Suite 961\nMoenchester, TN 55749-9199', 174, '+1 (657) 357-8748', 25, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(26, 'Baby Mann', 1, '86781 O\'Conner Walks Suite 295\nNorth Neha, PA 93588', 171, '(862) 401-8442', 26, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(27, 'Ophelia Hackett', 2, '9334 Mozell Loop Suite 385\nMcLaughlinview, OR 36437', 166, '646-315-0804', 27, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(28, 'Name Hyatt', 1, '81869 Nienow Burg\nHalvorsonshire, SC 15648', 168, '1-913-884-5128', 28, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(29, 'Magdalena Marvin', 1, '9016 Izaiah Loaf Suite 811\nMrazshire, CT 63841-4665', 173, '1-650-389-7474', 29, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(30, 'Alysson Legros V', 2, '646 Roob Streets\nJessicaville, AZ 51710', 158, '+1-534-895-0760', 30, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(31, 'Marisa Schamberger', 1, '36010 Wisozk Pines\nShieldsport, MN 57875-9066', 178, '+1.831.818.6102', 31, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(32, 'Mr. Jacques Gerlach I', 1, '378 Breitenberg Crossing\nLake Edgar, AL 82185', 165, '1-541-425-7518', 32, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(33, 'Marquise Schaefer', 2, '330 Howe Turnpike Suite 509\nBoehmmouth, AZ 45041', 149, '423-859-9124', 33, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(34, 'Annalise Hauck', 2, '537 Kertzmann Cliff\nWaylonmouth, CA 90500-4461', 169, '754.609.5282', 34, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(35, 'Lulu Hilpert IV', 1, '147 Morar Bypass Apt. 536\nBurniceside, SD 96995-6791', 187, '+1.321.629.7353', 35, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(36, 'Margaret Hettinger', 1, '3704 Larson Tunnel Suite 440\nPort Bradfordhaven, NH 47369', 178, '(918) 688-9717', 36, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(37, 'Lilla Schaefer', 1, '6441 Shanny Village Apt. 501\nLake Gaston, RI 08906-4019', 150, '1-315-953-9688', 37, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(38, 'Nola Shields', 1, '54654 Marks Overpass Suite 745\nNorth Keeleymouth, MO 51832-1389', 158, '316-850-6263', 38, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(39, 'Dr. Marjory Effertz', 1, '1940 Kuhlman Throughway\nJerelport, OK 90264', 171, '(864) 560-7333', 39, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(40, 'Amparo Gusikowski', 2, '672 Henry Islands Suite 481\nHildafort, NJ 96027-6679', 174, '1-380-677-8401', 40, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(41, 'Leon Casper Jr.', 2, '947 Stokes Key\nWest Dellabury, CT 97303-4315', 158, '364-847-6994', 41, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(42, 'Kris Schaefer', 1, '94645 Harris Roads\nNorth Damian, SD 53666-1941', 186, '+1-832-564-0249', 42, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(43, 'Fausto Mayert', 2, '826 Kessler Cliff Apt. 353\nEast Lou, IL 67306', 155, '(650) 804-2290', 43, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(44, 'Prof. Terence Olson Sr.', 2, '617 Hand Via\nAdanborough, TX 07593-4208', 173, '865-277-9318', 44, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(45, 'Nora Hessel DVM', 1, '688 Jerome Harbors Apt. 659\nLake Marianna, TX 91868-0760', 151, '+1 (757) 696-8266', 45, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(46, 'Eula Glover', 1, '105 Dolly Brooks Apt. 415\nPort Erling, IL 41423-5914', 183, '+1-203-370-8568', 46, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(47, 'Prof. Lenny Bergstrom', 2, '506 Mertie Villages\nEast Hunterberg, AZ 55230', 165, '1-732-240-3003', 47, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(48, 'Jacinto Block', 2, '87968 Krystel Crest Suite 365\nKrystelchester, OK 49947', 173, '315-401-6008', 48, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(49, 'Mr. Samson Robel IV', 2, '12201 Tod Corners\nHaneville, LA 25372-6310', 181, '435-250-4865', 49, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(50, 'Martina Thiel', 1, '28342 Jensen Orchard\nNorrisshire, RI 93865-4782', 186, '1-616-545-6703', 50, '2024-06-05 19:46:39', '2024-06-05 19:46:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(500) NOT NULL,
  `gender_id` bigint(20) UNSIGNED NOT NULL,
  `phone_number` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `school_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `gender_id`, `phone_number`, `address`, `school_id`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Sherman Lesch', 2, '1-320-947-2876', '5132 Ezra Shoal Suite 531\nRauland, DE 11775-4975', 51, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(2, 'Jillian Johns', 1, '1-917-450-4208', '5907 Dayton Shore\nNorth Laurineburgh, DE 78627-0085', 52, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(3, 'Isaias Dach', 1, '+1 (541) 951-3410', '25240 Wava Stream\nBauchshire, MT 52446-5147', 53, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(4, 'Gennaro O\'Hara', 2, '239-348-3690', '8871 Kutch Skyway Suite 593\nJanicetown, RI 99332-1558', 54, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(5, 'Janelle Heller', 1, '415.276.9288', '9203 Talon Flat Apt. 247\nCarrieton, DE 20194-6809', 55, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(6, 'Loy O\'Connell', 2, '573.215.7470', '2503 Kendall Drive\nGinafurt, OR 57090', 56, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(7, 'Prof. Sadie Lesch', 1, '1-848-593-6378', '903 Walker Ferry\nJordynborough, MO 91758-1042', 57, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(8, 'Mrs. Jeanie Larkin', 1, '217.379.2914', '6730 Salvatore Coves\nBartontown, CT 17057-0662', 58, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(9, 'Rebekah Von', 2, '657.829.9772', '727 O\'Kon Ports Apt. 778\nSavanahborough, MT 09699', 59, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(10, 'Arjun Jones', 2, '(972) 269-7581', '131 Gusikowski Shores\nWest Kyleeland, WY 20607', 60, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(11, 'Dr. Lacy Jakubowski', 2, '636.497.1950', '87615 Selina Valleys Apt. 279\nClarissastad, AK 37094', 61, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(12, 'Cassandre Koss', 1, '+1 (949) 751-1581', '7929 Roob Trafficway\nRicestad, MO 65086', 62, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(13, 'Dr. Norbert Auer DVM', 1, '575.900.2089', '26231 Junius Plains Suite 718\nPort Nikolasmouth, DC 46677', 63, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(14, 'Nikko Bashirian', 1, '+1-323-978-1465', '412 Boris Circles\nDoyletown, AR 93015', 64, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(15, 'Lucio Gorczany', 2, '+1-279-613-2076', '6644 Renner Fall\nFeestfurt, SD 16204-0063', 65, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(16, 'Bridget Leffler II', 1, '+1-925-794-3419', '60751 Rodrigo Grove Apt. 419\nGislasonberg, WI 15330', 66, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(17, 'Junius Legros', 2, '239.788.7314', '20964 Weissnat Hill\nNorth Joel, NY 49907', 67, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(18, 'Dr. Katrine Russel', 2, '1-216-242-6320', '6529 Mann Mountains\nBorerhaven, SC 17209', 68, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(19, 'Adam Leffler', 2, '+1.726.408.3965', '2416 Hagenes Manor\nPort Sincere, NH 85485', 69, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(20, 'Mrs. Lou Stamm', 1, '1-248-544-1350', '2349 Hilpert Roads\nRogahnstad, FL 50591-1870', 70, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(21, 'Don Goldner DDS', 1, '+1-480-599-6056', '9708 Kayli Pine Apt. 420\nSalvatoreshire, TN 22705', 71, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(22, 'Prof. Charley Kilback', 2, '1-816-344-1310', '495 Walter Trail Suite 989\nBergebury, GA 26043', 72, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(23, 'Mable Gusikowski', 1, '+1.323.212.3672', '487 Stokes Heights\nPort Ninaberg, MD 17731', 73, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(24, 'Mrs. Shana Konopelski', 2, '1-857-801-1941', '140 Gutmann Road\nElnorahaven, PA 58579-9617', 74, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(25, 'Prof. Adriel Beatty I', 2, '619-422-7670', '150 Wolf Bypass Apt. 588\nVandervortfurt, SD 01533', 75, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(26, 'Karley Hudson', 1, '(813) 900-6560', '823 Zieme Trafficway\nNew Tristianhaven, MT 12414', 76, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(27, 'Jody Mante', 1, '+1 (425) 987-7809', '69252 Schaefer Mission Suite 068\nAndersonville, MN 90314', 77, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(28, 'Hailee Rowe', 2, '408.290.1143', '127 Pfeffer Mountains\nNew Autumnberg, LA 51986-3361', 78, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(29, 'Mr. Cyril McClure I', 1, '1-720-602-5306', '795 Zaria Court\nWeberchester, OK 37358-7066', 79, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(30, 'Nicholaus Mosciski', 1, '+1 (936) 418-9675', '943 Witting Burgs\nJaycestad, NJ 50116-5374', 80, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(31, 'Lemuel Morissette', 1, '+1-541-920-9964', '9058 Jacobs Junctions\nLake Daynahaven, DE 28995-2204', 81, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(32, 'Daisy Beatty I', 1, '+1-650-231-9380', '652 Antonina Common Apt. 280\nStarkside, UT 84139-2133', 82, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(33, 'Aisha Abbott', 1, '305.730.7425', '69278 Anibal Summit Apt. 936\nWest Linneastad, VA 85162', 83, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(34, 'Weston Carroll', 2, '+17404037305', '15648 Christiansen Field Suite 143\nPort Dustin, DC 94147', 84, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(35, 'Shad Rohan II', 1, '276.842.8861', '9641 Barton Gardens\nKuhlmanshire, ID 27565', 85, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(36, 'Edison Williamson', 2, '+1 (412) 809-7647', '9266 Turcotte River Suite 974\nAlexandrobury, IN 62320', 86, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(37, 'Mr. Obie Armstrong IV', 2, '770-580-1372', '12975 Schmeler Corner\nKrystelhaven, OH 17464', 87, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(38, 'Jalen Beatty', 2, '(580) 247-9440', '2976 Johnpaul Brooks\nClaudiaport, MS 12877-3024', 88, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(39, 'Gerda Gorczany PhD', 2, '+16303432404', '2600 Simone Run Suite 334\nNorth Erinport, FL 79087-0348', 89, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(40, 'Prof. Jaeden Bartell', 1, '1-445-542-5477', '1611 Daisha Greens\nSylvanview, KS 90947', 90, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(41, 'Ronaldo Lockman', 2, '+17194931472', '1998 Josiane Corner\nNorth Emerystad, MA 36896-3839', 91, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(42, 'Mr. Freddy Carroll', 2, '341-913-7182', '34947 Fadel Tunnel Apt. 712\nPort Evert, NC 49978', 92, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(43, 'Prof. Fermin Klein Sr.', 2, '+1.805.297.7750', '874 Eichmann Isle Suite 378\nNaderview, DC 20903', 93, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(44, 'Logan Waelchi', 1, '281-287-3835', '478 Kailee Lodge\nBennettton, MA 11385-8642', 94, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(45, 'Mr. Nathen Romaguera III', 1, '+1 (260) 449-2032', '365 Salvador Mission\nSchambergerburgh, MS 29415', 95, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(46, 'Kristoffer Quitzon', 1, '1-936-664-2418', '5270 Asha Valleys Suite 150\nPort Ransom, AR 30506-7312', 96, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(47, 'Mr. Abdullah Gerhold Sr.', 1, '+17623970259', '6684 Grimes Place Apt. 956\nHodkiewiczhaven, TN 93319-8937', 97, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(48, 'Jade Boyle', 2, '620.506.2251', '9060 Jazlyn Crossroad Suite 978\nEast Lindsayside, MD 70446-2996', 98, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(49, 'Emelia Ferry', 2, '+1 (424) 839-1335', '39553 Buckridge Rest\nNorth Benedict, NV 97957', 99, '2024-06-05 19:46:39', '2024-06-05 19:46:39'),
(50, 'Juston Hill', 1, '+18489105111', '85352 Deshawn Circles Apt. 478\nSchaeferhaven, NY 45885-7390', 100, '2024-06-05 19:46:39', '2024-06-05 19:46:39');

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
(1, 'ab', 'ab@gmail.com', NULL, '$2y$12$GrJaZf8XC0tl6qsm6hAaiufFfFEH3ZY8w/4FOC3x5ALjLKQZtZU0S', '3c8ec4690bb4c1bd1cdd', NULL, '2024-06-05 19:50:33', '2024-06-05 19:50:33');

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `schools_school_type_id_foreign` (`school_type_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_gender_id_foreign` (`gender_id`),
  ADD KEY `students_school_id_foreign` (`school_id`);

--
-- Indeks untuk tabel `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teachers_gender_id_foreign` (`gender_id`),
  ADD KEY `teachers_school_id_foreign` (`school_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `schools`
--
ALTER TABLE `schools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT untuk tabel `school_types`
--
ALTER TABLE `school_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `schools`
--
ALTER TABLE `schools`
  ADD CONSTRAINT `schools_school_type_id_foreign` FOREIGN KEY (`school_type_id`) REFERENCES `school_types` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `teachers_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
