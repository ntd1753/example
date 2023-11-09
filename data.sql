-- --------------------------------------------------------
-- Máy chủ:                      127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Phiên bản:           12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for book
CREATE DATABASE IF NOT EXISTS `book` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `book`;

-- Dumping structure for table book.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table book.categories: ~5 rows (approximately)
REPLACE INTO `categories` (`id`, `name`, `slug`, `icon`, `parent_id`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'Dwight Franecki', 'suscipit-molestias-illo-delectus-maiores-nisi-sed-nihil', 'https://via.placeholder.com/640x480.png/009999?text=qui', 0, 1, '2023-11-09 12:48:52', '2023-11-09 12:48:52'),
	(2, 'Dr. Theron Kuhn II', 'quia-voluptas-eligendi-natus-et-reprehenderit', 'https://via.placeholder.com/640x480.png/00dd11?text=ut', 0, 0, '2023-11-09 12:48:52', '2023-11-09 12:48:52'),
	(3, 'Lambert Hermiston', 'iure-qui-unde-voluptates-in', 'https://via.placeholder.com/640x480.png/00dd88?text=provident', 0, 1, '2023-11-09 12:48:52', '2023-11-09 12:48:52'),
	(4, 'Mr. Lesley Trantow Sr.', 'est-in-quos-dolores-dicta', 'https://via.placeholder.com/640x480.png/000044?text=id', 0, 0, '2023-11-09 12:48:52', '2023-11-09 12:48:52'),
	(5, 'Margarett Wilkinson', 'sint-quasi-officiis-iure-hic-molestiae-dignissimos', 'https://via.placeholder.com/640x480.png/00bbaa?text=reiciendis', 0, 0, '2023-11-09 12:48:52', '2023-11-09 12:48:52');

-- Dumping structure for table book.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table book.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table book.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table book.migrations: ~7 rows (approximately)
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(33, '2014_10_12_000000_create_users_table', 1),
	(34, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(35, '2019_08_19_000000_create_failed_jobs_table', 1),
	(36, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(37, '2023_11_06_140917_create_categories_table', 1),
	(38, '2023_11_09_101740_create_posts_table', 1),
	(39, '2023_11_09_153002_create_comments_table', 1);

-- Dumping structure for table book.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table book.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table book.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table book.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table book.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_foreign` (`user_id`),
  KEY `posts_category_id_foreign` (`category_id`),
  CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table book.posts: ~5 rows (approximately)
REPLACE INTO `posts` (`id`, `name`, `preview_image`, `title`, `content`, `description`, `category_id`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 'sit-fugiat-id-rerum-vel', 'https://via.placeholder.com/640x480.png/00ee44?text=inventore', 'Prof.', 'Consequatur maxime dolorem molestias nulla. Sunt quia sint quo ipsum ut pariatur tempore temporibus. Aperiam provident vel consequuntur et ea.', 'Corporis enim nesciunt atque magnam. Aperiam autem error quo sed. Placeat in voluptatibus et sed esse.', 1, 1, '2023-11-09 12:48:52', '2023-11-09 12:48:52'),
	(2, 'delectus-commodi-iure-ad-aut-est', 'https://via.placeholder.com/640x480.png/0044dd?text=eos', 'Prof.', 'Fugiat eveniet quod accusamus minima ea et quos. Saepe omnis modi veniam accusantium dolores reprehenderit unde voluptas. Ea laboriosam soluta aliquam et quisquam molestiae commodi.', 'Eum dolores corporis ipsum. Dolores voluptatum est quae delectus laborum accusantium fugit. Sed consectetur enim sed aut. Blanditiis sed quia quas in.', 1, 1, '2023-11-09 12:48:52', '2023-11-09 12:48:52'),
	(3, 'doloribus-beatae-in-vitae', 'https://via.placeholder.com/640x480.png/008877?text=optio', 'Prof.', 'Beatae a soluta velit quia veniam. Alias et commodi non ducimus laborum. Sed quis ut maiores eveniet.', 'Accusamus impedit labore quis inventore recusandae assumenda fugit. Laboriosam excepturi repellat ut natus hic est. Nesciunt officiis dolor sunt est tenetur qui sed necessitatibus.', 1, 1, '2023-11-09 12:48:52', '2023-11-09 12:48:52'),
	(4, 'fugiat-consequatur-aspernatur-cum-quis-eligendi-nobis-aut', 'https://via.placeholder.com/640x480.png/00ee44?text=qui', 'Prof.', 'Ducimus quo a est. Ratione deleniti qui et est illum. Nisi quia assumenda quia nemo assumenda voluptatem quia. Ad fugiat beatae voluptate. Quis harum odio ducimus aut ea officia reprehenderit.', 'Ex sed porro quia laboriosam veniam facere. Corrupti blanditiis voluptatibus tempora amet. Sit quaerat alias vel omnis suscipit et.', 1, 1, '2023-11-09 12:48:52', '2023-11-09 12:48:52'),
	(5, 'quia-sit-necessitatibus-nesciunt-hic-laborum-necessitatibus', 'https://via.placeholder.com/640x480.png/00aa66?text=odit', 'Mr.', 'Minus officia suscipit sit nihil explicabo. Id asperiores aut autem beatae ducimus. Voluptas deleniti non earum itaque fuga maiores.', 'Sed recusandae enim et dolores dolorum dolorem magni. Ratione at quo eveniet ratione. Laborum praesentium qui aperiam doloremque.', 1, 1, '2023-11-09 12:48:52', '2023-11-09 12:48:52');

-- Dumping structure for table book.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table book.users: ~5 rows (approximately)
REPLACE INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Beaulah Bernhard', 'jbergnaum@example.net', '2023-11-09 12:48:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OGm1MAD3BY', '2023-11-09 12:48:52', '2023-11-09 12:48:52'),
	(2, 'Walton Reinger', 'vtorphy@example.org', '2023-11-09 12:48:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'n6b3rh90G1', '2023-11-09 12:48:52', '2023-11-09 12:48:52'),
	(3, 'Gay Stehr', 'cassin.margret@example.org', '2023-11-09 12:48:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Lqp4YPyKJJ', '2023-11-09 12:48:52', '2023-11-09 12:48:52'),
	(4, 'Cortney Kihn DVM', 'vgleason@example.org', '2023-11-09 12:48:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SBDLxXRreE', '2023-11-09 12:48:52', '2023-11-09 12:48:52'),
	(5, 'Angeline Rolfson', 'mercedes22@example.com', '2023-11-09 12:48:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XDxELAgmUV', '2023-11-09 12:48:52', '2023-11-09 12:48:52');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
