CREATE
DATABASE  IF NOT EXISTS `db_english_center` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE
`db_english_center`;
-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: db_english_center
-- ------------------------------------------------------
-- Server version	9.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache`
(
    `key`        varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `value`      mediumtext COLLATE utf8mb4_unicode_ci   NOT NULL,
    `expiration` int                                     NOT NULL,
    PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK
TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks`
(
    `key`        varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `owner`      varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `expiration` int                                     NOT NULL,
    PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK
TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories`
(
    `id`         bigint unsigned NOT NULL AUTO_INCREMENT,
    `name`       varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `slug`       varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `count`      int                                     NOT NULL DEFAULT '0',
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK
TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories`
VALUES (1, 'Kiến thức và kinh nghiệm', 'kien-thuc-va-kinh-nghiem-1', 3, '2025-07-21 03:53:45', '2025-07-21 03:53:45');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact`
(
    `id`         bigint unsigned NOT NULL AUTO_INCREMENT,
    `address`    longtext COLLATE utf8mb4_unicode_ci    NOT NULL,
    `phone`      varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
    `email`      varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `facebook`   varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK
TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact`
VALUES (1,
        '[{\"address\":\"AU L\\u1ea1ng Giang: S\\u1ed1 50.51 khu HDB, t\\u1ed5 d\\u00e2n ph\\u1ed1 To\\u00e0n M\\u1ef9, x\\u00e3 L\\u1ea1ng Giang, t\\u1ec9nh B\\u1eafc Giang. Hotline: 0979 798 426 - 0868234966\",\"googlemap\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3715.4818395422694!2d106.22817431051976!3d21.37092428028343!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31356bc73070c9b3%3A0x7d43afddc5504ba1!2zQ8O0bmcgVHkgVE5ISCBN4buZdCBUaMOgbmggVmnDqm4gVMawIFbhuqVuIFbDoCBYw6J5IEThu7FuZyBUb8OgbiBN4bu5!5e0!3m2!1svi!2s!4v1753630197417!5m2!1svi!2s\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\"},{\"address\":\"AU B\\u1eafc Giang: T\\u1ea7ng 1, nh\\u00e0 B, k\\u00ed t\\u00fac x\\u00e1 sinh vi\\u00ean, \\u0111\\u01b0\\u1eddng Ho\\u00e0ng V\\u0103n Th\\u1ee5, ph\\u01b0\\u1eddng B\\u1eafc Giang, t\\u1ec9nh B\\u1eafc Giang Hotline: 0979 798 426 - ZALO: 0962 435 369\",\"googlemap\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3717.6938145474705!2d106.21017691051715!3d21.283584280348666!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31356da5c23132b3%3A0xb9acbbfb694a6a4a!2zS8O9IHTDumMgeMOhIFNpbmggdmnDqm4gQuG6r2MgR2lhbmc!5e0!3m2!1svi!2s!4v1753630275516!5m2!1svi!2s\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\"}]',
        '0979798426', 'aubacgiang@gmail.com', 'https://web.facebook.com', NULL, '2025-07-27 15:31:21');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers`
(
    `id`                 bigint unsigned NOT NULL AUTO_INCREMENT,
    `training_id`        bigint unsigned DEFAULT NULL,
    `full_name_parent`   varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `phone`              varchar(10) COLLATE utf8mb4_unicode_ci  NOT NULL,
    `email`              varchar(50) COLLATE utf8mb4_unicode_ci  NOT NULL,
    `full_name_children` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `status`             enum('pending','confirmed','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
    `date_of_birth`      date                                    NOT NULL,
    `address`            text COLLATE utf8mb4_unicode_ci         NOT NULL,
    `note`               longtext COLLATE utf8mb4_unicode_ci,
    `created_at`         timestamp NULL DEFAULT NULL,
    `updated_at`         timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY                  `customers_training_id_foreign` (`training_id`),
    CONSTRAINT `customers_training_id_foreign` FOREIGN KEY (`training_id`) REFERENCES `trainings` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK
TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document`
(
    `id`         bigint unsigned NOT NULL AUTO_INCREMENT,
    `priority`   int                                    NOT NULL DEFAULT '99',
    `name`       varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `src`        text COLLATE utf8mb4_unicode_ci        NOT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document`
--

LOCK
TABLES `document` WRITE;
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
/*!40000 ALTER TABLE `document` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs`
(
    `id`         bigint unsigned NOT NULL AUTO_INCREMENT,
    `uuid`       varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `connection` text COLLATE utf8mb4_unicode_ci         NOT NULL,
    `queue`      text COLLATE utf8mb4_unicode_ci         NOT NULL,
    `payload`    longtext COLLATE utf8mb4_unicode_ci     NOT NULL,
    `exception`  longtext COLLATE utf8mb4_unicode_ci     NOT NULL,
    `failed_at`  timestamp                               NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK
TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `home_page`
--

DROP TABLE IF EXISTS `home_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_page`
(
    `id`            bigint unsigned NOT NULL AUTO_INCREMENT,
    `banners`       text COLLATE utf8mb4_unicode_ci NOT NULL,
    `stats`         text COLLATE utf8mb4_unicode_ci,
    `fags`          text COLLATE utf8mb4_unicode_ci,
    `images`        text COLLATE utf8mb4_unicode_ci,
    `link_youtubes` text COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at`    timestamp NULL DEFAULT NULL,
    `updated_at`    timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_page`
--

LOCK
TABLES `home_page` WRITE;
/*!40000 ALTER TABLE `home_page` DISABLE KEYS */;
INSERT INTO `home_page`
VALUES (1,
        '{\"title\":\"Kh\\u01a1i d\\u1eady ti\\u1ec1m n\\u0103ng, v\\u1eefng b\\u01b0\\u1edbc t\\u01b0\\u01a1ng lai c\\u00f9ng AU English\",\"description\":\"M\\u00f4i tr\\u01b0\\u1eddng h\\u1ecdc t\\u1eadp chu\\u1ea9n qu\\u1ed1c t\\u1ebf, gi\\u00fap con t\\u1ef1 tin giao ti\\u1ebfp v\\u00e0 chinh ph\\u1ee5c c\\u00e1c k\\u1ef3 thi.\",\"images\":[\"\\/userfiles\\/images\\/R5AT4211.jpg\",\"\\/userfiles\\/images\\/R5AT4212.jpg\",\"\\/userfiles\\/images\\/R5AT4215.jpg\"]}',
        '[{\"value\":\"10\",\"description\":\"N\\u0103m kinh nghi\\u1ec7m\",\"images\":\"\\/userfiles\\/images\\/R5AT4219.jpg\"},{\"value\":\"30\",\"description\":\"Gi\\u00e1o vi\\u00ean \\u01b0u t\\u00fa\",\"images\":\"\\/userfiles\\/images\\/R5AT4222.jpg\"}]',
        '[{\"question\":\"Trung t\\u00e2m c\\u00f3 l\\u1edbp h\\u1ecdc th\\u1eed mi\\u1ec5n ph\\u00ed kh\\u00f4ng?\",\"answer\":\"C\\u00f3, ch\\u00fang t\\u00f4i c\\u00f3 c\\u00e1c bu\\u1ed5i h\\u1ecdc th\\u1eed \\u0111\\u1ecbnh k\\u1ef3. Vui l\\u00f2ng \\u0111\\u1ec3 l\\u1ea1i th\\u00f4ng tin \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c t\\u01b0 v\\u1ea5n l\\u1ecbch h\\u1ecdc g\\u1ea7n nh\\u1ea5t.\"},{\"question\":\"L\\u1ed9 tr\\u00ecnh h\\u1ecdc cho b\\u00e9 \\u0111\\u01b0\\u1ee3c x\\u00e2y d\\u1ef1ng nh\\u01b0 th\\u1ebf n\\u00e0o?\",\"answer\":\"M\\u1ed7i h\\u1ecdc vi\\u00ean s\\u1ebd \\u0111\\u01b0\\u1ee3c ki\\u1ec3m tra \\u0111\\u1ea7u v\\u00e0o v\\u00e0 t\\u01b0 v\\u1ea5n l\\u1ed9 tr\\u00ecnh c\\u00e1 nh\\u00e2n h\\u00f3a \\u0111\\u1ec3 \\u0111\\u1ea3m b\\u1ea3o hi\\u1ec7u qu\\u1ea3 h\\u1ecdc t\\u1eadp t\\u1ed1t nh\\u1ea5t.\"},{\"question\":\"\\u0110\\u1ed9i ng\\u0169 gi\\u00e1o vi\\u00ean c\\u1ee7a trung t\\u00e2m c\\u00f3 tr\\u00ecnh \\u0111\\u1ed9 nh\\u01b0 th\\u1ebf n\\u00e0o?\",\"answer\":\"100% gi\\u00e1o vi\\u00ean t\\u1ea1i AU English c\\u00f3 b\\u1eb1ng c\\u1ea5p s\\u01b0 ph\\u1ea1m, ch\\u1ee9ng ch\\u1ec9 gi\\u1ea3ng d\\u1ea1y qu\\u1ed1c t\\u1ebf (TESOL\\/IELTS) v\\u00e0 nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m.\"}]',
        '[\"\\/userfiles\\/images\\/R5AT4240.jpg\",\"\\/userfiles\\/images\\/R5AT4246.jpg\",\"\\/userfiles\\/images\\/R5AT4255.jpg\"]',
        '[\"https:\\/\\/youtu.be\\/fXXcJJENN9U\",\"https:\\/\\/youtu.be\\/BaR4iCqJFWk\"]', '2025-07-21 03:53:45',
        '2025-07-21 05:40:36');
/*!40000 ALTER TABLE `home_page` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches`
(
    `id`             varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `name`           varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `total_jobs`     int                                     NOT NULL,
    `pending_jobs`   int                                     NOT NULL,
    `failed_jobs`    int                                     NOT NULL,
    `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci     NOT NULL,
    `options`        mediumtext COLLATE utf8mb4_unicode_ci,
    `cancelled_at`   int DEFAULT NULL,
    `created_at`     int                                     NOT NULL,
    `finished_at`    int DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK
TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs`
(
    `id`           bigint unsigned NOT NULL AUTO_INCREMENT,
    `queue`        varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `payload`      longtext COLLATE utf8mb4_unicode_ci     NOT NULL,
    `attempts`     tinyint unsigned NOT NULL,
    `reserved_at`  int unsigned DEFAULT NULL,
    `available_at` int unsigned NOT NULL,
    `created_at`   int unsigned NOT NULL,
    PRIMARY KEY (`id`),
    KEY            `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK
TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus`
(
    `id`         bigint unsigned NOT NULL AUTO_INCREMENT,
    `name`       varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `url`        varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `priority`   int                                     DEFAULT '0',
    `parent_id`  bigint unsigned DEFAULT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY          `menus_parent_id_foreign` (`parent_id`),
    CONSTRAINT `menus_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK
TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus`
VALUES (1, 'Trang chủ', NULL, 1, NULL, '2025-07-27 14:07:40', '2025-07-27 14:07:40'),
       (2, 'Tin tức & Sự kiện', 'news', 2, NULL, '2025-07-27 14:09:34', '2025-07-27 14:23:02'),
       (3, 'Chương trình học', 'training', 3, NULL, '2025-07-27 14:10:00', '2025-07-27 14:23:09'),
       (4, 'Đội ngũ giáo viên', 'teachers', 4, NULL, '2025-07-27 14:10:28', '2025-07-27 14:23:13'),
       (5, 'Thư Viện AU', 'parents-corner', 5, NULL, '2025-07-27 14:10:55', '2025-07-27 14:23:16'),
       (6, 'Liên hệ', 'contact', 6, NULL, '2025-07-27 14:11:17', '2025-07-27 14:23:20'),
       (7, 'Tiếng Anh Mẫu giáo', 'tieng-anh-mau-giao-3-6-tuoi-1', 1, 3, '2025-07-27 14:23:40', '2025-07-27 14:23:40'),
       (8, 'Tiếng Anh Tiểu học', 'tieng-anh-tieu-hoc-6-11-tuoi-2', 2, 3, '2025-07-27 14:25:13', '2025-07-27 14:25:13'),
       (9, 'Tiếng Anh THCS', 'tieng-anh-thcs-11-13-tuoi-3', 3, 3, '2025-07-27 14:25:36', '2025-07-27 14:25:36'),
       (10, 'Kiến thức và kinh nghiệm', 'kien-thuc-va-kinh-nghiem-1', 1, 2, '2025-07-27 14:26:06',
        '2025-07-27 14:26:06');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations`
(
    `id`        int unsigned NOT NULL AUTO_INCREMENT,
    `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `batch`     int                                     NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK
TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations`
VALUES (1, '0001_01_01_000000_create_users_table', 1),
       (2, '0001_01_01_000001_create_cache_table', 1),
       (3, '0001_01_01_000002_create_jobs_table', 1),
       (4, '2025_03_26_142803_create_kingexpressbus_schemas', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news`
(
    `id`          bigint unsigned NOT NULL AUTO_INCREMENT,
    `slug`        varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `title`       varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `excerpt`     text COLLATE utf8mb4_unicode_ci         NOT NULL,
    `thumbnail`   varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `author`      varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `view`        int                                     NOT NULL DEFAULT '0',
    `category_id` bigint unsigned NOT NULL,
    `content`     longtext COLLATE utf8mb4_unicode_ci     NOT NULL,
    `created_at`  timestamp NULL DEFAULT NULL,
    `updated_at`  timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `news_slug_unique` (`slug`),
    KEY           `news_category_id_foreign` (`category_id`),
    CONSTRAINT `news_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK
TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news`
VALUES (1, 'bi-quyet-giup-con-hoc-tieng-anh-tai-nha-1', 'Bí quyết giúp con học tiếng Anh tại nhà',
        'Khen ngợi và động viên là liều thuốc tinh thần vô giá. Thay vì chỉ trích lỗi sai, hãy tập trung vào những nỗ lực và tiến bộ của con, dù là nhỏ nhất. Sự công nhận từ cha mẹ sẽ giúp con xây dựng sự tự tin và không sợ mắc lỗi khi học một ngôn ngữ mới.',
        '/userfiles/images/R5AT3841.jpg', 'Admin', 1456, 1,
        '<h2>Khám phá phương pháp học hiệu quả cho trẻ</h2><p>Đừng biến việc học thành áp lực. Hãy lồng ghép tiếng Anh vào các trò chơi mà trẻ yêu thích như trốn tìm (đếm số bằng tiếng Anh), board game (dạy về màu sắc, con vật), hoặc các hoạt động nghệ thuật. Khi trẻ cảm thấy vui vẻ, khả năng tiếp thu và ghi nhớ sẽ tăng lên đáng kể.</p><p>Đọc sách truyện song ngữ hoặc truyện tranh tiếng Anh là một cách tuyệt vời để mở rộng vốn từ vựng và làm quen với cấu trúc câu. Hãy bắt đầu với những cuốn sách có hình ảnh minh họa đẹp mắt và nội dung đơn giản, phù hợp với lứa tuổi của con. Cùng con đọc và giải thích những từ mới sẽ giúp tăng cường sự gắn kết gia đình.</p><p>Khen ngợi và động viên là liều thuốc tinh thần vô giá. Thay vì chỉ trích lỗi sai, hãy tập trung vào những nỗ lực và tiến bộ của con, dù là nhỏ nhất. Sự công nhận từ cha mẹ sẽ giúp con xây dựng sự tự tin và không sợ mắc lỗi khi học một ngôn ngữ mới.</p><blockquote><p>Việc học ngoại ngữ sớm không chỉ giúp trẻ phát triển trí não mà còn mở ra nhiều cơ hội trong tương lai.</p></blockquote>',
        '2025-07-21 03:53:45', '2025-07-21 05:41:02'),
       (2, 'bi-quyet-giup-con-hoc-tieng-anh-tai-nha-meo-so-2-2', 'Bí quyết giúp con học tiếng Anh tại nhà - Mẹo số 2',
        'Khen ngợi và động viên là liều thuốc tinh thần vô giá. Thay vì chỉ trích lỗi sai, hãy tập trung vào những nỗ lực và tiến bộ của con, dù là nhỏ nhất. Sự công nhận từ cha mẹ sẽ giúp con xây dựng sự tự tin và không sợ mắc lỗi khi học một ngôn ngữ mới.',
        '/userfiles/images/R5AT3838.jpg', 'AU English', 120, 1,
        '<h2>Khám phá phương pháp học hiệu quả cho trẻ</h2><p>Một trong những phương pháp hiệu quả nhất để giúp trẻ học tiếng Anh tại nhà là tạo ra một môi trường ngôn ngữ tự nhiên. Phụ huynh có thể dán nhãn các đồ vật trong nhà bằng tiếng Anh, cùng con xem các chương trình hoạt hình hoặc nghe nhạc thiếu nhi bằng tiếng Anh. Việc tiếp xúc thường xuyên sẽ giúp con thẩm thấu ngôn ngữ một cách vô thức.</p><p>Đừng biến việc học thành áp lực. Hãy lồng ghép tiếng Anh vào các trò chơi mà trẻ yêu thích như trốn tìm (đếm số bằng tiếng Anh), board game (dạy về màu sắc, con vật), hoặc các hoạt động nghệ thuật. Khi trẻ cảm thấy vui vẻ, khả năng tiếp thu và ghi nhớ sẽ tăng lên đáng kể.</p><p>Đọc sách truyện song ngữ hoặc truyện tranh tiếng Anh là một cách tuyệt vời để mở rộng vốn từ vựng và làm quen với cấu trúc câu. Hãy bắt đầu với những cuốn sách có hình ảnh minh họa đẹp mắt và nội dung đơn giản, phù hợp với lứa tuổi của con. Cùng con đọc và giải thích những từ mới sẽ giúp tăng cường sự gắn kết gia đình.</p><blockquote>Việc học ngoại ngữ sớm không chỉ giúp trẻ phát triển trí não mà còn mở ra nhiều cơ hội trong tương lai.</blockquote>',
        '2025-07-20 03:53:45', '2025-07-20 03:53:45'),
       (3, 'bi-quyet-giup-con-hoc-tieng-anh-tai-nha-meo-so-3-3', 'Bí quyết giúp con học tiếng Anh tại nhà - Mẹo số 3',
        'Đọc sách truyện song ngữ hoặc truyện tranh tiếng Anh là một cách tuyệt vời để mở rộng vốn từ vựng và làm quen với cấu trúc câu. Hãy bắt đầu với những cuốn sách có hình ảnh minh họa đẹp mắt và nội dung đơn giản, phù hợp với lứa tuổi của con. Cùng con đọc và giải thích những từ mới sẽ giúp tăng cường sự gắn kết gia đình.',
        '/userfiles/images/R5AT3841.jpg', 'AU English', 136, 1,
        '<h2>Khám phá phương pháp học hiệu quả cho trẻ</h2><p>Đừng biến việc học thành áp lực. Hãy lồng ghép tiếng Anh vào các trò chơi mà trẻ yêu thích như trốn tìm (đếm số bằng tiếng Anh), board game (dạy về màu sắc, con vật), hoặc các hoạt động nghệ thuật. Khi trẻ cảm thấy vui vẻ, khả năng tiếp thu và ghi nhớ sẽ tăng lên đáng kể.</p><p>Khen ngợi và động viên là liều thuốc tinh thần vô giá. Thay vì chỉ trích lỗi sai, hãy tập trung vào những nỗ lực và tiến bộ của con, dù là nhỏ nhất. Sự công nhận từ cha mẹ sẽ giúp con xây dựng sự tự tin và không sợ mắc lỗi khi học một ngôn ngữ mới.</p><p>Một trong những phương pháp hiệu quả nhất để giúp trẻ học tiếng Anh tại nhà là tạo ra một môi trường ngôn ngữ tự nhiên. Phụ huynh có thể dán nhãn các đồ vật trong nhà bằng tiếng Anh, cùng con xem các chương trình hoạt hình hoặc nghe nhạc thiếu nhi bằng tiếng Anh. Việc tiếp xúc thường xuyên sẽ giúp con thẩm thấu ngôn ngữ một cách vô thức.</p><blockquote>Việc học ngoại ngữ sớm không chỉ giúp trẻ phát triển trí não mà còn mở ra nhiều cơ hội trong tương lai.</blockquote>',
        '2025-07-19 03:53:45', '2025-07-19 03:53:45');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `parents_corner`
--

DROP TABLE IF EXISTS `parents_corner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parents_corner`
(
    `id`         bigint unsigned NOT NULL AUTO_INCREMENT,
    `priority`   int                                     NOT NULL DEFAULT '99',
    `slug`       varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `image`      longtext COLLATE utf8mb4_unicode_ci     NOT NULL,
    `rate`       text COLLATE utf8mb4_unicode_ci         NOT NULL,
    `name`       varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `describe`   varchar(50) COLLATE utf8mb4_unicode_ci  NOT NULL,
    `content`    longtext COLLATE utf8mb4_unicode_ci     NOT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `parents_corner_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parents_corner`
--

LOCK
TABLES `parents_corner` WRITE;
/*!40000 ALTER TABLE `parents_corner` DISABLE KEYS */;
INSERT INTO `parents_corner`
VALUES (1, 1, 'phu-huynh-tra-dan-chuong-0', '/userfiles/images/R5AT4198.jpg',
        'Sau khi cho con học tại trung tâm con tôi đã tự tin hơn trước rất nhiều!', 'Phụ huynh Trà Đan Chương',
        'Phụ huynh bé Phúc',
        '<p>Sau một khóa học tại AU, bé nhà mình đã mạnh dạn hơn rất nhiều. Trước đây con rất nhát, không dám nói tiếng Anh, nhưng giờ con có thể tự tin giới thiệu bản thân và hát các bài hát tiếng Anh. Các thầy cô rất nhiệt tình và kiên nhẫn, phương pháp học qua trò chơi thực sự hiệu quả.</p>',
        '2025-07-21 03:53:45', '2025-07-21 05:44:12'),
       (2, 2, 'phu-huynh-anh-tiep-chinh-vy-1', '/userfiles/images/R5AT4200.jpg',
        'Chương trình học bài bản, con tiến bộ rõ rệt.', 'Phụ huynh Anh. Tiếp Chính Vỹ', 'Phụ huynh bé Vũ',
        'Tôi rất hài lòng với lộ trình học tập tại trung tâm. Con không chỉ được học với giáo viên bản xứ mà còn được củng cố ngữ pháp thường xuyên. Điểm số trên lớp của con đã cải thiện đáng kể, và quan trọng nhất là con tìm thấy niềm yêu thích với môn tiếng Anh.',
        '2025-07-21 03:53:45', '2025-07-21 03:53:45'),
       (3, 3, 'phu-huynh-lo-trung-2', '/userfiles/images/R5AT4202.jpg', 'Trung tâm chuyên nghiệp, giáo viên tận tâm.',
        'Phụ huynh Lò Trung', 'Phụ huynh bé Khương',
        'Điều tôi ấn tượng nhất là sự chuyên nghiệp và tận tâm của đội ngũ AU. Từ giáo viên đến các bạn trợ giảng đều rất quan tâm đến từng học viên. Trung tâm thường xuyên cập nhật tình hình học tập của con, giúp tôi nắm bắt được sự tiến bộ và phối hợp cùng nhà trường để hỗ trợ con tốt nhất.',
        '2025-07-21 03:53:45', '2025-07-21 03:53:45');
/*!40000 ALTER TABLE `parents_corner` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens`
(
    `email`      varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `token`      varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK
TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions`
(
    `id`            varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `user_id`       bigint unsigned DEFAULT NULL,
    `ip_address`    varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `user_agent`    text COLLATE utf8mb4_unicode_ci,
    `payload`       longtext COLLATE utf8mb4_unicode_ci     NOT NULL,
    `last_activity` int                                     NOT NULL,
    PRIMARY KEY (`id`),
    KEY             `sessions_user_id_index` (`user_id`),
    KEY             `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK
TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions`
VALUES ('0JvrcIEmifcka7qZvWhQnSounDpHfyHTKKhJLeck', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS1VtVFI5R2ZnZ2N0R3FYTm1ENmlleXBESFBpZFhidjZIM3VHdURvayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753629823),
       ('0KVCTZ7eFegDAWkRIBjnYYs5imqKasGAjAFHtSDK', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVjBCc2VnbkI2bkxBZW5RRDB1NU1GelROaXU5S0RIVk1SZzBxM1JTViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753629247),
       ('0kx3dXO6DMGXEYp5xotzD4dl0LDMs6kxEFqFLTx4', 1, '127.0.0.1',
        'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36',
        'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSHEzTjZqdWFVV3pNd1ZwbTlrTklCRUZqQjFPWXJvWVpyWk82ZWk4ZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9tZW51cyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==',
        1753626366),
       ('0vEZ3VB9ejC5lfWCDyYhxtb7ar0zQGwHG0ZQQeQf', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUVFtNTd0Z2dLcTNpUTlwNm9IbnZWcHBKTE5lanFUd0w1NnJoNVdMaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvcGFyZW50cy1jb3JuZXI/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1753631642),
       ('1iNW5xAEcjv59JaJ3UflMh2GgBw6ziYC4S44kZIv', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNlNoNENwVkxpRTZyWnVpVGVLUXlRMGNOZkJhVkxOYjVoMmNDQkFRZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1753628129),
       ('22r2O7Eh3zqY7vWmagZgbt73oy6A1zsGEIQfb7MY', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWJMcGV2TEJRQlZaZE5yMnE1SE90Zm95NE1ISXpBbFVFYVEwUnpwVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753631757),
       ('256EEQvkHP7f4v8Fy5FBEglBTPgUn3L3StVgBA5h', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZXdpZE5DUXVVRlNDM3dZNjQxWWpGaFJqU09za0xGRlVOVHFjZFJtSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753628778),
       ('2iQTEX7raSV6oWPMtayUBpDHqF3r8rkFoi5XVz7z', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTkFIR3huYW51cnBQY0I2WWl0a0dhSzlSNHh2VFZSODNZNXVoR3h4WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0yJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753631638),
       ('2uHaXWhWQLyOYDqRPV9JP23VIYdUPv9oFHv2X49B', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWTZnQlhUckhnSkJtOXM1M1dOZFZLanVSUVdCbWZ2SnhrN0EwajVvUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753631236),
       ('3VbkWloTf3Tqsrl3NEyTU1PIh8rMWH7Lybh3lzaJ', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUE51TjJSV05oNEM4OEh6MkV6Q0ozcFE1Y3dIRDJtNDhJbDRNbUJqYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753631324),
       ('3VMO4slQyQt0sRxqqicSOuLZedEi1dC4OBihRdml', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoieDJTUHFDQkxVMXJHT2pQdG03NXZBRWc1aklLdlNUUmloR2hRcnA1bSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753627773),
       ('3WPOSymc4hOuUuoXMNPVyNtJcnCN6MMUAyqEoo59', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTXU2MlphckZWenM0aTVrdkNFZnZScVM5Um5hZmhxbzNrZHo3bkNUayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753630899),
       ('4yokGqbtJ0NH76ynqMkaROwRksWWyqi8Hy9sPMmo', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoibHZabnh2UzRoS2QxdXNadWE2emx3eXlGdTRmTGpkcUpOREpqbHJDNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753631753),
       ('5gXDYEb19qYJ7TkPHfS0O59z4HI2skRFRy3yH9F0', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNkhKa2cxQ1hIaHJhTWZDSDhRdUY2WlRYcEZNY3dXeXcwWWRpOEluZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753631236),
       ('6BFkS3WUORW7VGCwOG7ZsjSQSrQaWAIgUvOLOkgq', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGY5Z2doWWhNRnhiZGtwOWswek14Qmk2VDZFSTJhVHR0a3dKNlRiNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvZG9jdW1lbnRzP3BhZ2VTaXplPTQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753628127),
       ('6LArNXNJUTDBWPCVKntTqpUcD2EQ8lALLwd747rr', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmMwR3RISnJaRnpPZ2sxWFdZdTh5T2V1Rkd3OTk3cHpDck1wUmlReSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753631310),
       ('6zaUaV5wkcU5onH8WAw4hHSh7WGH3gCVDt96OHZl', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZGRVcXlpZGhiZEpEMU51NU9UQ25KdUthNmtKWlVkd1BuSUd5bDU3cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY2F0ZWdvcmllcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1753627775),
       ('7hxO0IgAGfHYR4SrfVwZbLp0Uiy8tOqvES1iBVL5', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoianFFZWROWHloejIxaDB1THpmVldRdXhJQVhTbDUxYWRaVHBvQVBQSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1753631626),
       ('7qMeWABlENREgBlHhSYx6y35urvooITxlcvdxFQv', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMHFFd3BFRjlVb0Y2dk5MZ28xS0QwVWNkUEdKbVg4R01qU2dsSEYxWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753627993),
       ('7qy9MN0KUjhNETAuC0NDDPvaoTRlCRxXp8gnG4Ge', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSzd0cVphTDJQcTM4Y1JCYkJHenBKM2s0ekxReEtWMURuM3hZdVZxQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753630347),
       ('7SuTy15kZYC5y7qyr68uzTQyULdeQiKNqEmtnkC1', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNHNOODVwM3JxdFJZMkRVUEVuN0pqTEw5NnBDcm9ySkF2bGdLVTZaUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753629079),
       ('8DmLxR2830sOpzVgcGrIUE02UUL7B7FY81HXTwni', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoic2ZJU0E4aExSU3AwbzF2YmRJVTViZE5TVVJZa0R4Mm5LMTlLdE4ybyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753626142),
       ('8pks2Z5CsPWKsc6d9XStkgBgkeP6CpSlc2vNw1Ix', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRDY0blF6NHZqYkhqNjZFYlk5clNRYXFYTjRvQnBET2FnOTBISVI3ayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753631310),
       ('9cS0NA7fUpYuagkJAwHAEZRwk0yEqktZLvBCF4H8', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGkzUWNHZW9GY21nS1c2U2VrWEZDZDdIQlVORExtUjZhdWJtelZNbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLXRoY3MtMTEtMTMtdHVvaS0zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1753631626),
       ('9l73gz5aGujL9SlmcZ0kx8hYRYMvWcg00HNvLJ3v', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoidHI4TkZPNGlzVDJJOXBMeUFZTUtxYUM5ak52cE5PTExjOUFiNmt0RCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753627546),
       ('AAvMP5JD5l5RkNM3SvicDvdKntO05rGRq8MEx1IE', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTnZVWjI2NUhNSlRRVFNDUW42SmNnMlZBSGtBRG04dktKeVcxbEpxZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753627046),
       ('abUp1zpfYBdtmxU48DGgLGJPK9HLHDqA9bT4nEdt', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTTlrMldtamFvMkUzdFR6TVRQN1RPenpFUGcyOVJhaUUybloxQ1RyWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753628473),
       ('AQP6uMcXPExOSLr0mG7nGA8qeOSoZSjhT6YDWfi7', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRmFVWW56OWNoY25tVWtBZVJaTXNKTHlLSmdQQWk0MWFyOEltS2t6SSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753628133),
       ('AYd0kA3kwd2cQMJWeoCQdYRpXYYZFNSSKQXjmMc5', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoic3YxUllsNXhHWWNJNGFGT1JncXJ0eGlneHF4OU5MclpCQ0dXS2hZdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753629837),
       ('B0ESmI32gawlKZyTLXdVYZTdMDpXx5yzBBrT9XBM', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUw4cHFGVEZ3dTRJM3ZWbmk0cmFyWUZnaFk4U0x4UklHT2E3M2dRciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkva25vd2xlZGdlLW5ld3M/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1753631642),
       ('bU5peKG837CrsJyTFkZg2df4amdHiXkwgqdIgLqJ', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmhOVlMwM1NNYWEzR0U2WGdUVnhSODk3R3V1bkl3VlJNd3BvcEJTeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753626908),
       ('BxxT8aHBiFzMNRgGWhvgOYoDISxR3sfS0m9HSEoC', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWWFiV2I3ODhsaXFtdEM1UXl5djRDa1dWZE56NGNWRkVMdmQ1TGdBeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753628325),
       ('c4lCXF3nUWsdsUuTCbfo7kq1jdvXzc7l8W6z0Ry0', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWEl3bEdoNWNFamZsaDV0NWk4WGRZbEw1bVVnNXFlMmFtMjZ1SFdITSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753631311),
       ('cPDsnuiQYPaZM4yGxrnbnUH0CvOJdY1LCbytK2kq', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWDNHUEFPanM2anNtd1Q0d3U3Z290NmUwd29HNEYzS3BUTTByZjJNNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753631760),
       ('cwpAwFum3cS0oPAyWzo7pJSmpvIRHU9tkssTQNj6', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoic3h6Y21aTlFnbUcybTBVZGRMcE5WbnhQOWhsNkQ2dWRSVnFadFExWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1753625526),
       ('dplVgiOBoXnM5wyGVbAikPTyzXRTBop3P8LOK3Pb', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoidE9IaVJiZFhyN2VBb1g2TEdIQ2FDMmdyNVoyNEdnNmd4SFdGQ1MzSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753626132),
       ('EdAclgRFsHmWG409wBlQvEnkQAJdyXH6SPmxetOU', NULL, '127.0.0.1', 'PostmanRuntime/7.44.1',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoicHlkOTR6ZDZ0Qm80WHNVekJvMlNPTU5lV3l6cHJvOWhqTzRFR0FXQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753626471),
       ('eLO0hSIl1Ut60SQfeo1f1QB012XWqGMSEykiI2ei', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR1lidkk3aElJR0QwUEZCQk1IWGVJNTZvTXBHR1BZZjFpaEFxWmQ5ZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1753631758),
       ('EVZX4QSPrjCAYSJhw31Sur9vEJmZOa85f0iatOjm', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoibzdVY2drR2phTU1WeFB1QWpTRG5Bb2dsOTJYUzRKTFhMd29Ydk1leCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1753629895),
       ('EzXfOGL0fZkJONILwGLHCdurXkkuSSL329MPSN5k', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoib0RYM1ZzRGdZTmtYaHNxcnZPcVdaSGRhQUxrVloyNnc5TTk2UGMyOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753628876),
       ('fEB7KRVGUL8EDGnhv9XkMbdndNTnOyIfYkErVav7', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoibFI5UUtSTnEyR2JXdkJpcTl1VlJhc3VuanhDQXJSeG1JZTMxZW5hUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753629817),
       ('g1hGRDBYILX2TgL5ke4F6H54MJYCzYRwZpgsuaY8', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUXVUSURCcllmWHVMdzlmZHAwbVY2OXJraWFFQUVJV1dvdUVQbGFxdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753631760),
       ('g3hPr85tV7tSimHBUt3ni6VrtXKg7SKPFUNavLnZ', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYzc0VnNVZVJveVlrOXloSXlLdXRyc1pQNWV1elZRbHl6WEdFeU1LaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLXRpZXUtaG9jLTYtMTEtdHVvaS0yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1753631758),
       ('GabBnJeFTQrQbeNPVt2EFYLKmnqcqVq6zOx2djwR', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUzM2MXJwSzRGemlPaUFJOTN1WTlZOUswdXhiaHgzU2VYSDVJbkdlTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753628473),
       ('gFvBdAS1fyu8kgwe7rtCiKan4Fb2bAMDb65CQbmy', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoidnRPMWFFdWk3aVBRZnZnVnpjSExBR3JXWktzczlkRFdOWVpUR21sZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753627993),
       ('gO4YVtKc2CWBtxyqWViqIouqF4ALF96aFDmcXV5M', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN05ZRzlMakROaGlROHlpOHEzSDM4T2MyeG5yV2ZrV1AybkxqVXIzcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753631083),
       ('gP744ZtrGaneDjqfMdHvUDeBZ3mkfVwk8lqIXNIg', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0NtSzlUcHJqUXhKTzhINlZqazNYcHRlVU5sUDNhT0swQW1OU3NrcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753628136),
       ('gRWFeQFXGC10gNn039CfifiuXYQzMkmiZTPh7kD9', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaFNwZmdSREt5VmF6QTFOZVBJQWE0UjhrckpqVEIyeVFjb29tZ2d2USI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753629516),
       ('gyh8qUaZOP8z6mxwmrhL0KKiBuKa8cTX99oPLFuB', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRnQ4bFZFYm01SVMxV09GdThNTVdaT2dlQUxrZVY3TlFDdm9EVUdKYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753629817),
       ('gZu6iuzMD9JDQh6nMTeX2eGiROvFgxJxam4iQ2jH', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoibzZrSEZjUGo0QU9Zd0NTdDZRckpDSTJ6d2drS013UDd1T1RrVmpuciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753628778),
       ('h5IuMt03JaPuzHiCAhuASU4ueAQMxNYGXJOp5uEq', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM2djYjVJZWxmMFZ0V2pwVmZYb04weXQ5aE1pQjlYdjRtdEZVTWI3VyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753628463),
       ('H5SUzwT86w2LN5Itx3upL3k5N9YuvlCTXc5Jce60', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoia2dRV0xSeDd2R3ZrTDMyeHNjM3ZINTQ4emd4QXl1SVNnaTJORmJEZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbmV3cz9wYWdlPTEmcGFnZVNpemU9MTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753626140),
       ('H9OdW8SE8rExpA1rPWtDaA1wa5S2Uj1OfCLBHJq6', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiblA1a3ZXQWZmSmtveGZRalE2WWNSNWtUUDB3TnZDdk9LdHhuU1ZQRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753629136),
       ('HDUWDUZfySbCmrZha9kQFLrZtiqU6sBg7dBwvHgE', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUtSM2xnY2RNbER2ZEZkTFU2WThhVlNxYXczMG5mWUttSUUwQ2ZlRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753629079),
       ('hIeVCM45mllskzuNesX8aXIXyQWXDtKkoUmtnvU9', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWGVtM0xuTlJEQ3JsUUdGcmhDZ2xHZFJzUWl0eE05MlVvakhzZkU0NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753628463),
       ('HJOn5mIsLf6nuRnJepCypupzLscRuc3sL0Va6U9M', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUW5SMXNUN2VHUE9vZHg0YzJ2S3FyNmxkbjNJdDY2UHFRSTMzcVpEaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753628473),
       ('hKfhuA0xDO7gZWWuwvsms1ocGQmqAylM1CdVcVFp', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaGUwMkY2NktJVk5YNEY2V1Jxc2pRM3JJcWpvblNNc0xIVGVrN1BpYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1753630286),
       ('HnFHZA3R7NVuGW01jqZZT3eGXOrukowNOK7KxbwW', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUI0bmN2RXhtSFNpbG5VanRZQ2ZENmlkcVZTU21ERnBmWkc0NFFIMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLXRpZXUtaG9jLTYtMTEtdHVvaS0yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1753631758),
       ('i7PsjZeO8j9ouvzCVkELh9YMDBY3zYPsH11YRihv', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQlNYVUhXdmQ3RExKbG1RTE10bVZXUGd6cFAwVFN0bHh6Z0tzNkdJdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753627768),
       ('IcxuRVyAZEbf2AFqaWh7oeUpH9TduGn4xlWGu8CN', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQnpNcHd5c0psbWNRM3pLRVI4NUFvYjdLT0ZHN3pPM3VITnVsN1JxUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753626132),
       ('IJAbh8LyhMTD2am3cTSblhtlFANqVi490NewrBgU', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSlhZVUMzZ2c2aTl5QlBFeU5jdjdpaWVldXZ3OUdjSlVjazRZQksyNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753631671),
       ('iZeZn0lES44nVdpFWNcPebKsLjEAGs4nvz0zVINq', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmg1YmFkRDlJOHZOSGtPSmh2Vkx0YlVONmlwUE9GMHZ2YVVOMFZwYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753626135),
       ('j4dnOTlOFDcrfBPl0h0rPA0dcEsOJpIFS6ngZ9Ub', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRHVWTlJIRnBqenQycUFNdXYwWno4amNDZFVTTlVBRmdDSk5CcHh2MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753631760),
       ('jbHCfrWxRuL16rnQ30AJ3Baqf9IyBWpc3Z5V0dzP', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWDBpeUVTY0dTbUdkWnlDakwwWkpvb0NJSjFqclVzQUtIbnFOdXdsUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbmV3cz9wYWdlPTEmcGFnZVNpemU9MTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753627775),
       ('jSRw0lM6NTFLVsG0beYYlqycY6nH6g7b7eBuGUBu', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVF2QUVEeGJCNk5wRWV6ZmFxOFFHUWltWHc2d0lKbGU5RnJiOVNVUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753629999),
       ('k6ZihubZyTGopfP73NvQ7mLaABLk8zM1Ki89CE90', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoialcxV3pjVGlxN1U2ek1ZM1ltSDd3cGQ5cUNQY3pJNTV3ZEE3bGVWZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753628473),
       ('K8tyOEVXrbIO1tjfhCkoRGIBtNfTqRPI3GtYDLu0', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUZSZlY0d3htQWFDM1A2R0wyWll3WVBtZGQ0bXN5VlpXMnFnbE41TCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753626908),
       ('kiAo25Xw1SpJWRf2lHrGTIHmfY0eWFZMRwZZey2L', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoicTRjWWgzUlJMUjU1VmdFeUhnYWRNd2xIcjlEam1sZVkzUkUwRUlHcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvcGFyZW50cy1jb3JuZXI/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1753625445),
       ('kkDQzHiPAZyCq6oCzMCZtGiTSG0woukQmPEGHhiu', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUtHSFhJY2d6R3dQdTR3Rm1RODJaQ2hwclJUZElqU2pWRGl1QXYyRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753626908),
       ('kNQypgxz1liAw21kD2VP9q9Q6h1vqNroVIFGweVa', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWGJtcHdMNU9tTEJDeUFnNW5peFc3YmJUM1hEZDJnaEVZMUxPTkt4byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkva25vd2xlZGdlLW5ld3M/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1753625445),
       ('lMIfPieKd9d8zJzM1U1EulIFhEu6wycSvteVzvs1', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU0NIM2N3U09tc3BxUzdyWTVIRlpjdElNVVRaQjlwNkI5UEFlMnZVMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLW1hdS1naWFvLTMtNi10dW9pLTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753629895),
       ('lonHKxUreQDvtsRk6PCi2P6an3kngZNskXmC0b1x', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSVFDU3kyelNNeUxtbmt0YVpCRzVRbG9oMFhSMXhQMWNySGZDY25VVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753629079),
       ('LZkcb6YIzh1CzhIn5anJt0QeuTdRfxPhJhsypHCP', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZjByS2NEM2szd2ZWTkplZFlsS0NzUjRhVm1XU2hlbWZpQlA2WmQzYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753629999),
       ('M0ONLTNnaYaqNQ8stu0FLnC5Jd9o1YSbTpfHnuSM', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWWl4NUMySFJ5OFdNdXZ0M0phS2VDTjBrRDlwMzhqVUduWEt4VDBhVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753628876),
       ('mgkpTo2GGEhwjlJQb7yKhkaHKns7PKUVqF4dWeoi', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoidkVaaDRxY29XbGtFRDd0dXlnM2RZd291V2tvbnp6ZTJrT1o1NmxDeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753627532),
       ('mqPrVZRryqi4wPBFTlPki5WgezmZrxzXT5pKxBHk', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ1ZQSkNSU3owYXE3aHozdzlqbk1JZ1Iyajc0akk0emk2WHRMVkdwSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLW1hdS1naWFvLTMtNi10dW9pLTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753626998),
       ('msUJbWEM9wjJ87vV55OBGTGuy8iVq7QsIPPNfyXg', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYWdLRHVzc2JMU1pYNVlzMFVsbEl6U1R4YWdCYzlEaFRVOUVhYmw4YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753628325),
       ('n1mvF0UtUeDCS1c39u2e48Go2qSb5JRmy116Hu8X', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUJoR3A4RDFEMnlnYTVsQjlYcFcwaGdiaHhZcVJGWFpDbElHY1lXUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753629079),
       ('NcXOO5RJUNKSqaw2PXtYiRADhxqTG9ApGEIw42vG', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYzYyWHN3QURGNnY3NU55YUFaekxiT09KSUNxR1RiWXpxcW9XOElyZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753628463),
       ('nQAvL1rZrJaWnIiZ3lHN0umhaQfIZGO4GwtNidu5', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiczFTOVZkWFNpczdYVUJ5NXBDaUVTcjhzNlpnWXBsTDQ2WTh3TkpNaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753626871),
       ('nT6PMFZZ5ktOSgV9WKMhELOMDfcg2K7JgB6GVy4E', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSndIbWtDVzFPT1V6cnVkcFg3QnI4TkplQmxQR2czVzAxQTZ1ekxaTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753629294),
       ('nWUMY1ZRv48yJgXnLlFFXwAJDHu1OfzUmwU59Rxo', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoibWxUQVVEVkIwYm1adkFlbnVSNk9DT3FKb29OYTE4S0hyN0JuYUxMYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753631324),
       ('o07Yy4c8LHNUTsccce0dnsOmvbWcAEYxYi7spIUJ', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZW8xSnhEeUhFbU1jSHByVlRKM0JnR25KakpMRU05ckdldVlVTXRGaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753626132),
       ('o0mz2Ta8xT6mr3SaEuuWtwQkQ7IWWk4vA0JUJfIM', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVjNqb3BkN2JNaml1Rmc2U2NaTFhpQ0dRQ21tSWtqOEgxd2hucWZqNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753631324),
       ('OMzkftRlTyF7kWU95nsTKRmNEhSjTBsotD0JNI74', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaFB5QVVmSkxlTjAzd2gzMUJHZ1c0MURSOFZwZ2ZUTHFnVk5JRGlhOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753625518),
       ('On5RKMWyd6DbIvficmhCFLTkbuzLRq12nwayFxvS', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoidFp6NGpFQm94WlluZHFUdUNlRnJ1Ykx5bjJUcUc1Ym9mZjlQZDdldSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753628325),
       ('oNKnDRfxEcBdzcvDwd2eM0l2X3WgDRuPCzE0gNKp', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ2o2VGgxcHpJSkxBOU02bUxvQlJpOXlQZ2NseDB6SWVic1ZsUnI1dyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753631083),
       ('OTP3SM85joXMOzFRdP9ywTv5x2ztZRUjvkgPvuGf', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUVllNFNOb2JsRVFrb3pnazd3S0dVVHhydkFaTnVFWUp3ZlpXbDlWMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY2F0ZWdvcmllcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1753626140),
       ('p0jmZ1OSwefvr9cJzS6LIaq4NQv9VKedHF2e3nFS', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU0ZKTjZ1b215ZEw0VGF3bk54ZVdMekNHMzNSVkVYcFdMN1JzRTVaRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkva25vd2xlZGdlLW5ld3M/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1753628127),
       ('PAXsUleaqJle5oHxXMLvbqq1nnPidTHfqVB09wqj', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGZJZmtuYzdhMm5XVVdvOGhOaE9RS1QzSkpaOHBzZXZQZmdnRTM4RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753628876),
       ('PDL8GL2aPGzAU2m0Iay334AjdP8pfkeVgX71FA6K', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoieE1hY2J5VnZEUzI4ZVhvdWw1N21JZUxybFlGV0o4QWhsMGVRbnRacyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLW1hdS1naWFvLTMtNi10dW9pLTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753625526),
       ('PFRrYsLQTTbdU0mRwyHjm4t9CXJV6R2zxMR8NJUA', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ1pHeGRWWXl4cXl0bDNJSUg1OUQ0OENjaXN5UzhLWjZ6RlZEQXlGMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753626908),
       ('pR2B6n7BJSDwbyVZKJ2kdqMigpmTIsuRoeHOKkyM', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVTljaGhZNGowMEVQRGRXYXBSZEUwZnNsY0xRSWQ5aHRQalBvTnk1TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753629294),
       ('PSfvpdQL36ZL2jh8uJLJZQm1IGAPsE1y0oTqCy7S', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaWV6anpyQTlTanRyTGtYWGY2cU94TEpZMXl3OUlnd0lDcDJ2blBwbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753629999),
       ('qCWEiSLrfgs8E9tTJrv71HxHLC58HOPhoVZiehDr', 1, '127.0.0.1',
        'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36',
        'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZndJMG5GQlhHdjNGMzRlSmJ0U1pwZE90cTN2Uko3N0RQdmhyVkNPYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi90ZWFjaGVycyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==',
        1753631231),
       ('qtFvzXz5hmbCCNBva2RL4UoJ7FCbLjMSsOL4zGh9', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU3l3aGRJdU4yUlFwN2NjanpRRTNBNWNLa1Nic2V0dHdNZDMyNkpJRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753629136),
       ('quj4HjKivQxRS5BnEhNP9T32J9ZZkvfCjCB2l8Ph', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNERGalRuQzFxNkMzYlRlSGJhNUFsZFN6R2J6VkpnQmdUVUU5U2RsTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753630899),
       ('rhs5AUiyzN4KX6OfCGyGRZnrXE3RuzWo8MBSlUPv', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSzZXcUtEVjZlQWozOUo2bW1MYkJ2aWR6c1Jza1NBZE1neXoxYzYyYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753627876),
       ('RsgBFR1zOe2inmWQZBL7mVe0S23KPg6Qi27UjhZM', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMjREaWpBMU16S1Z5eFM4VXNHdEFsMWd3U0NWaUp6blF4ZDNBWmtHcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLXRoY3MtMTEtMTMtdHVvaS0zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1753631626),
       ('s4WbNYCyvwYzyWkZfPS20FYrCW2akby8X06anG5u', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNDNpbVJwUW9HQkZUc3JxTEVBRUllVmV3R0ZQc0I2Qk44aXdVS2FTTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753626137),
       ('sEJlplA283eDHQ4jZuZ9Jk1U8w1SsKnntsP7rcRu', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoicDhkUXhEaFlNRnJMVWQxZXMxZUhqUHNMNDBXZmg5WU50azNBYVJQWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753631311),
       ('sJDUszG8iIUCANgDSbT7GPBTzrYcvs2TwXa3Fgh0', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaWNQSzY4Z0xld2VZbEdRWlo4SVBsY29MSnVxaU1jRzNDQzJWUDluOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753627046),
       ('SrNud451nLlDMTrcjwJiMLzeh4Ne7fGblZcRAKTq', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoidlVmSFpZSXB2ZER4TklyV2JqSFRCNEt0dDcwQjVjOVlBMUF4V3lLUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753627376),
       ('svCzYIndK7VUt44msthMdPxt4r8iy7y39m1ovuhp', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVlR2SVNFU0R2aFRRd1VIeG10MGtwZnh1UmY1UVk1RENya08yOWdyMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753629294),
       ('T5zEQTmqVqTzGGExtShJwJUobFYxGyVh8EWFUsPP', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaVhZcVBXRVlzNk1PbUZBdEt0S1NiOWFzZmZvNmp6dXlNRXNrcjdjNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753629822),
       ('T8Dbx08CjUnymntFEBz8uTWB2fbt3iins4OEwC6q', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaGtpSTZMdnB5cjBMZlNKSkdFSG9VeFJMOFdTQzU5bk1SNkhmNW80TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753629999),
       ('THr8MvbnqLoBJvTORrJjbJ2lKCv2bMbetQk1y4Yr', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZlhwbWNNanU0ZDhaZjBUdUJqMHJpQ003VVdNR1RXNFVUd1d2RzdDNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753629835),
       ('tIkXuszoRi8mcb2PnHFw8fxWSUpEoASpyTMFxcV5', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTXRwNmVRbEp4VzVMNnN2SXBTdWNDZTc1b2Fud1phTnFWelZVczJzcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753628325),
       ('TjiardN0rQwWbhUegUXhKA3PNnjVGr6Qed5s1fzl', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoidUd1M051b3RTZGpuaWppVzB2dFZJbmVEVkZYcGZYRWRhOHR4eFVwWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvcGFyZW50cy1jb3JuZXI/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1753628127),
       ('Tjxb0xITCX80mxtDAczWvcb62bT2bBrHCeinK11y', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0ltZjRXQnpOb2hmdWhIRzl5TWNhOHZBazBkeDF6RnRwN2hHUWRYMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753627768),
       ('Tlt5lIiBbWcMZNF7eoi5k8KBihPbvJ5xENTOzAnN', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoidzF4NU54ZzR0eWZCWTFmTmZveWM4ZjhkSk83UUdqNVdKQkZNeVZXVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753628136),
       ('TUSEpfvnSg70gDKc2Mm1k1qT4yrqqvNorZOFYDhj', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoibFNydE9UaklVaG1ybmIwNlNJcTVDemNOZThqd2xWV3lRcUU2dWY1WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753628136),
       ('TxU4CcxuQVjv2VTqQkhWUdUY4BRWuSVHhfiCAw6C', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGFrTGF0Mm1Gd3ZUbDdJdTdVRjVNNllkbVRRZ3ZQMERBaTcxVkRTbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753628463),
       ('u5ixLKEqkiLZx2bdNIg2UNL6EyMS0w7EcCitLytj', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNXFiSXNKemQzVXcxc1ZkN1hIUmxVcjhHM2FVcUozNTlkcUp0dUREUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1753626998),
       ('UfYHj3zGOQ0moUWR4uqC0XBG6rYE751ZvbQTQja0', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiejFkcFF2S24xVHp0eExNeUJSbTY2WmpmZzZRTW8yajNZUG5XWm1nbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753631311),
       ('uj9i5F3maPqlEK2h8CxtNseAJjLIUWvk4EhEE0In', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoibmJXVGVIQURrTHdpdkprWVNjcGc3ZDJYTGJtT1J3N1plZWd3d005WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753626908),
       ('v7vdt3jgT2j89ulv5PrmiCjP5qwntw9iuyqhmiQU', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoicFNJeDhkdGhCcUpaQlVTdVFSYjhyRG4xZVJKWWJLVHpvWEJNT3JOYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753628876),
       ('VqvBNeMj1xciypLUeiRKjQmxfuW2n2iEvd4tytBG', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUnhVaW94SjV0eGNuUW5xc0psZWdIYzU4bzV3ZXZ4WndoaUxSb1JITCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvZG9jdW1lbnRzP3BhZ2VTaXplPTQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753631642),
       ('WbfpbmQOQ4Mi9nIIE18vXGDQpaE4YxKkAZKNXKQ5', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoicUt3S3pqOWRUdzNlaDdndzNGVm1GTnJ2WkRobnN4QVlSMDFCWnQzbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753629294),
       ('WLRtqVWueHLDIMcaInQjm5T76psMtD0DbViAcDuU', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZHVmcURGNG9VTFNKRURPMFo5SXQwOE5JM3lCU3RtNzVDYXE0U1pmYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753629247),
       ('WTJAlOIm5f6sYGqXOd2LLkaMU7rnGktjpyfcWKV2', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN3JONU9LU1hENjFWcDBuMWdHUWRxa0g4RFBHU2dON3A0UWl1aGM2QSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753627256),
       ('wwmB7QdJAAVVHxpJqHTcFT4qV56YkVS9EJOucUAg', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTktCOGRYOFRJMkpQSnBBZ0V1aXRrU1JXWnB6YWsxMW54UWNUV29xRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753627546),
       ('x6oaaL0jxytjPJPR7lI6z3FZuiP8J35clHkWDV4Z', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoidG9yYWhOZjRJTlJoMGFGVVBVNEJIaGhDYjdHalozc2huNWJnOXlhUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753631633),
       ('xAz8Vg9yWxjiRYP2XjKW55eDjyFbknqQ0n15OJtU', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZFFtdDBxU0NxVWh2dDNEaTlsQXo1Y2RLUndsN3RDSklmZjVhc1ZoNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753629136),
       ('xGpVxbKT2nhOD9ClDXkNB3jEgLEih5A3zkzovbwN', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVVBYb3ZzNmswZ1kxR3VhbVlTOFlnNUdXWTJyMjRDWmF2UHM0TE9HOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753629136),
       ('XjAYSZtAHJF0ptUD9csTATz91Fh3Rz21zcbTlyNf', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUd4ekxJT2YzREh1em9LbzBxT0t4OFphRUR6WXdkMmRxRE10c1VsVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753629648),
       ('XJns2GwMvQpJ1ZbuPB3uYBmsoeK3gzrr4E3Es7d5', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmNCQVdOdEw4U2lmYXU4Y253bDc2QXY4OHk3R2NjM0dCZU9XWXZUUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753627532),
       ('xMFexJPDjOvOBMQ4pCP1ToQrKSU0YytorHuiucRE', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMXc5akxSWlZsajJ2ZWkzYUZmYU9HUmdpaEx6b204a3IyYXJwdGRIQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753628778),
       ('yb647ZaCC5ajKaRaMmxKOwFxElvGKkJ9YpD65woi', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTnEwbEc0cDRiaGFPZjBTMU0wcVJhZ3hWamtoaE56bVhYWWR5UnY4SiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvZG9jdW1lbnRzP3BhZ2VTaXplPTQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753625445),
       ('Ycdnw0pRGD4zSEeT8BIvyPeWPb4U6euxVChfTwpP', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoidW5NTXV1cUZNbElHRUxiaUhKRW5YZ1JkQngzU0V0N0owOFlHclVZNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753626908),
       ('yW1hH0SnfnerBOEkQtez1ZLxpvDQu073GidhZWrF', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVFk4U1JBMDdRWm9yY1BQV3VJNzFvNVFtS3RyWHQyeno3QVpuN0U2RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753626908),
       ('ZaTpKyH6dVnuCVijcpz9Evcy1ax6pU9Dv4drNLp4', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRU5RRDJyZDdqWTMzOXhWTzdLZDhXQ3M2VTF3aEw5Sm1ONVZRVWNVQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753631324),
       ('Zd5TX72ZONCacZBUeaYDZQKVBUFsdwd7MRfURCFW', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZEFJUndBR284Zmx3SGswdElXQU5iSTkwNkhyMnFoUGx5WlhMclEwRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753627256),
       ('zEGXE5hauT5iKHoXPJbaiv9LuynoQiBgHWe2TP51', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRlp1d1REdUtqVVczeVRGZFIySmlQd0gzcVVWMGVUcEhUQ0J3UWQyNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753629247),
       ('zL69yfW13POCBg15Bb2MXrzZZmv5On6uYSFjd0OK', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYnJ2NTJ6YWxqaVVnQWI5eFlnSlBmd2lrSXNLNUFtdnFTOTYwR1d4WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753628126),
       ('zoyayySdqVY8rIVXJl3IzOd1q1r2ZRGCt0aGueZX', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoicmRJYkZLZHZWOGJKUGF5YjZjbjVXZjFBODRiMm94cGVXN1FrYjU5RCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753628778),
       ('ZQqi35jqCRJQ46IylfMBOVSH8Fkau9v7xJrWmucM', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSkJGeUx3akdhbXhGWHdlMGJ2QVJ2MDJueXhlT2FXc0tEOEFNQ0J6dCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753626908),
       ('ZUseDJGCuKpsDXoABUPZEibPg3XRSuE2WXXno5Vo', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMFFueGN2bFAxMG81eFpEdW9pTHJIUmZLODh4UVNmcGJDRWg1bERLYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753629247),
       ('zv8rlDj0YlXY39LA01UEHR2tjp3hTaPaCg9IPxyl', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRU1hMkJaU2V4elRjbGxEYnh2enRHbmg2UXFSM2d6Sk1ORHZicTFCRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0yJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1753631241);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers`
(
    `id`             bigint unsigned NOT NULL AUTO_INCREMENT,
    `priority`       int                                     NOT NULL DEFAULT '99',
    `full_name`      varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `role`           varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `qualifications` text COLLATE utf8mb4_unicode_ci         NOT NULL,
    `avatar`         varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `slug`           varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `facebook`       varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `email`          varchar(50) COLLATE utf8mb4_unicode_ci  NOT NULL,
    `description`    longtext COLLATE utf8mb4_unicode_ci,
    `created_at`     timestamp NULL DEFAULT NULL,
    `updated_at`     timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `teachers_slug_unique` (`slug`),
    UNIQUE KEY `teachers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK
TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers`
VALUES (1, 1, 'Thầy giáo JASON TYLER REILLY', 'Quốc tịch Mỹ',
        'Trình độ: Cử nhân khoa học giáo dục Đại Học Wisconsin - Madison -  Mỹ, Chứng chỉ giảng dạy Quốc tế tại Đại Học Wisconsin - Madison, Gần 10 năm kinh nghiệm giảng dạy các độ tuổi mầm non và tiểu học',
        '/userfiles/images/teachers/Screenshot%20from%202025-07-27%2022-38-18.png', 'thay-giao-jason-tyler-reilly-1',
        'https://facebook.com/auenglish', 'chu.kiem@example.net',
        '<h3>Kinh nghiệm giảng dạy</h3><p>Với hơn 5 năm kinh nghiệm giảng dạy, thầy/cô đã giúp đỡ hàng trăm học viên cải thiện trình độ tiếng Anh và đạt được mục tiêu học tập. Phương pháp giảng dạy tập trung vào sự tương tác và truyền cảm hứng cho học viên.</p>',
        '2025-07-21 03:53:45', '2025-07-27 15:41:35'),
       (2, 2, 'Thầy giáo ELLIS JOHN WARD', 'Quốc tịch Anh',
        'Trình độ: Cử nhân sư phạm Ngôn Ngữ Anh tại Đại học Leicester Anh Quốc, Chứng chỉ giảng dạy Quốc tế tại Anh Quốc',
        '/userfiles/images/teachers/Screenshot%20from%202025-07-27%2022-42-24.png', 'thay-giao-ellis-john-ward-2',
        'https://facebook.com/auenglish', 'nghia.khau@example.org',
        '<h3>Kinh nghiệm giảng dạy</h3><p>Với hơn 5 năm kinh nghiệm giảng dạy, thầy/cô đã giúp đỡ hàng trăm học viên cải thiện trình độ tiếng Anh và đạt được mục tiêu học tập. Phương pháp giảng dạy tập trung vào sự tương tác và truyền cảm hứng cho học viên.</p>',
        '2025-07-21 03:53:45', '2025-07-27 15:43:43'),
       (3, 3, 'Thầy giáo JACOB ADAM MCDONNELL', 'Quốc tịch Anh',
        'Trình độ: Thạc sĩ kĩ thuật chuyên nghành hàng không - Anh Quốc, Chứng chỉ giảng dạy Quốc tế tại Anh Quốc',
        '/userfiles/images/teachers/Screenshot%20from%202025-07-27%2022-44-00.png', 'thay-giao-jacob-adam-mcdonnell-3',
        'https://facebook.com/auenglish', 'thy68@example.org',
        '<h3>Kinh nghiệm giảng dạy</h3><p>Với hơn 5 năm kinh nghiệm giảng dạy, thầy/cô đã giúp đỡ hàng trăm học viên cải thiện trình độ tiếng Anh và đạt được mục tiêu học tập. Phương pháp giảng dạy tập trung vào sự tương tác và truyền cảm hứng cho học viên.</p>',
        '2025-07-21 03:53:45', '2025-07-27 15:44:41'),
       (4, 4, 'Thầy giáo Jai Kattenberg', 'Quốc tịch Úc',
        'Trình độ: Cử nhân nghệ thuật Đại học Griffith -Úc , Chứng chỉ giảng dạy Quốc tế , Kinh nghiệm dạy các độ tuổi: 3 năm dạy các độ tuổi mầm non - tiểu học - THCS',
        '/userfiles/images/teachers/Screenshot%20from%202025-07-27%2022-45-43.png', 'thay-giao-jai-kattenberg-4',
        'https://facebook.com/auenglish', 'aubacgiang@gmail.com', NULL, '2025-07-27 15:47:11', '2025-07-27 15:47:11');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `trainings`
--

DROP TABLE IF EXISTS `trainings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trainings`
(
    `id`                  bigint unsigned NOT NULL AUTO_INCREMENT,
    `priority`            int                                     NOT NULL DEFAULT '99',
    `slug`                varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `title`               varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `age`                 varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `description`         longtext COLLATE utf8mb4_unicode_ci     NOT NULL,
    `thumbnail`           varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `duration`            varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `outcome`             varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `method`              varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `speaking`            text COLLATE utf8mb4_unicode_ci         NOT NULL,
    `listening`           text COLLATE utf8mb4_unicode_ci         NOT NULL,
    `reading`             text COLLATE utf8mb4_unicode_ci         NOT NULL,
    `writing`             text COLLATE utf8mb4_unicode_ci         NOT NULL,
    `content`             longtext COLLATE utf8mb4_unicode_ci,
    `images`              text COLLATE utf8mb4_unicode_ci,
    `curriculum`          longtext COLLATE utf8mb4_unicode_ci,
    `youtube_review_link` text COLLATE utf8mb4_unicode_ci,
    `created_at`          timestamp NULL DEFAULT NULL,
    `updated_at`          timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `trainings_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainings`
--

LOCK
TABLES `trainings` WRITE;
/*!40000 ALTER TABLE `trainings` DISABLE KEYS */;
INSERT INTO `trainings`
VALUES (1, 1, 'tieng-anh-mau-giao-3-6-tuoi-1', 'Tiếng Anh Mẫu giáo (3 - 6 tuổi)', '3 - 6 tuổi',
        'Giai đoạn vàng để con bắt đầu học ngôn ngữ mới. Chương trình giúp con tiếp cận tiếng Anh một cách tự nhiên, vui vẻ và hiệu quả, tạo nền tảng vững chắc cho tương lai.',
        '/userfiles/images/R5AT3881.jpg', '6 tháng',
        'Phát âm đúng theo phương pháp ngữ âm quốc tế | Nhận biết và đánh vần lưu loát | Giao tiếp tự tin ngay từ những năm đầu học',
        'Học trực tuyến',
        'Luyện phát âm chuẩn theo bảng ngữ âm quốc tế (phonics), tập phản xạ giao tiếp qua các bài hát và trò chơi.',
        'Nghe và nhận biết các âm, từ vựng quen thuộc thông qua các câu chuyện, bài hát và khẩu lệnh của giáo viên bản xứ.',
        'Làm quen với mặt chữ, nhận biết các từ đơn giản qua thẻ từ (flashcards) và các câu chuyện hình ảnh sinh động.',
        'Tập tô chữ, sao chép các chữ cái và từ vựng đơn giản, bước đầu hình thành kỹ năng cầm bút và nhận diện chữ viết.',
        '<!-- Nội dung cho CKEditor --><h1><strong>CHƯƠNG TRÌNH TIẾNG ANH MẪU GIÁO AU</strong></h1><h2> </h2><h2><strong>Nắm bắt độ tuổi vàng</strong></h2><p><strong>3-6 tuổi</strong> là thời kỳ <strong>\\\"vàng\\\"</strong> để con bắt đầu học một ngôn ngữ mới. Cơ hội này chỉ đến một lần trong cuộc đời, bỏ lỡ giai đoạn then chốt này, con sẽ khó đạt tới độ phát triển ngôn ngữ tối ưu và toàn diện.</p><p> </p><h2><strong>Điểm nổi bật của chương trình</strong></h2><ol><li><strong>Tập trung nghe – nói:</strong> Giúp con phản xạ nhanh với ngôn ngữ và phát âm chuẩn bản xứ từ nhỏ. <strong>Tiếng Anh mẫu giáo của AU là chương trình ngữ âm tiếng Anh 5 cấp độ</strong>, phù hợp với trẻ từ 3 đến 6 tuổi. Chương trình giúp trẻ làm quen và thành thạo <strong>44 âm trong tiếng Anh</strong> thông qua các hoạt động tương tác như <strong>bài hát, trò chơi và câu đố</strong>.</li><li><strong>Học vui vẻ, hiệu quả:</strong> Chương trình sử dụng <strong>hình ảnh sinh động, trò chơi, bài hát và hoạt động tương tác</strong>, giúp trẻ học tập một cách vui vẻ và hiệu quả. Qua mỗi cấp độ, trẻ dần phát triển kỹ năng ngôn ngữ và <strong>tự tin sử dụng tiếng Anh trong giao tiếp hàng ngày</strong>.</li><li><strong>Tiếp cận tự nhiên:</strong> Chương trình giúp trẻ tiếp cận tiếng Anh một cách tự nhiên thông qua <strong>phương pháp ngữ âm hiện đại</strong>. Trẻ sẽ được làm quen với âm chữ cái, ghép vần và phát âm chuẩn ngay từ những năm đầu đời, tạo <strong>nền tảng vững chắc cho kỹ năng đọc và viết</strong>.</li></ol><h2> </h2><h2><strong>Lợi ích chương trình mang lại</strong></h2><ul><li><strong>Phát âm đúng</strong> theo phương pháp ngữ âm quốc tế</li><li><strong>Nhận biết và đánh vần</strong> lưu loát</li><li><strong>Phát triển kỹ năng đọc và viết</strong> từ sớm</li><li><strong>Giao tiếp tự tin</strong> ngay từ những năm đầu học tiếng Anh</li></ul><p> </p><h2> </h2><h2><strong>KẾT LUẬN</strong></h2><p><strong>Chương trình Tiếng Anh mẫu giáo AU</strong> là lựa chọn hoàn hảo để con bạn khởi đầu hành trình chinh phục tiếng Anh một cách <strong>tự nhiên, vui vẻ và hiệu quả</strong>!</p>',
        '[\"\\/userfiles\\/images\\/R5AT3893.jpg\",\"\\/userfiles\\/images\\/R5AT3881.jpg\",\"\\/userfiles\\/images\\/R5AT3884.jpg\"]',
        '[]', 'https://youtu.be/fXXcJJENN9U', '2025-07-21 03:53:45', '2025-07-21 06:48:01'),
       (2, 2, 'tieng-anh-tieu-hoc-6-11-tuoi-2', 'Tiếng Anh Tiểu học (6 - 11 tuổi)', '6 - 11 tuổi',
        'Tiếng Anh không chỉ là điểm số, mà là kỹ năng sống. Chương trình cung cấp một lộ trình rõ ràng, bài bản, giúp con tự tin giao tiếp và đạt kết quả cao trong học tập.',
        '/userfiles/images/R5AT3898.jpg', '3 tháng',
        'Tự tin giao tiếp với giáo viên bản xứ | Nắm vững ngữ pháp và từ vựng theo chuẩn Cambridge | Cải thiện điểm số trên lớp',
        'Học trực tuyến',
        'Thực hành nói về các chủ đề quen thuộc như gia đình, trường học, sở thích. Học cách diễn đạt suy nghĩ mạch lạc và tự nhiên.',
        'Luyện nghe hiểu các đoạn hội thoại, câu chuyện dài hơn và nắm bắt ý chính, chi tiết quan trọng trong bài.',
        'Phát triển kỹ năng đọc hiểu văn bản, truyện ngắn, và trả lời các câu hỏi liên quan đến nội dung đã đọc để củng cố từ vựng.',
        'Học cách viết câu hoàn chỉnh, các đoạn văn ngắn mô tả về bản thân, gia đình và các sự vật, hiện tượng xung quanh.',
        '<h1><strong>KHOÁ HỌC TIẾNG ANH TIỂU HỌC AU</strong></h1><br><h2><strong>Tại sao con cần học Tiếng Anh bài bản ở giai đoạn tiểu học?</strong></h2><p>Giai đoạn con học tiểu học, <strong>Tiếng Anh không chỉ là điểm số, mà là kỹ năng sống</strong>. Phụ huynh cần một lộ trình rõ ràng, đo lường được sự tiến bộ thực sự.</p><br><p>Con cần một <strong>môi trường học tập bài bản, hiệu quả</strong> xứng đáng với sự đầu tư.</p><br><br><h1><strong>ĐẶC ĐIỂM ĐẶC BIỆT CỦA KHOÁ HỌC</strong></h1><br><h2><strong>1. 100% CON HỌC VỚI GIÁO VIÊN NƯỚC NGOÀI</strong></h2><p>Chương trình tập trung vào <strong>phát triển kỹ năng giao tiếp thực tế</strong>, giúp trẻ tự tin nói tiếng Anh ngay từ những buổi học đầu tiên.</p><br><p>Với sự hướng dẫn của <strong>giáo viên bản xứ và trợ giảng tận tâm</strong>, trẻ sẽ được thực hành phát âm chuẩn, học cách diễn đạt suy nghĩ mạch lạc và thể hiện bản thân bằng tiếng Anh một cách tự nhiên nhất.</p><br><br><h2><strong>2. CHƯƠNG TRÌNH HỌC TẬP TÍCH HỢP</strong></h2><p>Tại AU, các em được học song song theo <strong>lộ trình tiếng Anh học thuật bài bản</strong>, bám sát khung chương trình <strong>Cambridge do Nhà xuất bản Đại học Oxford phát triển</strong>.</p><br><p>Bên cạnh đó, AU đặc biệt chú trọng hỗ trợ học sinh nâng cao kết quả học tập tại trường thông qua <strong>các buổi học ngữ pháp bổ trợ miễn phí</strong>, giúp củng cố kiến thức, cải thiện điểm số và tăng sự tự tin trong lớp học chính khóa.</p><br><br><h2><strong>3. LỘ TRÌNH HOÁ CÁ NHÂN</strong></h2><p>Với <strong>lộ trình hoá cá nhân theo khả năng của con</strong> và hệ thống đánh giá kép. Con được điều chỉnh kịp thời nhờ được <strong>đánh giá liên tục</strong>.</p><br><p><strong>Bố mẹ biết chính xác con đang ở đâu, mạnh gì – yếu gì</strong> qua báo cáo chi tiết định kỳ.</p><br><br><h2><strong>4. HỆ THỐNG HỌC LIỆU TOÀN DIỆN</strong></h2><p><strong>Hệ thống giao bài tập online</strong> trên nền tảng trực tuyến của <strong>nhà xuất bản Đại học Oxford</strong> giúp con hào hứng và tiến bộ nhanh trong học tập.</p><br><p>Bên cạnh đó, <strong>Phụ huynh cũng dễ dàng theo dõi điểm số và lộ trình học</strong> của con hơn khi điểm số được chấm tự động trên nền tảng.</p><br><br><hr><br><h2><strong>KẾT LUẬN</strong></h2><p><strong>Khoá học Tiếng Anh Tiểu học AU</strong> mang đến cho con một hành trình học tập <strong>chuyên nghiệp, hiệu quả và đầy thú vị</strong>, giúp con tự tin chinh phục tiếng Anh và chuẩn bị tốt nhất ch',
        '[\"\\/userfiles\\/images\\/R5AT3879.jpg\",\"\\/userfiles\\/images\\/R5AT3894.jpg\",\"\\/userfiles\\/images\\/R5AT3884.jpg\"]',
        '[{\"module\":\"N\\u1ed9i dung h\\u1ecdc ph\\u1ea7n m\\u1eabu\",\"content\":\"H\\u1ecdc ph\\u1ea7n 1: My Family and Friends. H\\u1ecdc vi\\u00ean h\\u1ecdc c\\u00e1ch gi\\u1edbi thi\\u1ec7u v\\u1ec1 c\\u00e1c th\\u00e0nh vi\\u00ean trong gia \\u0111\\u00ecnh, b\\u1ea1n b\\u00e8. Th\\u1ef1c h\\u00e0nh \\u0111\\u1eb7t c\\u00e2u h\\u1ecfi v\\u00e0 tr\\u1ea3 l\\u1eddi v\\u1ec1 tu\\u1ed5i t\\u00e1c, ngh\\u1ec1 nghi\\u1ec7p, s\\u1edf th\\u00edch b\\u1eb1ng c\\u00e1c c\\u1ea5u tr\\u00fac c\\u00e2u \\u0111\\u01a1n gi\\u1ea3n v\\u00e0 th\\u00f4ng d\\u1ee5ng.\"}]',
        'https://youtu.be/fXXcJJENN9U', '2025-07-21 03:53:45', '2025-07-21 03:53:45'),
       (3, 3, 'tieng-anh-thcs-11-13-tuoi-3', 'Tiếng Anh THCS (11 - 13 tuổi)', '11 - 13 tuổi',
        'Lộ trình tối ưu giúp học sinh xây dựng nền tảng tiếng Anh học thuật vững chắc, sẵn sàng chinh phục các kỳ thi quan trọng như IELTS ở bậc THPT.',
        '/userfiles/images/R5AT3898.jpg', '6 tháng',
        'Nền tảng Ngữ pháp - Từ vựng học thuật vững chắc | Thành thạo 4 kỹ năng Nghe - Nói - Đọc - Viết | Đạt trình độ tương đương B1-B2 Cambridge',
        'Học tại trung tâm',
        'Rèn luyện kỹ năng tranh biện, thuyết trình về các chủ đề xã hội và học thuật, phát triển tư duy phản biện bằng tiếng Anh.',
        'Luyện nghe các bài giảng, tin tức và hội thoại phức tạp, tập kỹ năng ghi chú (note-taking) và tóm tắt thông tin nghe được.',
        'Đọc hiểu các bài báo, văn bản học thuật, phân tích và suy luận để tìm ra ý chính, thông tin ẩn và quan điểm của tác giả.',
        'Thực hành viết các đoạn văn nghị luận, email trang trọng và các bài luận ngắn theo cấu trúc chuẩn (mở bài, thân bài, kết luận).',
        '<h1><strong>LỘ TRÌNH TỐI ƯU DÀNH CHO HỌC SINH THCS</strong></h1><h2><strong>Sẵn sàng chinh phục IELTS ở bậc THPT</strong></h2><br><h2><strong>Tại sao giai đoạn THCS lại quan trọng?</strong></h2><p>Giai đoạn học THCS <strong>(từ lớp 6 đến lớp 9)</strong> là thời điểm quan trọng để học sinh <strong>xây dựng nền tảng tiếng Anh vững chắc</strong>, chuẩn bị cho các mục tiêu học thuật cao hơn như <strong>IELTS ở cấp 3</strong>.</p><br><p>Tại <strong>AU Bắc Giang</strong>, chương trình học dành cho học sinh THCS được thiết kế với định hướng <strong>tối đa hoá năng lực</strong>, phát triển đều cả về kiến thức, kỹ năng và tư duy ngôn ngữ.</p><br><br><h1><strong>CÁC ĐẶC ĐIỂM NỔI BẬT CỦA LỘ TRÌNH</strong></h1><br><h2><strong>1. Xây nền tảng học thuật vững chắc</strong></h2><p><strong>Hệ thống từ vựng – ngữ pháp – phát âm</strong> được củng cố sâu, giúp học sinh hiểu rõ bản chất ngôn ngữ và ứng dụng thành thạo.</p><br><br><h2><strong>2. Phát triển toàn diện 4 kỹ năng (Nghe – Nói – Đọc – Viết)</strong></h2><p>Thông qua <strong>các chủ đề học thuật và tình huống thực tế</strong>, học sinh được rèn luyện đầy đủ kỹ năng, tạo nền tảng chuyển tiếp mượt mà lên <strong>chương trình IELTS</strong>.</p><br><br><h2><strong>3. Lồng ghép chiến lược làm bài IELTS từ sớm</strong></h2><p><strong>Các dạng bài đọc hiểu, viết luận và kỹ năng phản xạ</strong> được giới thiệu từng bước, giúp học sinh làm quen dần với cách tư duy và cấu trúc bài thi.</p><br><br><h2><strong>4. Học tập theo cấp độ Cambridge – Chuẩn hoá trình độ</strong></h2><p>Chương trình học được thiết kế theo <strong>hệ thống CEFR (A2–B1–B2)</strong>, giúp học sinh xác định rõ mục tiêu và theo dõi được tiến độ phát triển của bản thân.</p><br><br><h2><strong>5. Luyện phản xạ giao tiếp – Tư duy tiếng Anh</strong></h2><p><strong>Giáo viên nước ngoài đồng hành</strong> trong các buổi speaking chuyên biệt, giúp học sinh tự tin nói tiếng Anh và <strong>tư duy bằng tiếng Anh</strong> ngay từ giai đoạn THCS.</p><br><br><h2><strong>6. Theo dõi sát sao – Phản hồi kịp thời</strong></h2><p>Mỗi học sinh đều được <strong>theo dõi tiến độ cá nhân</strong>, nhận phản hồi thường xuyên từ giáo viên để kịp thời điều chỉnh phương pháp học phù hợp.</p><br><br><hr><br><h2><strong>KẾT LUẬN</strong></h2><p><strong>Lộ trình Tiếng Anh THCS tại AU Bắc Giang</strong> là sự chuẩn bị hoàn hảo giúp con <strong>tự tin bước vào chương trình IELTS ở cấp THPT</strong>, với nền tảng vững chắc và phương pháp học hiệu quả!</p>',
        '[\"\\/userfiles\\/images\\/R5AT3879.jpg\",\"\\/userfiles\\/images\\/R5AT3898.jpg\",\"\\/userfiles\\/images\\/R5AT3881.jpg\"]',
        '[{\"module\":\"N\\u1ed9i dung h\\u1ecdc ph\\u1ea7n m\\u1eabu\",\"content\":\"H\\u1ecdc ph\\u1ea7n 1: Academic Skills Focus. R\\u00e8n luy\\u1ec7n k\\u1ef9 n\\u0103ng \\u0111\\u1ecdc l\\u01b0\\u1edbt (skimming) v\\u00e0 \\u0111\\u1ecdc qu\\u00e9t (scanning) qua c\\u00e1c b\\u00e0i \\u0111\\u1ecdc v\\u1ec1 ch\\u1ee7 \\u0111\\u1ec1 m\\u00f4i tr\\u01b0\\u1eddng. H\\u1ecdc c\\u00e1ch vi\\u1ebft m\\u1ed9t \\u0111o\\u1ea1n v\\u0103n n\\u00eau quan \\u0111i\\u1ec3m v\\u1edbi c\\u1ea5u tr\\u00fac 3 ph\\u1ea7n r\\u00f5 r\\u00e0ng.\"}]',
        'https://youtu.be/fXXcJJENN9U', '2025-07-21 03:53:45', '2025-07-21 03:53:45');
/*!40000 ALTER TABLE `trainings` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users`
(
    `id`                bigint unsigned NOT NULL AUTO_INCREMENT,
    `name`              varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `email`             varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `email_verified_at` timestamp NULL DEFAULT NULL,
    `password`          varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `remember_token`    varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `created_at`        timestamp NULL DEFAULT NULL,
    `updated_at`        timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK
TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users`
VALUES (1, 'root', 'root@gmail.com', NULL, '$2y$12$7VShZqlP2Pm0xmM6yzZEceNKJeOYDxNGDEWopA97BBQd30oHqZ8mO',
        'rB7bVF443il2gYRdNDzHZF4A22CUMfx8xEhCvERsv5ZstGTkIQqDTUUQRX8f', NULL, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK
TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-27 22:59:41
