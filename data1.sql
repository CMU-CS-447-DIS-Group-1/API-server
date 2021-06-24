-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.5.10-MariaDB-log - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table restaurant.dishes
CREATE TABLE IF NOT EXISTS `dishes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table restaurant.dishes: ~0 rows (approximately)
DELETE FROM `dishes`;
/*!40000 ALTER TABLE `dishes` DISABLE KEYS */;
/*!40000 ALTER TABLE `dishes` ENABLE KEYS */;

-- Dumping structure for table restaurant.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table restaurant.migrations: ~5 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(146, '2014_10_12_000000_create_users_table', 1),
	(147, '2021_05_17_100128_create_dishes_table', 1),
	(148, '2021_05_19_041830_create_tables_table', 1),
	(149, '2021_05_19_041938_create_invoices_table', 1),
	(150, '2021_05_19_042240_create_invoice_dishes_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table restaurant.tables
CREATE TABLE IF NOT EXISTS `tables` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tables_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table restaurant.tables: ~12 rows (approximately)
DELETE FROM `tables`;
/*!40000 ALTER TABLE `tables` DISABLE KEYS */;
INSERT INTO `tables` (`id`, `code`, `status`) VALUES
	(1, 'c4Ir3tzUgj', 0),
	(2, '26XdpELF2k', 0),
	(3, 'KsT9nHme5v', 0),
	(4, 'tnMyONkxlH', 0),
	(5, 'hb8suGDIKd', 0),
	(6, 'wm9beLE1gA', 0),
	(7, 'WND5NIeruT', 0),
	(8, '85Q3d0772j', 0),
	(9, 'j3VbdBxm1Z', 0),
	(10, 'W9B2yY5kER', 0),
	(11, 'TgTfjHzMSf', 0),
	(12, 'bOQqAJ4bo0', 0);
/*!40000 ALTER TABLE `tables` ENABLE KEYS */;

-- Dumping structure for table restaurant.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 0,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_api_token_unique` (`api_token`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table restaurant.users: ~10 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `level`, `api_token`, `created_at`, `updated_at`) VALUES
	(1, 'Adela Farrell', 'manager@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'ygcz4HbaTiOLQyAHw8HxO0HI920u6UPiC4VhGn8H1c2jiMCcgLlcHC9pzbKn', '2021-06-24 02:17:59', '2021-06-24 02:17:59'),
	(2, 'Mose Grant IV', 'cashier@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, '2021-06-24 02:17:59', '2021-06-24 02:17:59'),
	(3, 'Lilliana Mante', 'qshields@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2021-06-24 02:18:00', '2021-06-24 02:18:00'),
	(4, 'Declan Donnelly', 'lillie32@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2021-06-24 02:18:00', '2021-06-24 02:18:00'),
	(5, 'Mr. Gilbert Dicki', 'odell23@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2021-06-24 02:18:00', '2021-06-24 02:18:00'),
	(6, 'Prof. Jerrod Bradtke', 'schmeler.garth@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2021-06-24 02:18:00', '2021-06-24 02:18:00'),
	(7, 'Annamarie Lowe', 'crist.federico@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2021-06-24 02:18:00', '2021-06-24 02:18:00'),
	(8, 'Loy Kozey I', 'ward.jaren@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2021-06-24 02:18:00', '2021-06-24 02:18:00'),
	(9, 'Frank Greenholt', 'marilou25@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2021-06-24 02:18:00', '2021-06-24 02:18:00'),
	(10, 'Wilber Pagac', 'marcelino.emard@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2021-06-24 02:18:00', '2021-06-24 02:18:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
