/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 10.1.28-MariaDB : Database - db_praktikum_prognet
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_praktikum_prognet` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_praktikum_prognet`;

/*Table structure for table `admin_notifications` */

DROP TABLE IF EXISTS `admin_notifications`;

CREATE TABLE `admin_notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(10) unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `seller_notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`),
  KEY `notifiable_id` (`notifiable_id`),
  CONSTRAINT `admin_notifications_ibfk_1` FOREIGN KEY (`notifiable_id`) REFERENCES `admins` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admin_notifications` */

insert  into `admin_notifications`(`id`,`type`,`notifiable_type`,`notifiable_id`,`data`,`read_at`,`created_at`,`updated_at`) values 
('093796f1-6bf8-444b-8e23-e51259e24e0c','App\\Notifications\\AdminNotification','App\\Admin',1,'<a href=\'/admin/createResponse/5\'>ada Review baru pada product T-Shirt ADS Simple Style - Black</a>','2019-05-24 07:15:05','2019-05-24 07:08:40','2019-05-24 07:15:05'),
('0f1ecf2d-715f-4f93-b6c1-53e0cd13977e','App\\Notifications\\AdminNotification','App\\Admin',1,'<a href=\'/admin/createResponse/6\'>ada Review baru pada product Polo Six - Marron</a>','2019-05-24 07:15:05','2019-05-24 07:14:15','2019-05-24 07:15:05'),
('186a44d5-7107-4792-ac2e-fd8bd8a4a557','App\\Notifications\\AdminNotification','App\\Admin',1,'<a href=\'/admin/createResponse/8\'>ada Review baru pada product Polo Six - Marron</a>','2019-05-24 07:58:16','2019-05-24 07:17:56','2019-05-24 07:58:16'),
('2f5c172b-bf9c-409e-8cba-4f85be2ea728','App\\Notifications\\AdminNotification','App\\Admin',1,'<a href=\'/admin/createResponse/16\'>ada Review baru pada product Polo Six - Marron</a>',NULL,'2019-05-24 07:59:12','2019-05-24 07:59:12'),
('517616b8-ae93-42b0-b4c4-0745944486aa','App\\Notifications\\AdminNotification','App\\Admin',1,'<a href=\'/admin/createResponse/12\'>ada Review baru pada product Polo Six - Marron</a>','2019-05-24 07:58:16','2019-05-24 07:41:10','2019-05-24 07:58:16'),
('52819154-0fd3-4a6a-9f66-8cd5a96a0133','App\\Notifications\\AdminNotification','App\\Admin',1,'<a href=\'/admin/createResponse/7\'>ada Review baru pada product T-Shirt ADS Simple Style - Black</a>','2019-05-24 07:15:05','2019-05-24 07:14:15','2019-05-24 07:15:05'),
('54af6834-983a-447b-8452-c19f8d9200ed','App\\Notifications\\AdminNotification','App\\Admin',1,'<a href=\'/admin/createResponse/3\'>ada Review baru pada product Polo Shirt Six - Black Mix Brown</a>','2019-05-24 05:51:30','2019-05-24 05:45:01','2019-05-24 05:51:30'),
('5ff67318-f512-4694-b553-f61fad22a3fc','App\\Notifications\\AdminNotification','App\\Admin',1,'<a href=\'/admin/createResponse/13\'>ada Review baru pada product T-Shirt ADS Simple Style - Black</a>','2019-05-24 07:58:16','2019-05-24 07:44:37','2019-05-24 07:58:16'),
('7fe3cad0-a210-493b-8d23-e2989c38b345','App\\Notifications\\AdminNotification','App\\Admin',1,'<a href=\'/admin/createResponse/11\'>ada Review baru pada product Polo Six - Marron</a>','2019-05-24 07:58:16','2019-05-24 07:31:16','2019-05-24 07:58:16'),
('808ce0df-e626-46ba-9f84-22641b0280e1','App\\Notifications\\AdminNotification','App\\Admin',1,'<a href=\'/admin/createResponse/4\'>ada Review baru pada product Polo Six - Marron</a>','2019-05-24 07:15:05','2019-05-24 07:08:40','2019-05-24 07:15:05'),
('96f1b682-d8b5-4647-a79a-127afe04e42b','App\\Notifications\\AdminNotification','App\\Admin',1,'<a href=\'/admin/createResponse/9\'>ada Review baru pada product Polo Six - Marron</a>','2019-05-24 07:58:16','2019-05-24 07:23:31','2019-05-24 07:58:16'),
('b1b6ceb3-b1d5-4632-b11d-5489dcde894b','App\\Notifications\\AdminNotification','App\\Admin',1,'<a href=\'/admin/createResponse/14\'>ada Review baru pada product T-Shirt ADS Simple Style - Black</a>','2019-05-24 07:58:16','2019-05-24 07:44:37','2019-05-24 07:58:16'),
('b1e0bbfa-1e82-44c4-bf5c-396238634929','App\\Notifications\\AdminNotification','App\\Admin',1,'<a href=\'/admin/createResponse/15\'>ada Review baru pada product Polo Six - Marron</a>','2019-05-24 07:58:16','2019-05-24 07:56:15','2019-05-24 07:58:16'),
('b42ad915-3340-466a-a713-c630335e9528','App\\Notifications\\AdminNotification','App\\Admin',1,'Terdapat Transaksi baru. Cek','2019-05-24 05:31:35','2019-05-22 15:12:37','2019-05-24 05:31:35'),
('be7fd385-3194-4e38-a226-f0c5698d4b0d','App\\Notifications\\AdminNotification','App\\Admin',1,'<a href=\'/admin/transactionAdmin/22\'>ada transaksi yang berubah status menjadi Unverified</a>','2019-05-24 07:15:05','2019-05-24 07:07:01','2019-05-24 07:15:05'),
('cb457a12-e20b-49c2-8b75-d24f1db2fa2d','App\\Notifications\\AdminNotification','App\\Admin',1,'<a href=\'/admin/transactionAdmin/17\'>ada transaksi yang berubah status menjadi Unverified</a>','2019-05-24 05:44:21','2019-05-24 05:43:49','2019-05-24 05:44:21'),
('d8480062-e627-4a55-ae54-1967ecbeffa4','App\\Notifications\\AdminNotification','App\\Admin',1,'<a href=\'/admin/transactionAdmin/22\'>ada transaksi yang berubah status menjadi Success</a>','2019-05-24 07:15:05','2019-05-24 07:08:07','2019-05-24 07:15:05'),
('ed2bb966-b9ed-4efb-b20d-2a4db4ec82f0','App\\Notifications\\AdminNotification','App\\Admin',1,'<a href=\'/admin/createResponse/10\'>ada Review baru pada product Polo Six - Marron</a>','2019-05-24 07:58:16','2019-05-24 07:30:49','2019-05-24 07:58:16'),
('f6065a4a-da0d-4963-a0e8-d97ff090ed45','App\\Notifications\\AdminNotification','App\\Admin',1,'<a href=\'/admin/transactionAdmin/17\'>ada transaksi yang berubah status menjadi Success</a>','2019-05-24 05:51:30','2019-05-24 05:44:46','2019-05-24 05:51:30'),
('f822f7d7-088b-434c-8a87-688c7ed52469','App\\Notifications\\AdminNotification','App\\Admin',1,'Terdapat Transaksi baru. Cek','2019-05-24 05:31:35','2019-05-23 15:07:01','2019-05-24 05:31:35');

