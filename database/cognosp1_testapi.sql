-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 22, 2024 at 02:05 PM
-- Server version: 10.11.9-MariaDB-cll-lve
-- PHP Version: 8.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cognosp1_testapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `location` varchar(255) NOT NULL,
  `role` varchar(100) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `location`, `role`, `image`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kansiime Alfred', 'alfredkaziibwe19@gmail.com', '', '', '', NULL, NULL, '$2y$12$bv4.PKLpkM.ge1IwDiEMxunPgc3CU9HfCx03bYhU6sosQx2prpcvu', NULL, '2024-06-18 07:43:00', '2024-06-18 07:43:00'),
(2, 'Kansiime Alfred', 'alfredkaziibwe119@gmail.com', '0785557587', 'Nakawa', '', NULL, NULL, '$2y$12$oebYzBJFd3YMTauN76llxObBAcVz/.k9X20juXlM9dgfmtFW1XERa', NULL, '2024-06-18 07:46:38', '2024-06-18 07:46:38'),
(12, 'Kansiime Alfred', 'alfred@gmail.com', '0785557587', 'Nakawa', 'admin', NULL, NULL, '$2y$12$C7kPlRHzZ5gtGB1DSa2e0OY1kIFI5m7IEeoiw5DD1dYkjVCIWw5dW', NULL, '2024-08-17 14:44:45', '2024-08-17 19:21:12'),
(13, 'Kansiime Alfred', 'alfredh@gmail.com', '0785557587', 'Nakawa', 'admin', NULL, NULL, '$2y$12$as/tcd4h1QXLYt41QjybmuYWEq0E0e51qyrL43.oC6vqxv89JnqSe', NULL, '2024-08-17 15:36:15', '2024-08-17 15:36:15'),
(14, 'Kansiime Alfred', 'alfa@gmail.com', '0785678987', 'kampala', 'admin', 'images/rDU2uZzqj1wgS7wqa4b2eG3mKRuzklLR0uyPuCu7.jpg', NULL, '$2y$12$VOP/srNXOlLAn5OOfxCjROg92xfJT4RpsUaOqjcZmWyRWnLgjS0oG', NULL, '2024-08-17 19:16:17', '2024-08-17 19:16:17');

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(3, 'East ckiken wing', 'images/JIOoNXhVXF8At9OJEk8qLvETCe9K55jP9P1eWLeW.jpg', '2024-08-17 15:48:33', '2024-08-17 15:48:33'),
(4, 'Lubombo', 'images/JIOoNXhVXF8At9OJEk8qLvETCe9K55jP9P1eWLeW.jpg', '2024-08-17 15:51:34', '2024-08-17 15:51:34'),
(5, 'birds soop', 'images/JIOoNXhVXF8At9OJEk8qLvETCe9K55jP9P1eWLeW.jpg', '2024-08-17 16:46:13', '2024-08-17 16:46:13'),
(6, 'birds soop', 'images/g0LCjXifS2DsMfuk1G9sAZJlIBxEfKLQQLS2yjYt.jpg', '2024-08-17 19:25:47', '2024-08-17 19:25:47'),
(7, 'food-order', 'images/mOWkx3BslbR0HQjTzbtIbFS60wGuhyAfljiTABCX.png', '2024-09-07 16:17:48', '2024-09-07 16:17:48'),
(8, 'godson', 'images/hvyWIAhiUaEI3kqdjUFPEHAjxUpN4Tx5GZfFOWTk.png', '2024-09-07 16:47:44', '2024-09-07 16:47:44'),
(9, 'reserve', 'images/wDWkNzQiVDPyIkHvvlVR4b9rzdXwbzjdovyfBKzA.png', '2024-09-07 16:48:02', '2024-09-07 16:48:02'),
(10, 'godson', 'images/GUWBMYMWopE82MGN5s8xWRX5OhXX2uV2GZpTMLMS.png', '2024-09-07 17:02:07', '2024-09-07 17:02:07'),
(11, 'jami g wethebest', 'images/4MzEMvXrUoiYyn9a9KmvYLErEJOtO7gV1wHgR0vl.png', '2024-09-07 19:34:09', '2024-09-07 19:34:09'),
(12, 'godson', 'images/opldmItgMDxCdx8i4qL7psS7nGwZEWe5HTwvSQ0Z.png', '2024-09-07 19:42:34', '2024-09-07 19:42:34'),
(13, 'sesel', 'images/lxmiIcMhQ2skPk3CkV2Nrk7d22vr5lvUyHXTf4YH.png', '2024-09-07 19:43:09', '2024-09-07 19:43:09'),
(14, 'mama', 'images/AklUNj2jjtNqOsQiuAao8Nb0vWJvDORt1xUKFrQD.png', '2024-09-07 19:44:23', '2024-09-07 19:44:23');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_adverts`
--

CREATE TABLE `company_adverts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivarymen`
--

CREATE TABLE `delivarymen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `nin` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nin_front_image` varchar(255) DEFAULT NULL,
  `nin_back_image` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivarymen`
