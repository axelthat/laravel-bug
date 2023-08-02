-- -------------------------------------------------------------
-- TablePlus 5.3.8(500)
--
-- https://tableplus.com/
--
-- Database: scrapcars
-- Generation Time: 2023-08-02 14:37:04.4230
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


DROP TABLE IF EXISTS `buyer_bid_adjustments`;
CREATE TABLE `buyer_bid_adjustments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint unsigned DEFAULT NULL,
  `buyer_id` bigint unsigned NOT NULL,
  `year_from` smallint unsigned DEFAULT NULL,
  `year_to` smallint unsigned DEFAULT NULL,
  `typeable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `typeable_id` bigint unsigned DEFAULT NULL,
  `mileage` mediumint unsigned DEFAULT NULL,
  `mileage_operator` enum('>','<') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount_type` enum('fixed','percentage') COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` smallint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `buyer_bid_adjustments_parent_id_index` (`parent_id`),
  KEY `buyer_bid_adjustments_buyer_id_index` (`buyer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `buyer_bid_adjustments` (`id`, `parent_id`, `buyer_id`, `year_from`, `year_to`, `typeable_type`, `typeable_id`, `mileage`, `mileage_operator`, `amount_type`, `amount`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, 'percentage', 10, '2023-08-01 13:39:14', '2023-08-01 13:39:14', NULL),
(2, NULL, 7, 2007, 2007, 'App\\Models\\VehicleModel', 157, NULL, NULL, 'fixed', 50, '2023-08-02 05:45:57', '2023-08-02 05:45:57', NULL),
(3, NULL, 7, 2007, NULL, 'App\\Models\\VehicleMake', 16, NULL, NULL, 'fixed', 40, '2023-08-02 05:46:25', '2023-08-02 05:46:25', NULL),
(4, NULL, 7, 2007, NULL, 'App\\Models\\VehicleBodyStyle', 1, NULL, NULL, 'fixed', 30, '2023-08-02 05:47:41', '2023-08-02 05:47:41', NULL),
(5, NULL, 7, 2007, 2007, 'App\\Models\\VehicleModel', 157, 20000, '>', 'fixed', 20, '2023-08-02 05:51:36', '2023-08-02 05:52:07', NULL),
(6, NULL, 7, 2007, 2007, 'App\\Models\\VehicleMake', 16, 50000, '>', 'fixed', 10, '2023-08-02 05:54:06', '2023-08-02 05:54:06', NULL),
(7, NULL, 7, 2007, 2007, 'App\\Models\\VehicleModel', 157, 50000, '>', 'fixed', 5, '2023-08-02 06:54:30', '2023-08-02 07:01:35', NULL),
(8, NULL, 7, NULL, NULL, 'App\\Models\\VehicleMake', 41, NULL, NULL, 'fixed', 2323, '2023-08-02 08:22:53', '2023-08-02 08:22:53', NULL);


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;