/*Table structure for table `admins` */

DROP TABLE IF EXISTS `admins`;

CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sellers_email_unique` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admins` */

insert  into `admins`(`id`,`username`,`password`,`name`,`profile_image`,`phone`,`remember_token`,`created_at`,`updated_at`) values 
(1,'widiana','$2y$10$5KsP6bCJLHE7NK4wUgGcx.ltZSRfpi51mAF4evU.d26PZB7VG5qYq','widi','widi','082146456432',NULL,'2019-05-05 12:06:13','2019-05-05 12:06:13');

/*Table structure for table `carts` */

DROP TABLE IF EXISTS `carts`;

CREATE TABLE `carts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('checkedout','notyet','cancelled') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `carts_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `carts` */

insert  into `carts`(`id`,`user_id`,`product_id`,`qty`,`created_at`,`updated_at`,`status`,`deleted_at`) values 
(7,1,3,1,'2019-05-13 03:19:48','2019-05-13 03:21:26','notyet','2019-05-13 03:21:26'),
(8,1,3,1,'2019-05-13 03:21:37','2019-05-13 03:22:05','notyet','2019-05-13 03:22:05'),
(9,1,3,1,'2019-05-13 03:23:19','2019-05-14 11:09:19','checkedout',NULL),
(10,1,4,1,'2019-05-14 10:18:39','2019-05-14 10:48:58','notyet','2019-05-14 10:48:58'),
(11,1,4,2,'2019-05-14 10:49:27','2019-05-14 11:09:19','checkedout',NULL),
(12,2,3,1,'2019-05-14 11:30:46','2019-05-14 11:31:54','checkedout',NULL),
(13,2,3,1,'2019-05-18 13:54:45','2019-05-18 14:47:37','notyet','2019-05-18 14:47:37'),
(14,2,3,1,'2019-05-18 14:56:09','2019-05-21 12:11:54','checkedout',NULL),
(15,2,4,1,'2019-05-22 13:24:52','2019-05-22 13:27:21','notyet','2019-05-22 13:27:21'),
(16,2,3,1,'2019-05-22 13:27:11','2019-05-22 13:33:09','checkedout',NULL),
(17,2,3,1,'2019-05-22 13:37:37','2019-05-22 13:39:07','checkedout',NULL),
(18,2,5,1,'2019-05-22 15:11:22','2019-05-22 15:12:15','checkedout',NULL),
(19,2,5,3,'2019-05-23 15:03:15','2019-05-23 15:06:32','checkedout',NULL),
(20,2,18,1,'2019-05-24 05:28:04','2019-05-24 05:40:27','checkedout',NULL),
(21,1,18,3,'2019-05-24 05:42:12','2019-05-24 05:43:01','checkedout',NULL),
(22,1,17,2,'2019-05-24 07:04:21','2019-05-24 07:06:36','checkedout',NULL),
(23,1,16,2,'2019-05-24 07:04:40','2019-05-24 07:06:36','checkedout',NULL);

