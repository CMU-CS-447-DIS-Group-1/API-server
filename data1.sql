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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table restaurant.dishes: ~5 rows (approximately)
/*!40000 ALTER TABLE `dishes` DISABLE KEYS */;
INSERT INTO `dishes` (`id`, `name`, `price`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'qui sit alias', 2209, 'Rerum id aperiam error at id qui. Est quis delectus neque et itaque nihil. Ut debitis officiis dolor itaque repellat ut dicta. Voluptatem excepturi deserunt minus qui enim.\n\nReiciendis maiores totam nemo consectetur ut est. Voluptas aut amet quod necessitatibus tenetur hic qui. Optio eveniet exercitationem officiis quos.\n\nPariatur magnam earum dolores dolores assumenda molestias. Aut eos earum in quasi. Quasi qui molestiae sint hic. Voluptas expedita sit id dolores officia laborum omnis.', '2021-06-10 02:58:24', '2021-06-10 02:58:24'),
	(2, 'rem vitae minus', 8157, 'Et laudantium in quis et at. Repudiandae magnam aspernatur debitis sunt deserunt et voluptas. Voluptatibus animi facilis est soluta ea. Consequuntur quis aut dolores nam eius atque.\n\nEst tempora tempora numquam est nesciunt libero sed. Excepturi enim aut quod magnam. Enim architecto quasi sunt pariatur aut est eveniet.\n\nVel id molestiae dolore eligendi in vel eum. Magni expedita voluptates eos voluptatibus molestias quia. Illum voluptates sit voluptatem quaerat. Laboriosam quas eos quas ea.', '2021-06-10 02:58:24', '2021-06-10 02:58:24'),
	(3, 'beatae delectus ut', 3462, 'Qui hic iste aut architecto fugiat. Corporis quibusdam ut modi doloribus. Dolorem porro consequatur similique aperiam.\n\nAperiam labore et qui vel. Tempore aperiam voluptatibus commodi et omnis ut. Natus veritatis architecto et aut sit doloremque distinctio.\n\nQuasi velit quia reiciendis. Labore enim praesentium reprehenderit incidunt aliquam non. Eveniet magni quibusdam architecto et itaque ad aut rerum. Exercitationem ipsa sint officiis est commodi. Eum corrupti placeat quia placeat.', '2021-06-10 02:58:24', '2021-06-10 02:58:24'),
	(4, 'nihil dicta quaerat', 5816, 'Esse suscipit laboriosam incidunt eius est ut quasi. Officia fugiat quos unde deserunt voluptatibus. Ut est ut et ut nam. Nesciunt aut qui sint eius ut maxime vero. Autem qui eius tempora debitis recusandae.\n\nUt nam et consectetur. Consequatur sed sunt in ducimus non facilis maiores architecto. Modi sint beatae quidem est maiores atque quibusdam. Quia neque mollitia dicta error dignissimos necessitatibus eum.\n\nRepellat velit voluptatum aut laboriosam aut illum. Distinctio voluptatum quidem placeat dolor quis quaerat ipsam aut. In blanditiis sit magni alias. Eaque suscipit fugiat iusto voluptas.', '2021-06-10 02:58:24', '2021-06-10 02:58:24'),
	(5, 'et vel sed', 8579, 'Non totam voluptas aliquam maxime sed. Aperiam laboriosam aut voluptas incidunt eius. Fugiat fugiat autem repudiandae ea ad eaque. Id fugit eos perspiciatis porro dolorum sit magni.\n\nVel ea quod totam tempore quia. Fugit dicta dolorem nemo et numquam. Iure asperiores aut ratione occaecati ut quibusdam aut.\n\nEt sapiente vero aliquam ut in itaque beatae. Error ipsam corrupti cum deleniti voluptatem ipsum aut qui. Iste laborum facere quisquam fuga. Et corporis ratione sed sit consectetur fuga magnam.', '2021-06-10 02:58:24', '2021-06-10 02:58:24');
/*!40000 ALTER TABLE `dishes` ENABLE KEYS */;

-- Dumping structure for table restaurant.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table restaurant.migrations: ~5 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(136, '2014_10_12_000000_create_users_table', 1),
	(137, '2021_05_17_100128_create_dishes_table', 1),
	(138, '2021_05_19_041830_create_tables_table', 1),
	(139, '2021_05_19_041938_create_invoices_table', 1),
	(140, '2021_05_19_042240_create_invoice_dishes_table', 1);
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
/*!40000 ALTER TABLE `tables` DISABLE KEYS */;
INSERT INTO `tables` (`id`, `code`, `status`) VALUES
	(1, '4aML4CYuwm', 0),
	(2, 'U8oIYrriDZ', 0),
	(3, 'OQGNUQndKL', 0),
	(4, 'gsjhtM5So1', 0),
	(5, '3VObRVmnuo', 0),
	(6, 'MC3iJrZNe6', 0),
	(7, 'imxssIol81', 0),
	(8, 'YNYv9A6JVD', 0),
	(9, 'v1AIeyY1hh', 0),
	(10, 'vyJ9RFfwBW', 0),
	(11, 'nwvmgZXmDw', 0),
	(12, 'PyJ3Bg43ZA', 0);
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

-- Dumping data for table restaurant.users: ~11 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `level`, `api_token`, `created_at`, `updated_at`) VALUES
	(1, 'Alverta Paucek DVM', 'manager@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'ygcz4HbaTiOLQyAHw8HxO0HI920u6UPiC4VhGn8H1c2jiMCcgLlcHC9pzbKn', '2021-06-10 02:58:24', '2021-06-10 02:58:24'),
	(2, 'Billie Jerde DVM', 'cashier@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, NULL, '2021-06-10 02:58:24', '2021-06-10 02:58:24'),
	(3, 'Marcel Dare', 'ezekiel.conn@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2021-06-10 02:58:24', '2021-06-10 02:58:24'),
	(4, 'Mrs. Jannie Swift', 'marianna06@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2021-06-10 02:58:24', '2021-06-10 02:58:24'),
	(5, 'Horacio Johns II', 'marcelino.stark@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2021-06-10 02:58:24', '2021-06-10 02:58:24'),
	(6, 'Dr. Forrest Witting IV', 'pgreenfelder@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2021-06-10 02:58:24', '2021-06-10 02:58:24'),
	(7, 'Jadyn Barrows', 'leann44@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2021-06-10 02:58:24', '2021-06-10 02:58:24'),
	(8, 'Dr. Clarabelle Heathcote', 'cesar02@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2021-06-10 02:58:24', '2021-06-10 02:58:24'),
	(9, 'Cicero Pfeffer III', 'berge.sandrine@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2021-06-10 02:58:24', '2021-06-10 02:58:24'),
	(10, 'Monte Kovacek', 'cbatz@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, NULL, '2021-06-10 02:58:24', '2021-06-10 02:58:24');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
