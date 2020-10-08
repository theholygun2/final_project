-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: projek
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cicit`
--

DROP TABLE IF EXISTS `cicit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cicit` (
  `cicit_id` bigint(20) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `hp_num` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `pin` varchar(7) DEFAULT NULL,
  `saldo` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cicit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cicit`
--

LOCK TABLES `cicit` WRITE;
/*!40000 ALTER TABLE `cicit` DISABLE KEYS */;
INSERT INTO `cicit` VALUES (70001081288452215,'David','081288452215','david@gmail.com',NULL,546000),(70001087780907248,'james','087780907248','james@gmail.com',NULL,200000);
/*!40000 ALTER TABLE `cicit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cicit_histori`
--

DROP TABLE IF EXISTS `cicit_histori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cicit_histori` (
  `histori_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `jumlah` int(11) DEFAULT NULL,
  `keterangan` varchar(30) DEFAULT NULL,
  `waktu` datetime DEFAULT CURRENT_TIMESTAMP,
  `cicit_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`histori_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cicit_histori`
--

LOCK TABLES `cicit_histori` WRITE;
/*!40000 ALTER TABLE `cicit_histori` DISABLE KEYS */;
INSERT INTO `cicit_histori` VALUES (1,50000,'Mc Donard','2020-03-31 13:27:42',70001081288452215),(2,100000,'Chatlime','2020-03-31 13:31:51',70001087780907248),(3,50000,'Yoshinayo','2020-03-31 13:32:26',70001081288452215),(4,12000,'Telkomsel','2020-03-31 13:37:59',70001081288452215),(5,50000,'Mc Donard','2020-04-02 10:10:11',70001081288452215),(6,12000,'Telkomsel','2020-04-02 10:11:02',70001081288452215),(7,10000,'Mc Donard','2020-04-02 10:27:48',70001081288452215),(8,50000,'Chatlime','2020-04-02 10:28:01',70001081288452215);
/*!40000 ALTER TABLE `cicit_histori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `company_id` bigint(20) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `rek_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (11000,'Telkomsel',66001),(12000,'XL Axiata',66002),(13000,'Indosat',66003),(19000,'Mc Donard',66004),(21000,'Yoshinayo',66005),(31000,'Chatlime',66006),(70001,'Cicit Pay',66000);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `histori`
--

DROP TABLE IF EXISTS `histori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `histori` (
  `histori_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ket` enum('+','-') DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `jumlah` int(11) unsigned DEFAULT '0',
  `waktu` datetime DEFAULT CURRENT_TIMESTAMP,
  `rek_id` bigint(20) DEFAULT '0',
  PRIMARY KEY (`histori_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `histori`
--

LOCK TABLES `histori` WRITE;
/*!40000 ALTER TABLE `histori` DISABLE KEYS */;
INSERT INTO `histori` VALUES (1,'+','66007',100000,'2020-03-31 13:24:47',66007),(2,'-','David Stefan',600000,'2020-03-31 13:26:10',66008),(3,'+','James',600000,'2020-03-31 13:26:10',66007),(4,'+','66008',600000,'2020-03-31 13:29:19',66008),(5,'-','66000',300000,'2020-03-31 13:29:37',66008),(6,'-','66000',500000,'2020-03-31 13:33:17',66007),(7,'-','66000',100000,'2020-03-31 13:41:15',66007),(8,'-','66000',50000,'2020-04-02 10:10:39',66007),(9,'-','66000',20000,'2020-04-02 10:19:35',66007),(10,'-','66000',10000,'2020-04-02 10:27:23',66007);
/*!40000 ALTER TABLE `histori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kartu`
--

DROP TABLE IF EXISTS `kartu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kartu` (
  `kartu_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pin` varchar(7) NOT NULL DEFAULT '123456',
  `rek_id` int(11) DEFAULT '0',
  PRIMARY KEY (`kartu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1972 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kartu`
--

LOCK TABLES `kartu` WRITE;
/*!40000 ALTER TABLE `kartu` DISABLE KEYS */;
INSERT INTO `kartu` VALUES (1970,'100400',66007),(1971,'123456',66008);
/*!40000 ALTER TABLE `kartu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nasabah`
--

DROP TABLE IF EXISTS `nasabah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nasabah` (
  `nasabah_id` bigint(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `hp_num` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `rek_id` bigint(20) DEFAULT '0',
  PRIMARY KEY (`nasabah_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nasabah`
--

LOCK TABLES `nasabah` WRITE;
/*!40000 ALTER TABLE `nasabah` DISABLE KEYS */;
INSERT INTO `nasabah` VALUES (1801010228,'David Stefan','david@gmail.com','081288452215','kuning muda',66007),(1801010229,'James','james@gmail.com','087780907248','Depok',66008);
/*!40000 ALTER TABLE `nasabah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oneclick`
--

DROP TABLE IF EXISTS `oneclick`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oneclick` (
  `one_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `kartu_id` bigint(20) DEFAULT NULL,
  `cicit_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`one_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oneclick`
--

LOCK TABLES `oneclick` WRITE;
/*!40000 ALTER TABLE `oneclick` DISABLE KEYS */;
INSERT INTO `oneclick` VALUES (1,1970,70001081288452215);
/*!40000 ALTER TABLE `oneclick` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rekening`
--

DROP TABLE IF EXISTS `rekening`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rekening` (
  `rek_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `saldo` int(11) DEFAULT '500000',
  PRIMARY KEY (`rek_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66009 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rekening`
--

LOCK TABLES `rekening` WRITE;
/*!40000 ALTER TABLE `rekening` DISABLE KEYS */;
INSERT INTO `rekening` VALUES (66000,1980000),(66001,1024000),(66002,1000000),(66003,1000000),(66004,1110000),(66005,1050000),(66006,1150000),(66007,320000),(66008,300000);
/*!40000 ALTER TABLE `rekening` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-02 12:09:00
