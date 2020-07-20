/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.5.25a : Database - dbstockbarang
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dbstockbarang` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dbstockbarang`;

/*Table structure for table `distributor` */

DROP TABLE IF EXISTS `distributor`;

CREATE TABLE `distributor` (
  `id_distributor` INT(11) NOT NULL AUTO_INCREMENT,
  `kode_distributor` VARCHAR(20) NOT NULL,
  `nama_distributor` VARCHAR(50) NOT NULL,
  `no_telp` VARCHAR(50) NOT NULL,
  `alamat` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`id_distributor`)
) ENGINE=INNODB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `distributor` */

INSERT  INTO `distributor`(`id_distributor`,`kode_distributor`,`nama_distributor`,`no_telp`,`alamat`) VALUES (1,'DTB-0001','Asia Paramita Indah PT','026900222','Jl. Perniagaan Brt 12 RT 012/01, Roa Malaka, Tambora, Jakarta Barat 11230 DKI JAKARTA'),(2,'DTB-0002','Flatloss Center','0216930209','Tambora, Jakarta Barat'),(3,'DTB-0003','Golden Beauty','0216900165','Tambora, Jakarta Barat');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


DROP TABLE IF EXISTS `barang_masuk`;
CREATE TABLE `barang_masuk` (
  `no_notamasuk` VARCHAR(50) NOT NULL ,
  `tanggal` VARCHAR(40),
  `nama_distributor` VARCHAR(20) NOT NULL,
  `id_barang` VARCHAR(20) NOT NULL,
  `merk` VARCHAR(100) NOT NULL,
  `kategori` VARCHAR(50) NOT NULL,
  `nama_barang` VARCHAR(50) NOT NULL,
  `jumlah` VARCHAR(500) NOT NULL,
  `harga_persatuan` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`no_notamasuk`)
) DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS `barang_keluar`;
CREATE TABLE `barang_keluar` (
  `no_notakeluar` VARCHAR(50) NOT NULL ,
  `tanggal` VARCHAR(40),
  `id_barang` VARCHAR(20) NOT NULL,
  `merk` VARCHAR(100) NOT NULL,
  `nama_barang` VARCHAR(50) NOT NULL,
  `jumlah` INT(50) NOT NULL,
  `harga_persatuan` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`no_notakeluar`)
) DEFAULT CHARSET=latin1;


DELIMITER ;
DROP TRIGGER IF EXISTS `update`;
DELIMITER ;;
CREATE TRIGGER `tambahstock` AFTER UPDATE ON `barang_masuk` FOR EACH ROW BEGIN
UPDATE barang SET stock=stock+NEW.jumlah
WHERE id_barang=NEW.id_barang;
END
;;
DELIMITER ;

DELIMITER ;
DROP TRIGGER IF EXISTS `update`;
DELIMITER ;;
CREATE TRIGGER `kurangstock` AFTER UPDATE ON `barang_keluar` FOR EACH ROW BEGIN
UPDATE barang SET stock=stock-NEW.jumlah
WHERE id_barang=NEW.id_barang;
END
;;
DELIMITER ;

DELIMITER ;
DROP TRIGGER IF EXISTS `update`;
DELIMITER ;;
CREATE TRIGGER `updatetambahstock` AFTER INSERT ON `barang_masuk` FOR EACH ROW BEGIN
UPDATE barang SET stock=stock+NEW.jumlah
WHERE id_barang=NEW.id_barang;
END
;;
DELIMITER ;


DELIMITER ;
DROP TRIGGER IF EXISTS `update`;
DELIMITER ;;
CREATE TRIGGER `updatekurangstock` AFTER INSERT ON `barang_keluar` FOR EACH ROW BEGIN
UPDATE barang SET stock=stock-NEW.jumlah
WHERE id_barang=NEW.id_barang;
END
;;
DELIMITER ;



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

