-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2024 at 09:21 AM
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
-- Database: `laravel_invoice_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `prefix` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `key`, `prefix`, `value`, `created_at`, `updated_at`) VALUES
(1, 'invoice', 'INV', '20000', '2024-06-06 20:56:40', '2024-06-06 20:56:40');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstname`, `lastname`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Regan Erdman', 'Ms. Rose Goldner', 'kanderson@hotmail.com', '46948 Eliezer Bridge Apt. 068\nSouth Jordyn, NY 35488', '2024-06-06 21:03:07', '2024-06-06 21:03:07'),
(2, 'Mrs. Jessica Waters', 'Melyna Anderson', 'darrell73@hotmail.com', '25341 Koss Mountain\nSouth Krystalfort, AZ 83011', '2024-06-06 21:03:07', '2024-06-06 21:03:07'),
(3, 'Jaida Howe', 'Larissa Wilderman', 'dion.jacobs@hoppe.com', '949 Antonetta Trail Apt. 469\nNew Alekside, MD 90721', '2024-06-06 21:03:07', '2024-06-06 21:03:07'),
(4, 'Cade Koch', 'Lucious Howe III', 'cwalker@hotmail.com', '45126 Jerod Manors\nPort Tom, NC 49982', '2024-06-06 21:03:07', '2024-06-06 21:03:07'),
(5, 'Karlee Abbott IV', 'Dr. Grover Nikolaus Sr.', 'umarquardt@walker.net', '623 Claire Rapids Suite 847\nNorth Cathytown, AK 54724-1825', '2024-06-06 21:03:07', '2024-06-06 21:03:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `due_date` date NOT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `terms_and_conditions` text NOT NULL,
  `sub_total` double NOT NULL,
  `discount` double NOT NULL DEFAULT 0,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `number`, `customer_id`, `date`, `due_date`, `reference`, `terms_and_conditions`, `sub_total`, `discount`, `total`, `created_at`, `updated_at`) VALUES
