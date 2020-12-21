-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dbestacionamento
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `tblentradaveiculo`
--

DROP TABLE IF EXISTS `tblentradaveiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblentradaveiculo` (
  `idEntradaVeiculo` int NOT NULL AUTO_INCREMENT,
  `idVaga` int NOT NULL,
  `idValor` int NOT NULL,
  `dataEntrada` date DEFAULT NULL,
  `horarioEntrada` time DEFAULT NULL,
  `dataSaida` date DEFAULT NULL,
  `horarioSaida` time DEFAULT NULL,
  `nomeCliente` varchar(50) DEFAULT NULL,
  `modelo` varchar(50) NOT NULL,
  `placa` varchar(10) NOT NULL,
  `cor` varchar(10) NOT NULL,
  PRIMARY KEY (`idEntradaVeiculo`),
  KEY `FK_entrada_vaga` (`idVaga`),
  KEY `FK_entrada_valor` (`idValor`),
  CONSTRAINT `FK_entrada_vaga` FOREIGN KEY (`idVaga`) REFERENCES `tblvagas` (`idVaga`),
  CONSTRAINT `FK_entrada_valor` FOREIGN KEY (`idValor`) REFERENCES `tblvalor` (`idValor`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblentradaveiculo`
--

LOCK TABLES `tblentradaveiculo` WRITE;
/*!40000 ALTER TABLE `tblentradaveiculo` DISABLE KEYS */;
INSERT INTO `tblentradaveiculo` VALUES (2,1,2,'2020-12-10','13:42:53',NULL,NULL,'Daniel','piiii','FFF0000','red'),(3,1,2,'2020-12-10','13:44:16','2020-12-11','16:59:11','Daniel','piiii','FFF0000','red'),(4,1,2,'2020-12-11','13:17:07',NULL,NULL,'ricardo','piiii','FFF0000','red'),(6,1,2,'2020-12-10','13:42:53',NULL,NULL,'piii','piiii','FFF0000','red'),(7,1,2,'2020-12-10','13:42:53','2020-12-11','14:38:11','piiii','piiii','FFF0000','red'),(8,1,2,'2020-12-10','13:42:53','2020-12-11','15:16:08','','piiii','FFF0000','red'),(9,1,2,'2020-12-11','13:31:13','2020-12-11','15:48:36','','piiii','FFF0000','red'),(10,1,2,'2020-12-11','13:31:43','2020-12-11','16:56:54','','piiii','FFF0000','red'),(11,1,2,'2020-12-11','13:32:18',NULL,NULL,'piii','piiii','FFF0000','red'),(12,1,2,'2020-12-11','14:25:15',NULL,NULL,'piii','piiii','FFF0000','red'),(13,1,2,'2020-12-11','14:25:29',NULL,NULL,'piii','piiii','FFF0000','red'),(14,1,2,'2020-12-11','14:28:03',NULL,NULL,'piii','piiii','FFF0000','red'),(15,1,2,'2020-12-11','15:17:40',NULL,NULL,'FIIII','piiii','FFF0000','red'),(16,1,2,'2020-12-11','15:31:30',NULL,NULL,'OI CUEIO','piiii','FFF0000','red'),(17,1,2,'2020-12-11','15:53:04','2020-12-11','17:00:03','ricardo','red','red','red'),(18,1,2,'2020-12-11','16:19:42',NULL,NULL,'ricardo','red','red','red'),(19,1,1,'2020-12-14','14:30:40',NULL,NULL,'OI CUEIO','piiii','FFF0000','red'),(20,1,1,'2020-12-14','14:40:39',NULL,NULL,'leonid','piiii','FFF0000','red'),(21,1,1,'2020-12-14','15:18:48',NULL,NULL,'teste','carro','FFF0000','black'),(22,1,1,'2020-12-14','15:18:49',NULL,NULL,'teste','carro','FFF0000','black'),(23,1,1,'2020-12-14','15:25:51',NULL,NULL,'','','',''),(24,1,1,'2020-12-14','15:26:01',NULL,NULL,'','','',''),(25,1,1,'2020-12-14','15:26:30',NULL,NULL,'','','',''),(26,1,1,'2020-12-14','15:27:17',NULL,NULL,'','','',''),(27,1,1,'2020-12-14','15:28:17',NULL,NULL,' nome','modelo','placa','cor'),(28,1,1,'2020-12-14','15:28:33',NULL,NULL,'Array','Array','Array','Array'),(29,1,1,'2020-12-14','15:28:34',NULL,NULL,'Array','Array','Array','Array'),(30,1,1,'2020-12-14','15:28:43',NULL,NULL,'Array','Array','Array','Array'),(31,1,1,'2020-12-14','15:29:03',NULL,NULL,'Array','Array','Array','Array'),(32,1,1,'2020-12-14','15:29:22',NULL,NULL,'','','',''),(33,1,1,'2020-12-14','15:38:07',NULL,NULL,'','','',''),(34,1,1,'2020-12-14','15:38:08',NULL,NULL,'','','',''),(35,1,1,'2020-12-14','15:38:18',NULL,NULL,'','','',''),(36,1,1,'2020-12-14','15:38:54',NULL,NULL,'','','',''),(37,1,1,'2020-12-14','15:38:58',NULL,NULL,'','','',''),(38,1,1,'2020-12-14','15:39:25',NULL,NULL,'','','',''),(39,1,1,'2020-12-14','15:39:45',NULL,NULL,'','','',''),(40,1,1,'2020-12-14','15:40:01',NULL,NULL,'','','',''),(41,1,1,'2020-12-14','15:40:21',NULL,NULL,'','','',''),(42,1,1,'2020-12-14','15:42:06',NULL,NULL,'DANIEL','PLACA','',''),(43,1,1,'2020-12-14','15:42:26',NULL,NULL,'DANIEL','DANIEL','',''),(44,1,1,'2020-12-14','15:43:02',NULL,NULL,'GUSTAVO','KONDO','',''),(45,1,1,'2020-12-14','15:44:18',NULL,NULL,'DANIEL','CARRO','',''),(46,1,1,'2020-12-14','15:44:37',NULL,NULL,'DANIEL','AAA','',''),(47,1,1,'2020-12-14','15:44:41',NULL,NULL,'ARWRWA','RAWRWA','',''),(48,1,1,'2020-12-14','15:45:32',NULL,NULL,'AAA','AAA','',''),(49,1,1,'2020-12-14','15:45:57',NULL,NULL,' nome','modelo','placa','cor'),(50,1,1,'2020-12-14','15:47:16',NULL,NULL,'RQRQR','QRQRQ','',''),(51,1,1,'2020-12-14','15:47:36',NULL,NULL,'NOME','MODELO','',''),(52,1,1,'2020-12-14','15:48:51',NULL,NULL,'TAWTW','TAWTAW','',''),(53,1,1,'2020-12-14','15:49:01',NULL,NULL,'CAR','BAR','',''),(54,1,1,'2020-12-14','15:49:53',NULL,NULL,'aaa','aaa','placa','cor'),(55,1,1,'2020-12-14','15:50:02',NULL,NULL,' bbb','bbbb','placa','cor'),(56,1,1,'2020-12-14','15:50:28',NULL,NULL,'tawtwa','ascas','',''),(57,1,1,'2020-12-14','15:50:51',NULL,NULL,'awrawraw','rawraw','',''),(58,1,1,'2020-12-14','15:51:30',NULL,NULL,'sadas','dsaddd','',''),(59,1,1,'2020-12-14','15:52:47',NULL,NULL,'CAIO','MARCOLINO','',''),(60,1,1,'2020-12-14','15:53:12',NULL,NULL,'tawtaw','tawtwa','MARCOLINO','red'),(61,1,1,'2020-12-14','15:54:52',NULL,NULL,'DANIEL','AAA','MARCOLINO','red'),(62,1,1,'2020-12-14','15:55:20',NULL,NULL,'DANIEL','CARRO','MARCOLINO','red'),(63,1,1,'2020-12-14','15:55:36',NULL,NULL,'TAWTWA','TAWTWA','MARCOLINO','red'),(64,1,1,'2020-12-14','15:56:18',NULL,NULL,'DANIEL','CARRO','MARCOLINO','red'),(65,1,1,'2020-12-14','15:56:59',NULL,NULL,'TAWTWA','TAWTWA','',''),(66,1,1,'2020-12-14','15:58:25',NULL,NULL,'twatwa','twatwa','twatwa','twatwa');
/*!40000 ALTER TABLE `tblentradaveiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblvagas`
--

DROP TABLE IF EXISTS `tblvagas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblvagas` (
  `idVaga` int NOT NULL AUTO_INCREMENT,
  `disponibilidade` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idVaga`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblvagas`
--

LOCK TABLES `tblvagas` WRITE;
/*!40000 ALTER TABLE `tblvagas` DISABLE KEYS */;
INSERT INTO `tblvagas` VALUES (1,1);
/*!40000 ALTER TABLE `tblvagas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblvalor`
--

DROP TABLE IF EXISTS `tblvalor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblvalor` (
  `idValor` int NOT NULL AUTO_INCREMENT,
  `primeiraHora` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`idValor`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblvalor`
--

LOCK TABLES `tblvalor` WRITE;
/*!40000 ALTER TABLE `tblvalor` DISABLE KEYS */;
INSERT INTO `tblvalor` VALUES (1,2),(2,5);
/*!40000 ALTER TABLE `tblvalor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-14 16:51:00
