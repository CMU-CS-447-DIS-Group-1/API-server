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

-- Dumping structure for table restaurant.invoices
CREATE TABLE IF NOT EXISTS `invoices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `table_id` bigint(20) unsigned DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoices_user_id_foreign` (`user_id`),
  KEY `invoices_table_id_foreign` (`table_id`),
  CONSTRAINT `invoices_table_id_foreign` FOREIGN KEY (`table_id`) REFERENCES `tables` (`id`) ON DELETE SET NULL,
  CONSTRAINT `invoices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table restaurant.invoices: ~10 rows (approximately)
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` (`id`, `user_id`, `table_id`, `status`, `created_at`, `updated_at`) VALUES
	(1, 7, 11, 1, '2021-06-10 02:58:25', '2021-06-10 02:58:25'),
	(2, 5, 9, 1, '2021-06-10 02:58:25', '2021-06-10 02:58:25'),
	(3, 10, 10, 1, '2021-06-10 02:58:25', '2021-06-10 02:58:25'),
	(4, 2, 8, 1, '2021-06-10 02:58:25', '2021-06-10 02:58:25'),
	(5, 8, 1, 1, '2021-06-10 02:58:25', '2021-06-10 02:58:25'),
	(6, 2, 8, 1, '2021-06-10 02:58:25', '2021-06-10 02:58:25'),
	(7, 1, 1, 1, '2021-06-10 02:58:25', '2021-06-10 02:58:25'),
	(8, 1, 1, 1, '2021-06-10 02:58:25', '2021-06-10 02:58:25'),
	(9, 4, 4, 1, '2021-06-10 02:58:25', '2021-06-10 02:58:25'),
	(10, 2, 9, 1, '2021-06-10 02:58:25', '2021-06-10 02:58:25');
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;

-- Dumping structure for table restaurant.invoice_dishes
CREATE TABLE IF NOT EXISTS `invoice_dishes` (
  `invoice_id` bigint(20) unsigned NOT NULL,
  `dish_id` bigint(20) unsigned DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `invoice_dishes_invoice_id_dish_id_unique` (`invoice_id`,`dish_id`),
  KEY `invoice_dishes_dish_id_foreign` (`dish_id`),
  CONSTRAINT `invoice_dishes_dish_id_foreign` FOREIGN KEY (`dish_id`) REFERENCES `dishes` (`id`) ON DELETE SET NULL,
  CONSTRAINT `invoice_dishes_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table restaurant.invoice_dishes: ~15 rows (approximately)
/*!40000 ALTER TABLE `invoice_dishes` DISABLE KEYS */;
INSERT INTO `invoice_dishes` (`invoice_id`, `dish_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 2209, '2021-06-10 02:58:25', '2021-06-10 02:58:25'),
	(1, 2, 2, 2209, '2021-06-10 02:58:25', '2021-06-10 02:58:25'),
	(2, 5, 1, 3462, '2021-06-10 02:58:25', '2021-06-10 02:58:25'),
	(2, 2, 1, 8579, '2021-06-10 02:58:25', '2021-06-10 02:58:25'),
	(3, 3, 2, 8579, '2021-06-10 02:58:25', '2021-06-10 02:58:25'),
	(4, 2, 1, 8579, '2021-06-10 02:58:25', '2021-06-10 02:58:25'),
	(4, 5, 2, 2209, '2021-06-10 02:58:25', '2021-06-10 02:58:25'),
	(5, 2, 2, 8157, '2021-06-10 02:58:25', '2021-06-10 02:58:25'),
	(5, 3, 1, 8579, '2021-06-10 02:58:25', '2021-06-10 02:58:25'),
	(6, 5, 2, 5816, '2021-06-10 02:58:25', '2021-06-10 02:58:25'),
	(6, 2, 1, 8157, '2021-06-10 02:58:25', '2021-06-10 02:58:25'),
	(7, 1, 2, 3462, '2021-06-10 02:58:25', '2021-06-10 02:58:25'),
	(7, 3, 2, 5816, '2021-06-10 02:58:25', '2021-06-10 02:58:25'),
	(8, 5, 2, 8579, '2021-06-10 02:58:25', '2021-06-10 02:58:25'),
	(9, 5, 1, 2209, '2021-06-10 02:58:25', '2021-06-10 02:58:25'),
	(10, 4, 2, 8579, '2021-06-10 02:58:25', '2021-06-10 02:58:25');
/*!40000 ALTER TABLE `invoice_dishes` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
