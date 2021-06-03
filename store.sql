-- Adminer 4.7.8 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `carts`;
CREATE TABLE `carts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `categories` (`id`, `name`, `photo`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4,	'Baju',	'assets/category/WpALmcX38dtgpklHjx4ZuPC4YPmAWmFoPjcySV7Z.svg',	'baju',	NULL,	'2021-03-09 05:43:55',	'2021-03-21 18:50:31'),
(5,	'Sepatu',	'assets/category/BJDAEWRQTNbdqCd85usIGBZLxEG3rF2cHZ3Q2jzv.svg',	'sepatu',	NULL,	'2021-03-21 19:23:29',	'2021-03-21 19:23:29'),
(7,	'Celana',	'assets/category/bPJjIacDReXmwfoiKUIHagtDDMkcifaFPnZ3qMAm.svg',	'celana',	NULL,	'2021-03-21 19:24:12',	'2021-03-21 19:24:12'),
(8,	'Elektronik',	'assets/category/B1zMdGDocbz2UzUPEVCI5IIWQP1kgZCDX5tGSQs1.svg',	'elektronik',	NULL,	'2021-03-21 19:24:45',	'2021-03-21 19:24:45'),
(9,	'Aksesoris',	'assets/category/jxKJUPbaprR7I7trC4sZ8kIlcm5K0loynwzNTRxP.svg',	'aksesoris',	NULL,	'2021-03-21 19:26:08',	'2021-03-21 19:26:08'),
(10,	'Skincare',	'assets/category/u74ZBLUDe3876CbnOZYZnDJqzaMthx3O7SgGLq1U.svg',	'skincare',	NULL,	'2021-03-21 19:26:27',	'2021-03-21 19:26:27');

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1,	'2014_10_12_000000_create_users_table',	1),
(2,	'2014_10_12_100000_create_password_resets_table',	1),
(3,	'2019_08_19_000000_create_failed_jobs_table',	1),
(4,	'2021_01_13_113830_create_categories_table',	1),
(5,	'2021_01_18_073859_create_products_table',	1),
(6,	'2021_01_18_074507_create_product_galleries_table',	1),
(7,	'2021_01_18_074846_create_carts_table',	1),
(8,	'2021_01_18_075849_create_transactions_table',	2),
(9,	'2021_01_18_080030_create_transaction_details_table',	2),
(10,	'2021_01_18_113040_delete_resi_field_at_transactions_table',	3),
(11,	'2021_01_20_120120_add_resi_and_shipping_status_to_transaction_details_table',	4),
(12,	'2021_01_20_121013_add_code_to_transactions_table',	5),
(13,	'2021_01_20_121230_add_code_to_transaction_details_table',	5),
(14,	'2021_01_20_121736_add_slug_to_products_table',	6),
(15,	'2021_01_20_122515_add_roles_field_to_users_table',	7),
(16,	'2021_02_03_033952_change_nullable_field_at_users_table',	8);

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `products` (`id`, `name`, `users_id`, `categories_id`, `price`, `description`, `deleted_at`, `created_at`, `updated_at`, `slug`) VALUES
(8,	'Batik',	4,	4,	120000,	'<p>ORIGINAL</p>',	NULL,	'2021-03-09 05:44:20',	'2021-03-09 05:44:20',	'batik');

DROP TABLE IF EXISTS `product_galleries`;
CREATE TABLE `product_galleries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `photos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `product_galleries` (`id`, `photos`, `products_id`, `created_at`, `updated_at`) VALUES
(5,	'assets/product/5TV31isl9nd6ciZigbDqBjIDrrrXSzqcCaPwhfAG.jpg',	8,	'2021-03-09 05:58:00',	'2021-03-09 05:58:00'),
(6,	'assets/product/rib0KPVjkm6hWy1Uwmjmqu5OoH0w2B54xD1arHov.jpg',	8,	'2021-03-09 06:05:48',	'2021-03-09 06:05:48'),
(9,	'assets/product/Hj9jhX4zCsUkOXtTQ4l4m2nV1ZA1qmKmfVzLMiYD.jpg',	8,	'2021-04-11 04:27:55',	'2021-04-11 04:27:55');

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `insurance_price` int(11) NOT NULL,
  `snipping_price` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `transaction_details`;
CREATE TABLE `transaction_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `transactions_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shipping_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_one` longtext COLLATE utf8mb4_unicode_ci,
  `address_two` longtext COLLATE utf8mb4_unicode_ci,
  `provinces_id` int(11) DEFAULT NULL,
  `regencies_id` int(11) DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `store_status` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `address_one`, `address_two`, `provinces_id`, `regencies_id`, `zip_code`, `country`, `phone_number`, `store_name`, `categories_id`, `store_status`, `deleted_at`, `remember_token`, `created_at`, `updated_at`, `roles`) VALUES
(1,	'zidanermn',	'zidane100@gmail.com',	NULL,	'$2y$10$m/pfgwoGJpsjPxMEFqiSZOqJAspkv77XRDv6D..n0h9Qw/qngX9TC',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'2021-02-04 21:59:49',	'2021-02-04 21:59:49',	'ADMIN'),
(2,	'dane',	'dane99@gmail.com',	NULL,	'$2y$10$Z/mkgx/ygctoiEh76.V7HO6hMi.f0o/zjCd5keWm9QDQU8GHioQ1i',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'2021-03-25 16:33:33',	'2021-03-25 16:33:33',	'USER'),
(3,	'Misbahuddin',	'misbahuddin123@gmail.com',	NULL,	'$2y$10$Dl3mh9Vfz5gzVAhxYtERZunijYtCWMkV8GV/wTSGS5o5dwu4qudnq',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'',	NULL,	1,	NULL,	NULL,	'2021-03-26 00:31:18',	'2021-03-26 00:31:18',	'USER'),
(4,	'Zidane',	'rzidane731@gmail.com',	NULL,	'$2y$10$5.KI/gK3AA4FGIba3K5E/uVZE53owrzY50K79NVVaTSBVghjaXk.K',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'zidanestore',	NULL,	1,	NULL,	NULL,	'2021-03-26 02:05:43',	'2021-03-29 02:01:21',	'USER');

-- 2021-04-13 02:31:29
