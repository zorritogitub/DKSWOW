/*
SQLyog Community v13.3.0 (64 bit)
MySQL - 8.4.2 : Database - store
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`store` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `store`;

/*Table structure for table `store_categories` */

DROP TABLE IF EXISTS `store_categories`;

CREATE TABLE `store_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(765) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `icon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `requiredRank` int DEFAULT NULL,
  `flags` int unsigned NOT NULL DEFAULT '0',
  `enabled` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `store_categories` */

insert  into `store_categories`(`id`,`name`,`icon`,`requiredRank`,`flags`,`enabled`) values 
(1,'Nuevo','inv_helmet_96',0,2,1),
(2,'Títulos','inv_scroll_11',0,0,1),
(4,'Monturas y Pet','inv_box_petcarrier_01',0,0,1),
(5,'Nivel','spell_holy_surgeoflight',0,0,1),
(6,'Servicios','inv_misc_note_03',0,0,1),
(7,'Bufos','spell_holy_holynova',0,0,1),
(8,'Ofertas','inv_misc_toy_07',0,1,1),
(9,'Hermandad','Ability_racial_avatar',1,0,1),
(10,'Armas','Inv_axe_106',0,0,1),
(11,'Armaduras','Inv_helmet_134',0,0,1);

/*Table structure for table `store_category_service_link` */

DROP TABLE IF EXISTS `store_category_service_link`;