--

INSERT INTO `delivarymen` (`id`, `name`, `location`, `phone`, `image`, `nin`, `password`, `nin_front_image`, `nin_back_image`, `email`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 'Kansiime Alfred', 'kampala', '0785678987', 'images/udAx6Jn65Jcr9S1kqt3yAE22Ty9jcUN7BMdyfg01.jpg', 'CMFGHJHGFghhjsd', '$2y$12$Y/jkwg.OuvxrC3aBvf.MX.G8qL9feRIZkLDNIf0efA2Dx4h8nktku', '/tmp/phpDKP7uF', '/tmp/phpyZjS6S', 'alfado@gmail.com', 1, '2024-08-19 17:41:12', '2024-08-19 18:18:42'),
(2, 'Kansiime Alfred', 'kampala', '0785678987', 'images/Vpu8USsVayEi4AFw4oZ7pXyHy07DWB89m2nQ2HWo.jpg', 'CMFGHJHGFghhjsd', '$2y$12$TbcM7geyMFIHT73x2qe8qO2gl/nxtCSCiPjvhRdaAbDkeuGQ3177a', 'images/58n9lemjZmkbhWsJAuil3EUGQc9iIpoOvkiAM89x.jpg', 'images/72nUqdr36cbSfbTwVCXuJsMUrvKRWV3Xj7KGtCqa.jpg', 'alfred@gmail.com', 1, '2024-08-19 17:41:24', '2024-08-19 17:41:24'),
(4, 'Kansiime Alfred', 'kampala', '0785678987', 'images/6GGgbLLwUcZE5nn8SOXvFYGdeA5BofB3gTpjrCKV.jpg', 'CMFGHJHGFghhjsd', '$2y$12$D74OF9CSWrMvGWcJLzBUrus9NpqS.I/mZYqPtGr0RdrVc0aP7DUUe', 'images/QbUGhZuFbF3Zrx72T4JWREQdBOjjfLSnklGP7PC1.jpg', 'images/nTAAMfM5LzczE5OuaBJ4YMzi4QG4fxYhou40e1Ah.jpg', 'alfad@gmail.com', 1, '2024-08-19 18:18:17', '2024-08-19 18:18:17');

-- --------------------------------------------------------

--
-- Table structure for table `descriptions`
--

