CREATE
DATABASE  IF NOT EXISTS `db_english_center` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK
TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories`
VALUES (1, 'Kiến thức và kinh nghiệm', 'kien-thuc-va-kinh-nghiem-1', 5, '2025-07-21 03:53:45', '2025-07-21 03:53:45'),
       (2, 'Tin tức', 'tin-tuc-2', 6, '2025-08-04 09:57:45', '2025-08-04 09:57:45');
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
    `phone`      varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
    `hotline`    varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `email`      varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `zalo`       varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
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
        '[{\"address\":\"AU L\\u1ea1ng Giang: S\\u1ed1 50.51 khu HDB, t\\u1ed5 d\\u00e2n ph\\u1ed1 To\\u00e0n M\\u1ef9, x\\u00e3 L\\u1ea1ng Giang, t\\u1ec9nh B\\u1eafc Giang.\",\"googlemap\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3715.481839542269!2d106.22817431051976!3d21.370924280283436!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31356bc73070c9b3%3A0x7d43afddc5504ba1!2zQ8O0bmcgVHkgVE5ISCBN4buZdCBUaMOgbmggVmnDqm4gVMawIFbhuqVuIFbDoCBYw6J5IEThu7FuZyBUb8OgbiBN4bu5!5e0!3m2!1svi!2s!4v1754303261818!5m2!1svi!2s\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\"},{\"address\":\"AU B\\u1eafc Giang: T\\u1ea7ng 1, nh\\u00e0 B, k\\u00ed t\\u00fac x\\u00e1 sinh vi\\u00ean, \\u0111\\u01b0\\u1eddng Ho\\u00e0ng V\\u0103n Th\\u1ee5, ph\\u01b0\\u1eddng B\\u1eafc Giang, t\\u1ec9nh B\\u1eafc Giang\",\"googlemap\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3717.6938145474705!2d106.21017691051715!3d21.283584280348666!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31356da5c23132b3%3A0xb9acbbfb694a6a4a!2zS8O9IHTDumMgeMOhIFNpbmggdmnDqm4gQuG6r2MgR2lhbmc!5e0!3m2!1svi!2s!4v1754303286922!5m2!1svi!2s\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\"}]',
        '0979798426', '0979798426 - 0868234966', 'aubacgiang@gmail.com', '0962435369', 'https://web.facebook.com',
        '2025-08-04 01:54:47', '2025-08-04 10:28:35');
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
        '{\"title\":\"Kh\\u01a1i d\\u1eady ti\\u1ec1m n\\u0103ng, v\\u1eefng b\\u01b0\\u1edbc t\\u01b0\\u01a1ng lai c\\u00f9ng AU English\",\"description\":\"M\\u00f4i tr\\u01b0\\u1eddng h\\u1ecdc t\\u1eadp chu\\u1ea9n qu\\u1ed1c t\\u1ebf, gi\\u00fap con t\\u1ef1 tin giao ti\\u1ebfp v\\u00e0 chinh ph\\u1ee5c c\\u00e1c k\\u1ef3 thi.\",\"images\":[\"\\/userfiles\\/images\\/home\\/ANH%20TRANG%20CHU.jpg\",\"\\/userfiles\\/images\\/home\\/491417692_1256480809817417_4821618544474045259_n.jpg\",\"\\/userfiles\\/images\\/home\\/DSC04324.jpg\",\"\\/userfiles\\/images\\/home\\/R5AT0512.jpg\",\"\\/userfiles\\/images\\/home\\/R5AT4278.jpg\",\"\\/userfiles\\/images\\/home\\/R5AT4246.jpg\",\"\\/userfiles\\/images\\/home\\/R5AT4176.jpg\",\"\\/userfiles\\/images\\/home\\/z5581456363302_b57dac4162e102d9e48ad685e3c2334b.jpg\",\"\\/userfiles\\/images\\/home\\/z5581592846335_1c090589e126117b71c3760cf42f7908.jpg\"]}',
        '[{\"value\":\"10\",\"description\":\"N\\u0103m kinh nghi\\u1ec7m\",\"images\":\"\\/userfiles\\/images\\/R5AT4219.jpg\"},{\"value\":\"30\",\"description\":\"Gi\\u00e1o vi\\u00ean \\u01b0u t\\u00fa\",\"images\":\"\\/userfiles\\/images\\/R5AT4222.jpg\"}]',
        '[{\"question\":\"Trung t\\u00e2m c\\u00f3 l\\u1edbp h\\u1ecdc th\\u1eed mi\\u1ec5n ph\\u00ed kh\\u00f4ng?\",\"answer\":\"C\\u00f3, ch\\u00fang t\\u00f4i c\\u00f3 c\\u00e1c bu\\u1ed5i h\\u1ecdc th\\u1eed \\u0111\\u1ecbnh k\\u1ef3. Vui l\\u00f2ng \\u0111\\u1ec3 l\\u1ea1i th\\u00f4ng tin \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c t\\u01b0 v\\u1ea5n l\\u1ecbch h\\u1ecdc g\\u1ea7n nh\\u1ea5t.\"},{\"question\":\"L\\u1ed9 tr\\u00ecnh h\\u1ecdc cho b\\u00e9 \\u0111\\u01b0\\u1ee3c x\\u00e2y d\\u1ef1ng nh\\u01b0 th\\u1ebf n\\u00e0o?\",\"answer\":\"M\\u1ed7i h\\u1ecdc vi\\u00ean s\\u1ebd \\u0111\\u01b0\\u1ee3c ki\\u1ec3m tra \\u0111\\u1ea7u v\\u00e0o v\\u00e0 t\\u01b0 v\\u1ea5n l\\u1ed9 tr\\u00ecnh c\\u00e1 nh\\u00e2n h\\u00f3a \\u0111\\u1ec3 \\u0111\\u1ea3m b\\u1ea3o hi\\u1ec7u qu\\u1ea3 h\\u1ecdc t\\u1eadp t\\u1ed1t nh\\u1ea5t.\"},{\"question\":\"\\u0110\\u1ed9i ng\\u0169 gi\\u00e1o vi\\u00ean c\\u1ee7a trung t\\u00e2m c\\u00f3 tr\\u00ecnh \\u0111\\u1ed9 nh\\u01b0 th\\u1ebf n\\u00e0o?\",\"answer\":\"100% gi\\u00e1o vi\\u00ean t\\u1ea1i AU English c\\u00f3 b\\u1eb1ng c\\u1ea5p s\\u01b0 ph\\u1ea1m, ch\\u1ee9ng ch\\u1ec9 gi\\u1ea3ng d\\u1ea1y qu\\u1ed1c t\\u1ebf (TESOL\\/IELTS) v\\u00e0 nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m.\"}]',
        '[\"\\/userfiles\\/images\\/home\\/491417692_1256480809817417_4821618544474045259_n.jpg\",\"\\/userfiles\\/images\\/home\\/ANH%20TRANG%20CHU.jpg\",\"\\/userfiles\\/images\\/home\\/DSC04324.jpg\",\"\\/userfiles\\/images\\/home\\/R5AT0512.jpg\",\"\\/userfiles\\/images\\/home\\/R5AT4027.jpg\",\"\\/userfiles\\/images\\/home\\/R5AT4176.jpg\",\"\\/userfiles\\/images\\/home\\/R5AT4246.jpg\",\"\\/userfiles\\/images\\/home\\/R5AT4278.jpg\",\"\\/userfiles\\/images\\/home\\/z5581456363302_b57dac4162e102d9e48ad685e3c2334b.jpg\",\"\\/userfiles\\/images\\/home\\/z5581592846335_1c090589e126117b71c3760cf42f7908.jpg\"]',
        '[\"https:\\/\\/www.youtube.com\\/watch?v=MjD-vIFhkOU\",\"https:\\/\\/www.youtube.com\\/watch?v=MeBtmLRtUoQ\",\"https:\\/\\/www.youtube.com\\/watch?v=IlAw2WBLlxg\",\"https:\\/\\/www.youtube.com\\/watch?v=-ru1Qs4PNeA\"]',
        '2025-08-04 01:54:47', '2025-08-04 10:17:36');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK
TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus`
VALUES (2, 'Tin tức & Sự kiện', '/news', 2, NULL, '2025-07-27 14:09:34', '2025-07-28 02:21:26'),
       (3, 'Chương trình học', '/training', 3, NULL, '2025-07-27 14:10:00', '2025-07-28 02:22:26'),
       (7, 'Tiếng Anh Mẫu giáo', '/training/tieng-anh-mau-giao-3-6-tuoi-1', 1, 3, '2025-07-27 14:23:40',
        '2025-08-04 10:04:35'),
       (8, 'Tiếng Anh Tiểu học', '/training/tieng-anh-tieu-hoc-6-11-tuoi-2', 2, 3, '2025-07-27 14:25:13',
        '2025-08-04 10:04:53'),
       (9, 'Tiếng Anh THCS', '/training/tieng-anh-thcs-11-13-tuoi-3', 3, 3, '2025-07-27 14:25:36',
        '2025-08-04 10:05:07'),
       (10, 'Kiến thức và kinh nghiệm', '/category/kien-thuc-va-kinh-nghiem-1', 1, 2, '2025-07-27 14:26:06',
        '2025-08-04 10:04:17'),
       (11, 'Tin tức', '/category/tin-tuc-2', 2, 2, '2025-08-04 10:03:30', '2025-08-04 10:03:54'),
       (12, 'Chương trình Bán Trú hè', '/training/chuong-trinh-ban-tru-he-4', 4, 3, '2025-08-04 10:05:37',
        '2025-08-04 10:05:37'),
       (13, 'Tiếng Anh Doanh Nghiệp', '/training/tieng-anh-doanh-nghiep-5', 5, 3, '2025-08-04 10:06:03',
        '2025-08-04 10:06:03');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
       (4, 'dua-con-den-hoc-tai-trung-tam-phu-huynh-can-lam-gi-de-khong-tien-mat-tat-mang-4',
        'Đưa con đến học tại trung tâm: Phụ huynh cần làm gì để không \"tiền mất tật mang\"?',
        'Giữa bối cảnh thị trường trung tâm Anh ngữ đầy biến động với nhiều vụ việc \"lùm xùm\", việc lựa chọn một nơi học tập uy tín cho con trở thành bài toán khó. Trước khi đặt bút ký vào hợp đồng và đóng những khoản tiền lớn, phụ huynh cần trang bị kiến thức, trở thành người tiêu dùng thông thái để bảo vệ quyền lợi của chính mình và đảm bảo tương lai học tập của con.',
        '/userfiles/images/R5AT4032.jpg', 'Admin', 0, 2,
        '<p>Việc đầu tư cho con học tiếng Anh là một quyết định quan trọng, nhưng nó cũng đi kèm với không ít rủi ro nếu phụ huynh không tìm hiểu kỹ lưỡng. Sau hàng loạt vụ việc các trung tâm lớn như Apax Leaders sụp đổ, hay các cơ sở nhỏ hơn \"ôm\" tiền học phí bỏ trốn, bài học về sự cẩn trọng chưa bao giờ cũ. Dưới đây là những bước phụ huynh cần thực hiện để đưa ra quyết định sáng suốt.</p><p><strong>1. Kiểm tra kỹ lưỡng thông tin pháp lý và lịch sử hoạt động:</strong></p><p><strong>Giấy phép hoạt động:</strong> Yêu cầu trung tâm cung cấp giấy phép thành lập và giấy phép hoạt động đào tạo ngoại ngữ do Sở Giáo dục và Đào tạo cấp. Đây là yếu tố pháp lý cơ bản nhất để đảm bảo trung tâm hoạt động hợp pháp.</p><p><strong>Lịch sử và \"phốt\":</strong> Đừng chỉ nghe tư vấn viên nói. Hãy chủ động tìm kiếm tên trung tâm trên Google, các hội nhóm phụ huynh trên mạng xã hội (Facebook, Zalo). Các từ khóa tìm kiếm như \"[Tên trung tâm] + lừa đảo\", \"[Tên trung tâm] + có tốt không\", \"review [Tên trung tâm]\" sẽ cho bạn một cái nhìn đa chiều về lịch sử hoạt động và những phản ánh (nếu có) từ các phụ huynh khác.</p><p><strong>2. Đánh giá chất lượng thực tế, không chỉ tin vào quảng cáo:</strong></p><p><strong>Học thử:</strong> Luôn yêu cầu cho con tham gia một buổi học thử. Đây là cách tốt nhất để đánh giá phương pháp giảng dạy, sự tương tác của giáo viên với học sinh và xem con bạn có thực sự hứng thú với môi trường học đó không.</p><p><strong>Chất lượng giáo viên:</strong> Tìm hiểu kỹ về đội ngũ giáo viên. Họ là người Việt Nam hay người nước ngoài? Bằng cấp của họ là gì (TESOL, CELTA,...)? Kinh nghiệm giảng dạy ra sao? Một trung tâm uy tín sẽ không ngần ngại công khai thông tin này.</p><p><strong>Cơ sở vật chất:</strong> Hãy dành thời gian tham quan trực tiếp cơ sở vật chất, từ phòng học, thư viện đến các trang thiết bị hỗ trợ và đặc biệt là công tác phòng cháy chữa cháy.</p><p><strong>3. Minh bạch về tài chính và hợp đồng:</strong></p><p><strong>Hợp đồng rõ ràng:</strong> Đọc kỹ từng điều khoản trong hợp đồng. Chú ý đến lộ trình học, số buổi học, chính sách bảo lưu, chuyển lớp và đặc biệt là điều khoản hoàn phí. Hãy hỏi rõ: \"Trong trường hợp nào tôi sẽ được hoàn lại học phí và thủ tục ra sao?\". Mọi cam kết (như \"cam kết đầu ra\") phải được ghi rõ trong hợp đồng, không chỉ là lời hứa miệng.</p><p><strong>Cảnh giác với ưu đãi \"khủng\":</strong> Các gói học dài hạn với chiết khấu sâu (đóng 2-3 năm học phí một lần) có thể rất hấp dẫn, nhưng cũng tiềm ẩn rủi ro cao nhất nếu trung tâm gặp vấn đề về tài chính. Hãy cân nhắc đóng học phí theo từng khóa ngắn hạn để giảm thiểu rủi ro.</p><p>Việc trang bị đầy đủ thông tin và giữ một cái đầu \"lạnh\" sẽ giúp phụ huynh tránh được những cạm bẫy, đảm bảo rằng số tiền đầu tư cho giáo dục của con được đặt đúng chỗ, mang lại hiệu quả thực sự thay vì những phiền phức không đáng có.</p>',
        '2025-08-04 10:02:02', '2025-08-04 10:02:02'),
       (5, 'dua-con-den-hoc-tai-trung-tam-phu-huynh-can-lam-gi-de-khong-tien-mat-tat-mang-5',
        'Đưa con đến học tại trung tâm: Phụ huynh cần làm gì để không \"tiền mất tật mang\"? - 2',
        'Giữa bối cảnh thị trường trung tâm Anh ngữ đầy biến động với nhiều vụ việc \"lùm xùm\", việc lựa chọn một nơi học tập uy tín cho con trở thành bài toán khó. Trước khi đặt bút ký vào hợp đồng và đóng những khoản tiền lớn, phụ huynh cần trang bị kiến thức, trở thành người tiêu dùng thông thái để bảo vệ quyền lợi của chính mình và đảm bảo tương lai học tập của con.',
        '/userfiles/images/R5AT4032.jpg', 'Admin', 0, 2,
        '<p>Việc đầu tư cho con học tiếng Anh là một quyết định quan trọng, nhưng nó cũng đi kèm với không ít rủi ro nếu phụ huynh không tìm hiểu kỹ lưỡng. Sau hàng loạt vụ việc các trung tâm lớn như Apax Leaders sụp đổ, hay các cơ sở nhỏ hơn \"ôm\" tiền học phí bỏ trốn, bài học về sự cẩn trọng chưa bao giờ cũ. Dưới đây là những bước phụ huynh cần thực hiện để đưa ra quyết định sáng suốt.</p><p><strong>1. Kiểm tra kỹ lưỡng thông tin pháp lý và lịch sử hoạt động:</strong></p><p><strong>Giấy phép hoạt động:</strong> Yêu cầu trung tâm cung cấp giấy phép thành lập và giấy phép hoạt động đào tạo ngoại ngữ do Sở Giáo dục và Đào tạo cấp. Đây là yếu tố pháp lý cơ bản nhất để đảm bảo trung tâm hoạt động hợp pháp.</p><p><strong>Lịch sử và \"phốt\":</strong> Đừng chỉ nghe tư vấn viên nói. Hãy chủ động tìm kiếm tên trung tâm trên Google, các hội nhóm phụ huynh trên mạng xã hội (Facebook, Zalo). Các từ khóa tìm kiếm như \"[Tên trung tâm] + lừa đảo\", \"[Tên trung tâm] + có tốt không\", \"review [Tên trung tâm]\" sẽ cho bạn một cái nhìn đa chiều về lịch sử hoạt động và những phản ánh (nếu có) từ các phụ huynh khác.</p><p><strong>2. Đánh giá chất lượng thực tế, không chỉ tin vào quảng cáo:</strong></p><p><strong>Học thử:</strong> Luôn yêu cầu cho con tham gia một buổi học thử. Đây là cách tốt nhất để đánh giá phương pháp giảng dạy, sự tương tác của giáo viên với học sinh và xem con bạn có thực sự hứng thú với môi trường học đó không.</p><p><strong>Chất lượng giáo viên:</strong> Tìm hiểu kỹ về đội ngũ giáo viên. Họ là người Việt Nam hay người nước ngoài? Bằng cấp của họ là gì (TESOL, CELTA,...)? Kinh nghiệm giảng dạy ra sao? Một trung tâm uy tín sẽ không ngần ngại công khai thông tin này.</p><p><strong>Cơ sở vật chất:</strong> Hãy dành thời gian tham quan trực tiếp cơ sở vật chất, từ phòng học, thư viện đến các trang thiết bị hỗ trợ và đặc biệt là công tác phòng cháy chữa cháy.</p><p><strong>3. Minh bạch về tài chính và hợp đồng:</strong></p><p><strong>Hợp đồng rõ ràng:</strong> Đọc kỹ từng điều khoản trong hợp đồng. Chú ý đến lộ trình học, số buổi học, chính sách bảo lưu, chuyển lớp và đặc biệt là điều khoản hoàn phí. Hãy hỏi rõ: \"Trong trường hợp nào tôi sẽ được hoàn lại học phí và thủ tục ra sao?\". Mọi cam kết (như \"cam kết đầu ra\") phải được ghi rõ trong hợp đồng, không chỉ là lời hứa miệng.</p><p><strong>Cảnh giác với ưu đãi \"khủng\":</strong> Các gói học dài hạn với chiết khấu sâu (đóng 2-3 năm học phí một lần) có thể rất hấp dẫn, nhưng cũng tiềm ẩn rủi ro cao nhất nếu trung tâm gặp vấn đề về tài chính. Hãy cân nhắc đóng học phí theo từng khóa ngắn hạn để giảm thiểu rủi ro.</p><p>Việc trang bị đầy đủ thông tin và giữ một cái đầu \"lạnh\" sẽ giúp phụ huynh tránh được những cạm bẫy, đảm bảo rằng số tiền đầu tư cho giáo dục của con được đặt đúng chỗ, mang lại hiệu quả thực sự thay vì những phiền phức không đáng có.</p>',
        '2025-08-04 10:02:02', '2025-08-04 10:02:02'),
       (6, 'dua-con-den-hoc-tai-trung-tam-phu-huynh-can-lam-gi-de-khong-tien-mat-tat-mang-6',
        'Đưa con đến học tại trung tâm: Phụ huynh cần làm gì để không \"tiền mất tật mang\"? - 3',
        'Giữa bối cảnh thị trường trung tâm Anh ngữ đầy biến động với nhiều vụ việc \"lùm xùm\", việc lựa chọn một nơi học tập uy tín cho con trở thành bài toán khó. Trước khi đặt bút ký vào hợp đồng và đóng những khoản tiền lớn, phụ huynh cần trang bị kiến thức, trở thành người tiêu dùng thông thái để bảo vệ quyền lợi của chính mình và đảm bảo tương lai học tập của con.',
        '/userfiles/images/R5AT4032.jpg', 'Admin', 0, 2,
        '<p>Việc đầu tư cho con học tiếng Anh là một quyết định quan trọng, nhưng nó cũng đi kèm với không ít rủi ro nếu phụ huynh không tìm hiểu kỹ lưỡng. Sau hàng loạt vụ việc các trung tâm lớn như Apax Leaders sụp đổ, hay các cơ sở nhỏ hơn \"ôm\" tiền học phí bỏ trốn, bài học về sự cẩn trọng chưa bao giờ cũ. Dưới đây là những bước phụ huynh cần thực hiện để đưa ra quyết định sáng suốt.</p><p><strong>1. Kiểm tra kỹ lưỡng thông tin pháp lý và lịch sử hoạt động:</strong></p><p><strong>Giấy phép hoạt động:</strong> Yêu cầu trung tâm cung cấp giấy phép thành lập và giấy phép hoạt động đào tạo ngoại ngữ do Sở Giáo dục và Đào tạo cấp. Đây là yếu tố pháp lý cơ bản nhất để đảm bảo trung tâm hoạt động hợp pháp.</p><p><strong>Lịch sử và \"phốt\":</strong> Đừng chỉ nghe tư vấn viên nói. Hãy chủ động tìm kiếm tên trung tâm trên Google, các hội nhóm phụ huynh trên mạng xã hội (Facebook, Zalo). Các từ khóa tìm kiếm như \"[Tên trung tâm] + lừa đảo\", \"[Tên trung tâm] + có tốt không\", \"review [Tên trung tâm]\" sẽ cho bạn một cái nhìn đa chiều về lịch sử hoạt động và những phản ánh (nếu có) từ các phụ huynh khác.</p><p><strong>2. Đánh giá chất lượng thực tế, không chỉ tin vào quảng cáo:</strong></p><p><strong>Học thử:</strong> Luôn yêu cầu cho con tham gia một buổi học thử. Đây là cách tốt nhất để đánh giá phương pháp giảng dạy, sự tương tác của giáo viên với học sinh và xem con bạn có thực sự hứng thú với môi trường học đó không.</p><p><strong>Chất lượng giáo viên:</strong> Tìm hiểu kỹ về đội ngũ giáo viên. Họ là người Việt Nam hay người nước ngoài? Bằng cấp của họ là gì (TESOL, CELTA,...)? Kinh nghiệm giảng dạy ra sao? Một trung tâm uy tín sẽ không ngần ngại công khai thông tin này.</p><p><strong>Cơ sở vật chất:</strong> Hãy dành thời gian tham quan trực tiếp cơ sở vật chất, từ phòng học, thư viện đến các trang thiết bị hỗ trợ và đặc biệt là công tác phòng cháy chữa cháy.</p><p><strong>3. Minh bạch về tài chính và hợp đồng:</strong></p><p><strong>Hợp đồng rõ ràng:</strong> Đọc kỹ từng điều khoản trong hợp đồng. Chú ý đến lộ trình học, số buổi học, chính sách bảo lưu, chuyển lớp và đặc biệt là điều khoản hoàn phí. Hãy hỏi rõ: \"Trong trường hợp nào tôi sẽ được hoàn lại học phí và thủ tục ra sao?\". Mọi cam kết (như \"cam kết đầu ra\") phải được ghi rõ trong hợp đồng, không chỉ là lời hứa miệng.</p><p><strong>Cảnh giác với ưu đãi \"khủng\":</strong> Các gói học dài hạn với chiết khấu sâu (đóng 2-3 năm học phí một lần) có thể rất hấp dẫn, nhưng cũng tiềm ẩn rủi ro cao nhất nếu trung tâm gặp vấn đề về tài chính. Hãy cân nhắc đóng học phí theo từng khóa ngắn hạn để giảm thiểu rủi ro.</p><p>Việc trang bị đầy đủ thông tin và giữ một cái đầu \"lạnh\" sẽ giúp phụ huynh tránh được những cạm bẫy, đảm bảo rằng số tiền đầu tư cho giáo dục của con được đặt đúng chỗ, mang lại hiệu quả thực sự thay vì những phiền phức không đáng có.</p>',
        '2025-08-04 10:02:02', '2025-08-04 10:02:02'),
       (7, 'dua-con-den-hoc-tai-trung-tam-phu-huynh-can-lam-gi-de-khong-tien-mat-tat-mang-7',
        'Đưa con đến học tại trung tâm: Phụ huynh cần làm gì để không \"tiền mất tật mang\"? - 4',
        'Giữa bối cảnh thị trường trung tâm Anh ngữ đầy biến động với nhiều vụ việc \"lùm xùm\", việc lựa chọn một nơi học tập uy tín cho con trở thành bài toán khó. Trước khi đặt bút ký vào hợp đồng và đóng những khoản tiền lớn, phụ huynh cần trang bị kiến thức, trở thành người tiêu dùng thông thái để bảo vệ quyền lợi của chính mình và đảm bảo tương lai học tập của con.',
        '/userfiles/images/R5AT4032.jpg', 'Admin', 0, 2,
        '<p>Việc đầu tư cho con học tiếng Anh là một quyết định quan trọng, nhưng nó cũng đi kèm với không ít rủi ro nếu phụ huynh không tìm hiểu kỹ lưỡng. Sau hàng loạt vụ việc các trung tâm lớn như Apax Leaders sụp đổ, hay các cơ sở nhỏ hơn \"ôm\" tiền học phí bỏ trốn, bài học về sự cẩn trọng chưa bao giờ cũ. Dưới đây là những bước phụ huynh cần thực hiện để đưa ra quyết định sáng suốt.</p><p><strong>1. Kiểm tra kỹ lưỡng thông tin pháp lý và lịch sử hoạt động:</strong></p><p><strong>Giấy phép hoạt động:</strong> Yêu cầu trung tâm cung cấp giấy phép thành lập và giấy phép hoạt động đào tạo ngoại ngữ do Sở Giáo dục và Đào tạo cấp. Đây là yếu tố pháp lý cơ bản nhất để đảm bảo trung tâm hoạt động hợp pháp.</p><p><strong>Lịch sử và \"phốt\":</strong> Đừng chỉ nghe tư vấn viên nói. Hãy chủ động tìm kiếm tên trung tâm trên Google, các hội nhóm phụ huynh trên mạng xã hội (Facebook, Zalo). Các từ khóa tìm kiếm như \"[Tên trung tâm] + lừa đảo\", \"[Tên trung tâm] + có tốt không\", \"review [Tên trung tâm]\" sẽ cho bạn một cái nhìn đa chiều về lịch sử hoạt động và những phản ánh (nếu có) từ các phụ huynh khác.</p><p><strong>2. Đánh giá chất lượng thực tế, không chỉ tin vào quảng cáo:</strong></p><p><strong>Học thử:</strong> Luôn yêu cầu cho con tham gia một buổi học thử. Đây là cách tốt nhất để đánh giá phương pháp giảng dạy, sự tương tác của giáo viên với học sinh và xem con bạn có thực sự hứng thú với môi trường học đó không.</p><p><strong>Chất lượng giáo viên:</strong> Tìm hiểu kỹ về đội ngũ giáo viên. Họ là người Việt Nam hay người nước ngoài? Bằng cấp của họ là gì (TESOL, CELTA,...)? Kinh nghiệm giảng dạy ra sao? Một trung tâm uy tín sẽ không ngần ngại công khai thông tin này.</p><p><strong>Cơ sở vật chất:</strong> Hãy dành thời gian tham quan trực tiếp cơ sở vật chất, từ phòng học, thư viện đến các trang thiết bị hỗ trợ và đặc biệt là công tác phòng cháy chữa cháy.</p><p><strong>3. Minh bạch về tài chính và hợp đồng:</strong></p><p><strong>Hợp đồng rõ ràng:</strong> Đọc kỹ từng điều khoản trong hợp đồng. Chú ý đến lộ trình học, số buổi học, chính sách bảo lưu, chuyển lớp và đặc biệt là điều khoản hoàn phí. Hãy hỏi rõ: \"Trong trường hợp nào tôi sẽ được hoàn lại học phí và thủ tục ra sao?\". Mọi cam kết (như \"cam kết đầu ra\") phải được ghi rõ trong hợp đồng, không chỉ là lời hứa miệng.</p><p><strong>Cảnh giác với ưu đãi \"khủng\":</strong> Các gói học dài hạn với chiết khấu sâu (đóng 2-3 năm học phí một lần) có thể rất hấp dẫn, nhưng cũng tiềm ẩn rủi ro cao nhất nếu trung tâm gặp vấn đề về tài chính. Hãy cân nhắc đóng học phí theo từng khóa ngắn hạn để giảm thiểu rủi ro.</p><p>Việc trang bị đầy đủ thông tin và giữ một cái đầu \"lạnh\" sẽ giúp phụ huynh tránh được những cạm bẫy, đảm bảo rằng số tiền đầu tư cho giáo dục của con được đặt đúng chỗ, mang lại hiệu quả thực sự thay vì những phiền phức không đáng có.</p>',
        '2025-08-04 10:02:02', '2025-08-04 10:02:02'),
       (8, 'dua-con-den-hoc-tai-trung-tam-phu-huynh-can-lam-gi-de-khong-tien-mat-tat-mang-8',
        'Đưa con đến học tại trung tâm: Phụ huynh cần làm gì để không \"tiền mất tật mang\"? - 5',
        'Giữa bối cảnh thị trường trung tâm Anh ngữ đầy biến động với nhiều vụ việc \"lùm xùm\", việc lựa chọn một nơi học tập uy tín cho con trở thành bài toán khó. Trước khi đặt bút ký vào hợp đồng và đóng những khoản tiền lớn, phụ huynh cần trang bị kiến thức, trở thành người tiêu dùng thông thái để bảo vệ quyền lợi của chính mình và đảm bảo tương lai học tập của con.',
        '/userfiles/images/R5AT4032.jpg', 'Admin', 0, 2,
        '<p>Việc đầu tư cho con học tiếng Anh là một quyết định quan trọng, nhưng nó cũng đi kèm với không ít rủi ro nếu phụ huynh không tìm hiểu kỹ lưỡng. Sau hàng loạt vụ việc các trung tâm lớn như Apax Leaders sụp đổ, hay các cơ sở nhỏ hơn \"ôm\" tiền học phí bỏ trốn, bài học về sự cẩn trọng chưa bao giờ cũ. Dưới đây là những bước phụ huynh cần thực hiện để đưa ra quyết định sáng suốt.</p><p><strong>1. Kiểm tra kỹ lưỡng thông tin pháp lý và lịch sử hoạt động:</strong></p><p><strong>Giấy phép hoạt động:</strong> Yêu cầu trung tâm cung cấp giấy phép thành lập và giấy phép hoạt động đào tạo ngoại ngữ do Sở Giáo dục và Đào tạo cấp. Đây là yếu tố pháp lý cơ bản nhất để đảm bảo trung tâm hoạt động hợp pháp.</p><p><strong>Lịch sử và \"phốt\":</strong> Đừng chỉ nghe tư vấn viên nói. Hãy chủ động tìm kiếm tên trung tâm trên Google, các hội nhóm phụ huynh trên mạng xã hội (Facebook, Zalo). Các từ khóa tìm kiếm như \"[Tên trung tâm] + lừa đảo\", \"[Tên trung tâm] + có tốt không\", \"review [Tên trung tâm]\" sẽ cho bạn một cái nhìn đa chiều về lịch sử hoạt động và những phản ánh (nếu có) từ các phụ huynh khác.</p><p><strong>2. Đánh giá chất lượng thực tế, không chỉ tin vào quảng cáo:</strong></p><p><strong>Học thử:</strong> Luôn yêu cầu cho con tham gia một buổi học thử. Đây là cách tốt nhất để đánh giá phương pháp giảng dạy, sự tương tác của giáo viên với học sinh và xem con bạn có thực sự hứng thú với môi trường học đó không.</p><p><strong>Chất lượng giáo viên:</strong> Tìm hiểu kỹ về đội ngũ giáo viên. Họ là người Việt Nam hay người nước ngoài? Bằng cấp của họ là gì (TESOL, CELTA,...)? Kinh nghiệm giảng dạy ra sao? Một trung tâm uy tín sẽ không ngần ngại công khai thông tin này.</p><p><strong>Cơ sở vật chất:</strong> Hãy dành thời gian tham quan trực tiếp cơ sở vật chất, từ phòng học, thư viện đến các trang thiết bị hỗ trợ và đặc biệt là công tác phòng cháy chữa cháy.</p><p><strong>3. Minh bạch về tài chính và hợp đồng:</strong></p><p><strong>Hợp đồng rõ ràng:</strong> Đọc kỹ từng điều khoản trong hợp đồng. Chú ý đến lộ trình học, số buổi học, chính sách bảo lưu, chuyển lớp và đặc biệt là điều khoản hoàn phí. Hãy hỏi rõ: \"Trong trường hợp nào tôi sẽ được hoàn lại học phí và thủ tục ra sao?\". Mọi cam kết (như \"cam kết đầu ra\") phải được ghi rõ trong hợp đồng, không chỉ là lời hứa miệng.</p><p><strong>Cảnh giác với ưu đãi \"khủng\":</strong> Các gói học dài hạn với chiết khấu sâu (đóng 2-3 năm học phí một lần) có thể rất hấp dẫn, nhưng cũng tiềm ẩn rủi ro cao nhất nếu trung tâm gặp vấn đề về tài chính. Hãy cân nhắc đóng học phí theo từng khóa ngắn hạn để giảm thiểu rủi ro.</p><p>Việc trang bị đầy đủ thông tin và giữ một cái đầu \"lạnh\" sẽ giúp phụ huynh tránh được những cạm bẫy, đảm bảo rằng số tiền đầu tư cho giáo dục của con được đặt đúng chỗ, mang lại hiệu quả thực sự thay vì những phiền phức không đáng có.</p>',
        '2025-08-04 10:02:02', '2025-08-04 10:02:02'),
       (9, 'dua-con-den-hoc-tai-trung-tam-phu-huynh-can-lam-gi-de-khong-tien-mat-tat-mang-9',
        'Đưa con đến học tại trung tâm: Phụ huynh cần làm gì để không \"tiền mất tật mang\"? - 6',
        'Giữa bối cảnh thị trường trung tâm Anh ngữ đầy biến động với nhiều vụ việc \"lùm xùm\", việc lựa chọn một nơi học tập uy tín cho con trở thành bài toán khó. Trước khi đặt bút ký vào hợp đồng và đóng những khoản tiền lớn, phụ huynh cần trang bị kiến thức, trở thành người tiêu dùng thông thái để bảo vệ quyền lợi của chính mình và đảm bảo tương lai học tập của con.',
        '/userfiles/images/R5AT4032.jpg', 'Admin', 0, 2,
        '<p>Việc đầu tư cho con học tiếng Anh là một quyết định quan trọng, nhưng nó cũng đi kèm với không ít rủi ro nếu phụ huynh không tìm hiểu kỹ lưỡng. Sau hàng loạt vụ việc các trung tâm lớn như Apax Leaders sụp đổ, hay các cơ sở nhỏ hơn \"ôm\" tiền học phí bỏ trốn, bài học về sự cẩn trọng chưa bao giờ cũ. Dưới đây là những bước phụ huynh cần thực hiện để đưa ra quyết định sáng suốt.</p><p><strong>1. Kiểm tra kỹ lưỡng thông tin pháp lý và lịch sử hoạt động:</strong></p><p><strong>Giấy phép hoạt động:</strong> Yêu cầu trung tâm cung cấp giấy phép thành lập và giấy phép hoạt động đào tạo ngoại ngữ do Sở Giáo dục và Đào tạo cấp. Đây là yếu tố pháp lý cơ bản nhất để đảm bảo trung tâm hoạt động hợp pháp.</p><p><strong>Lịch sử và \"phốt\":</strong> Đừng chỉ nghe tư vấn viên nói. Hãy chủ động tìm kiếm tên trung tâm trên Google, các hội nhóm phụ huynh trên mạng xã hội (Facebook, Zalo). Các từ khóa tìm kiếm như \"[Tên trung tâm] + lừa đảo\", \"[Tên trung tâm] + có tốt không\", \"review [Tên trung tâm]\" sẽ cho bạn một cái nhìn đa chiều về lịch sử hoạt động và những phản ánh (nếu có) từ các phụ huynh khác.</p><p><strong>2. Đánh giá chất lượng thực tế, không chỉ tin vào quảng cáo:</strong></p><p><strong>Học thử:</strong> Luôn yêu cầu cho con tham gia một buổi học thử. Đây là cách tốt nhất để đánh giá phương pháp giảng dạy, sự tương tác của giáo viên với học sinh và xem con bạn có thực sự hứng thú với môi trường học đó không.</p><p><strong>Chất lượng giáo viên:</strong> Tìm hiểu kỹ về đội ngũ giáo viên. Họ là người Việt Nam hay người nước ngoài? Bằng cấp của họ là gì (TESOL, CELTA,...)? Kinh nghiệm giảng dạy ra sao? Một trung tâm uy tín sẽ không ngần ngại công khai thông tin này.</p><p><strong>Cơ sở vật chất:</strong> Hãy dành thời gian tham quan trực tiếp cơ sở vật chất, từ phòng học, thư viện đến các trang thiết bị hỗ trợ và đặc biệt là công tác phòng cháy chữa cháy.</p><p><strong>3. Minh bạch về tài chính và hợp đồng:</strong></p><p><strong>Hợp đồng rõ ràng:</strong> Đọc kỹ từng điều khoản trong hợp đồng. Chú ý đến lộ trình học, số buổi học, chính sách bảo lưu, chuyển lớp và đặc biệt là điều khoản hoàn phí. Hãy hỏi rõ: \"Trong trường hợp nào tôi sẽ được hoàn lại học phí và thủ tục ra sao?\". Mọi cam kết (như \"cam kết đầu ra\") phải được ghi rõ trong hợp đồng, không chỉ là lời hứa miệng.</p><p><strong>Cảnh giác với ưu đãi \"khủng\":</strong> Các gói học dài hạn với chiết khấu sâu (đóng 2-3 năm học phí một lần) có thể rất hấp dẫn, nhưng cũng tiềm ẩn rủi ro cao nhất nếu trung tâm gặp vấn đề về tài chính. Hãy cân nhắc đóng học phí theo từng khóa ngắn hạn để giảm thiểu rủi ro.</p><p>Việc trang bị đầy đủ thông tin và giữ một cái đầu \"lạnh\" sẽ giúp phụ huynh tránh được những cạm bẫy, đảm bảo rằng số tiền đầu tư cho giáo dục của con được đặt đúng chỗ, mang lại hiệu quả thực sự thay vì những phiền phức không đáng có.</p>',
        '2025-08-04 10:02:02', '2025-08-04 10:02:02'),
       (10, 'bi-quyet-giup-con-hoc-tieng-anh-tai-nha-10', 'Bí quyết giúp con học tiếng Anh tại nhà 2',
        'Khen ngợi và động viên là liều thuốc tinh thần vô giá. Thay vì chỉ trích lỗi sai, hãy tập trung vào những nỗ lực và tiến bộ của con, dù là nhỏ nhất. Sự công nhận từ cha mẹ sẽ giúp con xây dựng sự tự tin và không sợ mắc lỗi khi học một ngôn ngữ mới.',
        '/userfiles/images/R5AT3841.jpg', 'Admin', 1456, 1,
        '<h2>Khám phá phương pháp học hiệu quả cho trẻ</h2><p>Đừng biến việc học thành áp lực. Hãy lồng ghép tiếng Anh vào các trò chơi mà trẻ yêu thích như trốn tìm (đếm số bằng tiếng Anh), board game (dạy về màu sắc, con vật), hoặc các hoạt động nghệ thuật. Khi trẻ cảm thấy vui vẻ, khả năng tiếp thu và ghi nhớ sẽ tăng lên đáng kể.</p><p>Đọc sách truyện song ngữ hoặc truyện tranh tiếng Anh là một cách tuyệt vời để mở rộng vốn từ vựng và làm quen với cấu trúc câu. Hãy bắt đầu với những cuốn sách có hình ảnh minh họa đẹp mắt và nội dung đơn giản, phù hợp với lứa tuổi của con. Cùng con đọc và giải thích những từ mới sẽ giúp tăng cường sự gắn kết gia đình.</p><p>Khen ngợi và động viên là liều thuốc tinh thần vô giá. Thay vì chỉ trích lỗi sai, hãy tập trung vào những nỗ lực và tiến bộ của con, dù là nhỏ nhất. Sự công nhận từ cha mẹ sẽ giúp con xây dựng sự tự tin và không sợ mắc lỗi khi học một ngôn ngữ mới.</p><blockquote><p>Việc học ngoại ngữ sớm không chỉ giúp trẻ phát triển trí não mà còn mở ra nhiều cơ hội trong tương lai.</p></blockquote>',
        '2025-07-21 03:53:45', '2025-07-21 05:41:02'),
       (11, 'bi-quyet-giup-con-hoc-tieng-anh-tai-nha-11', 'Bí quyết giúp con học tiếng Anh tại nhà 3',
        'Khen ngợi và động viên là liều thuốc tinh thần vô giá. Thay vì chỉ trích lỗi sai, hãy tập trung vào những nỗ lực và tiến bộ của con, dù là nhỏ nhất. Sự công nhận từ cha mẹ sẽ giúp con xây dựng sự tự tin và không sợ mắc lỗi khi học một ngôn ngữ mới.',
        '/userfiles/images/R5AT3841.jpg', 'Admin', 1456, 1,
        '<h2>Khám phá phương pháp học hiệu quả cho trẻ</h2><p>Đừng biến việc học thành áp lực. Hãy lồng ghép tiếng Anh vào các trò chơi mà trẻ yêu thích như trốn tìm (đếm số bằng tiếng Anh), board game (dạy về màu sắc, con vật), hoặc các hoạt động nghệ thuật. Khi trẻ cảm thấy vui vẻ, khả năng tiếp thu và ghi nhớ sẽ tăng lên đáng kể.</p><p>Đọc sách truyện song ngữ hoặc truyện tranh tiếng Anh là một cách tuyệt vời để mở rộng vốn từ vựng và làm quen với cấu trúc câu. Hãy bắt đầu với những cuốn sách có hình ảnh minh họa đẹp mắt và nội dung đơn giản, phù hợp với lứa tuổi của con. Cùng con đọc và giải thích những từ mới sẽ giúp tăng cường sự gắn kết gia đình.</p><p>Khen ngợi và động viên là liều thuốc tinh thần vô giá. Thay vì chỉ trích lỗi sai, hãy tập trung vào những nỗ lực và tiến bộ của con, dù là nhỏ nhất. Sự công nhận từ cha mẹ sẽ giúp con xây dựng sự tự tin và không sợ mắc lỗi khi học một ngôn ngữ mới.</p><blockquote><p>Việc học ngoại ngữ sớm không chỉ giúp trẻ phát triển trí não mà còn mở ra nhiều cơ hội trong tương lai.</p></blockquote>',
        '2025-07-21 03:53:45', '2025-07-21 05:41:02'),
       (12, 'bi-quyet-giup-con-hoc-tieng-anh-tai-nha-12', 'Bí quyết giúp con học tiếng Anh tại nhà 4',
        'Khen ngợi và động viên là liều thuốc tinh thần vô giá. Thay vì chỉ trích lỗi sai, hãy tập trung vào những nỗ lực và tiến bộ của con, dù là nhỏ nhất. Sự công nhận từ cha mẹ sẽ giúp con xây dựng sự tự tin và không sợ mắc lỗi khi học một ngôn ngữ mới.',
        '/userfiles/images/R5AT3841.jpg', 'Admin', 1456, 1,
        '<h2>Khám phá phương pháp học hiệu quả cho trẻ</h2><p>Đừng biến việc học thành áp lực. Hãy lồng ghép tiếng Anh vào các trò chơi mà trẻ yêu thích như trốn tìm (đếm số bằng tiếng Anh), board game (dạy về màu sắc, con vật), hoặc các hoạt động nghệ thuật. Khi trẻ cảm thấy vui vẻ, khả năng tiếp thu và ghi nhớ sẽ tăng lên đáng kể.</p><p>Đọc sách truyện song ngữ hoặc truyện tranh tiếng Anh là một cách tuyệt vời để mở rộng vốn từ vựng và làm quen với cấu trúc câu. Hãy bắt đầu với những cuốn sách có hình ảnh minh họa đẹp mắt và nội dung đơn giản, phù hợp với lứa tuổi của con. Cùng con đọc và giải thích những từ mới sẽ giúp tăng cường sự gắn kết gia đình.</p><p>Khen ngợi và động viên là liều thuốc tinh thần vô giá. Thay vì chỉ trích lỗi sai, hãy tập trung vào những nỗ lực và tiến bộ của con, dù là nhỏ nhất. Sự công nhận từ cha mẹ sẽ giúp con xây dựng sự tự tin và không sợ mắc lỗi khi học một ngôn ngữ mới.</p><blockquote><p>Việc học ngoại ngữ sớm không chỉ giúp trẻ phát triển trí não mà còn mở ra nhiều cơ hội trong tương lai.</p></blockquote>',
        '2025-07-21 03:53:45', '2025-07-21 05:41:02'),
       (13, 'bi-quyet-giup-con-hoc-tieng-anh-tai-nha-13', 'Bí quyết giúp con học tiếng Anh tại nhà 5',
        'Khen ngợi và động viên là liều thuốc tinh thần vô giá. Thay vì chỉ trích lỗi sai, hãy tập trung vào những nỗ lực và tiến bộ của con, dù là nhỏ nhất. Sự công nhận từ cha mẹ sẽ giúp con xây dựng sự tự tin và không sợ mắc lỗi khi học một ngôn ngữ mới.',
        '/userfiles/images/R5AT3841.jpg', 'Admin', 1456, 1,
        '<h2>Khám phá phương pháp học hiệu quả cho trẻ</h2><p>Đừng biến việc học thành áp lực. Hãy lồng ghép tiếng Anh vào các trò chơi mà trẻ yêu thích như trốn tìm (đếm số bằng tiếng Anh), board game (dạy về màu sắc, con vật), hoặc các hoạt động nghệ thuật. Khi trẻ cảm thấy vui vẻ, khả năng tiếp thu và ghi nhớ sẽ tăng lên đáng kể.</p><p>Đọc sách truyện song ngữ hoặc truyện tranh tiếng Anh là một cách tuyệt vời để mở rộng vốn từ vựng và làm quen với cấu trúc câu. Hãy bắt đầu với những cuốn sách có hình ảnh minh họa đẹp mắt và nội dung đơn giản, phù hợp với lứa tuổi của con. Cùng con đọc và giải thích những từ mới sẽ giúp tăng cường sự gắn kết gia đình.</p><p>Khen ngợi và động viên là liều thuốc tinh thần vô giá. Thay vì chỉ trích lỗi sai, hãy tập trung vào những nỗ lực và tiến bộ của con, dù là nhỏ nhất. Sự công nhận từ cha mẹ sẽ giúp con xây dựng sự tự tin và không sợ mắc lỗi khi học một ngôn ngữ mới.</p><blockquote><p>Việc học ngoại ngữ sớm không chỉ giúp trẻ phát triển trí não mà còn mở ra nhiều cơ hội trong tương lai.</p></blockquote>',
        '2025-07-21 03:53:45', '2025-07-21 05:41:02');
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
VALUES ('0b1OeKYIf7fjayGuXk75BYqcFP1MkhwB65LY1ptY', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWZpaDFYN1pBekFibzFXeHZuZUpjYVNUcWJQcnRRNFF1OEJIaXVYYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754302593),
       ('0bh34aKIfgCuvfRJSogJqi9cJl2kupUT1zKOS0Ra', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoidlJWd1N5b1RMaW9pYWNIVW1EZnBRTjBERW9ZZWlrM1Q1QWVSS24zTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303833),
       ('0kIeYeBjhjyIfCBML1CVe5wMCxSE4vF3jprDgVHy', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYjdjZGhFWmNaNE9SbU56Q1FYQ01hYlJqOUdXUGhTdWRqSmxEd1JOTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754298145),
       ('0VUfDU5pUjW0yf6eJx3vZdv54RI5ctxWhCJlTSkX', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMWdyZWhZcUJud3d6djA3d2xLVkh5TlhqWFlTT1JpMmZialBBeDdCUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301394),
       ('10KFgA5wSPf1MXpPcBbPnQhSWYzuYHwEJQOwJxLg', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZXVmc05sRmRuUVUxNEtIbTBpbkQ4a3BzUnBLdlVaR2dyMzQ5ZnVVTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0yJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303863),
       ('13zD8q8941mRtwoJdFMURci6E6DmATO26zNlMzuq', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoieVJZN01Tc05ON3R0N1BBYkwzSDFpeXkxUjJlRDJTWFp0SHlKWmVrbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0zJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301026),
       ('1pErrzFfIuaZMh4y2CXXbaPD9KkvLLYkq6YfNxX4', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUVVSVVqVkE2U2FBc0VPZnVTR1k1WFdDbTZPNk9iNXM0em1xd1QxaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLWRvYW5oLW5naGllcC01Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754301112),
       ('1tkNYxjV9sWLDQMrAbEtBsAIYA3Q6F6NL0lnPV74', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmY2WG94dG40TkNGaVI1Q3ozNHAxWFlpdVhxTEMwcGduQjVqYzhCdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbmV3cz9wYWdlPTImcGFnZVNpemU9MTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303829),
       ('221pFpCiTvX5ouxS85FA0oL6hslJKwNlaJHBJWIu', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWXFFdWVtWXpSMVhtSTRZOFA0U0lWbGpMSEVOcFJXUkQ3Yk9oQ2lJNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303040),
       ('2aSoL6eL0NGyWZBTJtW9PXKGzmR9AKLV5uVAKKsT', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0RCb3FxNjRxdTBDdUFVSkVpajZwMzJiZ0lNTVJ2RmZhOFlLNDQ1NCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY2F0ZWdvcmllcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301843),
       ('2eLlnXhjWLDGDILxZ56Grzf8kMe09h1RHAqyig7I', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUk0eGxCSkF0UXBka2t4ZTRNTEdqZVk1eTVGbnZIZmpRdWdEY0RnUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0yJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301274),
       ('2Ex3U0psfLixut983aIs8wPQj7JRLZE8EnLBBoms', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0U5bFRkVU5rcFVaV0s3SVNLY2l0WWJ3VUpxeTJmNzJnR0hmclh5OCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLXRoY3MtMTEtMTMtdHVvaS0zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754301973),
       ('2goJqZshV7QX9zQAl2AnJjHLx9hPtPsqRcm0VRsv', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiakFSbFRJUE1id2xadzFDNHJJdUh5azRnTVJhMWx3cGpNb2VtMFp4eCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754296969),
       ('2PDlZ3Sq7fgcRJuR4submn8SMrpaV1y6CzPpKSwH', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiem43R0Y5STlTa3ZlOEZpYWpBa2tnSzRESUpYVDZPNWNldU93T1hEYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301838),
       ('2rIQ16mvoLFDBUlcFjZW2ub2YGEJydxn8jmjLsGW', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUEpCeDl2MzhsNE8xVzBNMXoybG5Jd2ZLQVpUOEFHNVZYVnMwN0pORiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLW1hdS1naWFvLTMtNi10dW9pLTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301158),
       ('2Www0J1F7D7Dk7z2zy10O2WravooPhC5ECL6WJk3', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTU1hc0NRdE51S0hSalhhSXJNbXNHekhQMk42WlNhbFVnTDRrMTVwYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301727),
       ('306NOaxjSl64eUDrbd0WJSrImAfOHJK6v2d9HVcp', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiODZJbjlHOWVGa29TRFdkb2JYZVZiUUhNZnJNNFlQam91cnZUdkxESyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754303779),
       ('329FncXYeP3YnBqd5fDh3xg9KQGOgqFbFOoNJfzt', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoielFpSWlHSjNGcnRpMkt2ZXpMcHJJd0JVUmlMbEVDSlBnWGJMdXhMdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301035),
       ('3HpZsVbTlmkjRRX13yHbvzKpndnc2rJQuHhRlJB1', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYVpQTFhKRVBjcTJESmdGVVFqRkRGT20weVVKYjZKRWxDR1gydXFhRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303833),
       ('3k6CiL24ldSAZ0A2Rxxp1XDbvGs1kgSAXA4PdsGo', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYjg3WEE2YTNvYmVIWnBPa1RGUWV6eU00c29HTERIN2ptTlQ4a3VxeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvY2h1b25nLXRyaW5oLWJhbi10cnUtaGUtNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301925),
       ('3p6d94ajU0km7EVdCueA8eYTUy7lzKPU506xQiKA', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZjRmVHR2YVdhaG8ya1FKUHVOcjVUMm9TSHZ2U0czQUhLemVJU29kbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754296969),
       ('4FCzYGGxfjonxo9SmzIg9jMVoDRF32ehRPOcBqg5', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWW8zMXVDODR3Tkpnc1paaTJibW1DZWtKOWhPUkFLYXd3TGZkRlNocyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbmV3cz9wYWdlPTEmcGFnZVNpemU9MTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303779),
       ('4iBAnV88AwKscv0gGjRgHljatE83Hj1o0SysCTUb', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoia2NDdmFKMUxPelNBbGhFQU5rVWNmY3pMMlI4MDQxcHg5VGxFeGRsSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303815),
       ('4JRp0ZaP4xoMIfdQCrXCOQqN30nyQmhRiL7YYqN4', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUlBrbG1IUVk1TXVjUm5GMzNHS05ScnhUNnF6Tms3VTdxNE9xQXFMWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754299119),
       ('4ORsT4e7gJjHLJnvW60IzVQ4IuQkGQQuBLuNsuiY', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR2RMbG9iQ1JQWWxNdVRtUzlKNTZrbkNZV29IckpDUlhrZzdlS3NYbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754298163),
       ('4seyz2hvPDar9kxUYdvqkALJtUCx9DmdsgOtqMOl', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNklSU2ZwVXVTbkw2V280SXNtZTdyNmo2M3VSQzZURTE5cjd4UE5qcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754303785),
       ('4tRpPDyM18KpZrmbNK1I7EvxMNwiWYaof7sZdLsf', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoibHVJN2wwZ1pHM3BOSW1aOTVUdGxmMGlHMUpNMmlSeG5IWWZ0WVc4aSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLXRpZXUtaG9jLTYtMTEtdHVvaS0yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754301975),
       ('53YwsPEznoOgA27NA5tAOjQScZXRbqRr4u2UY4gm', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTWNNem9vT0hrNnh5dEt6bzBOQmhQblZQZGpXWFlPSU9UVW1oMWc4VyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLWRvYW5oLW5naGllcC01Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754301394),
       ('5A7Bf1J0CH72LCvrCemDx7S8kK5Ng2j66i60Gxuk', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYW9ZejU2dW5BUmJpazM1NWZxclZ4WEExODlvUm5PZEcwUGh2WUpsWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754299334),
       ('5gt1djJeQm78oCbzlO3U6rSEhFcj042FfJ3y2Viz', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoid2JjM3FFamZubzlNNG5lM09FQ2hLUnQyU094aE5jazc3R3dOYVhQbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754299523),
       ('5ia4YgAnhstDLj5HOFrHJufqmQnyu0SixM7gQ45U', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYktteGtUYkNwY0c5Z0RYdlRxZERXcERES3RScWhheDRBeG0yZkdGdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY2F0ZWdvcmllcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754303431),
       ('5L6qfSHcmuxZKOOUdYWReX76xzwGliE250D2HPgX', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTW5MeElEZU9uOHVZamhkZ1ZlTldGMWFGZlZXcVByMHlwU2pjREFJQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY2F0ZWdvcmllcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754303815),
       ('5penehwEIfybEgZ45OuUYqDJiZ83f7nsAxvG28sn', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT0Vldm8ybGJRdFFGVld6Z0pmZXNSOURlcEhiRjhGVjVSYXM1dVpnTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301417),
       ('66Ua4nILVGQkeyHKoqtKllwuLZMn4UlzoQpsqZpO', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZGRGRW1kVEtqZUJRY1ZsTVFFWjlveVNxaWFER24xVG5hZjFCWVZpcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbmV3cz9wYWdlPTEmcGFnZVNpemU9MTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301838),
       ('6t0uv9a1kq9z7IeSWJ7MDx5GLBGOgqe6DVfS93jM', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN2VNYTc3eGx2RGV1N2xBVHlSMndhQkMxbHMwaXlWRlNRNjJnenJkcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbmV3cz9wYWdlPTImcGFnZVNpemU9MTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303783),
       ('6UuIjA1arVACQinBgPUpQ4QvQUN4a1gR5gh43Rf0', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoickZtTUFQZU9HV2I1dlFnV0owa2NEdXdHeEFrVENGaVlzZTMycnlzNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLXRpZXUtaG9jLTYtMTEtdHVvaS0yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754301975),
       ('6YYSzBYVoE3lLBUSx7aLCIqrASYpOWTX9EMPZvRZ', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYXZnc3hhREpWTjhVeXl6MWFTelU3VGZLS0hRRzl5NmlUYlltVFRFYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLXRoY3MtMTEtMTMtdHVvaS0zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754301973),
       ('6ZVO4qMGBAhWMMpHtTx8YNjEdOFXnO6FiDztlw6e', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNWhHYVZtSDBQSkVBNlltcXQ5RjJHRm03d3h2UkVQS2sxcklHM1NReCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754302592),
       ('7nQ2cxBafeTVEgEyhw04jKWxKIAFqv9sLWAGTMgz', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoib2RhTGYzR2JnYUNQeGNLclBBNFFZckdjTnlWM0NjY2Uya21kT0RWWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301727),
       ('7xEn9jPZLxcPZcWzCKELxB7QhC2RXZ1qG862GWEt', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS1Mwd3hlT2FXNE1jUUU4M2hFQ1hrTVFKQ3JrQmt1SldEWk5OSFpiYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLXRpZXUtaG9jLTYtMTEtdHVvaS0yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754299314),
       ('8E6vSrkgOHbB6eIKJzNo9p3Ay4tCjHAeUDcQVRsO', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoidHVBODcwSWpHMEVmcTJTbFJweHNMOXk0Njh3am81RHhHU3hMWDBCdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkva25vd2xlZGdlLW5ld3M/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754303853),
       ('8ecApZbNsD0qmjHlbE86rjDy6LT3cyMDyfiy942l', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOVY5YzVQS0lpbDFya1AwdUt2MmV3YU1PRFZyVGNVRTRRMnFDTFdPTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY2F0ZWdvcmllcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301725),
       ('8JkjriPjew174U6uMpMAxAE4Bqf8m2lXf8MhFhOJ', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoicDJaZnVBbmJXQ09HVmJIbjVFczNFNUx0MmUyNTZWZXN4dXFwN28zSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754302679),
       ('9bGcB4k0WS4B9wzcI0Hjde57ZBrrYvkbyYLiMuLC', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTE5aNlhmNmVXbmExbjY5enpNSzZWd2V3Tjc3TGxoemkzN3FXbTBQYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvMDk2MjQzNTM2OSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754300389),
       ('9jw27lat23EjlajnApP7O6vie03g6D6RZG0GkaDw', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWmI0NzZ4S3pWUndrUGR6ZHpQSmxBOG5ZVXY2MTBEQ05odEZlNjVQMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLW1hdS1naWFvLTMtNi10dW9pLTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301158),
       ('9KvTK1WiILuovPBJ2J9G3psTP9CVxUmz0MLwjqYX', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0wwYndHVnNlU0lTSnQ0dUdaOEZuTGZITzl1TFpvUnVpa1dhMzBERCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvcGFyZW50cy1jb3JuZXI/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754303040),
       ('9MYoLZUken69BPhah2QCH8O1aKoSTKPUzVPdtBCq', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZU04YWtITHhyTnNzaDJwZHpwVmRvcW9BQTJXMlJQUU4zRkRrSmxobCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvZG9jdW1lbnRzP3BhZ2VTaXplPTQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303356),
       ('9ViqGRa20J4k7tK6ZG1719bIyV5MluL93B96l5jq', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoicnBpN0lMbmN5VXBVMGE5VVhSOXg3MGdBMGpPZEZGOXM3b3g2MnZJQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301112),
       ('a0N4DBuWkWR9eicAx6hffRpTUT7wD0GxPR5jfYjd', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoieGwxaXl0dWdrMEg1QmJzRWplWXJiT1RqZjVmV0ZldWZDNUw4TjZBSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301022),
       ('A3rUvoUumRQDv4O7nYLllJCDUmbvSkHSGWhJebn3', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY1hOVDhvaU9QS0xJVFJtaUZ5dDFCenl6a3pQZzlKTElpZVNpUUR2MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754298211),
       ('a8ews6BCO8NO8kepvLn5GQWirjN1TM6gVbRjnNPV', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoidzNrUTJyUWFES0FKUnFxV3Z0dVJUY0w3NWtiTHhISnZ6MEdiYXFwZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754296970),
       ('a9WP36sKJAKqrxWR47M79DiP4imr7E0pMTL1mxUH', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR21qM1VpTmhEQWxGRUZNRmRMMFpibE1nNHp4T3B0bHVJTEprbzV1diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkva25vd2xlZGdlLW5ld3M/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754298157),
       ('aAsnssqDkzyYgNjCvC9K3jmdb2FMdhrIcRuRRzvS', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWkRRR0QxemJsOVZ1c0xCWHQzaThSbFdjOXh5TXFHMmF5bWRkQ3p3WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkva25vd2xlZGdlLW5ld3M/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754303356),
       ('aCBuYkLUetOH5l5IPGHKCyJbw2nt916k8ovxoQWm', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM05Ub1ZjZTBXb0loQ083WGd4RWhCelhmZzNlbFRBZEVxaGwwWnZadiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0yJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301429),
       ('AhOSsMtirwBPM9vPmvMbvl0beYzCN0Vacoohxr7T', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOERoNkJTUDk2dU1qTEExT1RpR3VBZlRGektFc3M4aVpMUmZSaXJ4byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLW1hdS1naWFvLTMtNi10dW9pLTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301868),
       ('AIU88AmJYQ8jB6Ltw9MdPEf9FWdPtGWLrSPxG4HE', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3VNZ0dzOXVveHhZNktyd2t1bmJIZU14Q2pXWlR2d0I4TE0wSTNOeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754298163),
       ('ak46rXT1uDjyJpe157gB9TMBEr6bbmOjDfOoLddr', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoidXQweUg2aGg4b2o3d2hER2o5THRJS09iaXBscTEwZnI1NWJQbGp5TSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLXRoY3MtMTEtMTMtdHVvaS0zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754299527),
       ('ALT7MwZV9bqH9GRWxJE2e0fS06QTi3M1sBZXTf02', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSVpGSDRSRGx3S0VkcXJlUjFpcFJTZXR5RXZrSWVZUk1sVE5IWkZndSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303857),
       ('aP3CWOT5nCpX0yN5YddlW1cYqNKGOV8eoIDB1BE2', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZGlMSTNtV0x3bXFEYnp1SFAzUjZzWllzSmMzYnlhR3dVeE1wQWFNZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbmV3cz9wYWdlPTEmcGFnZVNpemU9MTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301727),
       ('aVCtwWBwV6TI8EiycLiTr1uYWt2RDtxXF8Inck57', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZWlIMUViaWc4MWRiRHphYkp4ZFcwMmVwNnFrbkt5R1JONXJHYndJQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754299293),
       ('bCI4asy4WTZo7V0FkKn7bp9AdKlSzVlALsQBvfnS', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaDhKdmpiaVEzcTRtcEdpUXI5RUxlV1F5eHp0V29ZYmRiQXFlZUNkaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLXRpZXUtaG9jLTYtMTEtdHVvaS0yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754299126),
       ('bcWZyQ7yMQAs7IWSy1Xa6x5MhgjWTAYkAtr5bbUC', NULL, '127.0.0.1', 'PostmanRuntime/7.45.0',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTzRQVmxObjRCUk9RUEhhczVjNDV0cFpLbUthOUQ3MEVmQm9oeFBSZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754302947),
       ('BEhkjFqdYzpvPmcGIrm6DftSRu4zum2O6vcRZ3yS', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoieVpyRnZKcnZMYmpnckw1ZHhKeWxMREJJRVJ0SXJzS2lsREg3MGR0WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754299341),
       ('bKWmai6xEIQbrmqgX75eHBwpMnnrl6lG2LKUx3QW', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZGMyNkFLM3Rua21paVQzTVFNY3hIdkNEZElQdGZJVnlOb1hLcU1ueCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY2F0ZWdvcmllcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754303429),
       ('bLhuEk9HVAFzdJyZ0xAap3Ib9lW4KMQR0Cxn77Xe', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR0lGaHNoNzliZDFJUkhJR3BBUk5FalBqa2RrbnpLcTU3Q0lzMnFkNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvcGFyZW50cy1jb3JuZXI/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754302679),
       ('bLvH0HOKPziRXoFyGD3z81lo6m7TiYRUFHT0dk35', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUVZWbzF1a0tOWGU4NjhrZUxzVVZmTWpPWlZsV0JJQ2dDVGFQNUx4cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvZG9jdW1lbnRzP3BhZ2VTaXplPTQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754298157),
       ('Bn2eiL8sjMpZnYu6xsjhNYWzK4RqMRfJvFfdbtaJ', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNjczMjJBUDVoWDdkSGoxUDlhQkJhMGlNQmZEVFgwdDZQeTF1N0FXWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754299119),
       ('bO77k0D2ZUGX3Ixa3tvjKztDyhU6aOH8BpxdNrvM', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoic3RiRllrVER5RmdobGN1N3ZuWmR5TFpMRTU0dmxRNm5KNDZKNnBIVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301394),
       ('BsVp5KdDdUzf9eff9UxvHtFfvqfbFAVJbdIji6cD', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYWF3UnZzT2g1VDRQR3daZnA0eDUyZlhOQmNxUHBPTUN2MTcxVk5OSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkva25vd2xlZGdlLW5ld3M/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754298163),
       ('bxSzx8HM5lKsbtmzd41hNthiZwzQA2KjtOPpeQoW', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNlVLOVNjOEdBdnhZN09uajRqcUZNZHVTMFFucW9WR3owdUZxSm5jUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301970),
       ('C1xI1TG39SDejcLJWrrzbuj7a2nybLxmSZzsGkDA', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaEQ2M0M2TFE4SFJXbDBrTzBwOEVxMFpJRXRxR2NXWndtODRtVG91SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLXRoY3MtMTEtMTMtdHVvaS0zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754301901),
       ('cA1nhg9LzRmwaPeMKVuhHCQHody4FvLGa69CRNjW', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZlFSNU50MWp0ZnU0ZmtwVHRIZTltMVdvQjllTlZBN3RSQ1hHZENrRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvZG9jdW1lbnRzP3BhZ2VTaXplPTQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754298145),
       ('CahG0cEBAayAWcYmVg9lN5XfjeXZvVvz9pBI3YIe', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoieUVGaTZWc1RJME9xUEhrU3kwbzhBdDRmYjVGR1BjQ3RHUm5pZUwxNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754303166),
       ('cFPS7dJirxcZ64KkdnRdfqtRD8CsRNs347IwMOfV', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoidktLQTlJR1JXTERhQjVlNlVSc1duWjZXejAydmF0Skg3aTZlSjVrQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY2F0ZWdvcmllcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754297695),
       ('cfV8iCgfdRBqpbVoLx39tcyF5TymtuWiUuvHqHLs', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTVoxWUtablJDeHl4cmlmNkZTVVJWckk0UGRKWXVNenMwamVBNWs2RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754298010),
       ('chubj2dl8IgSUKL8ghOG5WTkjUfRGThv22mBDFWb', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoickZhUjhDSFNTTndTY1V6TklIMUV3NHV1NXBORVRMcXQ3d3Z0WWZSVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303829),
       ('cMAy7s3oJypYPaHKDJPYeAniU6PogrXjqqaq4o34', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoicjdEUGpaTmxja1p5ZzlKcTdLbzJSajdLV2dySHdpd2dHZHNqN25IMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303833),
       ('cWYC89AMGab7mxLNLUHwjOEBBOxfWI7A3OwEtbke', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVTdkZFBobjIxenlzV3ZYcmNsMWFEYTlZZmxnQkRwdjZTUUZESFNQTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvZG9jdW1lbnRzP3BhZ2VTaXplPTQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754297370),
       ('cXsMUFVpKeHMYwlyWP034Tlsc1aV4LcjhEgpwIzN', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSHBMdll3SFVudVB2ZmRZdlNmNzFpeENvQlhiSnhRRzA5aHYyeWV5OCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754299293),
       ('d5CFQfXzBaNoXB729JPM321pKRRplKebTanmHLdK', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoibDhpMHhmWnFkcmZyRDFHb1E2b1ZlWEJjNnd3R3JzTmVYRktEVFFHaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvY2h1b25nLXRyaW5oLWJhbi10cnUtaGUtNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301925),
       ('d6H3lpWCbYJynrdKt1jAVu1kLndeoIasMwZlJ0HA', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTGwwb1hzZkVuMk1HRXRCZHN2Q3ZGQ2ZqVW1BWUF0TnFkU0gzQWxKQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY2F0ZWdvcmllcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754303785),
       ('D7JJccT4JTvrPnDvsBlSxy5qNFeNKtrMrdijX5je', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTWhsckdpMFZ5QUtDNklrbGViMTU4ZWkzc1ZnbncyRDljUHhEZXkzcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY2F0ZWdvcmllcy90aW4tdHVjLTIvbmV3cz9wYWdlPTEmcGFnZVNpemU9MTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301979),
       ('dAbMV9Fpq1ihj4ZcXCt2dvOnyysbdE4PdqI2GGST', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR2pLOHpyOW9ZQnU2ekszSHlGSExaZDFYQ3dLMk1iR00xZVN1bm9HUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLXRpZXUtaG9jLTYtMTEtdHVvaS0yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754299334),
       ('DF71XINyMryOuB5ycXXYxdy57hxCGbZfasC6sv0S', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVnhTYVFHdjE5TTVDWXExUGlHT0E4cVczQ1JoaTJubXZMNnVQaU5BWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvZG9jdW1lbnRzP3BhZ2VTaXplPTQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754298163),
       ('DjXuskbfujC6kCmGDGxP9HFJ5P8m88uhmDZlnvOt', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVgxYXMzOGhlM3pFR0hTTE1RZVRiNGlqSEp0MW15eXZIWFA3MHMxTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754296985),
       ('dm640vxEoXYMaxf2MFigI3OkfUGbNTXVQ5xwfHNR', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV0ZRQTdGRmxYa0NiMkNGcFNpdUQ2c1ZLeGNpRjBPQkR4VzBBQThvZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvcGFyZW50cy1jb3JuZXI/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754303356),
       ('dnDxHC0X7vVXK7PtFfnSvIjtMDVlPLHmgS5xOmJx', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNWtZdWZ4UnJtY1hoamZYRjRYUGY1Z2V6ZEYyZ25Zc2R0a3JaMUZPNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY2F0ZWdvcmllcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754302676),
       ('DOJNFek9d79ecX6twJwE6Ie8d3uCRR4sujHNEcij', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMHgwZTViWWlXVFlLMktvTnlkWkdOcTE3azRDM2IxM3lVbnZYTHZ6YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY2F0ZWdvcmllcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301977),
       ('Dx0t2EgZlmF57tI9S0iVa6kWAsv4Z81M6fRAd1us', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVjE5blozMkVsSkpJRjN0bGROVTNSSTA2SjN2ekhYOEtLeUJqdWRGNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754302592),
       ('e94eoA1a6XyCsEonDE22LHa9xcR9IkK5uOeAQBBU', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3FHM0Y1cHZqbFYxTEVTMXVwZng3SG1JblhGbFlSR0V4a0E2SlloeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301966),
       ('eavHfm7uVkcn9PMWO21aD5TC3SjfeKh6tyTL5oI7', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWjRKdUFwTTR2cUh0NEpHazRRZXhqcENpV0dydEtlc1hwV05yV2Y5MCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLXRoY3MtMTEtMTMtdHVvaS0zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754299527),
       ('ehCsarSMsaeGp78pfX9v7Os5uVKphO36Sgi1IFy0', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOFZSRjR2dEpocUh4bWdwUm9Wd0NoalJMWG9RaXlRSmo4MDNyNVdBOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754296970),
       ('eixhfPuRFui1hRXf6OJk9CtEIAu4ABlNcZx3I8MJ', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUG1SWXpsWG5pWXRMTWpTQ0ZmTlc2djg5Wnh3WDZnTkZNalBhcmJzayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvcGFyZW50cy1jb3JuZXI/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754297809),
       ('EKBwmip3CaTfaQ52Q3wYrFwvZ93NK0Jpp1EdpdW9', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVllPSFZ1cU1VQTY4anhROXJnYklUbXZZcThSRHBGamVRUTFaN216ZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754299527),
       ('EKL22nFL2NdC7x61kbvWYk1yNxZ8obcRWEMQpw3a', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMzZIVkF3YXg2ZmlNenBaU1ZzRGdXaXFiM01IZ1VxcDMyWno0OVFFQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvcGFyZW50cy1jb3JuZXI/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754298163),
       ('ekwCqurjxrnjFmJxaL5Yg8ogc7xgKTPoCR0V8ENJ', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS1hPc2ZTa1F4WUV2S1UzOGNadENyUWRlU1JZUm1XblBsQVdHVTdrbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754300320),
       ('EN5TKR9Q4O594Nzx9TecHV5E3hQnbyc7gs6Zz089', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY3l1T2dzTElHNWxvTDVkUTJKU2RBOTN2aVhhVEQxQTVVVDN3WUdpYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLXRpZXUtaG9jLTYtMTEtdHVvaS0yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754299293),
       ('eRKy8wwqq9ruC34llxKcarIpyWP35h1ojFzLRFz7', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYXRXS1BSSG9hU3czbUI2cHBPNW5aTVdMUXVIcDJSRjR5Nm9MRHlHRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754296969),
       ('eTBBG8gNMXdJMQ5CjRV5A3lI5etZ3qC5nF0bmjMH', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGZOSDBVNUkyV28wWDBkcFRRakloSE5qbnBMYmE2YXdVcmNtNm52UyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvY2h1b25nLXRyaW5oLWJhbi10cnUtaGUtNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301972),
       ('F3auONlIWzqTQ6k8yfn7ldTX7ttN4yG0ugl9odWw', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTjFBR2N0SmUxNXJUV1gxVVlCcERLQUxoelQwSEZUOWZ4U1EzVFFoWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbmV3cz9wYWdlPTEmcGFnZVNpemU9MTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303785),
       ('f6hHBkAxAnQGYcHyfbQvdBQ5vTEo7bbEaT1Ovoe0', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0t5MjlDeXNnMWcwU1J4Njg2dVdSTlN6SGVLWjVmQURzeFFLaUFBcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303340),
       ('F89xurS9SKGyGGaYB69cAs3dCgoVxnjFATHZLsTE', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoid0hhV3FhQm1WYnM3VDYwTDd3b0htZXp4bHdSSWJpVjBqZVRIVkRLTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301022),
       ('fa479WIXIDLFfjPXJjtYaZSg7xCy3icpkRQHuXLO', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYjFkclRBaTFQV2JhalZ4bzN0ZEdtandITVJMMktaVlUwVFhUeTJ6MCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754303174),
       ('fcmxz3bqVG4WQARmHybPT9z2BFSxK61iyeEY1wiz', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU0hHOGZOVWY0NUhZSkJSU29hN1hSazdCYmkwNGxNTDQ3dzdRU2tQayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754299292),
       ('fDKG21H3b0EelkDM5E5UsmCdthFIHJOlYb1sKj5K', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUHZETjNlNlRwN2tjNm5MUUdGQnIwTHBlY3MwVW1uejhGYTNPcTdoWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301838),
       ('fe2t7m6ZiMNITBwjCDJxWhYywFoHlXTPCS63W3y4', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSlV2U05BQ0VCY1Z3UTJJMTJoeXMyRmxXdU9zZ0VEeWpVOG5laUtOQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLW1hdS1naWFvLTMtNi10dW9pLTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301976),
       ('FGmN70TwqqTw6JWTuP2xFgou9oGrPPRsokP2iXy4', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiazU3a0hYczBjcVdLMkZBMzZ6aHZ0Wk8yczBwVlNDT3FNclB6aTd4YSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY2F0ZWdvcmllcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754303829),
       ('FhEm07B9hqaM5ai75yRVOsngRMxDzGLSYTATlBAu', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoicDZ0REswYXpSUGh1QzRLRE9leG9rc2tvaGtPNFdmSXQyekFwYmQ4eiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301980),
       ('FM8PZ7uivSPAZ0bG77qFmnvlBMdXD9wOYQy9I7P4', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoicE9LNUlBeVdKclpUMXVSYVZHTUFCc0NsaGVnQU1QQkg2eW1xZnk3TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303358),
       ('FqZOYm1Wwj1XhzGqt2O8Wv0nFmMqT6UcHnSK6ETj', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoielUyR1NIZk9SMW0wbEVPNlk1eFNlcGpiaFBMV25IWTYxdTZoOEZxRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY2F0ZWdvcmllcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754303868),
       ('FuDjnUX9QQeoaCBEjV3qnofLlhZNMGDWHbd4OMjx', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUlRxSHlVU0RjSXdCT2tLVDRYVVk5SlVvZFJGQjVSVFN0UVByMFZiWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLWRvYW5oLW5naGllcC01Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754301966),
       ('g2lKw7f2DkL0LGfLUKIYth0xExwY6OHwLUz52cQq', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWGozWjlPMGJwUHF4UXpXUmJRcFZXNXFrUTBtV2hoWGViQ09wRmJhTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754302659),
       ('g4U3LBnKHdXtxDnnarqdX6TTEszxvStBhKFwkBND', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGZtOUpXaHEyQ2t5QUoxcG1XVXU3bXJnc3B4OUVBNURjcTFpMTNHWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754303376),
       ('g7UrK1rbzmk1sMi3wZNo3HPTyMuhmYph9dzVRbPq', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoialRkVTRITm5lNDE4V2ZGOGE5aG56amxXaWgwR3ZTbTlCamk0UFhGViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLW1hdS1naWFvLTMtNi10dW9pLTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303376),
       ('geiX05XWboPhcuvhc3JYQj0A9d1ikExnCbWXzNvM', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTHUxUDBmN1hEVkdzcUtWN1QxUm5VYkZ0UkxHNklTT2dMcTJCenV0TCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754302690),
       ('GH3LSHV5KIeRWugoVXiJ15JT8QAsAZQu1mkewy38', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ3VsNmg2MXJIdGNOQkpjT2VjT0lyNG51SEExS0E2QVdDYnU1emhLYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvcGFyZW50cy1jb3JuZXI/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754297370),
       ('gl3QPJZKLOwqVR6vGZ4vxK62hNTzxUheCaGkLRKX', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoidUxob05ud3E2RWdjNjJSTVRvNDlZSEZ6andsUDYwU2NlOUhjMnNWRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754302659),
       ('gnlBvR4skvJB1lsFXKgAqTsuXdS82D48fket7Lmk', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1lzTnpqZDlQSGtuOUZKWVkzcGlKaDNabTl5NHo5djZHNk9USng4cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754297712),
       ('gNnFV5iR2OQ3ZEACmUyvVvsA5vEk8xvI6sRHbuz4', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiREpKNXVPZFBoeHZVTUY2TzRRU3RJZDZnU09jTjA1b3lGT3BOeGJPMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754300320),
       ('GQWX2aaRcnEjQTrECOrnTtdOV4LyqpG4N5p02Z59', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSzZjSlV5NlRaa1FaalI4Rk94RFFvUFBub3BBeUhETzZyczBaUzAyQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvcGFyZW50cy1jb3JuZXI/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754303167),
       ('hnTTPaIJzCSEf92ynHtM8eza8ULE8tIIvckF5BAW', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZjdMV0hESXF1SDk5UThvdU9JQnpSaU9yNXB2SDdjQTk5VXpyYmtzbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301866),
       ('HoheQinZ6RMqFDqi1pWI24l5bKiFXEJrphmyqI5m', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNEpiUFVpSGkyVVVnZ3FoSFVvOTF4cDRnT25DckluR2NveUVkVUl1cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754302592),
       ('HuXc1Ou1h3N6uxNH64VUNHDf0XlyczOPYL2RKSyC', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ1BvUHh0VnlwUnRmUHE2b0twODVlUGFzQlpqeU9sT2NvMjJFNlUyOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301170),
       ('HvQH8PcbtLLj5GF5AagaOjS2X6LtvLSZ37SABir9', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3lhZHY3bjljRlVMZ3lMMHd6S2VITVdwQ3RvMUlwY2NNeGFjZU1YUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvcGFyZW50cy1jb3JuZXI/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754298157),
       ('Hw6YTRNhYjwqBWzdfFSW5ng4bHbXbRAA83rUNBd6', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkFWNGNManZibWdSMjh4bzVVRE5ybXhOQkVkU1dLRlRyVXRMNEY5UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLW1hdS1naWFvLTMtNi10dW9pLTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754298826),
       ('i6IMi40ThmqTkGzqyf61OgxD7aKb5TLCTzKTHQKn', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN29ob2VRblo4TTVoVm9sS2xuT084UVdXSExWbGZ4TVJkVnFuMWlXcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0yJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301174),
       ('Ibc85XRVG0yhFyx3lCJXUndj11of2SFxa1eQSuHT', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUlhYejFDdjJGUWtEbnZwejRoaTVqUmcwUE5BbERxTVY5VWpEd3JNQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLW1hdS1naWFvLTMtNi10dW9pLTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754296985),
       ('IcWVlQ73SKN3XOigmv6iAyi4iN2fq51stLUN44po', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT01wWFYyWWtrNUlVbDRlc0x1UVdFampKYmoxOVl3RjBTQ3VNbU4zdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754299119),
       ('iEPwbHxtjQKdoGhOi1ybEBqJMLWjX9wEbq0od21E', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS3BWWUVWUW5FdlB5UzlxekJZUDFoYzgzSHh0SHJNUXRuT0pSOEtaUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754302678),
       ('Ih4wX6IoYefkaq57zwe4kSjZLp28Vvra38dcm8vp', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoicW5qaWc2bEpTQlRzeDZXZEZxYVBXb2RyS1JINXBwaEZGaThiMm43OCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbmV3cz9wYWdlPTEmcGFnZVNpemU9MTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303778),
       ('ihqcFpgfXcH1BHiKfvCJAsG6lRP1hTVEilR5lkJH', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoialkzU01ESk80VHc5N0x1Wk05a2Vyc1RHT2RRTktwTGE2NzRGYlZGcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754302593),
       ('IOsFburSanTat5JU5UagZqyblNEEE2VT8df1BiHj', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVDFoZGdmbldMSXh6dU5LaTJLaXRxUzkyUlpsVkdJMlgzYVRWb0RsZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754296974),
       ('irNgtBOsJkzjnDrn2JQn6Jh2h5yQ2VF1yd6dlXVJ', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZTNYcWhnN3hiQ3BxaGNycXVNY0FmQ3pxSDVkSDIzT0JmNUplZkh1OSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754296969),
       ('IrQxGoKXuQfhKzyI4rEN2CQ0TZkk0UKI8N76yMyF', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoicnNEc2ZqbkFZS251RTFGTklDRENXRVNCZ3F6RWc0cnZqbmVVMFRMRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301925),
       ('iYymkQyIQ6l5Y9QhcotGSMhz6WsMf67wZTndASqt', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV2F4NmMxQjZlWFNOOUtvdHluRkEwRFI5Q0xJOFNQUll5djhrd0hicyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301975),
       ('j8DpoABDS0udU3wr1UkYFwUM9uJTcORABF9gAIk8', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS1ZMaUpYNWd2STd6emNNUWlxcTRKM3BmSExHSktCNkw2aXliOXpPMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303860),
       ('JaJTJwZsgDoIyN2R3Hmmohnby0WxJQk8y8n0Ztfk', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoic1NwU3BBVnRla1FiWFJsQ20xMW8wQlMzWkI5a0hJVHlyaGVOZjJ1aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301169),
       ('jgZQLGMG1zzfxVm7eeiDMQdcuMRrHk8J3UxmvEnF', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoid1dsTmJlSUY3M3Vhd3F0ZWFYUll6MUVMZlY5bjdOc1RRc2JUMHE2WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754296970),
       ('jhfanzjncE5qgaDfG8En0bQJIkGIlcOyURg9DMS9', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoidXVWR1FUeXY1SGoyZjB0S3dhUWtnbk54d3kwS0VrbjZlektlMWFQeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0yJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301024),
       ('jHSVW2M4lLtYbUxdFBsOayRITGqbUBYlWe1XbsvR', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTFRxZXg2cExjNDFHUGhPME9vaDZEZW4zUGRDN1d6OFdCZXJTcW1peSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY2F0ZWdvcmllcy9raWVuLXRodWMtdmEta2luaC1uZ2hpZW0tMS9uZXdzP3BhZ2U9MSZwYWdlU2l6ZT0xMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301847),
       ('jInQ5C83JKP2Cimn1epbLZE0ZRHRSfDHlVl2hjKd', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ1J0ZDZjaW9FM3puQWtxeVF1U0ZIek16b1JiUXQwQzVUSmlnZm9QTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301868),
       ('JqNq7OwDxJFTYyWn3VpMnzt3mueN7zdXuu1E0u6f', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWkU5UWpSRnZieWQzMmlEUnJmeVdLakt4RjV0MEYxVnQ3aDk4Qks0NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLWRvYW5oLW5naGllcC01Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754301035),
       ('jqo0rPbKpinjhH3JwXAoZS8Qs20CekUiiR3hz5Fv', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiamd3SVp6ZUZVaGhpZW5Dd21ERjI1a1ZHMDNwYnJ4MTQ0SE5EMTd0dSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY2F0ZWdvcmllcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301838),
       ('JulnvTHtF8AQJzfUn8FnVyyuLGJHr3P3sDShDO9E', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT2tOSHdaZlp3QWxkcWhwRHBGS080NTlNVHRxZUtNd28wV0VieVAycyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754299314),
       ('K5zISUF7GGucPruTWpa50loMuysBRyPrW137WjpJ', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMXRJMzlmN2ZRVWJxWFk1YkVpNTI4bzdsaTRPdm1TSUpta3hIQ1Q5ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0yJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303873),
       ('kA1Wkp1QhYDIEOectRCihmxv8Xwr2hyASAdbjCfp', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoicVE3TlhLTWpIdW9Ia0dwUWxVSnFnazBXS1RLVDBUaEpjeXo4YmxPOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY2F0ZWdvcmllcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301815),
       ('kbiUoO2OodEVya8qwHP78Ay7CXFKPv65wlgsN0sr', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRE9aMHFaVzNkNmFQNGd4Nkw4NHpkN1NFTXU3QjdzcVlxWDNxRm1YNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303868),
       ('KDffkWHroSKJ0m0NBH7paeeDGyqxRcsq5a3c02x1', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaFlNR1RXcWUyZmVHcm5tVmhoOTQ4MjRDZjIwcTdYNDV0QVE2MjFoQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbmV3cz9wYWdlPTEmcGFnZVNpemU9MTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303428),
       ('kfSIiC9gkfHdT0L7e3hdgluNLylF5pu73bT0a69s', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTnlQYTY0RHg5MTRPVldXQ0F6VHFPc05zNHFaVE0xSmpuZTVvR1hrRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754303783),
       ('KfUsUJIApp7ZVyNdaoKoAzrsBI2HPYsn6F7bhjjT', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS044VlpUUzNENUpWWUF6ZjlWRFhoRlNwT0daZzVhWk1HWEJVbjlhUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754303851),
       ('KGxbW1YqDzIgMqp1Nsw3nI4E0bL2T6DTb3rhGJMm', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZlduR1VZeWxRN3dqZEg5bEh0UWQ3cTdRSWJwOEh2anNEUVBqNEJLRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754298157),
       ('kiqX4U5n7blYzHRqtFet4ZaJZEElPCpeRM8LqZuH', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZElRNGo0MzJKVGFsb0pEU3lQQXVEblFRcUh3MFJyMndtVER6RlM1ZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754298818),
       ('kWfLPrIWmoU1aQI4oJRTDo8IN36W5etimIBsayng', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNWVaZzAwT3pldnBxYWh2TDVMVTE2eXcza2NVZDJiRWU0a3BEQlRmQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbmV3cz9wYWdlPTEmcGFnZVNpemU9MTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301725),
       ('KxwcDfgQXynJx5EP1fkMkkpUiIfcMjpUKiu9wuXZ', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQXFXRmxYZHJYU1dwSkE1a0pFQjJkU1hLTjcyQXF4d29Zd3ZySVBoNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754302592),
       ('l1fovWwdkzhUjt2ZDwXzPHepfAERimTrv37iKdtC', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoibklJT080R0JTNDhqV1dqSzd6SWJtQUtEanUxNHdyUFBvSEZnN0V4dyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301271),
       ('l5kcuOCRIGtZ3udvFXJ9vsuvzQS5KVF1vU6213Eq', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWtNNTluRG1kdWcwWFh3OU92U0k0RFQ1VDNERVh2ZHlyTlFMS1NpSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvZG9jdW1lbnRzP3BhZ2VTaXplPTQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303853),
       ('l6l3KBKHQ9owl6UTKAU7m7a6ZzvtA3lbORkNXYNT', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQUR4Y3JZOWE4UTRiSU9CMkxNYlVlWVFQQ2JUVXJsTUczWTF1T09BNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301815),
       ('lHfZKsNa6ZWfGT0Cwvfuvs8qKjgBs8cU0MZ8mmcb', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTVR4TWduN0FsSkV0bXJHRnEzbk9zWk5JdUszRkkxZE9Qd29JY3o5ZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754302659),
       ('lhH1Y0siQw9iCtqM8NzABqyILisGYoy8YIA1ZsJ8', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ3RQSWRQQXV6S2RpdW5lU2tmUjNvcTJWZEVoZUVEQzBUQVZnaWVxUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754299314),
       ('LiUfFQiBFArSmOcuRA38tmdHkr0nZ9wmbYjLlIlg', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWFQVGsyZG02OXhNdVNzcXRXVGdBT1V2ZEVnaEpnU0NoZGo4UkZFUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLWRvYW5oLW5naGllcC01Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754301948),
       ('lw7esJkDo3mjJw1cjTTPcr0YcDep6HTLR0XDuY54', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoia1IwR0VsYTF6RFo1dXhrUWNiRXBNUlRVYkxHMGlQVXdEN21qTE41cCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301972),
       ('lyXoVc1lVAMWQ1RpnIl6WjuPBlgKkrLJJJSdlPe3', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoib2ZLc1ppSzh1cGRDTko1aVoxTVhFZklKQjRwN2FteUVSZEc3MlZMRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLXRpZXUtaG9jLTYtMTEtdHVvaS0yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754301886),
       ('M1HoJyypsFrlKH68aZ8TnBcwAtS1UpXNN3hNEqwX', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoid0hNMW1TZnZnMWh1NmF0N2lBdjJwOW0ySm1IdnRuSVVHSmVYRjNBdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLWRvYW5oLW5naGllcC01Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754301417),
       ('M25fqdcXDu192ECrj2GlR7FcglKCVX9uTc8lt3U0', 1, '127.0.0.1',
        'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36',
        'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSFFXSWhGNERCcmxCNzNBbG16bWtKNDc4Q1M0aFBmQ1pJQ253d0p4cCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9jb250YWN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9',
        1754303315),
       ('mbOLdSu6MQ6Tcfgdc0PjW3WQeahMGe82qlqzdObP', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY1ZLRjBsZkVKZXhocURDNnNwRFdBS1IwMUszQnhRS3Q4VXJzQ0FydSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbmV3cz9wYWdlPTEmcGFnZVNpemU9MTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754302676),
       ('mcZBXKtGbPhvbDtNZG2VEkrvYSO2gUjk15rlldOc', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUxwVGhlT0QwZnNzRnVVZ3ZNdEpSYVdIaGl1Vmd1NnRQblgwd1ZSRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754300325),
       ('mDEcinmYCLflEvcNuyd4Wd7EUYy7zx9vqirD7ZmN', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSDl2WXdqMjA2UEZKRjd2SEJrVHFGNGhJMzY2TTFJZ25pQVlUOUwzWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLWRvYW5oLW5naGllcC01Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754301357),
       ('MG18jIGesPbv4hQTZXDhGO1QiNEIFXDpdgjIFCZP', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNmsyUVY5U3NBTzd2MjZUWFVkaFNGMG5SRlFSZFR4MDVNV0hNWnkyYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvcGFyZW50cy1jb3JuZXI/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754298145),
       ('Mibl8pQCD2ZPPDToiXiCg5RaE8x3UE8w3eQPVFEc', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTWhqS21VdDBzdklJVlpSVTlETVZ0Q2tEdU5ab3hoYk9FVkRNY2F4TSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754299126),
       ('MjXvajV4F19PjbEjIx8ZcBLVll3xndcPxMhmzzKL', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUENRUm82dVhKZUZWdUR6V3VaVG9EV3J3dXJ4ak5VSkVrRDJQWnR1YSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754300320),
       ('mMfgc67uXNoBhUeoCQhSj3CBdoeq1zRZsPEvo9N9', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoibmRIZEJXWkYyN1dPRXFYS3ZwRE5PZEw5d2dHNGRqeGtjVGhSc3JKayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301276),
       ('MMRYASMtH5hUCcWzmz3SCTGMbpI4JbhrwPeFTnXo', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjFTd0JydWxlZjRBdnRCUVc1OFZPVUNKQUdYd0pIYTlaVzZqcmZsbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvY2h1b25nLXRyaW5oLWJhbi10cnUtaGUtNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301972),
       ('mMxehARgWNxCnIMoedNiCjwBLcos7OUttIy5FFgt', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS20zcEk5RERWYnVuWkpGc1RVR2VsY3Q4amJpMmtHT0x0cjZiMkx5bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754302659),
       ('MP4NsRtvYrb6E5iUbFzfHEsjFrO9efVOLI1bqYZP', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUms1NlZuVFRZOXlKd04ycmVSZ0Iwc0FlWmhUWjlOSXhoRDVqcjE0MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkva25vd2xlZGdlLW5ld3M/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754298145),
       ('mpCkaYwTl6EV74UtdUR6yC1RLSsFe0rLfkQjKTyR', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTGZldFFMN2dvMHhjTjYzeTJta0xySWJoZDZnaEtzVmFXQUdTcWdwayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkva25vd2xlZGdlLW5ld3M/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754302679),
       ('mQjLdLlIqO37tza3TKPEKmGHS5wjGiJKHaNcT0hX', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVEJncHVHZ3ZOV2VTRFpMaEdIdldYemphVzBzbTlhVVNsb3h6WG5LNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301424),
       ('mR48n4VYy2Y19qmhcVG2C4QpyVmBMk1i9mNw4UpP', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWVtWXJOQkhTRklzTkxmSExWM1B3cmwyeWd1d0E4NmtOSm1tb2NzTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0zJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303866),
       ('mxKDQbmJmH0k6y9gSEuQkfXEGiy3xREJY20CM8ol', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUkFUTFIzSDdGaFY1OU5oTG5ySzBvOWxmeEhEdG02czdNQlVjM3V4ayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY2F0ZWdvcmllcy9raWVuLXRodWMtdmEta2luaC1uZ2hpZW0tMS9uZXdzP3BhZ2U9MSZwYWdlU2l6ZT0xMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754303429),
       ('N0hNWuZEenKl9EMIKUfBWFaY9tRWyROvCiULUxYT', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY21XR3lHWklQcFFQNGliTGg0V3RJQ3FiTUpldzNCUU5lRmJoMFc2byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301973),
       ('N7jD14QH4TYHgt37YORklxb5R9uNq1clzPgPNCqO', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoib2F0czd1aXJnbENIUjl0NFlHTk41RENxTTZKZkZlNVNZRnh5bDdRYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvMDk2MjQzNTM2OSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754300389),
       ('n7SeAqajJ0XCwYBT3HsEfHlNEYQpWSHQkWVTvkkv', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWW9nY2dyS083QkhIQlRtNGJ1bGdiUTY3b0ptTXJBMmlQT2hWMnZLTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLWRvYW5oLW5naGllcC01Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754301966),
       ('NgioRUsjXnp6CEBhlGU6dFvPYOVPo5wfndmVmaS8', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZEJtTkgxY2p5VXloNjBDWUVaREJ1YmM2bXpjQlRwRGFqcE5OWDFPWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754299334),
       ('Nhvc4sh2lQtpFgJ0fCa00m76JBrEbRlrmEPPB5Aj', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoieDZrTU9uT3B1bzlzUWVzZGJHa2l5ZTdrR21tRUc0bWxBYUdEUHc4OSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754299076),
       ('njoZlLzNbIvaNBzLF2vR4pmSeJCBGQO74soAsiL4', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoic21UV3liMDRvNGV4TUZBSWRTTWFoWU45eDhUSElGR1FQM3k2RlBmdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY2F0ZWdvcmllcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754303778),
       ('NkCfifNDM17UaRDWp8k4KRlQmkE6gT6Fojwx4Idg', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZGJDY1ZxTXlaUW5pTk1LUlNhVXRwbjI0WlJhSUl6VFdWNWdXT2kzVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLXRpZXUtaG9jLTYtMTEtdHVvaS0yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754301147),
       ('nliZBzdgZ3MEPWyayIeOdnHUqGlnLdPa1sLtIDMN', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0FtODJaaTJnTGFNVXJxOUR0cUxRRmQ0TXZYelRoaXRSZnFHb21qNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLXRpZXUtaG9jLTYtMTEtdHVvaS0yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754299293),
       ('nNjXT6y5iAGDSp2xzSR8DtcSxR5XLpmEyni4UQQr', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoicmI4cExIV2pyVUZiTTFMSlNZTmFhQ1dOcUkweVZNOEVUWkVFblhBQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754302593),
       ('Ny5ik7D8nPOa6wNUPofPWk7cJJBOnycNuMGhbw5q', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZllDNm1LT2FUYXFLN05xM25JZEFNUmlPM1h5czNQVTVlZlZlUXZSeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkva25vd2xlZGdlLW5ld3M/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754303166),
       ('O5GJilIxZrW3GWftzOaRW8244WaBcfqN12VIE7xe', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQmdsbTViMXF4U21TV1h3akdNbFBESWFON2FSTkpMRzdjTlFqcENaUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303167),
       ('oFkna119B8DxsYVXtrxx1UNaGz98tkVVhfAVKyEZ', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSUo3SGFEakhGa1c2T3h0OU1uamJGc2FhRmpoUVN1cGRoWUxFSkFWVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLWRvYW5oLW5naGllcC01Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754301112),
       ('oKWxx17yXhdRXDogcARbEJkWZRTRqeOPKddaanCI', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoid3FrRUtndVNCQ05wTXNvMXVkRTcwZDFpeUVkRHkzeGFJVDZpTE1kMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754300389),
       ('OlHT8BBbIWVp52dodnAJrCHeceYmPCkSH1WL0Z2G', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVXZKODhzaHpVMXhJcXBpck9LVXZweGs3ZThmTG9hVkplZmF3NERzQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLXRoY3MtMTEtMTMtdHVvaS0zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754301901),
       ('OoYMTgK9x9C5Ki6DjkeL3QLfRbSnSPCkYFRmteoI', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaVNiZFEzdXFKNW1nc2R3VG85UmQ0Y3prMVBwcXdFU3k5WEdMdFR6RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303356),
       ('oudj6E82DPuSAaVsMdicMbBHI956gDcTjYJU0ekH', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoieGJIeDA4SWRUUHpQS3ltVmZWY0I4N2hpMVlxaHpwb2h4WW42aHJMZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303870),
       ('OUoYTmyrKLBjVnSTRLby8ggG36keT2v3JLAB9mV8', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTUR6S25yVXJ0WnZRRWt1OWh2ckdwTzJOajZrbndidWZzb29UY3JEeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754298163),
       ('OuW4NmHT2iQ9rEniEHx5qLjYzd37rxrSjDQVAvxs', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1o3T1Rmc1FYVmJ4eXJmZlFIdjdOZDRGdHZ4Rm1UTWxTaDRJZWhXUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY2F0ZWdvcmllcy90aW4tdHVjLTIvbmV3cz9wYWdlPTEmcGFnZVNpemU9MTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301843),
       ('p0LnVs3eRtiMTpphmJl0Fyu0hRZRAR5fNqk3zmvz', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMWU5bXdnTEtKZ2ljR2xTN2pqV2dSNzZERjhoQllhS1NVTnl5UENpOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY2F0ZWdvcmllcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301727),
       ('p6RleV6byPF2wEY8YxF7zif8uyhmGLJc3LtUvXmo', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSTBReHB5WUkyVkJoVW9vTUptc0pHZGF6VE1sVmhiaVo2a09nM1FOeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301417),
       ('PAuwGJckrVDlzt3BpYNs7xgCEU5Rl3aId9oHDMtq', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoieENkMVdWVzJEWHhZbk5KMjdsMkdZWVFjYk56cTNteUV3ak40N3BYZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkva25vd2xlZGdlLW5ld3M/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754303040),
       ('PGSw7cAwh5aemfI6x4mitrKAP1mgElkED11Pzu79', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoidmRyWWpLRGZlZEZUREtTNWRETGZlbDhucDNhWmxIbG5mSlFwb0cxRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbmV3cz9wYWdlPTEmcGFnZVNpemU9MTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301815),
       ('PKfUelUHGDGLQO656UEDoDMbwORo8HZxLCo9QvNb', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUJSOXZKVmtMSjNTWktDN3JXVHo4WEtwcE11ZXRUUk15RVhYbnlrVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301357),
       ('polPC4frwNylhwaTLdEVFUkL0VUA3p0m1XqFvxbH', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVU85dFZ0WExEUnVDbkd2bDNYS1IxeFdGZWpqdmpzZlEweFZySEVTSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301272),
       ('pouzpfL9KWXLWdn4nZBBpymukhTApciy7V0fV1RR', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNDA0Y0dhR29Wa0ZtTkRORTNuNXZ3Mk9nUDgwRjRqTTJUWU5OMDNsSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLW1hdS1naWFvLTMtNi10dW9pLTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754298825),
       ('PTg9Y3Q5M3XssuXcjkuqZFhYQwqITip5Xm3pNRq2', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoidTNnTnNzaXJmeXBIanRHSG5GdElkdmNOMWo2bWx2ZGJ2TGRnWkliMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLXRpZXUtaG9jLTYtMTEtdHVvaS0yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754299126),
       ('PTUooyy4Rrk2THB9C4eDsdmd3jtjUqlGWydPKeee', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTWxLMWVoVG9ndlo1R2FvRUxWUnp1TG1iU2J5cEFCOWVRek1KREV3SiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303785),
       ('PTynNUv9kg6SJ32SdIX8NgTUyoZ97SjWqOG9C7fy', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNnJIc05qRzVMeXNyd2VnbGpVWkZMT0VJWGluQWhucFRsQksxQ0Z0ayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLWRvYW5oLW5naGllcC01Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754301948),
       ('PW4WtoxZPFzVnL70osBuT8cKXKopMton0mHFe5hB', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoidXRMM3l1RTVUaVJoU2N4RWl5SzA1bFd2RU42Y3gzSzh4UTZQN1ZCWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754300389),
       ('pwxBVT74gEfDYQlN2Fq0SC8QaVMH5khffNU2efGB', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmh0dlNoSEJESjh3ZXlRNUlKeEd2WnNYYmlKa2V1SmE5Ymd2TnVZeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754298157),
       ('Q01sOOhfXcm4LcOVb5z5o7bHABKuYLCZPR9Dmyvo', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZVQ0Um43b3pTbDZhR0hXWkxzekFOOWdSY1RjcUdHVVpxZjdrbThoaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLWRvYW5oLW5naGllcC01Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754301970),
       ('Q05cM9ALMo4cqc3bITJDWfuxVXkavGbLegu54FLj', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWhOazJZVHVqTGwwRExVV1VWNjBkNmZHWFJKZ3E0cm5KN2tDeDl3SSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY2F0ZWdvcmllcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754303428),
       ('Q6tUX0yXOjKZoE2CJRkvUEoWRiNdO1WVOul56gco', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoieGpQbldlUDQxRTJpY05vNUIybHlDbDZYemZKUUI1V3Q3eXp1RlhiZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLWRvYW5oLW5naGllcC01Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754301394),
       ('q8hesNa9eC36shXeM6dbLvOtX2ykM5yMRePbSD0B', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0Ezcnk5b2lnNE41UWNKOXdETGZvMTN4UkZyajRBWGxSVFRpa3dpdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301394),
       ('Qkgb8OFBzScFhzOY6RCZDWUOdLxsfoXZmG85l8JL', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjk3bmJNMm9EVDFEWndZYksya1JXd1ExbWxOWlNzM1dNSW9RVWttQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvZG9jdW1lbnRzP3BhZ2VTaXplPTQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754302679),
       ('QPZiJXay4dXhAHOlpV1sGJKGLcc0aUXTCvPGF1zs', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR25LNEpVZEU0Zkg0ZXc2NkdjRk5HY0g4Z1lRSVNkRXRSQkM0ZTJZWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301980),
       ('QUngjn5pPzcJErEwfevYyEjPxVaAmK8vzeNk1L5f', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT0NKVTY4U0JHdE9JYjlKYTdKUWhiS3dseERYSTR0RG5CeFducm9udSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0yJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754299525),
       ('QYC0CS9Vkgq1n9s2SDz6U5zrjcoQCmXEr885EIn8', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQnZlQXBVQk92aUs3MWR0NDVDMk9HWmQ4anhiV2ljQTZNdzZXV2ozMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbmV3cz9wYWdlPTEmcGFnZVNpemU9MTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303830),
       ('r5GrE3NWn4Pt9z6jPUJ9lSlEd8lPBEOoBT0PUDTj', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUncwb1pkNlp4eHN5QjlPdXh3YjNhUmdZT2lOaEhhSWhJa2JvT3FFdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754303815),
       ('r8coCW9TtW4lutG3RsiuqxxInyy4CCf0fadJwTPf', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWHhxMk5rOEp5RWc3NTNCVFRHVDdnVk8wRW5KS29CM0FvcHF5M3FMNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvZG9jdW1lbnRzP3BhZ2VTaXplPTQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754297809),
       ('RauWeGDaVXI1EqN07nrfuEpt8C6bOYjpUVwIzRTr', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkxXanhFN0syd2N4VlpkQUxpZkRxNTJzSnpWbDhhU1Q0cDZYbWJxNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301357),
       ('Rb0TiHrQWZcPHLi4mPc2iRt6NuPoeUuiBZ9xh669', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMUJZSTNvZVVPMndueEtVdFdXVWlTY1A3ZnJPTWd5V0puYmo2QlhnWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754302593),
       ('rfHPXMffoN8HtLbSllttg7kjea9ZWmPFXAM48lfQ', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoib2VqeVlNbmU5ZldCUzZCUUxaQ3B5clBMS3RWSUg1Rk4xMEM0cGp0VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303779),
       ('Rj9TXKyegkZZEI5nvzoPulDSZwCB1s3LrwklEWzE', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoibEhIWlFEYW5VZ25CbllrV0ZYVXVMdUEzazczN0FhSlVGMGVWeHI2RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301901),
       ('RjOJH194s7QTVoLjYXP3gJSWKBe07i169bXZFx71', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0pOQXlzbnRPY3F5RWpHSTQ4b016emU2U2l3WjA4UFIzaVVIYmZHbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303853),
       ('rlnwJFrJzeZdhwG6nnlxxDowV6Ohj6kkapGBc9Qm', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoieXlid29FMUNVQ0VWT0NOVzFVVUxhTmJyNGFWaUhZMjRLQURKZEI1WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754298157),
       ('RR9QPBpnScqQ3s28WrKa0vJNsfYUn8KldbPkdi8V', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoidWVSZ2J6S2NDUnRMRzFYajdxRUY4T01hckkydzdmUEhKS2JrYWwxSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301357),
       ('rrP3IWKUTzOcDXGTglVqzpGFywlXVn2BF1hBO1o0', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS01HN1FyRWpUb0JvbU9vSUxaZ1lpSGRvSWRKOHhqVWJ3aGtoeER4bSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301020),
       ('ruTpVHIegmE5i2h58wOAhWZklox1YKKlDfZpMGrv', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaGdFaVF1WDVWZkRPQ1dLa1ZzQkhsNXJPTVEwaUJjSDBZWmIzczNHZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLWRvYW5oLW5naGllcC01Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754301970),
       ('rVHvDgXIpWP09kNBsrcxiEzVgQwgp0veA2RbbMTY', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY3JJdk5teUdRQWxaT0xwWnZYM3ZwMnNHWFRmZ0tlcHdYbEJubHpUSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754296970),
       ('SQ7pAqjCYAy46nqftQIlaiXELTFhAXUceOV7sYek', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoibTF6Q1gzWnFadjQxamptRmR1alFsYW5rc3U4QkFEWjEwWFN2ZXV4NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303376),
       ('stYQgeozooxtP5WxFX1xEtPPgh8tlymCeUtxQAuq', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoibjNkcGtSU3dmdFJMZnZvUjhBaHdoMlJabHgyRFhCb2QwekZDV3pMUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvY2h1b25nLXRyaW5oLWJhbi10cnUtaGUtNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301133),
       ('swSuhhG3vySrUlB0pBUxVE0JRQPDGeUUzGqdRsc3', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWNvV0RKcUZuTGs2a3B4RWpyQVZHWkI5RVY4QTIyRTlpeHc3VWtiTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301886),
       ('SxhGgfQPxX0KejyDW8LAhHJXPcES8qSUkiHnaG9p', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoieDVRVENDdGVCOUN6NGZnWW9MMXhSdWRISFRHNDJuMHRXRnRyTnp6UyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLWRvYW5oLW5naGllcC01Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754301417),
       ('sym5UjUC0BcvIKA6YdZfA0tqJMmfCpO5Eqy9smP7', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQUh1WXFwc3JXM0tGVXpCVzFiRzFPTzMwSkd5TFpYN0JMTU8zMUNQcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754303340),
       ('sYsT24lxOOaCQogpKst6Hw90SMxyD2RZVnwhNXyC', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoidDg1bk5vdmVORWt0d3pNN2ZyMTI3c0MwanVqb1Y4MXgyTURxNW1VciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbmV3cz9wYWdlPTImcGFnZVNpemU9MTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303815),
       ('t04RLMdOjojJaL6Ul0y9IfKAd2h7Y87dIDynYhXZ', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQm9DOUJFRWVTamFQcGhpbGNKZG1INGY3Q2pqMEVNY3IzY0dxV3llYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLWRvYW5oLW5naGllcC01Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754301035),
       ('T0JYMVllDby0XvkAoWmu6fu7FxevTgFw4xnwrlKv', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUERNTjlkTkdJNGhZVjI1OEtJbGlDbTNSS3hZQlBGTzVMS1NzOXd1VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0zJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301275),
       ('T13xZExL9uqOCkPnWJd1hh7h8wBUoDcNFVXxyw2h', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU0lhZlhVV0s1cFhHR2lwSzF0em5zU1JvMERuV20xNGQ4dnhKaTJyZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303868),
       ('t83oAyZZmVZhtLSBox1L5mc5unUacqsnICaDVVWW', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOTQ5c2UzSlB4ckZQaktUV3lERDJuVzVNaG1WVTJEcUdacll5VEFWcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvY2h1b25nLXRyaW5oLWJhbi10cnUtaGUtNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301133),
       ('TGhXc4aQEn37qirM8wSLDJQ51QBo7r34MME5dUV4', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0dJTDlGQ2xuUHRLYWlTZGRuZHRhMGtRbXUxNzM3NG1YRHZxZzdHMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301976),
       ('Tj4T1CFWWPbwSA05F7IFearSxkHWwNTBLUcmhCdM', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjJmSkZ4ZUEzZDhFekh0c0Q5cVVXWHc3NThSWlgxOEs3ZkcxVVN3YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301965),
       ('TlW8xHn7maKQ1DqJZmGk0X06v6YlcPwolHpWCPmy', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQXNXNFdhU1BzRElGVFVPaEpDM1lIOUUwbGRtRXZLM3lPUFE4dmdXWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvcGFyZW50cy1jb3JuZXI/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754303853),
       ('tp73CqsA308sA87UGAe5GcvgD9ksxUzKFEsrKUTq', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYzZYQVpKNkh2QXo0d09ncGhRYndWWXZvc0xlSjNTZHF3SHo5cHQxQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301147),
       ('TWsRLIOyWsruyEErtoYYykr6mtACGxU600Ilq7cu', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWTFDZkRESk1MazVISVlZWFlvUDVWQkZvYzNsck05N21tMkpSZ1ZZNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY2F0ZWdvcmllcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754303830),
       ('tYS4RWEoD6CVmYbht75ZqEVltpT0KRO8HRXa5gMp', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTmJmSFltRVdIemdBUlRZR1ZFZzk5Q3UxdjlaMlRpbEVWNUlQZWpuZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754298826),
       ('U14qP9bFtJi2gBZ8sVHjQnDPjeImEaZ06HmygQ4w', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRll2eXhVQzRJd05VODlrSjA1TlZ0NTFpSWp3bVNtS21KS1JEd1hTUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301966),
       ('u5qpSfXiQcqyuvG5TYQ7VbyAK6CovWKu3DHOHD9m', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoialdsOVI2MnlacDI5VGU1VFZZY2V4eU9EOTFqVXhNNkxSZ09meXhoTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY2F0ZWdvcmllcy9raWVuLXRodWMtdmEta2luaC1uZ2hpZW0tMS9uZXdzP3BhZ2U9MSZwYWdlU2l6ZT0xMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754303429),
       ('U5urHtWgMI6imYXuEgW2GEjAjH2cYjlZnOdD4pPc', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUY4VjF0dEJvTG1JZjdYU1pOUEhUbmJDUDRXdWRXT1VkMEJHY2FmNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLW1hdS1naWFvLTMtNi10dW9pLTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301868),
       ('uIeJtsN8evKJ2diLQ8kG8ovSsAjCvJe3gyUUh1ih', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWG5MRHE5cXB0RWJ4VHFPVFhvQWJjRjFOakU5Z1BYWmNqc0FmYXZ4MSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY2F0ZWdvcmllcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754303783),
       ('UiFpr4uJGnPY8f4s9AIBnrq4Gi4fxwXEJGVxFNjC', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMnc4RnVaRHlnRURYMlM0akNQVWttN2M0OEdYNUp6TDg2bW0yamxlRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303166),
       ('utqiWAkYi6EgJqqScYBpBp4krr7CTeL8YxXIlU6I', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVjBjb0ljNDdWUUN4WnNMYVhQNThaRHJCTjRDbHowV2JkNnlyRHk3SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkva25vd2xlZGdlLW5ld3M/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754297809),
       ('Uup3oL6KIATeW24IvrapLIkk9R9o4XgnNs9SfYTc', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0lRWk1FMGZBM1hnNnNXS1ZMNnhKV1ozUm9NUE9OWk94TFlrZEhZZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbmV3cz9wYWdlPTEmcGFnZVNpemU9MTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754297695),
       ('UuWQeK2YT8R18bbD4GuQHOkGjoR5dhYk1sDfhcWo', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNndyTTNKU2xDSjI4NVJTTGdCNFFrOFNNRlJ0UUYyTzJUSVZ2R25sdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754302659),
       ('uuZE4DnqA5K0EYiiOMvDA2q5boAgI3wkJIx3njxO', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiODVCalc4cTZ4dndDaFcyNnJLaUdrSFBkampZYVUxYmRpdXd1cWxHTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbmV3cz9wYWdlPTEmcGFnZVNpemU9MTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303868),
       ('UvllGXgJBrLYWlsBNTpwOad8jnkpM0PudJMkc9ZU', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMlQ0aDJWSnltTVhsOVNMdHFYR1FKeW1haEF0Z2o4TlAzemZjaDBQNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754300316),
       ('UzaxU10UkuGZwQ0HoiqFwnBNvln3Br60vN6SBJfR', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVnpHeEJLdW9QQ0MwTzlGVnBwTDl6cHhaT3lGUEhLNlJzT2ZLTEFWZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303868),
       ('V0YARjp0v0N9PTO4FmPGicm5gHnfxiqYPrw861lS', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVFY3ajBOUFh2cXZtUDBjblg4U0YwOFk4RXZhSkJaV3RIMElMOFdlNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301417),
       ('v1q82yl6Fa9ZCRjFb1FLOiV8Roae0arVITnGkHvU', NULL, '127.0.0.1',
        'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMDlXMnNjQXpwMmZWZWk1djRZb1ZUVUtoeGdZZU1YSkdlR2FycVhacSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754298273),
       ('VC9JQuq4sRTjCBRWLlwbmRaKw7SQmxlhzjN02qXL', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVkdIV3lUejZqY0ZJQzBWWVRkdkUyOWtsSVpvZ1R5NGdWU1dlNDV2eSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLW1hdS1naWFvLTMtNi10dW9pLTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303376),
       ('vj9YXcGmhLom1nMxPe8ar2wIFTncfgKwTawZNgn3', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYldLQUhOVkJvRTFNSW9XQUpwZEo0M0hJTDZUVVNmR05kNDRCN0V0MCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLWRvYW5oLW5naGllcC01Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754301357),
       ('vjemeaIJEFoMw525XxMSd1arK1ZRi085HICWMM8D', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWXRqZVpWQmVyS0ZuU2U4RGo5dTF2WXdmVnJyYXB6bkx3N2ZnaDk1MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY2F0ZWdvcmllcy9raWVuLXRodWMtdmEta2luaC1uZ2hpZW0tMS9uZXdzP3BhZ2U9MSZwYWdlU2l6ZT0xMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301977),
       ('VKyEIZR6wthpsflvbIxAtHUjJD3bUicZBcUtHbQ6', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOU13TDdCYmRoa2NLMTlkNDVQVWU4bG1iQzlkZUluVkpjUFZQa0ZYZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754296970),
       ('Vl9PysTiuAHnKMRHd2xaEWMz3OLLYX88PT7ZAo8b', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoibnp3YWgzYUtXZkxPUUxQdzR2UVUxWU13U1gzdWZ1UjJqd1Z5alRjTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLXRpZXUtaG9jLTYtMTEtdHVvaS0yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754299334),
       ('VNkJIM8QdGlVztlo61MmuXK8qxPNQmD43pVTI8VU', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoibkswTVV3QkNmdlBWQ0QzeTRkYkUwOGY4ZXg4enJJZUZDVUdyWFFxQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301112),
       ('vRXwcsPB0MRl4wOC1r3AXYnASI70kUdIb5XviJnj', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWTNscUFTWllVZGJ3Vk9pSUNSZzR2QmlhcGtiTnZ4RXFWM09GSFNHUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754296969),
       ('Vv5qfnid48ZZhqxkOejHs4XtcgI2pNnxcK78bqIO', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoienc3NFQ0a2hzTjN1bjY0MUNjaVFwZHZDVHJZU3p0QVBVV0VOT3JPNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLXRpZXUtaG9jLTYtMTEtdHVvaS0yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754301147),
       ('vW80fVO41fP1zGDZPhnumBahQDYdlVhrZxNdG3eW', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR0hHZkF6Qjl0TnpNSWcwbHdUbUVKTkJ6ZXduUk1sUHFZTm9NV21kSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301815),
       ('W1gHDy1FHM1Xc9ux2GVVrB0INEphQdOmJXBMJhtj', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNktjbnhYcmRhYnY2eW9JdVFuTW9Rd3J2SlpuZDE5d3ZSN1EwVVk4diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301022),
       ('w6lRg7UYgBuDvWGYjlXOAsaosRZUafnna6DJIRpZ', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZDZhdTBuNndPQnNISEs3N3M1QUdEMmtqVktVWnFKTEFaNjl4Y3c1aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301967),
       ('WCj47m8WQnN68md9rxL6zU8H0Y2CsfSckoLlpiKO', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWDZEaVU3a0g3Yk5INkFqcGxGU0ZSWmtrQXAwRFpPdTJlVmRyU2tNcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvZG9jdW1lbnRzP3BhZ2VTaXplPTQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303040),
       ('wH3eW4nkRlzRnJTuIAzqqNhDjckJoDbWvVj3RBk1', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoib0JLYm5nVDVpN2tIZkFWd1J3WGVRa29pWFBkeHVXMkU0bVQ1Y21zNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754297370),
       ('Wlq2ietHdUqoReVTiue5lNSkviRdosPxiWZaGGPG', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVRwS1JQU2dWTUF5OW5yZFNBNlJTdFlGWmY1YVlHVXdjTEZrZEFwTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLW1hdS1naWFvLTMtNi10dW9pLTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301976),
       ('WTyMIL3IPV8sjoxeurkUNY4PI39hYGvePxXZuFZP', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoicm15R3l2SzRwRkFjNE41cnMyQkI2Tk5zbW5SbE1ZSEJTazB3MDI5NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754300389),
       ('wU6DmvWHU7qITFvBbL7u8V5sSTaAj9OXDLRqOkXP', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoieVdxakNUUVJHVTZWaEVGb1hCQU9ieXMyMnlLUWtBYkYxaFpIMmtLcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLWRvYW5oLW5naGllcC01Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754301276),
       ('WUlli5UQqjCC3TkRfMjkhYkmVkstMO3wxHFWHoV9', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZnJPSDhWS3UxVTRnRzNiQ0V6cHB6b3ozeUtNM1RHRE1DVlJKTmNzVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLXRpZXUtaG9jLTYtMTEtdHVvaS0yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754299314),
       ('WWELt4RyrBV8HeCEjtw75stOolIX0TB7WfH60feC', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTFYxc0M4Wk9BOEdBaDVvQWpESlVJbVVRY3VkUUtBcTEwTzByWUxGRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303783),
       ('wYBset2DqhpcN7VaYvUMltgGNEWEinugzocXGRk2', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTTZ5UUFhcUhlUHNnb1Q1NlpGdTJOU0lDYVNMZFJkNW56ZEwzZTJsNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301133),
       ('WyX8GdkRzz1W2OpkVubQIsmFBl2dAOJoIlJeNKxP', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMUJqRVZPeW5wTTJkQXdvSjdYcWFPbWlRZ2gwNUpiYWFKbzVCdVNNUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLWRvYW5oLW5naGllcC01Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754301276),
       ('xcd8vyvzX2dOCh9zSJEd3gVKtv6pi18SEj4YOUrV', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNW1jTkRuSlZ5bVJnMlJCUTBORVFob2VXNE9XUExEMXBsZXNkbGdMcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754299334),
       ('xgrmtNIhZwJq1TYVEq5VrHcnHKdYsbcCiTyvyHwT', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2J5U1JEQUJwV2tDMm5XSE9iUDNVWlRFOWN0M2g2SWVlb0Q0S2JyMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvY2h1b25nLXRyaW5oLWJhbi10cnUtaGUtNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754300325),
       ('xH8GBCdHtLiKejlpG1vw11Pp8WF097Ew5XZ7zwKN', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiREZvQzFaam9CM3JPdmc5Tk5Sdm5LOFNBdmdueWdJbFNyNWxYdm5hUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301967),
       ('XoFuYkXvijGuFgvAALMlzwTzCsdgod9GJW3wKbhz', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaTRoc1FKVXpvbVgybk1uUUJ4QmU2NkhlblF0SlMyQ1cxYWt6MDhldSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754302592),
       ('XQNZK2DJUEMgUCuchWJyTJsYbgQyttr71vtgwZyK', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2h0SHVMMEtDMVRsUjUxUnNyMUs1U01Za2UySWdXSWZnTG1rbkEwdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0zJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301945),
       ('xuS55W8k5sylVK8Swmc8y90WjTlAfRwhpkcISHm0', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiak9NQUJ2RzhMdFJCa3FxOGZ2NlJlRGRacDRwUWx4VGxiU05WdEl0NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301158),
       ('xYV4hCmKvlEq0d92HX4bQkizzkupWXmNP53BC1jy', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOFNPR3JjcjUyalRqcWsyTFNKNUhVN2thQUI3TWt5RmhGVE9DaDRyciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY2F0ZWdvcmllcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301847),
       ('Ycur0eb6jLs1AoOSxHw5ep6EE2mmkLS87Q6mW71n', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZnZqcUdxZXhpVjUzSlNGc2JHTUV5dHVqOVBNbUs2ZFNXVmZPa2hwdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754299314),
       ('yEjv30K7DVR6oYrIoQYJDBWcmJnkkw0OrUHu98S9', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0pZNUVXR28ya2JRTVRiUE54T3pERWNidmZuY3ByZzA1dW5EakMyZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301967),
       ('YfSccPLXlDZP0YtQKymDL1fvpTvO8tPtmogu15d6', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTWRPakV3S2lIUkdpOXROVmdEaXVRN1hod0lqbUhRb05kSjhVRDN3biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754302592),
       ('yJuiOskg7Xi23IoW4OFQrNi2TQ3ynoGALau1rMED', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoib1FPTFk3RmFpVzcxbDRKcW8xb08wcGNtZHBHZGFlYUxQNDRtYjFndyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY2F0ZWdvcmllcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301979),
       ('yKcr0w7lQXc6H27wvrShsfzPS7ECPCCKRLReEPMo', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWE53SmJxalBGdWJxRkdhbGlwSlJzQk40eGFpWkl1Z29iVWlPbWdkayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301980),
       ('YtxnIysmChMcfisv5FZQMtgx2NNlXZQu6PxTN4bL', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMnRObm1IRUZhWDd3OTJST2dYckN0RER2aGdQUzdXT0FmamZYUmZ6QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0yJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754300322),
       ('yvuhsfYbYOjJBtEZB2aThZETaJlro4zixHRqtGda', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYlZ2MHVDRGI4MDl3TFVtbEJOTE44cU9obDJxb25Ea3A5ZkZaSW4zaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkva25vd2xlZGdlLW5ld3M/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754297369),
       ('z0K6n5TQLh6TclTcH5dn6PtmVlGYn3zWOD927UDY', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQnNRc1YzMFBVNDI2dk12T3NkbmprY0NZUVhxQkUxVENrNVJEaVFZaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754301948),
       ('Z68GKu4XM9JmIuqFbSEtG7fFBeDYMWm4xf9eQgAU', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOGc2QWNMQlp3Zk9RUlNXeWRDbzhaRTFJR01QbDhqSUJsTkJJS0F0QSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvY2h1b25nLXRyaW5oLWJhbi10cnUtaGUtNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754300325),
       ('Z8rRFjl9CSm7VPuMyh0AFWvBRbS2vA2AWrMWak5K', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR2piajRkejNRTkVveTdZWmtIa1B6NXJ1Qkw2QnBpaEdCbFNLOTNwRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754303829),
       ('zAXVOya78TyoIjqQ2dy4bncmkvwRGC2j32fwt9FN', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWE02b1ExMmVOZUo1M0dHeGxTQ2VxMUI0dlB0d3JFd2JVUDE3OVVkUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvZG9jdW1lbnRzP3BhZ2VTaXplPTQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303166),
       ('ZeR9Y7OcLpto9Df3r1eRanX08Tsqfd2HiNc1RHzE', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoidmNsOFZPVVY3Uzc3QkJIYklRU05tUlJpRFQ0OUNmQWtxZTdMOEdUTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY2F0ZWdvcmllcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754303779),
       ('zJ7tVI0jZ0iuxXoP6Um8VOweak9RTpPfSFDfr1Gf', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN1JkMTN0MDUxM3NQaXJnTnA1M0c5MlVxMTYwQUF5VDVOSkEwRGRkSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301112),
       ('zJiSAqqmIzfRus5WclfuFIPmtqOEgVATrM4N5iOD', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNVljckpqeDQ1UVRIYVJNckw2REE3QVhBUEhrNHd1U0VXZjd6RVc2cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvdGllbmctYW5oLXRpZXUtaG9jLTYtMTEtdHVvaS0yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',
        1754301886),
       ('ZN87YifoU7Y80d2RwrhtE9fiRlk5QXyU0c2zPJvg', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT004Wm82eDY1MTNwWDVtVzR5WVpaRE1lTHFFZ1Rkd2Z5akpQbG5sTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbmV3cz9wYWdlPTEmcGFnZVNpemU9MTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754303431),
       ('zP6z1YyeihfX9deEoZcSfaLEDk8YJHY4UlL94nca', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM3ZaZ3ZuSDY1T3RlYWxiUEFpVVlkWFdDalZPY01lUGUydTF5TWZ5YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754297809),
       ('zY9bTCcE3hW81AqciEAEm9vokd5dciDWHVrDSPHE', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaElRV0tZdUJyRGQ5OFJ1YzZuNzMxTGNZa0R0WFVZSmRjMUFaMzZRMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754302593),
       ('ZYDRWRqq4T7yOhkXPNBZBosWF78X3eOgUJun1i7q', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYXlwb2dFd25KcTNwTFdWbTM3NE9uS2JycUdkeEJvS1VWYVNlMTQ1ViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0yJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754301899);
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
        'Trình độ: Cử nhân khoa học giáo dục Đại Học Wisconsin - Madison - Mỹ, Chứng chỉ giảng dạy Quốc tế tại Đại Học Wisconsin - Madison, Gần 10 năm kinh nghiệm giảng dạy các độ tuổi mầm non và tiểu học',
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
    `outcome`             varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `method`              varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `content`             longtext COLLATE utf8mb4_unicode_ci,
    `images`              text COLLATE utf8mb4_unicode_ci,
    `youtube_review_link` text COLLATE utf8mb4_unicode_ci,
    `created_at`          timestamp NULL DEFAULT NULL,
    `updated_at`          timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `trainings_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainings`
--

LOCK
TABLES `trainings` WRITE;
/*!40000 ALTER TABLE `trainings` DISABLE KEYS */;
INSERT INTO `trainings`
VALUES (1, 1, 'tieng-anh-mau-giao-3-6-tuoi-1', 'Tiếng Anh Mẫu giáo (3 - 6 tuổi)', '3 - 6 tuổi',
        'Khóa học tiếng Anh mẫu giáo tại AU giúp trẻ 3-6 tuổi phát triển kỹ năng nghe - nói và phản xạ ngôn ngữ tự nhiên thông qua phương pháp ngữ âm 5 cấp độ cùng các hoạt động vui nhộn như bài hát và trò chơi.',
        '/userfiles/images/course/z5581456363302_b57dac4162e102d9e48ad685e3c2334b.jpg',
        'Phát âm đúng theo phương pháp ngữ âm quốc tế | Nhận biết và đánh vần lưu loát | Giao tiếp tự tin ngay từ những năm đầu học | Phát triển kỹ năng đọc và viết từ sớm',
        'Phương pháp giảng dạy tập trung vào ngữ âm và giao tiếp, giúp trẻ 3–6 tuổi phát âm chuẩn, phản xạ nhanh và sử dụng tiếng Anh tự nhiên thông qua bài hát, trò chơi và hoạt động tương tác.',
        '<ol><li>Tập trung đặc biệt vào khả năng nghe – nói, giúp con phản xạ nhanh với ngôn ngữ và phát âm chuẩn bản xứ từ nhỏ. Tiếng Anh mẫu giáo của AU là chương trình ngữ âm tiếng Anh 5 cấp độ, phù hợp với trẻ từ 3 đến 6 tuổi. Chương trình giúp trẻ làm quen và thành thạo 44 âm trong tiếng Anh thông qua các hoạt động tương tác như bài hát, trò chơi và câu đố.</li><li>Chương trình sử dụng hình ảnh sinh động, trò chơi, bài hát và hoạt động tương tác, giúp trẻ học tập một cách vui vẻ và hiệu quả. Qua mỗi cấp độ, trẻ dần phát triển kỹ năng ngôn ngữ và tự tin sử dụng tiếng Anh trong giao tiếp hàng ngày.</li><li>Chương trình giúp trẻ tiếp cận tiếng Anh một cách tự nhiên thông qua phương pháp ngữ âm hiện đại. Trẻ sẽ được làm quen với âm chữ cái, ghép vần và phát âm chuẩn ngay từ những năm đầu đời, tạo nền tảng vững chắc cho kỹ năng đọc và viết.</li></ol>',
        '[\"\\/userfiles\\/images\\/course\\/m%C3%A2m%20non%201.jpg\",\"\\/userfiles\\/images\\/course\\/mn%203.jpg\",\"\\/userfiles\\/images\\/course\\/mn4.jpg\",\"\\/userfiles\\/images\\/course\\/mn5.jpg\",\"\\/userfiles\\/images\\/course\\/z5581456363302_b57dac4162e102d9e48ad685e3c2334b.jpg\"]',
        'https://www.youtube.com/watch?v=MjD-vIFhkOU', '2025-07-21 03:53:45', '2025-08-04 09:13:33'),
       (2, 2, 'tieng-anh-tieu-hoc-6-11-tuoi-2', 'Tiếng Anh Tiểu học (6 - 11 tuổi)', '6 - 11 tuổi',
        'Giúp học sinh Tiểu học phát triển vững chắc kỹ năng giao tiếp tiếng Anh, tư duy ngôn ngữ và khả năng học thuật theo chuẩn quốc tế. Khóa học hướng tới việc xây dựng nền tảng ngôn ngữ lâu dài, đồng thời cải thiện điểm số và sự tự tin trong chương trình học chính khóa.',
        '/userfiles/images/course/ti%E1%BA%BBu%20hoc%202.jpg',
        'Lộ trình học tập bài bản với 100% giáo viên nước ngoài. Rèn luyện kỹ năng sống, tư duy phản xạ và khả năng sử dụng tiếng Anh trong thực tế một cách tự nhiên và hiệu quả.',
        'Tập trung phát triển kỹ năng giao tiếp thực tế qua 100% giáo viên bản ngữ, kết hợp chương trình học thuật chuẩn Cambridge và lộ trình cá nhân hóa theo năng lực từng học sinh.',
        '<p><strong>100% HỌC VỚI GIÁO VIÊN NƯỚC NGOÀI:</strong> Chương trình tập trung vào phát triển kỹ năng giao tiếp thực tế, giúp con tự tin nói tiếng Anh ngay từ những buổi học đầu tiên. Với sự hướng dẫn của giáo viên bản xứ và trợ giảng tận tâm, con sẽ được thực hành phát âm chuẩn, học cách diễn đạt suy nghĩ mạch lạc và thể hiện bản thân bằng tiếng Anh một cách tự nhiên nhất.</p><p><strong>CHƯƠNG TRÌNH HỌC TẬP TÍCH HỢP:</strong> Tại AU, các con được học song song theo lộ trình tiếng Anh học thuật bài bản, bám sát khung chương trình Cambridge do Nhà xuất bản Đại học Oxford phát triển. Bên cạnh đó, AU đặc biệt chú trọng hỗ trợ học sinh nâng cao kết quả học tập tại trường thông qua các buổi học ngữ pháp bổ trợ miễn phí, giúp củng cố kiến thức, cải thiện điểm số và tăng sự tự tin trong lớp học chính khóa.</p><p><strong>LỘ TRÌNH CÁ NHÂN HÓA và HỆ THỐNG HỌC LIỆU TOÀN DIỆN:</strong> Với lộ trình cá nhân hóa theo khả năng của con và hệ thống đánh giá kép. Con được điều chỉnh kịp thời nhờ được đánh giá liên tục. Bố mẹ biết chính xác con đang ở đâu, mạnh gì – yếu gì qua báo cáo chi tiết định kỳ. Hệ thống giao bài tập online trên nền tảng trực tuyến của nhà xuất bản đại học Oxford giúp con hào hứng và tiến bộ nhanh trong học tập.</p>',
        '[\"\\/userfiles\\/images\\/course\\/Ti%E1%BB%83u%20h%E1%BB%8Dc%201.jpg\",\"\\/userfiles\\/images\\/course\\/ti%E1%BA%BBu%20hoc%202.jpg\",\"\\/userfiles\\/images\\/course\\/tieu%20hoc%203.jpg\"]',
        'https://www.youtube.com/watch?v=MeBtmLRtUoQ', '2025-07-21 03:53:45', '2025-08-04 09:22:11'),
       (3, 3, 'tieng-anh-thcs-11-13-tuoi-3', 'Tiếng Anh THCS (11 - 13 tuổi)', '11 - 13 tuổi',
        'Lộ trình học tiếng Anh tại AU dành cho học sinh THCS được thiết kế bài bản, giúp xây nền tảng ngôn ngữ vững chắc và phát triển toàn diện 4 kỹ năng. Học sinh được làm quen sớm với tư duy và cấu trúc bài thi IELTS, sẵn sàng chinh phục mục tiêu ngay từ cấp 3.',
        '/userfiles/images/course/thcs/z6761734186314_db682a9e2e4ab2bb8af1aaa5c6c2b34c.jpg',
        'Giúp học sinh THCS phát triển toàn diện năng lực tiếng Anh học thuật, đạt trình độ B1–B2 theo khung CEFR, và sẵn sàng bước vào lộ trình luyện thi IELTS hiệu quả ở bậc THPT.',
        'Xây dựng nền tảng ngôn ngữ vững chắc, phát triển toàn diện 4 kỹ năng và lồng ghép chiến lược làm bài IELTS từ sớm. Chương trình theo chuẩn Cambridge với đánh giá liên tục, cùng giáo viên nước ngoài hỗ trợ luyện phản xạ giao tiếp và tư duy tiếng Anh.',
        '<p>Giai đoạn học THCS (từ lớp 6 đến lớp 9) là thời điểm quan trọng để học sinh xây dựng nền tảng tiếng Anh vững chắc, chuẩn bị cho các mục tiêu học thuật cao hơn như IELTS ở cấp 3. Tại AU Bắc Giang, chương trình học dành cho học sinh THCS được thiết kế với định hướng tối đa hoá năng lực, phát triển đều cả về kiến thức, kỹ năng và tư duy ngôn ngữ.</p><p><strong>Xây nền tảng học thuật vững chắc:</strong> Hệ thống từ vựng – ngữ pháp – phát âm được củng cố sâu, giúp học sinh hiểu rõ bản chất ngôn ngữ và ứng dụng thành thạo.</p><p><strong>Phát triển toàn diện 4 kỹ năng (Nghe – Nói – Đọc – Viết):</strong> Thông qua các chủ đề học thuật và tình huống thực tế, học sinh được rèn luyện đầy đủ kỹ năng, tạo nền tảng chuyển tiếp mượt mà lên chương trình IELTS.</p><p><strong>Lồng ghép chiến lược làm bài IELTS từ sớm:</strong> Các dạng bài đọc hiểu, viết luận và kỹ năng phản xạ được giới thiệu từng bước, giúp học sinh làm quen dần với cách tư duy và cấu trúc bài thi.</p><p><strong>Học tập theo cấp độ Cambridge – Chuẩn hoá trình độ:</strong> Chương trình học được thiết kế theo hệ thống CEFR (A2–B1–B2), giúp học sinh xác định rõ mục tiêu và theo dõi được tiến độ phát triển của bản thân.</p><p><strong>Luyện phản xạ giao tiếp – Tư duy tiếng Anh:</strong> Giáo viên nước ngoài đồng hành trong các buổi speaking chuyên biệt, giúp học sinh tự tin nói tiếng Anh và tư duy bằng tiếng Anh ngay từ giai đoạn THCS.</p><p><strong>Theo dõi sát sao – Phản hồi kịp thời:</strong> Mỗi học sinh đều được theo dõi tiến độ cá nhân, nhận phản hồi thường xuyên từ giáo viên để kịp thời điều chỉnh phương pháp học phù hợp.</p>',
        '[\"\\/userfiles\\/images\\/course\\/thcs\\/z6761734186314_db682a9e2e4ab2bb8af1aaa5c6c2b34c.jpg\",\"\\/userfiles\\/images\\/course\\/thcs\\/z6784471826211_e9e3bab4247f70ef66e47731efde9c3e.jpg\",\"\\/userfiles\\/images\\/course\\/thcs\\/z6784471845994_a4e1a26b2d683e634c271bd65f4650f1.jpg\",\"\\/userfiles\\/images\\/course\\/thcs\\/z6834235330215_2c619a699a939bf64de1c3358088d62c.jpg\"]',
        'https://www.youtube.com/watch?v=2', '2025-07-21 03:53:45', '2025-08-04 09:25:21'),
       (4, 4, 'chuong-trinh-ban-tru-he-4', 'Chương trình Bán Trú hè', '3 - 13 tuổi',
        'Chương trình Bán trú hè AU mang đến môi trường “du học tại chỗ” với hơn 20 giờ học tiếng Anh/tuần cùng giáo viên bản ngữ, kết hợp đa dạng hoạt động ngoại khóa, kỹ năng, nghệ thuật và môn văn hóa. Trẻ được học trong không gian hiện đại, an toàn tuyệt đối, phụ huynh có thể theo dõi mọi hoạt động hằng ngày.',
        '/userfiles/images/R5AT3841.jpg',
        'Tự tin sử dụng tiếng anh để giao tiếp. Phát triển toàn diện cả về kiến thức học thuật, kỹ năng sống và thể chất, hình thành tư duy sáng tạo, tinh thần hợp tác và sẵn sàng cho năm học mới với nền tảng vững chắc.',
        'Tạo môi trường “du học tại chỗ” với hơn 20 giờ tiếng Anh/tuần cùng 100% giáo viên bản ngữ, kết hợp học tập và sinh hoạt hoàn toàn bằng tiếng Anh.',
        '<p>Mô hình “<strong>du học tại chỗ</strong>”: Thời lượng sử dụng Tiếng Anh với giáo viên bản ngữ trên 20 tiếng 1 tuần thông qua: các giờ học tiếng Anh hàng ngày, vui chơi sinh hoạt bằng Tiếng Anh, các trải nghiệm hàng tuần cũng bằng Tiếng Anh để các con được \"tắm\" trong ngôn ngữ một cách tự nhiên như người bản xứ.</p><p><strong>Cơ sở vật chất khang trang hiện đại</strong>: Không gian rộng lên đến hàng ngàn m2 với khu sinh hoạt chung, thư viện, sân chơi thể thao và khu vực ngoài trời.</p><p><strong>Chương trình đào tạo đa dạng và tiên tiến</strong>: Ngoài tiếng Anh chuyên sâu, các con tham gia các lớp năng khiếu (cầu lông, nhảy, Yoga, vẽ), kỹ năng sống và các môn văn hoá (Toán, Văn).</p><p><strong>Hoạt động ngoại khóa đa dạng:</strong> Các chuyến dã ngoại, thăm quan, hoạt động xã hội, từ thiện, khoá tu được hướng dẫn bằng tiếng Anh.</p><p><strong>Dự án thực hành sáng tạo hàng tuần: </strong>Tham gia các dự án khoa học, nghệ thuật, văn hóa để khuyến khích tư duy sáng tạo và kỹ năng làm việc nhóm.</p><p><strong>An ninh và liên lạc:</strong> Hệ thống camera cho phép phụ huynh theo dõi, kèm sổ liên lạc điện tử cập nhật tiến trình học tập.</p>',
        '[]', 'https://www.youtube.com/watch?v=IlAw2WBLlxg', '2025-08-04 09:38:32', '2025-08-04 09:40:36'),
       (5, 5, 'tieng-anh-doanh-nghiep-5', 'Tiếng Anh Doanh Nghiệp', 'Người đi làm',
        'Khóa học chất lượng cao, giúp người đi làm nâng cao khả năng giao tiếp Tiếng Anh, phục vụ cho nhu cầu làm việc và hợp tác quốc tế.',
        '/userfiles/images/course/doanhnghiep/490451643_1257623563036475_4296857575183842521_n.jpg',
        'Nâng cao khả năng giao tiếp trong môi trường làm việc quốc tế, tự tin sử dụng tiếng Anh trong các tình huống chuyên môn như thuyết trình, họp, viết email, và đàm phán.',
        'Tập trung vào chương trình đào tạo cá nhân hóa, nâng cao kỹ năng giao tiếp tiếng Anh chuyên nghiệp phù hợp môi trường quốc tế và yêu cầu doanh nghiệp.',
        '<p><strong>TỰ HÀO KHI ĐƯỢC CHỌN LÀ ĐƠN VỊ CHO CÁC CHUYÊN GIA NGƯỜI HÀN QUỐC&nbsp;</strong></p><p>&nbsp;</p><p style=\"text-align:justify;\">AU Bắc Giang vô cùng vinh dự và tự hào khi được Công ty TNHH Hana Micron Vina (Hàn Quốc), một trong những Công ty lớn và uy tín của Hàn Quốc, chọn làm đối tác đào tạo Tiếng Anh cho các CHUYÊN GIA đến từ HÀN QUỐC. Đây không chỉ là một dấu mốc quan trọng, mà còn là minh chứng rõ ràng cho chất lượng giảng dạy và sự tận tâm của đội ngũ giáo viên tại trung tâm.&nbsp;</p><p style=\"text-align:justify;\">&nbsp;</p><p style=\"text-align:justify;\">Việc được Hana Micron Vina tin tưởng và giao phó nhiệm vụ đào tạo Tiếng Anh cho các chuyên gia không chỉ khẳng định uy tín của Trung tâm trong lĩnh vực đào tạo, mà còn là cơ hội để chúng tôi góp phần phát triển kỹ năng ngôn ngữ cho những người đang làm việc trong môi trường quốc tế. Đây cũng là minh chứng cho sự cam kết của trung tâm trong việc đáp ứng những yêu cầu khắt khe nhất từ phía đối tác doanh nghiệp.&nbsp;</p><p style=\"text-align:justify;\">&nbsp;</p><p style=\"text-align:justify;\">Với đội ngũ giáo viên giàu kinh nghiệm, phương pháp giảng dạy hiệu quả và chương trình học được thiết kế riêng biệt, AU Bắc Giang cam kết mang đến những khóa học chất lượng cao, giúp người đi làm nâng cao khả năng giao tiếp Tiếng Anh, phục vụ cho nhu cầu làm việc và hợp tác quốc tế.</p>',
        '[\"\\/userfiles\\/images\\/course\\/doanhnghiep\\/490451643_1257623563036475_4296857575183842521_n.jpg\",\"\\/userfiles\\/images\\/course\\/doanhnghiep\\/490591983_1257623613036470_1438223622612507161_n.jpg\",\"\\/userfiles\\/images\\/course\\/doanhnghiep\\/491279359_1257623556369809_6607203990488324089_n.jpg\"]',
        '', '2025-08-04 09:49:35', '2025-08-04 09:56:32');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK
TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users`
VALUES (1, 'root', 'root@gmail.com', NULL, '$2y$12$mRctHCuGjzuVn2DrIXLtm.LPsqC./pnoZN3A3BHh/rxgR1lNTkWxi',
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

-- Dump completed on 2025-08-04 17:49:35
