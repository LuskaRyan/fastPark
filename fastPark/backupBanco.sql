-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dbestacionamento
-- ------------------------------------------------------
-- Server version	8.0.18

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
  `idEntradaVeiculo` int(11) NOT NULL AUTO_INCREMENT,
  `idVaga` int(11) NOT NULL,
  `idValor` int(11) NOT NULL,
  `dataEntrada` date DEFAULT NULL,
  `horarioEntrada` time DEFAULT NULL,
  `dataSaida` date DEFAULT NULL,
  `horarioSaida` time DEFAULT NULL,
  `nomeCliente` varchar(50) DEFAULT NULL,
  `modelo` varchar(50) NOT NULL,
  `placa` varchar(10) NOT NULL,
  `cor` varchar(10) NOT NULL,
  `valorPago` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idEntradaVeiculo`),
  KEY `FK_entrada_vaga` (`idVaga`),
  KEY `FK_entrada_valor` (`idValor`),
  CONSTRAINT `FK_entrada_vaga` FOREIGN KEY (`idVaga`) REFERENCES `tblvagas` (`idVaga`),
  CONSTRAINT `FK_entrada_valor` FOREIGN KEY (`idValor`) REFERENCES `tblvalor` (`idValor`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblentradaveiculo`
--

LOCK TABLES `tblentradaveiculo` WRITE;
/*!40000 ALTER TABLE `tblentradaveiculo` DISABLE KEYS */;
INSERT INTO `tblentradaveiculo` VALUES (2,2,2,'2020-12-10','13:42:53','2020-12-20','12:49:53','Daniel','piiii','FFF0000','red','18'),(3,1,2,'2020-12-10','13:44:16','2020-12-11','16:59:11','Daniel','piiii','FFF0000','red','15'),(4,1,2,'2020-12-11','13:17:07','2020-12-19','11:13:22','ricardo','piiii','FFF0000','red','10'),(6,1,2,'2020-12-10','13:42:53','2020-12-19','11:43:14','piii','piiii','FFF0000','red','5'),(7,1,2,'2020-12-10','13:42:53','2020-12-11','14:38:11','piiii','piiii','FFF0000','red','5'),(8,1,2,'2020-12-10','13:42:53','2020-12-11','15:16:08','','piiii','FFF0000','red','5'),(9,1,2,'2020-12-11','13:31:13','2020-12-11','15:48:36','','piiii','FFF0000','red','10'),(10,1,2,'2020-12-11','13:31:43','2020-12-11','16:56:54','','piiii','FFF0000','red','20'),(11,1,2,'2020-12-11','13:32:18','2020-12-19','20:24:37','piii','piiii','FFF0000','red',NULL),(12,1,2,'2020-12-11','14:25:15',NULL,NULL,'piii','piiii','FFF0000','red',NULL),(13,1,2,'2020-12-11','14:25:29',NULL,NULL,'piii','piiii','FFF0000','red',NULL),(14,1,2,'2020-12-11','14:28:03',NULL,NULL,'piii','piiii','FFF0000','red',NULL),(15,1,2,'2020-12-11','15:17:40',NULL,NULL,'FIIII','piiii','FFF0000','red',NULL),(16,1,2,'2020-12-11','15:31:30',NULL,NULL,'OI CUEIO','piiii','FFF0000','red',NULL),(17,1,2,'2020-12-11','15:53:04','2020-12-11','17:00:03','ricardo','red','red','red',NULL),(18,1,2,'2020-12-11','16:19:42',NULL,NULL,'ricardo','red','red','red',NULL),(19,2,1,'2020-12-14','14:30:40','2020-12-20','13:00:33','OI CUEIO','piiii','FFF0000','red','3'),(20,1,1,'2020-12-14','14:40:39',NULL,NULL,'leonid','piiii','FFF0000','red',NULL),(21,1,1,'2020-12-14','15:18:48',NULL,NULL,'teste','carro','FFF0000','black',NULL),(22,1,1,'2020-12-14','15:18:49',NULL,NULL,'teste','carro','FFF0000','black',NULL),(23,1,1,'2020-12-14','15:25:51',NULL,NULL,'','','','',NULL),(24,1,1,'2020-12-14','15:26:01',NULL,NULL,'','','','',NULL),(25,1,1,'2020-12-14','15:26:30',NULL,NULL,'','','','',NULL),(26,1,1,'2020-12-14','15:27:17',NULL,NULL,'','','','',NULL),(27,1,1,'2020-12-14','15:28:17',NULL,NULL,' nome','modelo','placa','cor',NULL),(28,1,1,'2020-12-14','15:28:33',NULL,NULL,'Array','Array','Array','Array',NULL),(29,1,1,'2020-12-14','15:28:34',NULL,NULL,'Array','Array','Array','Array',NULL),(30,1,1,'2020-12-14','15:28:43',NULL,NULL,'Array','Array','Array','Array',NULL),(31,1,1,'2020-12-14','15:29:03',NULL,NULL,'Array','Array','Array','Array',NULL),(32,1,1,'2020-12-14','15:29:22',NULL,NULL,'','','','',NULL),(33,1,1,'2020-12-14','15:38:07',NULL,NULL,'','','','',NULL),(34,1,1,'2020-12-14','15:38:08',NULL,NULL,'','','','',NULL),(35,1,1,'2020-12-14','15:38:18',NULL,NULL,'','','','',NULL),(36,1,1,'2020-12-14','15:38:54',NULL,NULL,'','','','',NULL),(37,1,1,'2020-12-14','15:38:58',NULL,NULL,'','','','',NULL),(38,1,1,'2020-12-14','15:39:25',NULL,NULL,'','','','',NULL),(39,1,1,'2020-12-14','15:39:45',NULL,NULL,'','','','',NULL),(40,1,1,'2020-12-14','15:40:01',NULL,NULL,'','','','',NULL),(41,1,1,'2020-12-14','15:40:21',NULL,NULL,'','','','',NULL),(42,2,1,'2020-12-14','15:42:06','2020-12-20','13:01:10','DANIEL','PLACA','','','3'),(43,1,1,'2020-12-14','15:42:26',NULL,NULL,'DANIEL','DANIEL','','',NULL),(44,2,1,'2020-12-14','15:43:02','2020-12-20','12:49:21','GUSTAVO','KONDO','','','3'),(45,2,1,'2020-12-14','15:44:18','2020-12-20','13:00:28','DANIEL','CARRO','','','8'),(46,1,1,'2020-12-14','15:44:37','2020-12-19','21:39:33','DANIEL','AAA','','',NULL),(47,1,1,'2020-12-14','15:44:41','2020-12-19','20:48:17','ARWRWA','RAWRWA','','',NULL),(48,1,1,'2020-12-14','15:45:32',NULL,NULL,'AAA','AAA','','',NULL),(49,2,1,'2020-12-14','15:45:57','2020-12-20','12:48:22',' nome','modelo','placa','cor','3'),(50,2,1,'2020-12-14','15:47:16','2020-12-20','13:00:56','RQRQR','QRQRQ','','','8'),(51,2,1,'2020-12-14','15:47:36','2020-12-20','13:00:52','NOME','MODELO','','',NULL),(52,2,1,'2020-12-14','15:48:51','2020-12-20','13:00:49','TAWTW','TAWTAW','','','3'),(53,2,1,'2020-12-14','15:49:01','2020-12-20','13:00:39','CAR','BAR','','','8'),(54,2,1,'2020-12-14','15:49:53','2020-12-20','12:49:57','aaa','aaa','placa','cor','3'),(55,2,1,'2020-12-14','15:50:02','2020-12-20','10:48:12',' bbb','bbbb','placa','cor','20'),(56,2,1,'2020-12-14','15:50:28','2020-12-20','10:23:25','tawtwa','ascas','','','60'),(57,2,1,'2020-12-14','15:50:51','2020-12-20','10:36:03','awrawraw','rawraw','','','60'),(58,2,1,'2020-12-14','15:51:30','2020-12-20','10:33:38','sadas','dsaddd','','','20'),(59,2,1,'2020-12-14','15:52:47','2020-12-20','10:24:17','CAIO','MARCOLINO','','','60'),(60,2,1,'2020-12-14','15:53:12','2020-12-20','09:54:26','tawtaw','tawtwa','MARCOLINO','red',NULL),(61,2,1,'2020-12-14','15:54:52','2020-12-20','10:32:52','DANIEL','AAA','MARCOLINO','red',NULL),(62,2,1,'2020-12-14','15:55:20','2020-12-20','09:54:27','DANIEL','CARRO','MARCOLINO','red',NULL),(63,2,1,'2020-12-14','15:55:36','2020-12-20','10:14:43','TAWTWA','TAWTWA','MARCOLINO','red',NULL),(64,2,1,'2020-12-14','15:56:18','2020-12-20','10:14:40','DANIEL','CARRO','MARCOLINO','red',NULL),(65,2,1,'2020-12-14','15:56:59','2020-12-20','10:13:50','TAWTWA','TAWTWA','','',NULL),(66,2,1,'2020-12-14','15:58:25','2020-12-20','10:13:47','twatwa','twatwa','twatwa','twatwa',NULL),(67,2,1,'2020-12-16','09:37:07','2020-12-20','10:12:59','daniel','carro','fff000','red',NULL),(68,2,1,'2020-12-16','09:53:56','2020-12-20','10:12:49','','','','',NULL),(69,2,1,'2020-12-19','09:00:32','2020-12-20','10:12:39','DANIEL','CARRO','VEICULO','RED',NULL),(70,2,1,'2020-12-19','16:41:38','2020-12-20','09:46:20','DANIEL','CARRO','FFF0000','RED',NULL),(71,2,1,'2020-12-19','17:54:45','2020-12-20','09:54:23','Daniel','Vitor','Souza','RED',NULL),(72,2,1,'2020-12-19','17:54:50','2020-12-20','09:54:21','Daniel','Vitor','Souza','RED',NULL),(73,2,1,'2020-12-19','17:55:09','2020-12-20','09:54:19','Daniel','Vitor','FFF0000','RED','5'),(74,2,1,'2020-12-19','18:02:08','2020-12-20','09:54:17','DANIEL','CARRO','000FFFF','RED','90'),(75,2,1,'2020-12-20','12:47:04','2020-12-20','12:47:21','Daniel','Fox','FFF-0071','Red',NULL),(76,2,1,'2020-12-20','12:57:10','2020-12-20','12:57:14','Vayne','Fox','888888','Blue',NULL),(77,2,1,'2020-12-20','12:58:40','2020-12-20','12:59:31','AAA','AAA','RED','BLUE','3'),(78,2,1,'2020-12-20','13:01:37','2020-12-20','13:01:44','Daniel','Vitorioso','fff0000','Red','3'),(79,2,1,'2020-12-20','13:02:17','2020-12-20','13:02:25','GUSTAVO','RED','TESTE','BLUE','3'),(80,2,1,'2020-12-20','13:04:34','2020-12-20','13:04:40','Guilherme','Zonda','Cyberpunk','Blue','3'),(81,2,1,'2020-12-20','13:05:05','2020-12-20','13:05:09','AAAAAA','AAAAAA','AAAAAA','AAAA','3');
/*!40000 ALTER TABLE `tblentradaveiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblvagas`
--

DROP TABLE IF EXISTS `tblvagas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblvagas` (
  `idVaga` int(11) NOT NULL AUTO_INCREMENT,
  `disponibilidade` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idVaga`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblvagas`
--

LOCK TABLES `tblvagas` WRITE;
/*!40000 ALTER TABLE `tblvagas` DISABLE KEYS */;
INSERT INTO `tblvagas` VALUES (1,1),(2,0);
/*!40000 ALTER TABLE `tblvagas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblvalor`
--

DROP TABLE IF EXISTS `tblvalor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblvalor` (
  `idValor` int(11) NOT NULL AUTO_INCREMENT,
  `primeiraHora` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`idValor`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblvalor`
--

LOCK TABLES `tblvalor` WRITE;
/*!40000 ALTER TABLE `tblvalor` DISABLE KEYS */;
INSERT INTO `tblvalor` VALUES (1,3),(2,5);
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

-- Dump completed on 2020-12-20 14:57:05