/*Table structure for table `couriers` */

DROP TABLE IF EXISTS `couriers`;

CREATE TABLE `couriers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `courier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `couriers` */

insert  into `couriers`(`id`,`courier`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'JNE','2019-05-05 12:15:27','2019-05-05 12:48:00','2019-05-05 12:48:00'),
(2,'tiki','2019-05-05 12:15:39','2019-05-05 12:15:39',NULL),
(3,'pos','2019-05-05 12:15:47','2019-05-05 12:15:47',NULL),
(4,'jne','2019-05-05 12:48:09','2019-05-05 12:48:09',NULL);

/*Table structure for table `discounts` */

DROP TABLE IF EXISTS `discounts`;

CREATE TABLE `discounts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned DEFAULT NULL,
  `percentage` int(3) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_product` (`id_product`),
  CONSTRAINT `discounts_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `discounts` */

insert  into `discounts`(`id`,`id_product`,`percentage`,`start`,`end`,`created_at`,`updated_at`) values 
(7,4,10,'2019-05-14','2019-06-14','2019-05-24 05:15:54','2019-05-24 05:15:54');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(3,'2014_10_12_000000_create_users_table',2),
(2,'2014_10_12_100000_create_password_resets_table',1),
(8,'2018_10_20_040609_create_categories_table',3),
(9,'2018_10_24_075802_create_products_table',4),
(10,'2018_11_08_024109_create_product_att_table',5),
(11,'2018_11_20_055123_create_tblgallery_table',6),
(12,'2018_11_26_070031_create_cart_table',7),
(13,'2018_11_28_072535_create_coupons_table',8),
(15,'2018_12_01_042342_create_countries_table',10),
(19,'2018_12_03_043804_add_more_fields_to_users_table',14),
(17,'2018_12_03_093548_create_delivery_address_table',12),
(18,'2018_12_05_024718_create_orders_table',13);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `product_categories` */

DROP TABLE IF EXISTS `product_categories`;

CREATE TABLE `product_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_categories` */

insert  into `product_categories`(`id`,`parent_id`,`category_name`,`created_at`,`updated_at`,`deleted_at`) values 
(1,0,'Fashion Pria','2019-05-05 12:07:01','2019-05-05 12:07:01',NULL),
(2,1,'Baju Pria','2019-05-05 12:07:16','2019-05-05 12:07:16',NULL),
(3,1,'Celana Pria','2019-05-05 12:49:08','2019-05-13 03:53:13','2019-05-13 03:53:13'),
(4,1,'Topi Pria','2019-05-05 12:49:53','2019-05-13 03:47:11','2019-05-13 03:47:11'),
(5,1,'Fashion Wanita','2019-05-13 03:26:31','2019-05-13 03:46:53','2019-05-13 03:46:53'),
(6,0,'Fashion Anak','2019-05-13 03:46:48','2019-05-13 03:51:37','2019-05-13 03:51:37');

/*Table structure for table `product_category_details` */

DROP TABLE IF EXISTS `product_category_details`;

CREATE TABLE `product_category_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `product_category_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `product_category_details_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

/*Data for the table `product_category_details` */