CREATE TABLE `descriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `developers`
--

CREATE TABLE `developers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ingredient` varchar(255) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id`, `ingredient`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'chicken meat', 9, '2024-08-19 12:30:25', '2024-08-19 12:30:25'),
(2, 'oil', 9, '2024-08-19 12:30:41', '2024-08-19 12:30:41'),
(3, 'water', 9, '2024-08-19 12:31:04', '2024-08-19 12:31:04'),
(4, 'onions only', 9, '2024-08-19 12:31:16', '2024-08-19 12:43:39');

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
(5, '2024_03_18_144936_create_admins_table', 1),
(6, '2024_06_17_071414_create_categories_table', 1),
(7, '2024_06_17_071623_create_products_table', 1),
(8, '2024_06_17_071740_create_product_gallaries_table', 1),
(9, '2024_06_17_073415_create_ingredients_table', 1),
(10, '2024_06_17_073635_create_steps_table', 1),
(11, '2024_06_17_073940_create_descriptions_table', 1),
(12, '2024_06_17_082403_create_suppliers_table', 1),
(13, '2024_06_17_082432_create_supplies_table', 1),
(14, '2024_06_17_082645_create_derivarymen_table', 2),
(15, '2024_06_17_082710_create_orders_table', 2),
(16, '2024_06_17_082734_create_order_details_table', 3),
(17, '2024_06_17_082813_create_delivaries_table', 3),
(18, '2024_06_17_082926_create_feedback_table', 3),
(19, '2024_06_17_091616_create_company_adverts_table', 3),
(20, '2024_08_06_072616_create_attendances_table', 4),
(21, '2024_08_13_151909_create_developers_table', 4),
(22, '2024_08_13_151929_create_organisations_table', 4),
(23, '2024_08_13_152008_create_companies_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tracking_no` varchar(255) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `order_description` varchar(255) DEFAULT NULL,
  `calculated_amount` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_description_message` varchar(255) NOT NULL,
  `order_description_audio` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `organisations`
--

CREATE TABLE `organisations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` varchar(255) NOT NULL,
  `active` varchar(255) NOT NULL,
  `featured` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `price`, `active`, `featured`, `discount`, `description`, `category_id`, `created_at`, `updated_at`) VALUES
(9, 'soop wings', 'images/sP1aLGhdG9S5cR7jxRFZ2CzmdDp2zz2MGnji7W4K.jpg', '40000', 'yes', 'no', '2000', 'this product is from  sweetest i have ever seen', 3, '2024-08-19 11:03:08', '2024-08-19 11:03:08'),
(10, 'soop jp', 'images/8x5Jw8KTmDaMbqJSh9P5v9C32WSTNjMekSt5lgvl.jpg', '40000', 'yes', 'no', '2000', 'this product is from  sweetest i have ever seen', 3, '2024-08-19 11:03:24', '2024-08-19 11:03:24'),
(11, 'fish deep fly', 'images/CSKwULZ6vFBF5TNY0hzskv4CIgYXAyf9dGLfo4Xj.jpg', '40000', 'yes', 'no', '2000', 'this product is from  sweetest i have ever seen', 4, '2024-08-19 11:03:36', '2024-08-19 11:03:36'),
(12, 'fish  fly', 'images/eQ9NRppCpBrYrBi74686ZYwMrtPrfYY9ObPwupuI.jpg', '40000', 'yes', 'no', '2000', 'this product is from  sweetest i have ever seen', 4, '2024-08-19 11:03:42', '2024-08-19 11:03:42'),
(13, 'fish peas', 'images/VzNuqSRV8JR3lXf28COssCobcifsGxFGoaCXouqi.jpg', '40000', 'yes', 'no', '2000', 'this product is from  sweetest i have ever seen', 5, '2024-08-19 11:04:01', '2024-08-19 11:04:01');

-- --------------------------------------------------------

--
-- Table structure for table `product_gallaries`
--

CREATE TABLE `product_gallaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_gallaries`
--

INSERT INTO `product_gallaries` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(9, 'images/EGebQCEHCtCAYowsFzz2JhGYng7ZYAfuLmlFFlYm.jpg', 9, '2024-08-19 11:05:20', '2024-08-19 11:05:20'),
(10, 'images/KTn6dqcq4I5pGaw1i4yiR9B5h73lppQGS7rDgykW.jpg', 9, '2024-08-19 11:05:22', '2024-08-19 11:05:22'),
(11, 'images/y1BaB5EAzTAmJGfFiz8k2HYtNW4FYOpiFSGHu0ll.jpg', 9, '2024-08-19 11:05:22', '2024-08-19 11:05:22'),
(12, 'images/rmd0oNtEG3N7FKEpMzTOM24txqiYNRz05LPz3StO.jpg', 9, '2024-08-19 11:05:22', '2024-08-19 11:05:22'),
(13, 'images/qcCFNVfwORoqUMECmdkKIXsNYsWnsEcrZ61zZGfL.jpg', 9, '2024-08-19 11:05:22', '2024-08-19 11:05:22'),
(14, 'images/8zqpr6KwjLelYjs8EtKKfqnuaTeRDiGBia6pzgP2.jpg', 9, '2024-08-19 11:05:23', '2024-08-19 11:05:23'),
(15, 'images/qjOjYrn1PEHzeitSd7UpijMgCyeyqFtfHmZqfYBs.jpg', 9, '2024-08-19 11:05:23', '2024-08-19 11:05:23'),
(16, 'images/XvneG5KT7Cfi0PohNWkeo6XkBUDC2xm8Adutajxj.jpg', 9, '2024-08-19 11:05:23', '2024-08-19 11:05:23'),
(17, 'images/45fOjEaX6YGuzCeORXWLIDYGcmjG6pAbyEIhEb9G.jpg', 9, '2024-08-19 11:05:23', '2024-08-19 11:05:23'),
(18, 'images/TpjL0xd8kKBRLUOQt1XqYWe4FAsJD0Ao7yDSqyWP.jpg', 9, '2024-08-19 11:05:23', '2024-08-19 11:05:23'),
(19, 'images/ZCZKfpXeRwV5XPq63rc42mJOBuv5GI2OoQDBc7YD.jpg', 9, '2024-08-19 11:05:24', '2024-08-19 11:05:24'),
(20, 'images/QHPby90FxvclbmwkUKN3U32NsEozXXW5OZDW4cXk.jpg', 9, '2024-08-19 11:05:24', '2024-08-19 11:05:24'),
(21, 'images/GcLiZ0Ds6xvRj1Pcs8AZZhAdVDEcXNxogvrnlrQp.jpg', 9, '2024-08-19 11:05:24', '2024-08-19 11:05:24'),
(22, 'images/aqJrJO6wOXzLE8UcV4RlmrDpQANhXVP26gIUBMyV.jpg', 9, '2024-08-19 11:05:25', '2024-08-19 11:05:25');

-- --------------------------------------------------------

--
-- Table structure for table `steps`
--

CREATE TABLE `steps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `step` varchar(255) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `steps`
--

INSERT INTO `steps` (`id`, `step`, `product_id`, `created_at`, `updated_at`) VALUES
(5, 'Prepare on eggs', 9, '2024-08-19 11:06:40', '2024-08-19 11:06:40'),
(6, 'Prepare on source pan', 9, '2024-08-19 11:07:02', '2024-08-19 11:07:02');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `location`, `phone`, `email`, `password`, `image`, `admin_id`, `created_at`, `updated_at`) VALUES
(2, 'Kansiime Alfred', 'kampala', '0785678987', 'alfred@gmail.com', '$2y$12$a5UNdYsKeMFCMVE4zhml7eVRL.fqOB5V/CE98KRdQZKGb9fO5D4Fe', 'images/BZPYrJ7XqnAWJ7K3jYFMtCtbJRA3PzY8cMk78wy3.jpg', 1, '2024-08-19 14:11:31', '2024-08-19 14:11:31'),
(3, 'Kansiime Alfred', 'kampala', '0785678987', 'abaine@gmail.com', '$2y$12$9JX3MhB13CHAd/PAs9Qqi.NHlUYbqGxwmQOi.M4qdtU0.XL9H.bW2', 'images/n9SMtvxvDhZNmyNsp3XKTYTehXY739oLidqaZ5od.jpg', 1, '2024-08-19 14:11:50', '2024-08-19 14:11:50'),
(4, 'Kansiime Alfred', 'kampala', '0785678987', 'kansiime@gmail.com', '$2y$12$LC4Qi9PMzo0.DbyQ0SypuuA9MiYhji/Qy5lRtOq5z2fSVvRzt9N7u', 'images/8VzeCWmcRz8nq2S1TsMshVINvoTzZwrX5vff21Cm.jpg', 1, '2024-08-19 14:12:18', '2024-08-19 14:12:18'),
(5, 'Kansiime Alfred', 'kampala', '0785678987', 'elder@gmail.com', '$2y$12$ZH8v1ovBsJPmXyYwKQrjWumDOrfO6prXR/fSeQaML2Qe/o5n8.ktu', 'images/4Mutwism8Q3Gwg8PfQQO4ONmZ3dsT9Nx7Uk0p2VS.jpg', 2, '2024-08-19 14:12:36', '2024-08-19 14:12:36'),
(6, 'Kansiime Alfred', 'kampala', '0785678987', 'kyomukama@gmail.com', '$2y$12$0vKmuUZobR1ciPI0fsRK..WM8QBiPjuyadgFKW1aosKsLujdHY3RS', 'images/r4z6EzW6iW3vpJj9Aq6NWfUovPDF7hMZjWquStPh.jpg', 2, '2024-08-19 14:12:43', '2024-08-19 15:51:00');

