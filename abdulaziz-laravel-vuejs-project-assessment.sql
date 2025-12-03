-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: laravel_vuejs3
-- ------------------------------------------------------
-- Server version	8.0.30

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
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES ('laravel-cache-8a2c61f37b678072ac12f11a1fdcd42b','i:1;',1764436172),('laravel-cache-8a2c61f37b678072ac12f11a1fdcd42b:timer','i:1764436172;',1764436172),('laravel-cache-boost.roster.scan','a:2:{s:6:\"roster\";O:21:\"Laravel\\Roster\\Roster\":3:{s:13:\"\0*\0approaches\";O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:23:\"Laravel\\Roster\\Approach\":1:{s:11:\"\0*\0approach\";E:38:\"Laravel\\Roster\\Enums\\Approaches:ACTION\";}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:11:\"\0*\0packages\";O:32:\"Laravel\\Roster\\PackageCollection\":2:{s:8:\"\0*\0items\";a:22:{i:0;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:4:\"^2.0\";s:10:\"\0*\0package\";E:37:\"Laravel\\Roster\\Enums\\Packages:INERTIA\";s:14:\"\0*\0packageName\";s:25:\"inertiajs/inertia-laravel\";s:10:\"\0*\0version\";s:6:\"2.0.11\";s:6:\"\0*\0dev\";b:0;}i:1;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:4:\"^2.0\";s:10:\"\0*\0package\";E:45:\"Laravel\\Roster\\Enums\\Packages:INERTIA_LARAVEL\";s:14:\"\0*\0packageName\";s:25:\"inertiajs/inertia-laravel\";s:10:\"\0*\0version\";s:6:\"2.0.11\";s:6:\"\0*\0dev\";b:0;}i:2;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:5:\"^1.30\";s:10:\"\0*\0package\";E:37:\"Laravel\\Roster\\Enums\\Packages:FORTIFY\";s:14:\"\0*\0packageName\";s:15:\"laravel/fortify\";s:10:\"\0*\0version\";s:6:\"1.32.1\";s:6:\"\0*\0dev\";b:0;}i:3;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:5:\"^12.0\";s:10:\"\0*\0package\";E:37:\"Laravel\\Roster\\Enums\\Packages:LARAVEL\";s:14:\"\0*\0packageName\";s:17:\"laravel/framework\";s:10:\"\0*\0version\";s:7:\"12.40.2\";s:6:\"\0*\0dev\";b:0;}i:4;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:6:\"v0.3.8\";s:10:\"\0*\0package\";E:37:\"Laravel\\Roster\\Enums\\Packages:PROMPTS\";s:14:\"\0*\0packageName\";s:15:\"laravel/prompts\";s:10:\"\0*\0version\";s:5:\"0.3.8\";s:6:\"\0*\0dev\";b:0;}i:5;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:4:\"^4.0\";s:10:\"\0*\0package\";E:37:\"Laravel\\Roster\\Enums\\Packages:SANCTUM\";s:14:\"\0*\0packageName\";s:15:\"laravel/sanctum\";s:10:\"\0*\0version\";s:5:\"4.2.1\";s:6:\"\0*\0dev\";b:0;}i:6;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:6:\"^0.1.9\";s:10:\"\0*\0package\";E:39:\"Laravel\\Roster\\Enums\\Packages:WAYFINDER\";s:14:\"\0*\0packageName\";s:17:\"laravel/wayfinder\";s:10:\"\0*\0version\";s:6:\"0.1.12\";s:6:\"\0*\0dev\";b:0;}i:7;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:6:\"^0.1.9\";s:10:\"\0*\0package\";E:47:\"Laravel\\Roster\\Enums\\Packages:WAYFINDER_LARAVEL\";s:14:\"\0*\0packageName\";s:17:\"laravel/wayfinder\";s:10:\"\0*\0version\";s:6:\"0.1.12\";s:6:\"\0*\0dev\";b:0;}i:8;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:1:\"*\";s:10:\"\0*\0package\";E:35:\"Laravel\\Roster\\Enums\\Packages:ZIGGY\";s:14:\"\0*\0packageName\";s:15:\"tightenco/ziggy\";s:10:\"\0*\0version\";s:5:\"2.6.0\";s:6:\"\0*\0dev\";b:0;}i:9;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:6:\"v0.3.4\";s:10:\"\0*\0package\";E:33:\"Laravel\\Roster\\Enums\\Packages:MCP\";s:14:\"\0*\0packageName\";s:11:\"laravel/mcp\";s:10:\"\0*\0version\";s:5:\"0.3.4\";s:6:\"\0*\0dev\";b:1;}i:10;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:5:\"^1.24\";s:10:\"\0*\0package\";E:34:\"Laravel\\Roster\\Enums\\Packages:PINT\";s:14:\"\0*\0packageName\";s:12:\"laravel/pint\";s:10:\"\0*\0version\";s:6:\"1.26.0\";s:6:\"\0*\0dev\";b:1;}i:11;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:5:\"^1.41\";s:10:\"\0*\0package\";E:34:\"Laravel\\Roster\\Enums\\Packages:SAIL\";s:14:\"\0*\0packageName\";s:12:\"laravel/sail\";s:10:\"\0*\0version\";s:6:\"1.48.1\";s:6:\"\0*\0dev\";b:1;}i:12;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:4:\"^4.1\";s:10:\"\0*\0package\";E:34:\"Laravel\\Roster\\Enums\\Packages:PEST\";s:14:\"\0*\0packageName\";s:12:\"pestphp/pest\";s:10:\"\0*\0version\";s:5:\"4.1.6\";s:6:\"\0*\0dev\";b:1;}i:13;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:6:\"12.4.4\";s:10:\"\0*\0package\";E:37:\"Laravel\\Roster\\Enums\\Packages:PHPUNIT\";s:14:\"\0*\0packageName\";s:15:\"phpunit/phpunit\";s:10:\"\0*\0version\";s:6:\"12.4.4\";s:6:\"\0*\0dev\";b:1;}i:14;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:0:\"\";s:10:\"\0*\0package\";r:13;s:14:\"\0*\0packageName\";s:15:\"@inertiajs/vue3\";s:10:\"\0*\0version\";s:5:\"2.2.7\";s:6:\"\0*\0dev\";b:0;}i:15;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:0:\"\";s:10:\"\0*\0package\";E:41:\"Laravel\\Roster\\Enums\\Packages:INERTIA_VUE\";s:14:\"\0*\0packageName\";s:15:\"@inertiajs/vue3\";s:10:\"\0*\0version\";s:5:\"2.2.7\";s:6:\"\0*\0dev\";b:0;}i:16;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:0:\"\";s:10:\"\0*\0package\";E:41:\"Laravel\\Roster\\Enums\\Packages:TAILWINDCSS\";s:14:\"\0*\0packageName\";s:11:\"tailwindcss\";s:10:\"\0*\0version\";s:6:\"4.1.14\";s:6:\"\0*\0dev\";b:0;}i:17;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:0:\"\";s:10:\"\0*\0package\";E:33:\"Laravel\\Roster\\Enums\\Packages:VUE\";s:14:\"\0*\0packageName\";s:3:\"vue\";s:10:\"\0*\0version\";s:6:\"3.5.22\";s:6:\"\0*\0dev\";b:0;}i:18;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:0:\"\";s:10:\"\0*\0package\";r:55;s:14:\"\0*\0packageName\";s:30:\"@laravel/vite-plugin-wayfinder\";s:10:\"\0*\0version\";s:5:\"0.1.7\";s:6:\"\0*\0dev\";b:1;}i:19;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:0:\"\";s:10:\"\0*\0package\";E:44:\"Laravel\\Roster\\Enums\\Packages:WAYFINDER_VITE\";s:14:\"\0*\0packageName\";s:30:\"@laravel/vite-plugin-wayfinder\";s:10:\"\0*\0version\";s:5:\"0.1.7\";s:6:\"\0*\0dev\";b:1;}i:20;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:0:\"\";s:10:\"\0*\0package\";E:36:\"Laravel\\Roster\\Enums\\Packages:ESLINT\";s:14:\"\0*\0packageName\";s:6:\"eslint\";s:10:\"\0*\0version\";s:6:\"9.37.0\";s:6:\"\0*\0dev\";b:1;}i:21;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:0:\"\";s:10:\"\0*\0package\";E:38:\"Laravel\\Roster\\Enums\\Packages:PRETTIER\";s:14:\"\0*\0packageName\";s:8:\"prettier\";s:10:\"\0*\0version\";s:5:\"3.6.2\";s:6:\"\0*\0dev\";b:1;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:21:\"\0*\0nodePackageManager\";E:43:\"Laravel\\Roster\\Enums\\NodePackageManager:NPM\";}s:9:\"timestamp\";i:1764579916;}',1764666316);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
INSERT INTO `failed_jobs` VALUES (1,'1025a3ed-4602-4ae0-9f8e-c75eb700a343','database','default','{\"uuid\":\"1025a3ed-4602-4ae0-9f8e-c75eb700a343\",\"displayName\":\"App\\\\Jobs\\\\ProcessExcelQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessExcelQueue\",\"command\":\"O:26:\\\"App\\\\Jobs\\\\ProcessExcelQueue\\\":1:{s:4:\\\"path\\\";s:103:\\\"C:\\\\laragon\\\\www\\\\laravel-vuejs3-starter\\\\storage\\\\app\\/excel_uploads\\/1764745985_product_status_list (1).xlsx\\\";}\"},\"createdAt\":1764745985,\"delay\":null}','Illuminate\\Queue\\MaxAttemptsExceededException: App\\Jobs\\ProcessExcelQueue has been attempted too many times. in C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\MaxAttemptsExceededException.php:24\nStack trace:\n#0 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(835): Illuminate\\Queue\\MaxAttemptsExceededException::forJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob))\n#1 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(555): Illuminate\\Queue\\Worker->maxAttemptsExceededException(Object(Illuminate\\Queue\\Jobs\\DatabaseJob))\n#2 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(458): Illuminate\\Queue\\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), 1)\n#3 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(419): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#4 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(344): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#5 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#6 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#7 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#8 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#9 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#10 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#11 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(836): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#12 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#13 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\symfony\\console\\Command\\Command.php(335): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#14 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#15 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\symfony\\console\\Application.php(1103): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#16 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\symfony\\console\\Application.php(356): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#17 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\symfony\\console\\Application.php(195): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#18 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#19 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 C:\\laragon\\www\\laravel-vuejs3-starter\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#21 {main}','2025-12-02 23:14:41'),(2,'704be2e5-1a68-47a9-bd21-f3de47992711','database','default','{\"uuid\":\"704be2e5-1a68-47a9-bd21-f3de47992711\",\"displayName\":\"App\\\\Jobs\\\\ProcessExcelQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessExcelQueue\",\"command\":\"O:26:\\\"App\\\\Jobs\\\\ProcessExcelQueue\\\":1:{s:4:\\\"path\\\";s:103:\\\"C:\\\\laragon\\\\www\\\\laravel-vuejs3-starter\\\\storage\\\\app\\/excel_uploads\\/1764746015_product_status_list (1).xlsx\\\";}\"},\"createdAt\":1764746015,\"delay\":null}','Illuminate\\Queue\\MaxAttemptsExceededException: App\\Jobs\\ProcessExcelQueue has been attempted too many times. in C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\MaxAttemptsExceededException.php:24\nStack trace:\n#0 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(835): Illuminate\\Queue\\MaxAttemptsExceededException::forJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob))\n#1 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(555): Illuminate\\Queue\\Worker->maxAttemptsExceededException(Object(Illuminate\\Queue\\Jobs\\DatabaseJob))\n#2 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(458): Illuminate\\Queue\\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), 1)\n#3 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(419): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#4 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(344): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#5 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#6 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#7 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#8 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#9 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#10 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#11 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(836): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#12 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#13 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\symfony\\console\\Command\\Command.php(335): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#14 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#15 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\symfony\\console\\Application.php(1103): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#16 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\symfony\\console\\Application.php(356): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#17 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\symfony\\console\\Application.php(195): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#18 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#19 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 C:\\laragon\\www\\laravel-vuejs3-starter\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#21 {main}','2025-12-02 23:15:09'),(3,'4921063c-71fa-4d56-931f-2e09cdcb4fe9','database','default','{\"uuid\":\"4921063c-71fa-4d56-931f-2e09cdcb4fe9\",\"displayName\":\"App\\\\Jobs\\\\ProcessExcelQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessExcelQueue\",\"command\":\"O:26:\\\"App\\\\Jobs\\\\ProcessExcelQueue\\\":1:{s:4:\\\"path\\\";s:111:\\\"C:\\\\laragon\\\\www\\\\laravel-vuejs3-starter\\\\storage\\\\app\\/private\\/excel_uploads\\/1764746073_product_status_list (1).xlsx\\\";}\"},\"createdAt\":1764746073,\"delay\":null}','Illuminate\\Queue\\MaxAttemptsExceededException: App\\Jobs\\ProcessExcelQueue has been attempted too many times. in C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\MaxAttemptsExceededException.php:24\nStack trace:\n#0 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(835): Illuminate\\Queue\\MaxAttemptsExceededException::forJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob))\n#1 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(555): Illuminate\\Queue\\Worker->maxAttemptsExceededException(Object(Illuminate\\Queue\\Jobs\\DatabaseJob))\n#2 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(458): Illuminate\\Queue\\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), 1)\n#3 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(419): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#4 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(344): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#5 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#6 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#7 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#8 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#9 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#10 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#11 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(836): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#12 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#13 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\symfony\\console\\Command\\Command.php(335): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#14 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#15 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\symfony\\console\\Application.php(1103): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#16 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\symfony\\console\\Application.php(356): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#17 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\symfony\\console\\Application.php(195): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#18 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#19 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 C:\\laragon\\www\\laravel-vuejs3-starter\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#21 {main}','2025-12-02 23:16:07'),(4,'8f9249e9-800a-4882-a7c2-5650dd1ca40a','database','default','{\"uuid\":\"8f9249e9-800a-4882-a7c2-5650dd1ca40a\",\"displayName\":\"App\\\\Jobs\\\\ProcessExcelQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessExcelQueue\",\"command\":\"O:26:\\\"App\\\\Jobs\\\\ProcessExcelQueue\\\":2:{s:4:\\\"path\\\";s:111:\\\"C:\\\\laragon\\\\www\\\\laravel-vuejs3-starter\\\\storage\\\\app\\/private\\/excel_uploads\\/1764773871_product_status_list (1).xlsx\\\";s:19:\\\"job_notification_id\\\";i:10;}\"},\"createdAt\":1764773873,\"delay\":null}','Illuminate\\Contracts\\Filesystem\\FileNotFoundException: File [C:\\laragon\\www\\laravel-vuejs3-starter\\storage\\app/private/excel_uploads/1764773871_product_status_list (1).xlsx] does not exist and can therefore not be imported. in C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\maatwebsite\\excel\\src\\Files\\TemporaryFile.php:69\nStack trace:\n#0 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\maatwebsite\\excel\\src\\Reader.php(439): Maatwebsite\\Excel\\Files\\TemporaryFile->copyFrom(\'C:\\\\laragon\\\\www\\\\...\', NULL)\n#1 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\maatwebsite\\excel\\src\\Reader.php(156): Maatwebsite\\Excel\\Reader->getReader(Array, \'C:\\\\laragon\\\\www\\\\...\', \'Xlsx\', NULL)\n#2 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\maatwebsite\\excel\\src\\Excel.php(171): Maatwebsite\\Excel\\Reader->toArray(Array, \'C:\\\\laragon\\\\www\\\\...\', \'Xlsx\', NULL)\n#3 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(363): Maatwebsite\\Excel\\Excel->toArray(Array, \'C:\\\\laragon\\\\www\\\\...\')\n#4 C:\\laragon\\www\\laravel-vuejs3-starter\\app\\Jobs\\ProcessExcelQueue.php(32): Illuminate\\Support\\Facades\\Facade::__callStatic(\'toArray\', Array)\n#5 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\ProcessExcelQueue->handle()\n#6 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#7 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#8 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#9 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(836): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#10 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(129): Illuminate\\Container\\Container->call(Array)\n#11 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Bus\\Dispatcher->{closure:Illuminate\\Bus\\Dispatcher::dispatchNow():126}(Object(App\\Jobs\\ProcessExcelQueue))\n#12 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():178}(Object(App\\Jobs\\ProcessExcelQueue))\n#13 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(133): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(134): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\ProcessExcelQueue), false)\n#15 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Queue\\CallQueuedHandler->{closure:Illuminate\\Queue\\CallQueuedHandler::dispatchThroughMiddleware():127}(Object(App\\Jobs\\ProcessExcelQueue))\n#16 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():178}(Object(App\\Jobs\\ProcessExcelQueue))\n#17 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(127): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#18 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\ProcessExcelQueue))\n#19 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#20 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(469): Illuminate\\Queue\\Jobs\\Job->fire()\n#21 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(419): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#22 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(344): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#23 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#24 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#25 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#26 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#27 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#28 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#29 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(836): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#30 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#31 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\symfony\\console\\Command\\Command.php(335): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#32 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#33 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\symfony\\console\\Application.php(1103): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\symfony\\console\\Application.php(356): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\symfony\\console\\Application.php(195): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 C:\\laragon\\www\\laravel-vuejs3-starter\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#39 {main}','2025-12-03 07:06:18'),(5,'7a438a03-2e1a-4ddc-b94e-0aed6df2a747','database','default','{\"uuid\":\"7a438a03-2e1a-4ddc-b94e-0aed6df2a747\",\"displayName\":\"App\\\\Jobs\\\\ProcessExcelQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessExcelQueue\",\"command\":\"O:26:\\\"App\\\\Jobs\\\\ProcessExcelQueue\\\":2:{s:4:\\\"path\\\";s:111:\\\"C:\\\\laragon\\\\www\\\\laravel-vuejs3-starter\\\\storage\\\\app\\/private\\/excel_uploads\\/1764774004_product_status_list (1).xlsx\\\";s:19:\\\"job_notification_id\\\";i:11;}\"},\"createdAt\":1764774004,\"delay\":null}','Illuminate\\Contracts\\Filesystem\\FileNotFoundException: File [C:\\laragon\\www\\laravel-vuejs3-starter\\storage\\app/private/excel_uploads/1764774004_product_status_list (1).xlsx] does not exist and can therefore not be imported. in C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\maatwebsite\\excel\\src\\Files\\TemporaryFile.php:69\nStack trace:\n#0 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\maatwebsite\\excel\\src\\Reader.php(439): Maatwebsite\\Excel\\Files\\TemporaryFile->copyFrom(\'C:\\\\laragon\\\\www\\\\...\', NULL)\n#1 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\maatwebsite\\excel\\src\\Reader.php(156): Maatwebsite\\Excel\\Reader->getReader(Array, \'C:\\\\laragon\\\\www\\\\...\', \'Xlsx\', NULL)\n#2 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\maatwebsite\\excel\\src\\Excel.php(171): Maatwebsite\\Excel\\Reader->toArray(Array, \'C:\\\\laragon\\\\www\\\\...\', \'Xlsx\', NULL)\n#3 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(363): Maatwebsite\\Excel\\Excel->toArray(Array, \'C:\\\\laragon\\\\www\\\\...\')\n#4 C:\\laragon\\www\\laravel-vuejs3-starter\\app\\Jobs\\ProcessExcelQueue.php(32): Illuminate\\Support\\Facades\\Facade::__callStatic(\'toArray\', Array)\n#5 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\ProcessExcelQueue->handle()\n#6 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#7 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#8 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#9 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(836): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#10 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(129): Illuminate\\Container\\Container->call(Array)\n#11 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Bus\\Dispatcher->{closure:Illuminate\\Bus\\Dispatcher::dispatchNow():126}(Object(App\\Jobs\\ProcessExcelQueue))\n#12 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():178}(Object(App\\Jobs\\ProcessExcelQueue))\n#13 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(133): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(134): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\ProcessExcelQueue), false)\n#15 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Queue\\CallQueuedHandler->{closure:Illuminate\\Queue\\CallQueuedHandler::dispatchThroughMiddleware():127}(Object(App\\Jobs\\ProcessExcelQueue))\n#16 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():178}(Object(App\\Jobs\\ProcessExcelQueue))\n#17 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(127): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#18 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\ProcessExcelQueue))\n#19 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#20 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(469): Illuminate\\Queue\\Jobs\\Job->fire()\n#21 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(419): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#22 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(344): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#23 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#24 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#25 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#26 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#27 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#28 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#29 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(836): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#30 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#31 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\symfony\\console\\Command\\Command.php(335): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#32 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#33 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\symfony\\console\\Application.php(1103): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\symfony\\console\\Application.php(356): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\symfony\\console\\Application.php(195): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 C:\\laragon\\www\\laravel-vuejs3-starter\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#39 {main}','2025-12-03 07:06:19'),(6,'f240398d-b820-4c91-b573-bc79b4cd0b3c','database','default','{\"uuid\":\"f240398d-b820-4c91-b573-bc79b4cd0b3c\",\"displayName\":\"App\\\\Jobs\\\\ProcessExcelQueue\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessExcelQueue\",\"command\":\"O:26:\\\"App\\\\Jobs\\\\ProcessExcelQueue\\\":2:{s:4:\\\"path\\\";s:111:\\\"C:\\\\laragon\\\\www\\\\laravel-vuejs3-starter\\\\storage\\\\app\\/private\\/excel_uploads\\/1764774428_product_status_list (1).xlsx\\\";s:19:\\\"job_notification_id\\\";i:12;}\"},\"createdAt\":1764774429,\"delay\":null}','ErrorException: unlink(C:\\laragon\\www\\laravel-vuejs3-starter\\storage\\app/private/C:\\laragon\\www\\laravel-vuejs3-starter\\storage\\app/private/excel_uploads/1764774428_product_status_list (1).xlsx): No such file or directory in C:\\laragon\\www\\laravel-vuejs3-starter\\app\\Jobs\\ProcessExcelQueue.php:90\nStack trace:\n#0 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(258): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'unlink(C:\\\\larag...\', \'C:\\\\laragon\\\\www\\\\...\', 90)\n#1 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->{closure:Illuminate\\Foundation\\Bootstrap\\HandleExceptions::forwardsTo():257}(2, \'unlink(C:\\\\larag...\', \'C:\\\\laragon\\\\www\\\\...\', 90)\n#2 C:\\laragon\\www\\laravel-vuejs3-starter\\app\\Jobs\\ProcessExcelQueue.php(90): unlink(\'C:\\\\laragon\\\\www\\\\...\')\n#3 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\ProcessExcelQueue->handle()\n#4 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#5 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#6 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#7 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(836): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#8 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(129): Illuminate\\Container\\Container->call(Array)\n#9 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Bus\\Dispatcher->{closure:Illuminate\\Bus\\Dispatcher::dispatchNow():126}(Object(App\\Jobs\\ProcessExcelQueue))\n#10 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():178}(Object(App\\Jobs\\ProcessExcelQueue))\n#11 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(133): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#12 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(134): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\ProcessExcelQueue), false)\n#13 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Queue\\CallQueuedHandler->{closure:Illuminate\\Queue\\CallQueuedHandler::dispatchThroughMiddleware():127}(Object(App\\Jobs\\ProcessExcelQueue))\n#14 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():178}(Object(App\\Jobs\\ProcessExcelQueue))\n#15 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(127): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#16 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\ProcessExcelQueue))\n#17 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#18 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(469): Illuminate\\Queue\\Jobs\\Job->fire()\n#19 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(419): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(344): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#22 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#23 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#24 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#25 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#26 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#27 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(836): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#28 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#29 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\symfony\\console\\Command\\Command.php(335): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#31 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\symfony\\console\\Application.php(1103): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\symfony\\console\\Application.php(356): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\symfony\\console\\Application.php(195): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 C:\\laragon\\www\\laravel-vuejs3-starter\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 C:\\laragon\\www\\laravel-vuejs3-starter\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#37 {main}','2025-12-03 07:07:11');
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_job_notifications`
--

DROP TABLE IF EXISTS `import_job_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `import_job_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excel_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_job_notifications`
--

LOCK TABLES `import_job_notifications` WRITE;
/*!40000 ALTER TABLE `import_job_notifications` DISABLE KEYS */;
INSERT INTO `import_job_notifications` VALUES (1,'2','C:\\laragon\\www\\laravel-vuejs3-starter\\storage\\app/private/excel_uploads/1764772774_product_status_list (1).xlsx','info','Job notification created successfully!','pending','2025-12-03 14:39:34','2025-12-03 06:39:34','2025-12-03 06:39:34'),(2,'2','C:\\laragon\\www\\laravel-vuejs3-starter\\storage\\app/private/excel_uploads/1764772868_product_status_list (1).xlsx','info','Job notification created successfully!','pending','2025-12-03 14:39:34','2025-12-03 06:41:08','2025-12-03 06:41:08'),(3,'2','C:\\laragon\\www\\laravel-vuejs3-starter\\storage\\app/private/excel_uploads/1764773084_product_status_list (1).xlsx','info','Job notification created successfully!','pending','2025-12-03 14:39:34','2025-12-03 06:44:44','2025-12-03 06:44:44'),(4,'2','C:\\laragon\\www\\laravel-vuejs3-starter\\storage\\app/private/excel_uploads/1764773123_product_status_list (1).xlsx','info','Job notification created successfully!','pending','2025-12-03 14:39:34','2025-12-03 06:45:23','2025-12-03 06:45:23'),(5,'2','C:\\laragon\\www\\laravel-vuejs3-starter\\storage\\app/private/excel_uploads/1764773162_product_status_list (1).xlsx','info','Job notification created successfully!','pending','2025-12-03 14:39:34','2025-12-03 06:46:03','2025-12-03 06:46:03'),(6,'2','C:\\laragon\\www\\laravel-vuejs3-starter\\storage\\app/private/excel_uploads/1764773194_product_status_list (1).xlsx','info','Job notification created successfully!','pending','2025-12-03 14:39:34','2025-12-03 06:46:34','2025-12-03 06:46:34'),(7,'2','C:\\laragon\\www\\laravel-vuejs3-starter\\storage\\app/private/excel_uploads/1764773211_product_status_list (1).xlsx','info','Job notification created successfully!','pending','2025-12-03 14:39:34','2025-12-03 06:46:51','2025-12-03 06:46:51'),(8,'2','C:\\laragon\\www\\laravel-vuejs3-starter\\storage\\app/private/excel_uploads/1764773347_product_status_list (1).xlsx','info','Job notification created successfully!','pending','2025-12-03 14:39:34','2025-12-03 06:49:07','2025-12-03 06:49:07'),(9,'2','C:\\laragon\\www\\laravel-vuejs3-starter\\storage\\app/private/excel_uploads/1764773384_product_status_list (1).xlsx','success','Background Job has Completed Successfully!','complete','2025-12-03 14:39:34','2025-12-03 06:49:44','2025-12-03 06:49:44'),(10,'2','C:\\laragon\\www\\laravel-vuejs3-starter\\storage\\app/private/excel_uploads/1764773871_product_status_list (1).xlsx','info','Job notification created successfully!','pending','2025-12-03 14:39:34','2025-12-03 06:57:51','2025-12-03 06:57:51'),(11,'2','C:\\laragon\\www\\laravel-vuejs3-starter\\storage\\app/private/excel_uploads/1764774004_product_status_list (1).xlsx','info','Job notification created successfully!','pending','2025-12-03 14:39:34','2025-12-03 07:00:04','2025-12-03 07:00:04'),(12,'2','C:\\laragon\\www\\laravel-vuejs3-starter\\storage\\app/private/excel_uploads/1764774428_product_status_list (1).xlsx','success','Background Job has Completed Successfully!','complete','2025-12-03 14:39:34','2025-12-03 07:07:09','2025-12-03 07:07:11'),(13,'2','C:\\laragon\\www\\laravel-vuejs3-starter\\storage\\app/private/excel_uploads/1764775562_product_status_list (1).xlsx','success','Background Job has Completed Successfully!','complete','2025-12-04 02:09:51','2025-12-03 07:26:02','2025-12-03 18:09:51'),(14,'2','C:\\laragon\\www\\laravel-vuejs3-starter\\storage\\app/private/excel_uploads/1764778531_product_status_list (1).xlsx','info','Job notification created successfully!','pending',NULL,'2025-12-03 08:15:31','2025-12-03 08:15:31'),(15,'2','C:\\laragon\\www\\laravel-vuejs3-starter\\storage\\app/private/excel_uploads/1764785756_product_status_list (1).xlsx','success','Background Job has Completed Successfully at ID (15)!','complete','2025-12-04 02:19:09','2025-12-03 18:15:56','2025-12-03 18:19:09'),(16,'2','C:\\laragon\\www\\laravel-vuejs3-starter\\storage\\app/private/excel_uploads/1764786012_product_status_list (1).xlsx','success','Background Job has Completed Successfully at ID (16)!','complete','2025-12-04 02:20:20','2025-12-03 18:20:12','2025-12-03 18:20:20');
/*!40000 ALTER TABLE `import_job_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2025_08_14_170933_add_two_factor_columns_to_users_table',1),(5,'2025_11_29_175402_create_personal_access_tokens_table',2),(6,'2025_11_29_180147_create_product_master_lists_table',3),(7,'2025_12_03_134944_create_import_job_notifications_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  KEY `personal_access_tokens_expires_at_index` (`expires_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_master_lists`
--

DROP TABLE IF EXISTS `product_master_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_master_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `types` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_master_lists`
--

LOCK TABLES `product_master_lists` WRITE;
/*!40000 ALTER TABLE `product_master_lists` DISABLE KEYS */;
INSERT INTO `product_master_lists` VALUES (1,'4450','Smartphone','Apple','iPhone SE','2GB/16GB',-30,NULL,'2025-12-03 18:20:13'),(2,'4768','Smartphone','Apple','iPhone SE','2GB/32GB',-12,NULL,'2025-12-03 18:20:13'),(3,'4451','Smartphone','Apple','iPhone SE','2GB/64GB',-36,NULL,'2025-12-03 18:20:13'),(4,'4574','Smartphone','Apple','iPhone SE','2GB/128GB',-26,NULL,'2025-12-03 18:20:13'),(5,'6039','Smartphone','Apple','iPhone SE (2020)','3GB/64GB',-38,NULL,'2025-12-03 18:20:13'),(6,'6040','Smartphone','Apple','iPhone 12','4GB/128GB',-12,'2025-12-03 06:41:08','2025-12-03 18:20:13'),(7,'6041','Smartphone','Apple','iPhone 13','6GB/128GB',-11,'2025-12-03 06:41:08','2025-12-03 18:20:13'),(8,'6042','Smartphone','Apple','iPhone 14','6GB/128GB',-11,'2025-12-03 06:41:08','2025-12-03 18:20:13'),(9,'6043','Smartphone','Apple','iPhone 15','6GB/128GB',-12,'2025-12-03 06:41:08','2025-12-03 18:20:13'),(10,'6044','Smartphone','Apple','iPhone 12 Pro','6GB/128GB',-12,'2025-12-03 06:41:08','2025-12-03 18:20:13'),(11,'6045','Smartphone','Apple','iPhone 13 Pro','6GB/128GB',-12,'2025-12-03 06:41:08','2025-12-03 18:20:13'),(12,'6046','Smartphone','Apple','iPhone 14 Pro','6GB/128GB',-12,'2025-12-03 06:41:08','2025-12-03 18:20:13'),(13,'6047','Smartphone','Apple','iPhone 15 Pro','6GB/128GB',-11,'2025-12-03 06:41:08','2025-12-03 18:20:13'),(14,'6048','Smartphone','Apple','iPhone 12 Pro Max','6GB/128GB',-11,'2025-12-03 06:41:08','2025-12-03 18:20:13'),(15,'6049','Smartphone','Apple','iPhone 13 Pro Max','8GB/128GB',-11,'2025-12-03 06:41:08','2025-12-03 18:20:13'),(16,'6050','Smartphone','Apple','iPhone 14 Pro Max','8GB/128GB',-11,'2025-12-03 06:41:08','2025-12-03 18:20:13'),(17,'6051','Smartphone','Apple','iPhone 14','6GB/128GB',-11,'2025-12-03 06:41:08','2025-12-03 18:20:13'),(18,'6052','Smartphone','Apple','iPhone 15','6GB/128GB',-12,'2025-12-03 06:41:08','2025-12-03 18:20:13'),(19,'6053','Smartphone','Apple','iPhone 12 Pro','6GB/128GB',-12,'2025-12-03 06:41:08','2025-12-03 18:20:13'),(20,'6054','Smartphone','Apple','iPhone 13 Pro','6GB/128GB',-12,'2025-12-03 06:41:08','2025-12-03 18:20:13'),(21,'6055','Smartphone','Apple','iPhone 14 Pro','6GB/128GB',-12,'2025-12-03 06:41:08','2025-12-03 18:20:13'),(22,'6056','Smartphone','Apple','iPhone 13 Pro Max','8GB/128GB',-11,'2025-12-03 06:41:08','2025-12-03 18:20:13'),(23,'6057','Smartphone','Apple','iPhone 14 Pro Max','8GB/128GB',-11,'2025-12-03 06:41:08','2025-12-03 18:20:13'),(24,'6058','Smartphone','Apple','iPhone 15 Ya','6GB/128GB',-12,'2025-12-03 06:41:08','2025-12-03 18:20:13'),(25,'6059','Smartphone','Apple','iPhone 15 Pro Max','8GB/128GB',-11,'2025-12-03 06:41:08','2025-12-03 18:20:13'),(26,'6060','Smartphone','Apple','iPhone 15 Plus','8GB/128GB',-12,'2025-12-03 06:41:08','2025-12-03 18:20:13');
/*!40000 ALTER TABLE `product_master_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('QKm8ZBgo9yfOKSCd9D5KvH80Mc5Rwfyx6NCcyP82',2,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTzFTUU5oQlJvS0VqWkxmbmM5dVRjQnZwMVRPSlJWM1E4R2lCRGs5ZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czo0NDoiaHR0cDovL2xhcmF2ZWwtdnVlanMzLXN0YXJ0ZXIudGVzdC9kYXNoYm9hcmQiO3M6NToicm91dGUiO3M6OToiZGFzaGJvYXJkIjt9fQ==',1764786910);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Test User','test@example.com','2025-11-29 07:27:55','$2y$12$NOobRrYubg33XtrqspwLFOBtuCb/vKb04nPE89L8DV7hyZo/TALJG','n71FGnbmtL','JcJqeTkWK8','2025-11-29 07:27:55','l5K0XRvKf9','2025-11-29 07:27:55','2025-11-29 07:27:55'),(2,'Abdulaziz','abdulaziz_10101@yahoo.com',NULL,'$2y$12$R4JLaXyVGdgKd.Pfzx9Sb.M8hahiyVHzpDs31HhmS1kuoE6ayRvgO',NULL,NULL,NULL,'Z8I88sBSmmx4KPFifoMzlqS8a83zjwENSybN5WbGj6wrgZv1AnM6JPaAxgrk','2025-11-29 07:46:11','2025-11-29 07:46:11');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-04  2:35:13