insert  into `product_category_details`(`id`,`product_id`,`category_id`,`created_at`,`updated_at`,`deleted_at`) values 
(9,3,2,'2019-05-21 19:52:48','2019-05-21 11:52:48','2019-05-21 11:52:48'),
(10,4,2,'2019-05-21 19:51:38','2019-05-21 11:51:38','2019-05-21 11:51:38'),
(11,5,1,'2019-05-21 11:49:04','2019-05-21 11:49:04',NULL),
(12,5,2,'2019-05-21 11:49:04','2019-05-21 11:49:04',NULL),
(13,4,1,'2019-05-21 19:52:30','2019-05-21 11:52:30','2019-05-21 11:52:30'),
(14,4,2,'2019-05-21 19:52:30','2019-05-21 11:52:30','2019-05-21 11:52:30'),
(15,4,1,'2019-05-24 13:15:54','2019-05-24 05:15:54','2019-05-24 05:15:54'),
(16,4,2,'2019-05-24 13:15:54','2019-05-24 05:15:54','2019-05-24 05:15:54'),
(17,3,1,'2019-05-21 19:55:59','2019-05-21 11:55:59','2019-05-21 11:55:59'),
(18,3,2,'2019-05-21 19:55:59','2019-05-21 11:55:59','2019-05-21 11:55:59'),
(19,3,1,'2019-05-21 19:58:26','2019-05-21 11:58:26','2019-05-21 11:58:26'),
(20,3,2,'2019-05-21 19:58:26','2019-05-21 11:58:26','2019-05-21 11:58:26'),
(21,3,1,'2019-05-21 19:58:54','2019-05-21 11:58:54','2019-05-21 11:58:54'),
(22,3,2,'2019-05-21 19:58:54','2019-05-21 11:58:54','2019-05-21 11:58:54'),
(23,3,1,'2019-05-21 19:59:37','2019-05-21 11:59:37','2019-05-21 11:59:37'),
(24,3,2,'2019-05-21 19:59:37','2019-05-21 11:59:37','2019-05-21 11:59:37'),
(25,3,1,'2019-05-24 13:15:07','2019-05-24 05:15:07','2019-05-24 05:15:07'),
(26,3,2,'2019-05-24 13:15:07','2019-05-24 05:15:07','2019-05-24 05:15:07'),
(27,6,1,'2019-05-24 04:55:23','2019-05-24 04:55:23',NULL),
(28,6,2,'2019-05-24 04:55:23','2019-05-24 04:55:23',NULL),
(29,8,1,'2019-05-24 05:03:40','2019-05-24 05:03:40',NULL),
(30,8,2,'2019-05-24 05:03:40','2019-05-24 05:03:40',NULL),
(31,9,1,'2019-05-24 05:06:37','2019-05-24 05:06:37',NULL),
(32,9,2,'2019-05-24 05:06:37','2019-05-24 05:06:37',NULL),
(33,10,1,'2019-05-24 13:20:21','2019-05-24 05:20:21','2019-05-24 05:20:21'),
(34,10,2,'2019-05-24 13:20:21','2019-05-24 05:20:21','2019-05-24 05:20:21'),
(35,11,1,'2019-05-24 05:08:20','2019-05-24 05:08:20',NULL),
(36,11,2,'2019-05-24 05:08:20','2019-05-24 05:08:20',NULL),
(37,12,1,'2019-05-24 05:10:40','2019-05-24 05:10:40',NULL),
(38,12,2,'2019-05-24 05:10:41','2019-05-24 05:10:41',NULL),
(39,13,1,'2019-05-24 05:12:41','2019-05-24 05:12:41',NULL),
(40,13,2,'2019-05-24 05:12:41','2019-05-24 05:12:41',NULL),
(41,14,1,'2019-05-24 05:13:41','2019-05-24 05:13:41',NULL),
(42,14,2,'2019-05-24 05:13:41','2019-05-24 05:13:41',NULL),
(43,15,1,'2019-05-24 05:14:41','2019-05-24 05:14:41',NULL),
(44,15,2,'2019-05-24 05:14:41','2019-05-24 05:14:41',NULL),
(45,3,1,'2019-05-24 05:15:07','2019-05-24 05:15:07',NULL),
(46,3,2,'2019-05-24 05:15:07','2019-05-24 05:15:07',NULL),
(47,4,1,'2019-05-24 05:15:54','2019-05-24 05:15:54',NULL),
(48,4,2,'2019-05-24 05:15:54','2019-05-24 05:15:54',NULL),
(49,16,1,'2019-05-24 05:16:50','2019-05-24 05:16:50',NULL),
(50,16,2,'2019-05-24 05:16:50','2019-05-24 05:16:50',NULL),
(51,17,1,'2019-05-24 05:18:15','2019-05-24 05:18:15',NULL),
(52,17,2,'2019-05-24 05:18:15','2019-05-24 05:18:15',NULL),
(53,18,1,'2019-05-24 05:19:38','2019-05-24 05:19:38',NULL),
(54,18,2,'2019-05-24 05:19:38','2019-05-24 05:19:38',NULL),
(55,10,1,'2019-05-24 05:20:21','2019-05-24 05:20:21',NULL),
(56,10,2,'2019-05-24 05:20:21','2019-05-24 05:20:21',NULL);

/*Table structure for table `product_images` */

DROP TABLE IF EXISTS `product_images`;

CREATE TABLE `product_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_images` */

