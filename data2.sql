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
DELETE FROM `invoices`;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` (`id`, `user_id`, `table_id`, `status`, `created_at`, `updated_at`) VALUES
	(1, 3, 2, 1, '2021-05-25 13:34:54', '2021-05-25 13:34:54'),
	(2, 7, 1, 1, '2021-05-25 13:34:54', '2021-05-25 13:34:54'),
	(3, 2, 3, 1, '2021-05-25 13:34:54', '2021-05-25 13:34:54'),
	(4, 8, 8, 1, '2021-05-25 13:34:54', '2021-05-25 13:34:54'),
	(5, 4, 3, 1, '2021-05-25 13:34:54', '2021-05-25 13:34:54'),
	(6, 9, 6, 1, '2021-05-25 13:34:54', '2021-05-25 13:34:54'),
	(7, 1, 10, 1, '2021-05-25 13:34:54', '2021-05-25 13:34:54'),
	(8, 10, 7, 1, '2021-05-25 13:34:54', '2021-05-25 13:34:54'),
	(9, 6, 9, 1, '2021-05-25 13:34:54', '2021-05-25 13:34:54'),
	(10, 8, 7, 1, '2021-05-25 13:34:54', '2021-05-25 13:34:54');
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
