/*
SQLyog Ultimate v12.5.0 (64 bit)
MySQL - 10.4.32-MariaDB : Database - blog_management
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`blog_management` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `blog_management`;

/*Table structure for table `my_files` */

DROP TABLE IF EXISTS `my_files`;

CREATE TABLE `my_files` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(150) DEFAULT NULL,
  `file_path` text DEFAULT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `my_files` */

insert  into `my_files`(`file_id`,`file_name`,`file_path`) values 
(1,'one.jpg','Images/252353921_one.jpg'),
(2,'two.jpg','Images/34763371_two.jpg'),
(3,'a.png','Images/45289421_a.png'),
(4,'b.png','Images/1680402718_b.png'),
(5,'c.png','Images/510266399_c.png'),
(6,'one.jpg','Images/1173685672_one.jpg'),
(7,'two.jpg','Images/193469530_two.jpg'),
(8,'c.png','Images/1349001371_c.png'),
(9,'one.jpg','Images/563238198_one.jpg'),
(10,'two.jpg','Images/501123359_two.jpg'),
(11,'a.png','Images/260471943_a.png'),
(12,'b.png','Images/2045295194_b.png');

/*Table structure for table `posts` */

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `added_by_user_role_id` int(11) DEFAULT NULL,
  `post_title` text DEFAULT NULL,
  `post_description` longtext DEFAULT NULL,
  `is_active` enum('Active','Inactive') DEFAULT 'Active',
  PRIMARY KEY (`post_id`),
  KEY `author_user_role_id` (`added_by_user_role_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`added_by_user_role_id`) REFERENCES `user_role` (`user_role_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `posts` */

insert  into `posts`(`post_id`,`added_by_user_role_id`,`post_title`,`post_description`,`is_active`) values 
(1,2,'Post 1111','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout','Active'),
(2,2,'Post 2',' It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout','Active'),
(5,1,'post 3','Hidaya TrustZXZXZXZXZXZXZ','Active'),
(9,2,'post 4','Hidaya TrustZXZXZXZXZXZXZ','Active'),
(10,1,'post 5','Hidaya TrustZXZXZXZXZXZXZ','Active'),
(11,2,'post 6','sadasd','Active'),
(12,2,'post 7','asdasd','Active'),
(13,2,'post 8','sdasds','Active'),
(14,2,'Post 9','adas','Active'),
(15,2,'Post 10','asdasdasd','Active'),
(16,2,'Post 11','sdasdas','Active'),
(17,2,'Post 12','asdasd','Active'),
(18,2,'Post 13','sadasd','Active'),
(19,2,'Post 14','dasdasd','Active'),
(20,2,'POst 15','asdasd','Active'),
(21,2,'Post 16','asdasdasdad','Active'),
(22,2,'Post 17','asdasdasasdasdasd','Active'),
(23,2,'Post 18','sadasd','Active'),
(24,2,'asdsad','asdasd','Active'),
(25,2,'asdasd 20','asdsad','Active'),
(26,2,'Post 21','Testing','Active'),
(27,NULL,NULL,'Hello, World!','Active'),
(28,NULL,NULL,'<p>Hello, World!</p>','Active'),
(29,NULL,NULL,'<h1><span style=\"color: rgb(185, 106, 217); background-color: rgb(224, 62, 45);\">Hello, World!</span></h1>','Active'),
(30,NULL,NULL,'<h1 style=\"text-align: center;\"><span style=\"color: rgb(241, 196, 15); background-color: rgb(52, 73, 94);\"><strong><em>Hello, World!</em></strong></span></h1>','Active'),
(31,NULL,NULL,'&lt;h1 style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;font-family: &#039;book antiqua&#039;, palatino, serif; background-color: rgb(241, 196, 15);&quot;&gt;&lt;sup&gt;&lt;em&gt;&lt;strong&gt;Hello, World!&lt;/strong&gt;&lt;/em&gt;&lt;/sup&gt;&lt;/span&gt;&lt;/h1&gt;','Active'),
(32,NULL,NULL,'&lt;table style=&quot;border-collapse: collapse; width: 99.9668%; height: 22.4px;&quot; border=&quot;1&quot;&gt;&lt;colgroup&gt;&lt;col style=&quot;width: 49.9502%;&quot;&gt;&lt;col style=&quot;width: 49.9502%;&quot;&gt;&lt;/colgroup&gt;\r\n&lt;tbody&gt;\r\n&lt;tr style=&quot;height: 22.4px;&quot;&gt;\r\n&lt;td style=&quot;height: 22.4px;&quot;&gt;&lt;span style=&quot;color: rgb(241, 196, 15);&quot;&gt;Post_ID&lt;/span&gt;&lt;/td&gt;\r\n&lt;td style=&quot;height: 22.4px;&quot;&gt;&lt;span style=&quot;color: rgb(186, 55, 42);&quot;&gt;Post-Name&lt;/span&gt;&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;Hello, Hidaya!&lt;/p&gt;','Active');

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `roles` */

insert  into `roles`(`role_id`,`role_type`) values 
(1,'Admin'),
(2,'Author'),
(3,'User');

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `is_active` enum('Active','Inactive') DEFAULT NULL,
  PRIMARY KEY (`user_role_id`),
  KEY `user_id` (`user_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `user_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `user_role` */

insert  into `user_role`(`user_role_id`,`user_id`,`role_id`,`is_active`) values 
(1,2,2,'Active'),
(2,1,1,'Active'),
(3,3,3,NULL),
(4,4,2,NULL),
(5,3,2,'Active');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) DEFAULT NULL,
  `gender` enum('Female','Male') DEFAULT 'Male',
  `user_email` varchar(100) DEFAULT NULL,
  `user_password` text DEFAULT NULL,
  `is_active` enum('Active','Inactive') DEFAULT 'Active',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `users` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