insert  into `product_images`(`id`,`product_id`,`image_name`,`created_at`,`updated_at`) values 
(7,5,'lea.jpg','2019-05-21 11:49:05','2019-05-21 11:49:05'),
(8,4,'armada.jpg','2019-05-21 11:51:39','2019-05-21 11:51:39'),
(10,3,'bali_1.jpeg','2019-05-21 11:55:59','2019-05-21 11:55:59'),
(11,3,'bali_united.jpg','2019-05-21 11:58:27','2019-05-21 11:58:27'),
(12,7,'baju-kaos1.jpg','2019-05-24 04:59:08','2019-05-24 04:59:08'),
(13,8,'baju-kaos1.jpg','2019-05-24 05:03:41','2019-05-24 05:03:41'),
(14,10,'baju-kaos2.jpg','2019-05-24 05:07:13','2019-05-24 05:07:13'),
(15,11,'baju-kaos3.jpg','2019-05-24 05:08:21','2019-05-24 05:08:21'),
(16,12,'baju-kaos4.jpg','2019-05-24 05:10:41','2019-05-24 05:10:41'),
(17,13,'baju-kaos5.jpg','2019-05-24 05:12:42','2019-05-24 05:12:42'),
(18,14,'baju-kaos6.jpg','2019-05-24 05:13:42','2019-05-24 05:13:42'),
(19,15,'baju-kaos7.jpg','2019-05-24 05:14:42','2019-05-24 05:14:42'),
(20,16,'baju-kaos9.jpg','2019-05-24 05:16:51','2019-05-24 05:16:51'),
(21,17,'baju-polo1.jpg','2019-05-24 05:18:16','2019-05-24 05:18:16'),
(22,18,'baju-polo2.jpg','2019-05-24 05:19:39','2019-05-24 05:19:39');

/*Table structure for table `product_reviews` */

DROP TABLE IF EXISTS `product_reviews`;

CREATE TABLE `product_reviews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `rate` int(1) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('replied') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `rate_id` (`rate`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `product_reviews_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_reviews` */

insert  into `product_reviews`(`id`,`product_id`,`user_id`,`rate`,`content`,`created_at`,`updated_at`,`status`) values 
(1,3,2,5,'Pengiriman cepat, baju ori, mantul gan!!','2019-05-22 13:44:47','2019-05-22 13:44:47',NULL),
(2,5,2,5,'baju ori, pengiriman cepat, seller terpercaya!!!','2019-05-23 15:10:23','2019-05-23 15:10:23',NULL),
(3,18,1,5,'Mantap gan memuaskan barangnya','2019-05-24 05:45:01','2019-05-24 05:47:06','replied'),
(4,17,1,5,'mantab gan','2019-05-24 07:08:40','2019-05-24 07:15:15','replied'),
(5,16,1,2,'kurang bagus gan','2019-05-24 07:08:40','2019-05-24 07:09:12','replied'),
(6,17,1,2,'menjadi melar gan','2019-05-24 07:14:15','2019-05-24 07:15:41','replied'),
(7,16,1,5,'tambah bagus gan','2019-05-24 07:14:15','2019-05-24 07:14:15',NULL),
(8,17,1,2,'jelek','2019-05-24 07:17:56','2019-05-24 07:17:56',NULL),
(9,17,1,3,'good','2019-05-24 07:23:31','2019-05-24 07:23:31',NULL),
(10,17,1,3,'111','2019-05-24 07:30:48','2019-05-24 07:30:48',NULL),
(11,17,1,3,'1111','2019-05-24 07:31:16','2019-05-24 07:31:16',NULL),
(12,17,1,3,'gus','2019-05-24 07:41:10','2019-05-24 07:41:10',NULL),
(13,16,1,1,'121313','2019-05-24 07:44:37','2019-05-24 07:44:37',NULL),
(14,16,1,1,'121313','2019-05-24 07:44:37','2019-05-24 07:44:37',NULL),
(15,17,1,3,'kuakui','2019-05-24 07:56:15','2019-05-24 07:56:15',NULL),
(16,17,1,3,'nais','2019-05-24 07:59:12','2019-05-24 07:59:38','replied');

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_rate` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock` int(10) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `products` */

insert  into `products`(`id`,`product_name`,`price`,`description`,`product_rate`,`created_at`,`updated_at`,`stock`,`deleted_at`) values 
(3,'T-Shirt Bali United 3d',100000,'Baju Bali united<br>',5,'2019-05-13 03:19:11','2019-05-24 05:15:07',12,NULL),
(4,'T-Shirt Armada - Black',100000,'Baju Armada original<br>',NULL,'2019-05-14 10:17:58','2019-05-24 05:15:54',12,NULL),
(5,'T-Shirt Lea Aventador (Jetwhite)',1000000,'T-Shirt Lea hypebeast for sultan only!\r\ngrab it fastt!!',5,'2019-05-21 11:49:04','2019-05-23 15:10:24',10,NULL),
(6,'T-Shirt Blackgreen',150000,'Material : cotton combed 30s\r\nAvailable size : M, L\r\n\r\nGrab it fastt!!',NULL,'2019-05-24 04:55:23','2019-05-24 04:55:23',5,NULL),
(7,'T-Shirt Blackgreen',140000,'Material : cotton combed 30s\r\nAvailable size : M, L\r\n\r\n\r\nGrab it fast!!!',NULL,'2019-05-24 04:59:06','2019-05-24 04:59:06',5,NULL),
(8,'T-Shirt Blackgreen',150000,'<div>Material : cotton combed 30s</div><div>Available size : M,L</div><div><br></div><div>Grab it fast!!<br></div>',NULL,'2019-05-24 05:03:40','2019-05-24 05:03:40',5,NULL),
(9,'T-Shirt Volcom - Grey',201000,'<div>Material : Cotton Combed30s</div><div>Available Size : M, L</div><div><br></div><div>Grab it fast!!!<br></div>',NULL,'2019-05-24 05:06:37','2019-05-24 05:06:37',15,NULL),
(10,'Polo Shirt Six - Marron',180000,'<div>Material : Cotton Combed 32s</div><div>Available Size : M, L</div><div><br></div>Grab it fast!!!<br>',NULL,'2019-05-24 05:07:13','2019-05-24 05:20:21',10,NULL),
(11,'T-Shirt Billabong - Tricolor',165000,'<div>Material : Cotton Combed30s</div><div>Available Size : M, L</div><div><br></div>Grab it fast!!!<br>',NULL,'2019-05-24 05:08:20','2019-05-24 05:08:20',10,NULL),
(12,'T-Shirt Supreme Banana - Red',600000,'<div>Material : Cotton Combed30s</div><div>Available Size : Medium, Large</div><div><br></div>Grab it fast!!!<br>',NULL,'2019-05-24 05:10:40','2019-05-24 05:10:40',10,NULL),
(13,'T-Shirt Supreme X Bape - Bart Edition - Black',999000,'<div>Supreme x Bape spesial edition!<br></div><div>Material : Cotton Combed30s</div><div>Available Size : M, L</div><div><br></div>Grab it fast!!!<br>',NULL,'2019-05-24 05:12:41','2019-05-24 05:12:41',8,NULL),
(14,'T-Shirt Greenlight 1996 - Grey',251000,'<div>Material : Cotton Combed30s</div><div>Available Size : M, L</div><div><br></div>Grab it fast!!!<br>',NULL,'2019-05-24 05:13:41','2019-05-24 05:13:41',10,NULL),
(15,'T-Shirt Greenlight Fire Ring - BlackWhite',251000,'<div>Material : Cotton Combed30s</div><div>Available Size : M, L</div><div><br></div>Grab it fast!!!<br>',NULL,'2019-05-24 05:14:41','2019-05-24 05:14:41',10,NULL),
(16,'T-Shirt ADS Simple Style - Black',125000,'<div>Material : Cotton Combed30s</div><div>Available Size : M, L</div><div><br></div>Grab it fast!!!<br>',2,'2019-05-24 05:16:50','2019-05-24 07:44:37',10,NULL),
(17,'Polo Six - Marron',125000,'<div>Material : Cotton Combed 32s</div><div>Available Size : M, L</div><div><br></div>Grab it fast!!!<br>',3,'2019-05-24 05:18:15','2019-05-24 07:14:15',10,NULL),
(18,'Polo Shirt Six - Black Mix Brown',125000,'<div>Material : Cotton Combed 32s</div><div>Available Size : M, L</div><div><br></div>Grab it fast!!!<br>',5,'2019-05-24 05:19:38','2019-05-24 05:45:01',10,NULL);

/*Table structure for table `response` */

DROP TABLE IF EXISTS `response`;

CREATE TABLE `response` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `review_id` int(10) unsigned NOT NULL,
  `admin_id` int(10) unsigned NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `review_id` (`review_id`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `response_ibfk_1` FOREIGN KEY (`review_id`) REFERENCES `product_reviews` (`id`),
  CONSTRAINT `response_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `response` */

