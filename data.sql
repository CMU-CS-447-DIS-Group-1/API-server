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

-- Dumping data for table restaurant.invoice_dishes: ~14 rows (approximately)
DELETE FROM `invoice_dishes`;
/*!40000 ALTER TABLE `invoice_dishes` DISABLE KEYS */;
INSERT INTO `invoice_dishes` (`invoice_id`, `dish_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 2631, '2021-05-25 13:34:54', '2021-05-25 13:34:54'),
	(2, 4, 2, 9661, '2021-05-25 13:34:54', '2021-05-25 13:34:54'),
	(2, 1, 2, 4792, '2021-05-25 13:34:54', '2021-05-25 13:34:54'),
	(3, 3, 2, 9153, '2021-05-25 13:34:54', '2021-05-25 13:34:54'),
	(3, 4, 1, 2631, '2021-05-25 13:34:54', '2021-05-25 13:34:54'),
	(4, 3, 2, 2631, '2021-05-25 13:34:54', '2021-05-25 13:34:54'),
	(5, 1, 1, 2355, '2021-05-25 13:34:55', '2021-05-25 13:34:55'),
	(5, 5, 2, 9661, '2021-05-25 13:34:55', '2021-05-25 13:34:55'),
	(6, 3, 2, 9661, '2021-05-25 13:34:55', '2021-05-25 13:34:55'),
	(6, 1, 2, 4792, '2021-05-25 13:34:55', '2021-05-25 13:34:55'),
	(7, 4, 2, 2631, '2021-05-25 13:34:55', '2021-05-25 13:34:55'),
	(8, 5, 2, 9153, '2021-05-25 13:34:55', '2021-05-25 13:34:55'),
	(9, 4, 2, 4792, '2021-05-25 13:34:55', '2021-05-25 13:34:55'),
	(10, 4, 1, 9661, '2021-05-25 13:34:55', '2021-05-25 13:34:55');
/*!40000 ALTER TABLE `invoice_dishes` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