-- --------------------------------------------------------

--
-- Table structure for table `supplies`
--

CREATE TABLE `supplies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `location`, `phone`, `image`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kansiime Alfred', 'kampala', '0785678987', 'images/hknzzC49L9aNjiYVgAPRhHOaK6pbGznyfstFMZ29.jpg', 'kyomu@gmail.com', NULL, '$2y$12$LZWv.xbreqowTgTLRtgaXexufhqbm9I/sKdoeu.t2MxWZq8V2CmsS', NULL, '2024-08-19 16:20:30', '2024-08-19 16:20:30'),
(2, 'Kansiime Alfred', 'Nakawa', '0785557587', 'images/5ZvekgWqHRrhY3O1xptyL7eHJrqh1TTcKYuwJDPW.jpg', 'alfred@gmail.com', NULL, '$2y$12$jxx95nUvC/ycMBSr3zc62.Jvf7mkPDHnS8t42P8tja.In9PPPP9Zy', NULL, '2024-08-19 16:28:48', '2024-08-19 16:36:15'),
(3, 'Kansiime Alfred', 'kampala', '0785678987', 'images/mq5rZvO8x5reG8rZhMNx6JBCFFMFS4fQ2goQoPn1.jpg', 'alpapa@gmail.com', NULL, '$2y$12$hncYaxOFfqw9DPIQheUsX.eCPJqO0Qec6z.z91uTP3H35PNzaceHy', NULL, '2024-08-19 16:29:08', '2024-08-19 16:29:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_adverts`
--
ALTER TABLE `company_adverts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivarymen`
--
ALTER TABLE `delivarymen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `derivarymen_email_unique` (`email`),
  ADD KEY `derivarymen_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `descriptions`