CREATE TABLE `store_category_service_link` (
  `category` int unsigned NOT NULL,
  `service` int unsigned NOT NULL,
  PRIMARY KEY (`category`,`service`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `store_category_service_link` */

insert  into `store_category_service_link`(`category`,`service`) values 
(2,16),
(3,5),
(3,12),
(4,8),
(4,13),
(5,1),
(5,14),
(5,17),
(6,2),
(6,3),
(6,4),
(7,15),
(9,22);

/*Table structure for table `store_currencies` */

DROP TABLE IF EXISTS `store_currencies`;

CREATE TABLE `store_currencies` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` int unsigned NOT NULL DEFAULT '1',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `data` int NOT NULL DEFAULT '0',
  `tooltip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `store_currencies` */

insert  into `store_currencies`(`id`,`type`,`name`,`icon`,`data`,`tooltip`) values 
(1,1,'Oro','oro',0,'Oro normal.'),
(2,2,'Moneda del Reino','moneda_armagedon',90003,'Moneda Armagedon'),
(3,3,'Moneda de Oro','Gold',90004,'Oro(Hermandad)');

/*Table structure for table `store_logs` */

DROP TABLE IF EXISTS `store_logs`;

CREATE TABLE `store_logs` (
  `account` int DEFAULT NULL,
  `guid` int DEFAULT NULL,
  `serviceId` int DEFAULT NULL,
  `currencyId` int DEFAULT NULL,
  `cost` int DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `receiver_guid` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `store_logs` */

insert  into `store_logs`(`account`,`guid`,`serviceId`,`currencyId`,`cost`,`time`,`receiver_guid`) values 
(2,2,22,1,0,'2025-04-18 11:27:08',NULL),
(2,2,15,1,1,'2025-04-24 06:12:17',NULL);

/*Table structure for table `store_services` */

DROP TABLE IF EXISTS `store_services`;

CREATE TABLE `store_services` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` int unsigned DEFAULT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `tooltipName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `tooltipType` varchar(765) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tooltipText` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `icon` varchar(765) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price` int DEFAULT NULL,
  `currency` int DEFAULT NULL,
  `hyperlinkId` int DEFAULT NULL,
  `creatureEntry` int DEFAULT NULL,
  `discountAmount` int DEFAULT NULL,
  `flags` int DEFAULT NULL,
  `reward_1` int unsigned DEFAULT NULL,
  `reward_2` int unsigned DEFAULT NULL,
  `reward_3` int unsigned DEFAULT NULL,
  `reward_4` int unsigned DEFAULT NULL,
  `reward_5` int unsigned DEFAULT NULL,
  `reward_6` int unsigned DEFAULT NULL,
  `reward_7` int unsigned DEFAULT NULL,
  `reward_8` int unsigned DEFAULT NULL,
  `rewardcount_1` int unsigned DEFAULT NULL,
  `rewardcount_2` int unsigned DEFAULT NULL,
  `rewardcount_3` int unsigned DEFAULT NULL,
  `rewardcount_4` int unsigned DEFAULT NULL,
  `rewardcount_5` int unsigned DEFAULT NULL,
  `rewardcount_6` int unsigned DEFAULT NULL,
  `rewardcount_7` int unsigned DEFAULT NULL,
  `rewardcount_8` int unsigned DEFAULT NULL,
  `new` int unsigned NOT NULL DEFAULT '0',
  `enabled` int unsigned DEFAULT NULL,
  `categoryId` int unsigned DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `store_services` */

insert  into `store_services`(`id`,`type`,`name`,`tooltipName`,`tooltipType`,`tooltipText`,`icon`,`price`,`currency`,`hyperlinkId`,`creatureEntry`,`discountAmount`,`flags`,`reward_1`,`reward_2`,`reward_3`,`reward_4`,`reward_5`,`reward_6`,`reward_7`,`reward_8`,`rewardcount_1`,`rewardcount_2`,`rewardcount_3`,`rewardcount_4`,`rewardcount_5`,`rewardcount_6`,`rewardcount_7`,`rewardcount_8`,`new`,`enabled`,`categoryId`) values 
(1,8,'Aumento a nivel 10\r\n+10 Niveles','Aumento de nivel','','Aumenta los niveles de tus personajes en 10.','achievement_level_10',10,1,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1),
(2,7,'Cambio de facción','Cambio de facción','','Te permite cambiar tus personajes de facción. Disponible después de volver a iniciar sesión.','Achievement_Reputation_01',1000,2,0,0,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1),
(3,7,'Cambio de Raza','Cambio de raza','','Te permite cambiar tus personajes de raza. Disponible después de volver a iniciar sesión.','Spell_Holy_AshesToAshes',1000,2,0,0,5,0,128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1),
(4,7,'Cambio de Nombre','Cambio de nombre','','Te permite cambiar tus personajes de nombre. Disponible después de volver a iniciar sesión.','Spell_Nature_Strength',1000,2,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1),
(5,1,'Espada de espuma\r\n(Espada de dos manos)','Item','item','|cff00FFFFHaga clic para obtener una vista previa!|r','inv_sword_22',10,1,45061,45061,0,1,45061,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,1),
(8,3,'Tigre espectral veloz\r\n(Montura)','Montura','Hechizo','|cff00FFFFHaga clic para obtener una vista previa!|r','ability_mount_spectraltiger',3600,2,42777,24004,0,0,42777,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1),
(12,1,'Camisa morada épica\r\n(Camisa)','Camisa','item','|cff00FFFFHaga clic para obtener una vista previa!|r','inv_shirt_purple_01',10,1,45037,45037,5,1,45037,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,1),
(13,4,'Pollo de la pradera\r\n(Pet)','Pet','Hechizo','|cff00FFFFHaga clic para obtener una vista previa!|r','spell_magic_polymorphchicken',10,1,10686,7392,0,0,10686,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1),
(14,8,'Aumento a nivel 20\r\n+20 Niveles','Aumento de nivel','','Aumenta los niveles de tus personajes en 20.','achievement_level_20',1000,2,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1),
(15,5,'Bufo Bendición del Poder','Beneficio','','Te beneficia con Bendición de poder.','spell_holy_fistofjustice',1,1,0,0,0,0,27140,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1),
(16,9,'Título Campeón de los Naaru','Título','','Te otorga el título de Campeón de los Naaru..','inv_mace_51',10,1,0,0,0,0,53,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1),
(17,8,'Aumento a nivel 60\r\n+60 Niveles','Aumento de nivel','','Aumenta el nivel de tus personajes. 60!','achievement_level_60',3000,2,0,0,0,1,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1),
(18,1,'Conjunto de esmoquin','Conjunto de esmoquin','','Expresa tu gran sentido de la moda con este conjunto completo de esmoquin.!\r\n\r\nContiene lo siguiente:\r\n\r\n1x Chaqueta de esmoquin\r\n1x Camisa de esmoquin\r\n1x Pantalón de esmoquin','inv_shirt_black_01',100,1,0,0,0,1,10036,10035,10034,0,0,0,0,0,1,1,1,0,0,0,0,0,0,1,1),
(22,10,'Montura \r\nJinete decapitado','Beneficio de Hermandad','Hechizo','|cff00FFFFHaga clic para obtener una vista previa!|r','Ability_mount_nightmarehorse',3600,2,48025,24814,0,1,48025,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