insert  into `response`(`id`,`review_id`,`admin_id`,`content`,`created_at`,`updated_at`) values 
(1,3,1,'Terimakasih Gan','2019-05-24 05:47:06','2019-05-24 05:47:06'),
(2,5,1,'maaf gan','2019-05-24 07:09:11','2019-05-24 07:09:11'),
(3,4,1,'siap gann','2019-05-24 07:15:15','2019-05-24 07:15:15'),
(4,6,1,'mantab sangat gan','2019-05-24 07:15:41','2019-05-24 07:15:41'),
(5,6,1,'mantab sangat gan','2019-05-24 07:58:06','2019-05-24 07:58:06'),
(6,6,1,'mantab sangat gan','2019-05-24 07:58:16','2019-05-24 07:58:16'),
(7,6,1,'mantab sangat gan','2019-05-24 07:59:16','2019-05-24 07:59:16'),
(8,16,1,'nais juga','2019-05-24 07:59:38','2019-05-24 07:59:38');

/*Table structure for table `transaction_details` */

DROP TABLE IF EXISTS `transaction_details`;

CREATE TABLE `transaction_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `qty` int(11) NOT NULL,
  `discount` int(3) DEFAULT NULL,
  `selling_price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_transaction` (`transaction_id`),
  KEY `id_product` (`product_id`),
  CONSTRAINT `transaction_details_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`),
  CONSTRAINT `transaction_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `transaction_details` */