--
ALTER TABLE `descriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `descriptions_product_id_foreign` (`product_id`);

--
-- Indexes for table `developers`
--
ALTER TABLE `developers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedback_order_id_foreign` (`order_id`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ingredients_product_id_foreign` (`product_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`);

--
-- Indexes for table `organisations`
--
ALTER TABLE `organisations`
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
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_gallaries`
--
ALTER TABLE `product_gallaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_gallaries_product_id_foreign` (`product_id`);

--
-- Indexes for table `steps`
--
ALTER TABLE `steps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `steps_product_id_foreign` (`product_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_email_unique` (`email`),
  ADD KEY `suppliers_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `supplies`
--
ALTER TABLE `supplies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplies_supplier_id_foreign` (`supplier_id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_adverts`
--
ALTER TABLE `company_adverts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivarymen`
--
ALTER TABLE `delivarymen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `descriptions`
--
ALTER TABLE `descriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `developers`
--
ALTER TABLE `developers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `organisations`
--
ALTER TABLE `organisations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `product_gallaries`
--
ALTER TABLE `product_gallaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `steps`
--
ALTER TABLE `steps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `supplies`
--
ALTER TABLE `supplies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `delivarymen`
--
ALTER TABLE `delivarymen`
  ADD CONSTRAINT `derivarymen_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `descriptions`
--
ALTER TABLE `descriptions`
  ADD CONSTRAINT `descriptions_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD CONSTRAINT `ingredients_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_gallaries`
--
ALTER TABLE `product_gallaries`
  ADD CONSTRAINT `product_gallaries_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `steps`
--
ALTER TABLE `steps`
  ADD CONSTRAINT `steps_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `suppliers_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `supplies`
--
ALTER TABLE `supplies`
  ADD CONSTRAINT `supplies_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
