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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table restaurant.dishes: ~5 rows (approximately)
DELETE FROM `dishes`;
/*!40000 ALTER TABLE `dishes` DISABLE KEYS */;
INSERT INTO `dishes` (`id`, `name`, `price`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'quaerat porro odit', 2355, 'Doloremque quibusdam sit cumque fugit. Iure enim ipsum voluptas voluptate eveniet ducimus. Necessitatibus sit facilis ut fugit nesciunt.\n\nVoluptate praesentium velit voluptatem quam consectetur. Tempora laborum qui eius delectus officia voluptatum. Sed dolor eaque omnis quaerat quam nesciunt.\n\nSoluta ipsam nulla dolorum dolores qui possimus veniam. Vero accusantium optio hic aut voluptatibus vel. Excepturi laborum accusamus architecto quos. Assumenda iste voluptatum voluptatem vitae et ratione. Consectetur sunt omnis voluptatem molestiae.', '2021-05-25 13:34:54', '2021-05-25 13:34:54'),
	(2, 'facilis animi in', 9153, 'Quo repudiandae quos est est dolores qui. Consequuntur architecto sequi dignissimos recusandae quas. Sed at dolores officiis dolor veniam ut vitae. Similique rem velit quae. Eius et quasi eligendi necessitatibus esse vitae.\n\nTenetur voluptatum cum similique qui sunt corrupti. Quia ducimus exercitationem eligendi ab. Laborum molestiae ullam dicta itaque voluptatum nam. Aperiam maxime atque omnis non dolores sunt.\n\nConsequatur amet laudantium perspiciatis dolor asperiores laborum cum. Enim sit harum quia consequatur totam fuga. Eligendi commodi voluptas magnam accusantium enim eum quisquam alias. Minima nihil nihil nisi dolore ut ut sequi laboriosam.', '2021-05-25 13:34:54', '2021-05-25 13:34:54'),
	(3, 'dolor quam natus', 9661, 'Alias debitis id aspernatur explicabo. Quia fuga quae numquam voluptates consequuntur veritatis fuga consequuntur. Ea necessitatibus voluptatem provident adipisci sequi sequi iste.\n\nId magni totam totam ratione ipsa et. Reiciendis explicabo incidunt enim cum.\n\nEnim et ea asperiores facilis. Qui a qui quia et velit assumenda optio. Quia et adipisci in maxime accusamus fuga iure.', '2021-05-25 13:34:54', '2021-05-25 13:34:54'),
	(4, 'est magni perferendis', 4792, 'Nulla sunt neque sunt molestiae. Est earum dignissimos accusamus dicta quo. Velit deserunt voluptatibus mollitia. Et qui ducimus saepe eaque eos alias ipsam. Eos itaque debitis ipsum illum reiciendis omnis autem.\n\nItaque blanditiis laborum deleniti. Vel quia est odio. Omnis ut mollitia at odio soluta. Adipisci a corrupti quia aut ratione perspiciatis.\n\nDolor quod iusto iste est enim quis veniam. Assumenda quia aut nemo et minima aut. Saepe quibusdam ea asperiores provident.', '2021-05-25 13:34:54', '2021-05-25 13:34:54'),
	(5, 'ut et vel', 2631, 'Autem expedita rem minus fuga. Aliquam expedita est ipsa cumque expedita ea id. Ad nihil labore non distinctio. Suscipit sed minima quibusdam non quisquam dolor sapiente.\n\nSed ad amet et vel qui commodi eveniet. Sunt unde ab sit enim. Voluptas sunt sed aliquam laboriosam aut quisquam.\n\nEsse omnis sint libero at natus maxime qui. Consequatur sed sequi sequi iusto dolore. Autem non qui aut tenetur.', '2021-05-25 13:34:54', '2021-05-25 13:34:54');
/*!40000 ALTER TABLE `dishes` ENABLE KEYS */;

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

-- Dumping structure for table restaurant.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table restaurant.migrations: ~5 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(61, '2014_10_12_000000_create_users_table', 1),
	(62, '2021_05_17_100128_create_dishes_table', 1),
	(63, '2021_05_19_041830_create_tables_table', 1),
	(64, '2021_05_19_041938_create_invoices_table', 1),
	(65, '2021_05_19_042240_create_invoice_dishes_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table restaurant.tables
CREATE TABLE IF NOT EXISTS `tables` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table restaurant.tables: ~12 rows (approximately)
DELETE FROM `tables`;
/*!40000 ALTER TABLE `tables` DISABLE KEYS */;
INSERT INTO `tables` (`id`, `code`, `status`) VALUES
	(1, 'O9yavayytP', 0),
	(2, 'PPkzqKeOcF', 0),
	(3, 'LXmhFhyMnf', 0),
	(4, 'vHoeNBiu7c', 0),
	(5, '5WkdnRBRXY', 0),
	(6, 'SLfApIaEuK', 0),
	(7, 'jjVpZhbOPP', 0),
	(8, 'WsbIUNta11', 0),
	(9, 'Cq93oqIwmg', 0),
	(10, 'AVFya1pMPq', 0),
	(11, 'vt5Klyd0pV', 0),
	(12, 'DgKWHHNDpY', 0);
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
	(1, 'Kiara Marvin MD', 'example@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'ygcz4HbaTiOLQyAHw8HxO0HI920u6UPiC4VhGn8H1c2jiMCcgLlcHC9pzbKn', '2021-05-25 13:34:54', '2021-05-25 13:34:54'),
	(2, 'Olen Huels', 'lyric60@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2021-05-25 13:34:54', '2021-05-25 13:34:54'),
	(3, 'Miss Hannah Rosenbaum MD', 'ziemann.matt@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2021-05-25 13:34:54', '2021-05-25 13:34:54'),
	(4, 'Nicholaus Bahringer', 'jamal.upton@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2021-05-25 13:34:54', '2021-05-25 13:34:54'),
	(5, 'Ms. Neva Rogahn', 'littel.abigayle@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2021-05-25 13:34:54', '2021-05-25 13:34:54'),
	(6, 'Ellis Schultz DVM', 'frederick85@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2021-05-25 13:34:54', '2021-05-25 13:34:54'),
	(7, 'Sasha Botsford', 'ostoltenberg@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2021-05-25 13:34:54', '2021-05-25 13:34:54'),
	(8, 'Oma Halvorson', 'winston.kutch@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2021-05-25 13:34:54', '2021-05-25 13:34:54'),
	(9, 'Penelope White', 'tparker@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2021-05-25 13:34:54', '2021-05-25 13:34:54'),
	(10, 'Prof. Mattie Ryan', 'katherine23@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2021-05-25 13:34:54', '2021-05-25 13:34:54');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