(1, '953', 8, '2023-01-18', '1975-09-28', 'REF-376', 'Iure adipisci nobis voluptatem odio quis iusto ut et. Sunt quas repudiandae soluta qui facere. Ducimus in incidunt dolor ex.', 788, 76, 1042, '2024-06-06 21:05:53', '2024-06-06 21:05:53'),
(2, '721', 15, '1995-02-26', '2017-11-30', 'REF-104', 'Adipisci sit similique porro alias quo a. Fuga ipsum sit culpa sit. Reiciendis sint nostrum hic tempora esse qui.', 2736, 79, 2657, '2024-06-06 21:05:53', '2024-06-11 21:07:48'),
(3, '145', 15, '2019-09-04', '2020-10-26', 'REF-397', 'Impedit odit iste et quia beatae sint commodi. Est quae eligendi maxime voluptatibus soluta.', 405, 48, 1565, '2024-06-06 21:05:53', '2024-06-06 21:05:53'),
(4, '391', 10, '2017-04-19', '2015-09-08', 'REF-278', 'Veniam similique dolores voluptas saepe sed ex quaerat. Debitis quo cupiditate sit. Quo non expedita aut molestiae id et.', 142, 67, 1919, '2024-06-06 21:05:53', '2024-06-06 21:05:53'),
(5, '286', 7, '2019-09-22', '1971-05-28', 'REF-466', 'Reiciendis voluptates consequatur non veritatis fuga sed quibusdam. Consequatur repellat ex accusantium saepe enim debitis est. Voluptas facere corporis provident quisquam quod.', 453, 68, 850, '2024-06-06 21:05:53', '2024-06-06 21:05:53'),
(6, '557', 13, '1993-09-20', '1984-02-04', 'REF-438', 'Ut dolores et ex nam dolor. A quo eum magni vero deserunt facilis quia. Alias reprehenderit quis qui dignissimos quia nihil qui sit.', 690, 55, 848, '2024-06-06 21:13:32', '2024-06-06 21:13:32'),
(7, '188', 2, '1972-07-25', '2020-02-07', 'REF-129', 'Quia neque dignissimos rerum molestiae. Doloribus quis dicta autem maiores blanditiis.', 207, 17, 426, '2024-06-06 21:13:32', '2024-06-06 21:13:32'),
(8, '582', 15, '2005-11-18', '2007-09-16', 'REF-291', 'Ea at omnis sed sint est et. Commodi autem est aliquid vel ut.', 799, 67, 1468, '2024-06-06 21:13:32', '2024-06-06 21:13:32'),
(9, '700', 19, '2022-09-29', '1994-10-21', 'REF-50', 'Aut aperiam voluptatibus doloremque. Delectus dolorum corporis sint maxime est cupiditate. Ipsa molestiae id consequatur cum.', 275, 70, 599, '2024-06-06 21:13:33', '2024-06-06 21:13:33'),
(10, '568', 6, '2014-02-15', '1973-01-07', 'REF-370', 'Doloremque nam optio itaque nam harum. Vero delectus libero in facere provident possimus libero.', 221, 19, 1349, '2024-06-06 21:13:33', '2024-06-06 21:13:33'),
(11, 'INV20011', 4, '2024-06-11', '2024-06-11', 'tes', 'undefined', 684, 10, 674, '2024-06-10 20:45:56', '2024-06-10 20:45:56'),
(12, 'INV20012', 4, '2024-06-11', '2024-06-11', 'tes', 'undefined', 684, 10, 674, '2024-06-10 20:47:53', '2024-06-10 20:47:53'),
(13, 'INV20013', 4, '2024-06-11', '2024-06-11', 'tes', 'undefined', 684, 0, 684, '2024-06-10 20:59:11', '2024-06-10 20:59:11'),
(14, 'INV20014', 4, '2024-06-11', '2024-06-11', 'tes', 'undefined', 684, 0, 684, '2024-06-10 21:04:17', '2024-06-10 21:04:17');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `unit_price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `invoice_id`, `product_id`, `unit_price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 809, 29, 2827, 4, '2024-06-06 21:16:25', '2024-06-06 21:16:25'),
(2, 760, 74, 353, 1, '2024-06-06 21:16:25', '2024-06-06 21:16:25'),
(3, 919, 41, 2624, 1, '2024-06-06 21:16:25', '2024-06-06 21:16:25'),
(4, 807, 87, 3117, 3, '2024-06-06 21:16:25', '2024-06-06 21:16:25'),
(5, 304, 22, 3834, 4, '2024-06-06 21:16:25', '2024-06-06 21:16:25'),
(10, 6, 2, 684, 1, '2024-06-11 21:07:48', '2024-06-11 21:07:48'),
(11, 7, 2, 684, 1, '2024-06-11 21:07:48', '2024-06-11 21:07:48'),
(12, 8, 2, 684, 1, '2024-06-11 21:07:49', '2024-06-11 21:07:49'),
(13, 9, 2, 684, 1, '2024-06-11 21:07:49', '2024-06-11 21:07:49');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_06_07_034939_create_counters_table', 1),
(6, '2024_06_07_035733_create_products_table', 2),
(7, '2024_06_07_040115_create_customers_table', 3),
(8, '2024_06_07_040358_create_invoices_table', 4),
(9, '2024_06_07_040621_create_invoice_items_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_code` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `unit_price` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `item_code`, `description`, `unit_price`, `created_at`, `updated_at`) VALUES
(1, 'IC-1000387', 'Name of Product243', '139', '2024-06-06 21:00:36', '2024-06-06 21:00:36'),
(2, 'IC-1000357', 'Name of Product94', '684', '2024-06-06 21:00:36', '2024-06-06 21:00:36'),
(3, 'IC-1000457', 'Name of Product196', '904', '2024-06-06 21:00:36', '2024-06-06 21:00:36'),
(4, 'IC-1000372', 'Name of Product361', '774', '2024-06-06 21:00:37', '2024-06-06 21:00:37'),
(5, 'IC-100093', 'Name of Product437', '927', '2024-06-06 21:00:37', '2024-06-06 21:00:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `counters_key_unique` (`key`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoices_number_unique` (`number`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_item_code_unique` (`item_code`);

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
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
