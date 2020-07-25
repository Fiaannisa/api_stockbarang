/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.5.25a : Database - db_bengkel
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_bengkel` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_bengkel`;

/*Table structure for table `barang` */

DROP TABLE IF EXISTS `barang`;

CREATE TABLE `barang` (
  `id_barang` INT(11) NOT NULL AUTO_INCREMENT,
  `kode_barang` VARCHAR(20) NOT NULL,
  `merk` VARCHAR(20) NOT NULL,
  `kategori` VARCHAR(50) NOT NULL,
  `nama_barang` VARCHAR(50) NOT NULL,
  `stock` INT(50) NOT NULL,
  `harga_persatuan` DOUBLE(100,0) DEFAULT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=INNODB AUTO_INCREMENT=128 DEFAULT CHARSET=latin1;

/*Data for the table `barang` */

INSERT  INTO `barang`(`id_barang`,`kode_barang`,`merk`,`kategori`,`nama_barang`,`stock`,`harga_persatuan`) VALUES (1,'MO-10001','MAKEOVER','POWERSTAY','Powerstay Glossy Lip Coat',295,99000),(2,'MO-10002','MAKEOVER','POWERSTAY','Powerstay Radiant Illuminizer',70,125000),(3,'MO-10003','MAKEOVER','POWERSTAY','Powerstay Transferproff Matte Lip Cream',45,120000),(4,'MO-10004','MAKEOVER','POWERSTAY','Powerstay Vivia Waterline Lip Stain',56,105000),(5,'MO-10005','MAKEOVER','POWERSTAY','Powerstay Demi-Matte Cover Cushion',72,215000),(6,'MO-10006','MAKEOVER','POWERSTAY','Powerstay Total Cover Matte Cream Foundation',62,139000),(7,'MO-10007','MAKEOVER','POWERSTAY','Powerstay Eye Palette Royal Rose',76,295000),(8,'MO-10008','MAKEOVER','POWERSTAY','Powerstay Eye Palette Uptown Bae',45,295000),(9,'MO-10009','MAKEOVER','POWERSTAY','Powerstay Fix & Matte Makeup Setting Spray',54,99000),(10,'MO-10010','MAKEOVER','POWERSTAY','Powerstay Totall Cover Liquid Concealer',57,99000),(11,'MO-20011','MAKEOVER','POWERSKIN','Powerskin Water Charge Moisturizer',76,125000),(12,'MO-20012','MAKEOVER','POWERSKIN','Powerskin Radiant Tinted Moisturizer',61,139000),(13,'MO-20013','MAKEOVER','POWERSKIN','Powerskin Liquid Glow Moisturizer',55,125000),(14,'MO-30014','MAKEOVER','FACE','Perfect Cover Two Way Cake',34,157000),(15,'MO-30015','MAKEOVER','FACE','Hydration Serum',67,115000),(16,'MO-30016','MAKEOVER','FACE','Multifix Matte Blusher',56,125000),(17,'MO-30017','MAKEOVER','FACE','Riche Glow Face Highlighter',52,157000),(18,'MO-30018','MAKEOVER','FACE','Silky Smooth Translucent Powder',42,140000),(19,'MO-30019','MAKEOVER','FACE','Ultra Cover Liquid Matt Foundation',28,93000),(20,'MO-30020','MAKEOVER','FACE','Velvet Mattifying Primer',51,120000),(21,'MO-30021','MAKEOVER','FACE','Face Contour Kit',39,120000),(22,'MO-30022','MAKEOVER','FACE','Camuflage Cream Face Concealer',49,142000),(23,'MO-30023','MAKEOVER','FACE','Cheek Marbles',45,185000),(24,'MO-40024','MAKEOVER','EYES','Hyperblack Superstay Liner',34,119000),(25,'MO-40025','MAKEOVER','EYES','Brow Style Eye Definer',21,115000),(26,'MO-40026','MAKEOVER','EYES','Eye Brow Definition Kit',56,115000),(27,'MO-40027','MAKEOVER','EYES','Eye Liner Pencil',34,85000),(28,'MO-40028','MAKEOVER','EYES','Ultimate Lash Mascara',29,121000),(29,'MO-40029','MAKEOVER','EYES','Eye Brow Pencil',22,62000),(30,'MO-40030','MAKEOVER','EYES','Eye Shadow Palette',19,195000),(31,'MO-40031','MAKEOVER','EYES','Power Eye Shadow',45,79000),(32,'MO-40032','MAKEOVER','EYES','Sparkling Powder',23,59000),(33,'MO-40033','MAKEOVER','EYES','Trivia Eye Shadow',37,89000),(34,'MO-50034','MAKEOVER','LIPS','Intense Matte Lip Cream',34,105000),(35,'MO-50035','MAKEOVER','LIPS','Color Stick Matte Crayon',36,99000),(36,'MO-50036','MAKEOVER','LIPS','Color Stick Gloss Crayon',41,99000),(37,'MO-50037','MAKEOVER','LIPS','Cliquematte Lip Stylo',29,115000),(38,'MO-50038','MAKEOVER','LIPS','Ultra Hi-matte Lipstick',24,89000),(39,'MO-50039','MAKEOVER','LIPS','Ultra Shine Lipstick',12,75000),(40,'MO-50040','MAKEOVER','LIPS','Melted Metallic Lip Cream',19,115000),(41,'MO-50041','MAKEOVER','LIPS','Creamy Lipgloss',23,60000),(42,'MO-50042','MAKEOVER','LIPS','Lip Color Palette',21,147000),(43,'MO-50043','MAKEOVER','LIPS','Lip Amplifu Contour Liner',18,89000),(44,'MO-60044','MAKEOVER','PRO-PALETTE','Perfect Cover Two Way Cake Palette',23,259000),(45,'MO-60045','MAKEOVER','PRO-PALETTE','Perfect Matte Eye Shadow Palette',15,320000),(46,'MO-60046','MAKEOVER','PRO-PALETTE','Highlight & Contour Palette',34,315000),(47,'MO-60047','MAKEOVER','PRO-PALETTE','Shiny Glam Eye Shadow Palette',29,320000),(48,'MO-70048','MAKEOVER','SKIN','All Purpose Sanitizer',23,55000),(49,'MO-70049','MAKEOVER','SKIN','Cleansing Cream',19,58000),(50,'MO-70050','MAKEOVER','SKIN','Light Remover',45,52000),(51,'MO-70051','MAKEOVER','SKIN','Makeup Remover',41,62000),(52,'MO-70052','MAKEOVER','SKIN','Micellar Water',34,85000),(53,'MO-80053','MAKEOVER','TOOLS','Two Way Cake Sponge',45,44000),(54,'MO-80054','MAKEOVER','TOOLS','Flat Liquid Foundation Brush',41,109000),(55,'MO-80055','MAKEOVER','TOOLS','Tapered Brush',39,109000),(56,'MO-80056','MAKEOVER','TOOLS','Fan Brush',34,79000),(57,'MO-80057','MAKEOVER','TOOLS','Pencil Brush',21,47000),(58,'MO-80058','MAKEOVER','TOOLS','Concealer Brush',27,47000),(59,'MO-80059','MAKEOVER','TOOLS','Angled Brow Brush',17,47000),(60,'MO-80060','MAKEOVER','TOOLS','Angled Brush',15,114000),(61,'WA-10061','WARDAH','SKINCARE','Wardah Acnederm Acne Spot Treatment Gel',32,24000),(62,'WA-10062','WARDAH','SKINCARE','Wardah C-Defense Waterclay Mask',29,42000),(63,'WA-10063','WARDAH','SKINCARE','Wardah Renew You Anti Aging Night Cream',34,105000),(64,'WA-10064','WARDAH','SKINCARE','C-Defense DD Cream 20ml',19,31500),(65,'WA-10065','WARDAH','SKINCARE','Wardah Nature Daily Capsule Mask',45,21000),(66,'WA-10066','WARDAH','SKINCARE','Wardah Lightening Facial Serum 5x5 ml',39,56500),(67,'WA-10067','WARDAH','SKINCARE','Wardah Renew You Anti Aging Facial Wash',37,33599),(68,'WA-10068','WARDAH','SKINCARE','Wardah Renew You Anti Aging Day Cream',43,102000),(69,'WA-10069','WARDAH','SKINCARE','Wardah White Secret Intense Brightening Essence',31,79000),(70,'WA-10070','WARDAH','SKINCARE','Wardah Aloe Hydramid Facial Wash',21,28500),(71,'WA-20071','WARDAH','MAKEUP','Wardah EyeXpert Eyeshadow Nude',27,47500),(72,'WA-20072','WARDAH','MAKEUP','Wardah Intense Matte Lipstick',34,48500),(73,'WA-20073','WARDAH','MAKEUP','Wardah Exclusive Matte Lipstick',21,42000),(74,'WA-20074','WARDAH','MAKEUP','Wardah Everyday Cheek and LipTint',28,44000),(75,'WA-20075','WARDAH','MAKEUP','Wardah Everyday BB Cream',21,49500),(76,'WA-20076','WARDAH','MAKEUP','Wardah Exclusive Matte Lip Cream',22,62000),(77,'WA-20077','WARDAH','MAKEUP','Wardah Everyday Luminous Compact Powder',32,43000),(78,'WA-20078','WARDAH','MAKEUP','Wardah Lightening Matte Powder',42,37000),(79,'WA-20079','WARDAH','MAKEUP','Wardah Eyebrow Pencil',12,37000),(80,'WA-20080','WARDAH','MAKEUP','Wardah Everyday Shine Free BB Loose Powder',24,58000),(81,'WA-30081','WARDAH','BATH&BODY','Wardah Nature Daily Aloe Hydramild Hand Gel',43,19900),(82,'WA-30082','WARDAH','BATH&BODY','Wardah Creamy Body Butter Milk & Pearl',34,51500),(83,'WA-30083','WARDAH','BATH&BODY','Wardah Aloe Hydramild Multifunction Gel',23,38000),(84,'WA-30084','WARDAH','BATH&BODY','Wardah  Pure Olive Oil',20,26500),(85,'WA-40085','WARDAH','HAIRCARE','Wardah Anti Dandruff Shampoo',29,25000),(86,'WA-40086','WARDAH','HAIRCARE','Wardah Hair Fall Treatment Shampoo',32,25000),(87,'WA-40087','WARDAH','HAIRCARE','Wardah Conditioner Hair Fall',21,25000),(88,'WA-40088','WARDAH','HAIRCARE','Wardah Daily Fresh Shampoo',26,25000),(89,'WA-40089','WARDAH','FRAGRANCE','Wardah Scentsation Body Mist',27,37000),(90,'WA-40090','WARDAH','FRAGRANCE','Wardah Scentsation Eau De Toilette',37,55000),(91,'MB-10091','MAYBELLINE','SKINCARE','Lip & Eye Makeup Remover 40ml',23,39000),(92,'MB-10092','MAYBELLINE','SKINCARE','Remover Lip & Eye Makeup',32,109000),(93,'MB-20093','MAYBELLINE','MAKEUP','Fit Me Loose Powder',38,179000),(94,'MB-20094','MAYBELLINE','MAKEUP','Volum Express Hyper Curl Mascara',43,73900),(95,'MB-20095','MAYBELLINE','MAKEUP','Lash Sensational Mascara',41,159000),(96,'MB-20096','MAYBELLINE','MAKEUP','Instant Age Rewinder Concealer',32,133700),(97,'MB-20097','MAYBELLINE','MAKEUP','Baby Skin Pore Smoother Foundation',35,105000),(98,'MB-20098','MAYBELLINE','MAKEUP','Superstay Matte Ink Un-Nude Liquid Lipstick',54,119000),(99,'MB-20099','MAYBELLINE','MAKEUP','New FitMe! Matte Poreless Foundation With Pump',34,149000),(100,'MB-20100','MAYBELLINE','MAKEUP','New FitMe! Dewy Smoooth Foundation With Pump',29,149000),(101,'NY-10101','NYX','MAKEUP','Can\'t Stop Won\'t Stop Foundation',34,199000),(102,'NY-10102','NYX','MAKEUP','Total Control Mesh Cushion Foundation',32,350000),(103,'NY-10103','NYX','MAKEUP','Powder Puff Lippie',21,160000),(104,'NY-10104','NYX','MAKEUP','Lid Lingerie Eye Tint',52,150000),(105,'NY-10105','NYX','MAKEUP','Bare With Me Hydrating Cheek Tint',26,180000),(106,'RV-10106','REVLON','MAKEUP','Matte Balm',38,109000),(107,'RV-10107','REVLON','MAKEUP','Touch & Glow Face Powder',40,50000),(108,'RV-10108','REVLON','MAKEUP','Superlustrous Lipstick',31,40000),(109,'RV-10109','REVLON','MAKEUP','Ultra HD Matte LipColor Metalic',19,129000),(110,'RV-10110','REVLON','MAKEUP','Volumazing Mascara',24,129000),(111,'EN-10111','EMINA','SKINCARE','Ms Pimple Acne Solution Face Toner',24,24000),(112,'EN-10112','EMINA','SKINCARE','Sun Protection SPF 30',45,29000),(113,'EN-10113','EMINA','SKINCARE','Apricot Jam Face Scrub',31,26000),(114,'EN-10114','EMINA','SKINCARE','Bright Stuff Moisturizing Cream',29,23500),(115,'EN-10115','EMINA','SKINCARE','Double The Moist',56,26000),(116,'EN-20116','EMINA','MAKEUP','Emina Glossy Stain',26,47000),(117,'EN-20117','EMINA','MAKEUP','Emina Creamy Tint',12,49000),(118,'EN-20118','EMINA','MAKEUP','Emina Base With Me Mineral Cushion',34,126000),(119,'EN-20119','EMINA','MAKEUP','Emina Lip Cushion',29,56000),(120,'EN-20120','EMINA','MAKEUP','Emina City Chic CC Cream',27,55000),(121,'EN-30121','EMINA','BATH&BODY','Emina Aloe Vera Hand Spray',35,28000),(122,'EN-30122','EMINA','BATH&BODY','Emina Nail Polish Water Based',45,29000),(123,'EN-30123','EMINA','BATH&BODY','Emina Body Sorbet',45,44000),(124,'EN-40124','EMINA','FRAGRANCE','Emina Body Mist Pixy Dust',32,51500),(125,'EN-40125','EMINA','FRAGRANCE','Emina Body Mist Ocean Mist',45,51500),(126,'EN-40126','EMINA','FRAGRANCE','Emina Body Mist Indian Summer',39,51500),(127,'EN-20127','EMINA','MAKEUP','Emina Creamatte Lipstick',100,47500);

/*Table structure for table `barang_keluar` */

DROP TABLE IF EXISTS `barang_keluar`;

CREATE TABLE `barang_keluar` (
  `no_notakeluar` VARCHAR(50) NOT NULL,
  `tanggal` VARCHAR(40) DEFAULT NULL,
  `id_barang` VARCHAR(20) NOT NULL,
  `merk` VARCHAR(100) NOT NULL,
  `nama_barang` VARCHAR(50) NOT NULL,
  `jumlah` INT(50) NOT NULL,
  `harga_persatuan` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`no_notakeluar`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `barang_keluar` */

INSERT  INTO `barang_keluar`(`no_notakeluar`,`tanggal`,`id_barang`,`merk`,`nama_barang`,`jumlah`,`harga_persatuan`) VALUES ('BK-0000000001','12/06/2020','1','MAKEOVER','Powerstay Glossy Lip Coat',50,'99000');

/*Table structure for table `barang_masuk` */

DROP TABLE IF EXISTS `barang_masuk`;

CREATE TABLE `barang_masuk` (
  `no_notamasuk` VARCHAR(50) NOT NULL,
  `tanggal` VARCHAR(40) DEFAULT NULL,
  `nama_distributor` VARCHAR(20) NOT NULL,
  `id_barang` VARCHAR(20) NOT NULL,
  `merk` VARCHAR(100) NOT NULL,
  `kategori` VARCHAR(50) NOT NULL,
  `nama_barang` VARCHAR(50) NOT NULL,
  `jumlah` VARCHAR(500) NOT NULL,
  `harga_persatuan` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`no_notamasuk`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `barang_masuk` */

INSERT  INTO `barang_masuk`(`no_notamasuk`,`tanggal`,`nama_distributor`,`id_barang`,`merk`,`kategori`,`nama_barang`,`jumlah`,`harga_persatuan`) VALUES ('BM-0000000001','12/06/2020','PT.Indah Cemerlang S','1','MAKE OVER','POWERSTAY','Powerstay Glossy Lip Top Coat','55','99000'),('BM-0000000002','17/07/2020','PT.Bulan','2','MAYBELLINE','MAKEUP','Lipstick','10','102000');

/*Table structure for table `distributor` */

DROP TABLE IF EXISTS `distributor`;

CREATE TABLE `distributor` (
  `id_distributor` INT(11) NOT NULL AUTO_INCREMENT,
  `kode_distributor` VARCHAR(20) NOT NULL,
  `nama_distributor` VARCHAR(50) NOT NULL,
  `no_telp` VARCHAR(50) NOT NULL,
  `alamat` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`id_distributor`)
) ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

/*Data for the table `distributor` */

INSERT  INTO `distributor`(`id_distributor`,`kode_distributor`,`nama_distributor`,`no_telp`,`alamat`) VALUES (1,'DTB-0001','Asia Paramita Indah PT','0269002224','Jl. Perniagaan Brt 12 RT 012/01, Roa Malaka, Tambora, Jakarta Barat 11230 DKI JAKARTA'),(2,'DTB-0002','Flatloss Center','0216930209','Tambora, Jakarta Barat');

/*Table structure for table `karyawan` */

DROP TABLE IF EXISTS `karyawan`;

CREATE TABLE `karyawan` (
  `id_karyawan` INT(11) NOT NULL AUTO_INCREMENT,
  `nik` VARCHAR(20) NOT NULL,
  `nama` VARCHAR(50) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  `jenis_kelamin` VARCHAR(50) NOT NULL,
  `jabatan` VARCHAR(50) NOT NULL,
  `alamat` VARCHAR(500) NOT NULL,
  `password` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_karyawan`)
) ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

/*Data for the table `karyawan` */

INSERT  INTO `karyawan`(`id_karyawan`,`nik`,`nama`,`email`,`jenis_kelamin`,`jabatan`,`alamat`,`password`) VALUES (1,'123','Aldi Wardiyanto','aldi6@gmail.com','laki laki','admin','banyumas','123'),(3,'123d','Fia  Annisa','annisafia06@gmail.com','Perempuan','Admin','Klinting','1234'),(5,'K123','Latifah Iriyani','latifah123@gmail.com','Perempuan','Karyawan','Somagede','123');

DELIMITER $$
/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `updatekurangstock` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `updatekurangstock` AFTER INSERT ON `barang_keluar` FOR EACH ROW BEGIN
UPDATE barang SET stock=stock-NEW.jumlah
WHERE id_barang=NEW.id_barang;
END */$$


DELIMITER ;

/* Trigger structure for table `barang_keluar` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `kurangstock` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `kurangstock` AFTER UPDATE ON `barang_keluar` FOR EACH ROW BEGIN
UPDATE barang SET stock=stock-NEW.jumlah
WHERE id_barang=NEW.id_barang;
END */$$


DELIMITER ;

/* Trigger structure for table `barang_masuk` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `updatetambahstock` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `updatetambahstock` AFTER INSERT ON `barang_masuk` FOR EACH ROW BEGIN
UPDATE barang SET stock=stock+NEW.jumlah
WHERE id_barang=NEW.id_barang;
END */$$


DELIMITER ;

/* Trigger structure for table `barang_masuk` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `tambahstock` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `tambahstock` AFTER UPDATE ON `barang_masuk` FOR EACH ROW BEGIN
UPDATE barang SET stock=stock+NEW.jumlah
WHERE id_barang=NEW.id_barang;
END */$$


DELIMITER ;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