insert  into `transaction_details`(`id`,`transaction_id`,`product_id`,`qty`,`discount`,`selling_price`,`created_at`,`updated_at`) values 
(9,8,3,1,NULL,100000,'2019-05-14 11:09:19','2019-05-14 11:09:19'),
(10,8,4,2,10,90000,'2019-05-14 11:09:19','2019-05-14 11:09:19'),
(11,9,3,1,NULL,100000,'2019-05-14 11:31:54','2019-05-14 11:31:54'),
(12,10,3,1,NULL,100000,'2019-05-21 12:11:54','2019-05-21 12:11:54'),
(13,12,3,1,NULL,100000,'2019-05-22 13:33:09','2019-05-22 13:33:09'),
(14,13,3,1,NULL,100000,'2019-05-22 13:39:07','2019-05-22 13:39:07'),
(15,14,5,1,NULL,1000000,'2019-05-22 15:12:15','2019-05-22 15:12:15'),
(16,15,5,3,NULL,1000000,'2019-05-23 15:06:32','2019-05-23 15:06:32'),
(17,16,18,1,NULL,125000,'2019-05-24 05:40:27','2019-05-24 05:40:27'),
(18,17,18,3,NULL,125000,'2019-05-24 05:43:01','2019-05-24 05:43:01'),
(19,22,17,2,NULL,125000,'2019-05-24 07:06:36','2019-05-24 07:06:36'),
(20,22,16,2,NULL,125000,'2019-05-24 07:06:36','2019-05-24 07:06:36');

/*Table structure for table `transactions` */

DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timeout` datetime NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regency` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` double(12,2) NOT NULL,
  `shipping_cost` double(12,2) NOT NULL,
  `sub_total` double(12,2) NOT NULL,
  `user_id` int(20) unsigned NOT NULL,
  `courier_id` int(10) unsigned NOT NULL,
  `proof_of_payment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('unverified','verified','delivered','success','expired') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `courier_id` (`courier_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`courier_id`) REFERENCES `couriers` (`id`),
  CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `transactions` */

insert  into `transactions`(`id`,`timeout`,`address`,`regency`,`province`,`total`,`shipping_cost`,`sub_total`,`user_id`,`courier_id`,`proof_of_payment`,`created_at`,`updated_at`,`status`) values 
(8,'0000-00-00 00:00:00','asasas','Aceh Besar','Nanggroe Aceh Darussalam (NAD)',343000.00,63000.00,280000.00,1,4,NULL,'2019-05-14 11:09:19','2019-05-14 11:09:19','unverified'),
(9,'0000-00-00 00:00:00','asasas','Aceh Barat Daya','Nanggroe Aceh Darussalam (NAD)',173000.00,73000.00,100000.00,2,2,NULL,'2019-05-14 11:31:54','2019-05-14 11:31:54','unverified'),
(10,'2019-05-24 12:11:54','Jalan Raya Kampus Unud','Badung','Bali',106000.00,6000.00,100000.00,2,3,NULL,'2019-05-21 12:11:54','2019-05-21 12:11:54',NULL),
(11,'2019-05-24 12:13:12','Jalan Raya Kampus Unud','Badung','Bali',106000.00,6000.00,100000.00,2,3,NULL,'2019-05-21 12:13:12','2019-05-21 12:13:12',NULL),
(12,'2019-05-23 13:33:09','MH Thamrin','Jakarta Barat','DKI Jakarta',118000.00,18000.00,100000.00,2,3,'supreme.jpg','2019-06-22 13:33:09','2019-05-22 13:34:05','success'),
(13,'2019-05-23 13:39:07','Malioboro','Bandung','Jawa Barat',120000.00,20000.00,100000.00,2,3,'struk.jpg','2019-06-22 13:39:07','2019-06-22 13:43:35','success'),
(14,'2019-05-23 15:12:15','sudirman','Aceh Jaya','Nanggroe Aceh Darussalam (NAD)',1047000.00,47000.00,1000000.00,2,3,'struk.jpg','2019-05-22 15:12:15','2019-05-22 15:12:34','unverified'),
(15,'2019-05-24 15:06:32','jalan raya kampus unund','Aceh Singkil','Nanggroe Aceh Darussalam (NAD)',3056500.00,56500.00,3000000.00,2,3,'1363a5daa189f94583a8213b780563a31b94b4d1_00.jpg','2019-05-23 15:06:32','2019-05-23 15:09:57','success'),
(16,'2019-05-25 05:40:27','Jalan Raya Kampus Unud','Aceh Barat','Nanggroe Aceh Darussalam (NAD)',176500.00,51500.00,125000.00,2,3,NULL,'2019-05-24 05:40:27','2019-05-24 05:40:27',NULL),
(17,'2019-05-25 05:43:00','jalan sana','Aceh Besar','Nanggroe Aceh Darussalam (NAD)',441000.00,66000.00,375000.00,1,4,'12417561_1081990508524056_725790264657155588_n.jpg','2019-07-24 05:43:00','2019-07-24 05:44:46','success'),
(22,'2019-05-25 07:06:36','jalan sana','Bangli','Bali',511000.00,11000.00,500000.00,1,3,'620CLOUDCOMPUTING01.jpg','2019-05-24 07:06:36','2019-05-24 07:08:07','success');

/*Table structure for table `user_notifications` */

DROP TABLE IF EXISTS `user_notifications`;

CREATE TABLE `user_notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(11) unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`),
  KEY `notifiable_id` (`notifiable_id`),
  CONSTRAINT `user_notifications_ibfk_1` FOREIGN KEY (`notifiable_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `user_notifications` */

insert  into `user_notifications`(`id`,`type`,`notifiable_type`,`notifiable_id`,`data`,`read_at`,`created_at`,`updated_at`) values 
('4aa135db-81ea-4509-93f7-1b1d439d4053','App\\Notifications\\UserNotification','App\\User',1,'<a href = \'/transaction/22\'>Transaksi anda sudah Verified</a>','2019-05-24 07:08:14','2019-05-24 07:07:16','2019-05-24 07:08:14'),
('4d6de892-9f5d-44f6-a9c0-520785d6adcc','App\\Notifications\\UserNotification','App\\User',1,'<a href = \'/transaction/17\'>Transaksi anda sudah Verified</a>','2019-05-24 05:44:42','2019-05-24 05:44:10','2019-05-24 05:44:42'),
('5ae03b4e-85f3-4c6d-b9b3-87c0e8007432','App\\Notifications\\UserNotification','App\\User',1,'<a href = \'/product-detail/16\'>Ada review yang di respon admin</a>',NULL,'2019-05-24 07:09:12','2019-05-24 07:09:12'),
('5defcc1d-c001-49f0-8198-f2f860a18dec','App\\Notifications\\UserNotification','App\\User',1,'<a href = \'/product-detail/17\'>Ada review yang di respon admin</a>',NULL,'2019-05-24 07:59:38','2019-05-24 07:59:38'),
('64e288a0-56ce-4eb0-ae6e-89e76c7051d0','App\\Notifications\\UserNotification','App\\User',1,'<a href = \'/product-detail/17\'>Ada review yang di respon admin</a>',NULL,'2019-05-24 07:58:06','2019-05-24 07:58:06'),
('64f3820b-4c3d-4f80-9c38-e17ccd841092','App\\Notifications\\UserNotification','App\\User',1,'<a href = \'/product-detail/17\'>Ada review yang di respon admin</a>',NULL,'2019-05-24 07:59:18','2019-05-24 07:59:18'),
('8c93d833-934e-4590-bb71-27cc04026b67','App\\Notifications\\UserNotification','App\\User',1,'<a href = \'/product-detail/17\'>Ada review yang di respon admin</a>',NULL,'2019-05-24 07:15:42','2019-05-24 07:15:42'),
('9aeba2bf-f15d-4477-abfe-2b788c52f202','App\\Notifications\\UserNotification','App\\User',1,'<a href = \'/product-detail/18\'>Ada review yang di respon admin</a>','2019-05-24 05:51:53','2019-05-24 05:47:07','2019-05-24 05:51:53'),
('a47987f8-013b-48d5-8b72-840533e95608','App\\Notifications\\UserNotification','App\\User',1,'<a href = \'/transaction/17\'>Transaksi anda sudah Delivered</a>','2019-05-24 05:44:42','2019-05-24 05:44:25','2019-05-24 05:44:42'),
('a94e3675-b773-4c1f-9bb9-478aa5e92fa6','App\\Notifications\\UserNotification','App\\User',1,'<a href = \'/transaction/22\'>Transaksi anda sudah Delivered</a>','2019-05-24 07:08:14','2019-05-24 07:07:56','2019-05-24 07:08:14'),
('d0047073-72c4-46ac-896b-62c4036ab25a','App\\Notifications\\UserNotification','App\\User',1,'<a href = \'/product-detail/17\'>Ada review yang di respon admin</a>',NULL,'2019-05-24 07:15:15','2019-05-24 07:15:15'),
('ea920c76-0d11-4503-86e6-f695b82bcaa1','App\\Notifications\\UserNotification','App\\User',1,'<a href = \'/product-detail/17\'>Ada review yang di respon admin</a>',NULL,'2019-05-24 07:58:16','2019-05-24 07:58:16');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`profile_image`,`status`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`) values 
(1,'widiana','widianaputraa@gmail.com','NULL','NULL','2019-05-05 12:04:21','$2y$10$fSvZoNT1bXbAKxdH1D.OBedAIw2bITZR43K8CysO50PiktFr70PNa',NULL,'2019-05-05 12:04:08','2019-05-05 12:04:21'),
(2,'widianaputra','widianaputraa1@gmail.com','NULL','NULL','2019-05-14 11:30:36','$2y$10$SEBrUIVv/tsyPAYlOh7VluDzcCPFEfnLUdIw4Iju3snC6F9zWq63m',NULL,'2019-05-14 11:30:20','2019-05-14 11:30:36');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
