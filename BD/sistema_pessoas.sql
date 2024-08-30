CREATE DATABASE  IF NOT EXISTS `sistema` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sistema`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: sistema
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `pessoas`
--

DROP TABLE IF EXISTS `pessoas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoas` (
  `id_pessoa` int NOT NULL AUTO_INCREMENT,
  `nm_tipopessoa` varchar(10) NOT NULL,
  `dt_cadastro` date DEFAULT NULL,
  `fl_pf_pj` int NOT NULL,
  `nm_razaosocial` varchar(100) NOT NULL,
  `nm_reduzido` varchar(85) DEFAULT NULL,
  `cpf_cnpj` varchar(14) NOT NULL,
  `rg_ie` varchar(45) NOT NULL,
  `nm_consumidor` varchar(45) NOT NULL,
  `cep` varchar(45) NOT NULL,
  `nm_logradouro` varchar(100) NOT NULL,
  `nm_numero` int DEFAULT NULL,
  `nm_complemento` varchar(100) DEFAULT NULL,
  `nm_bairro` varchar(100) NOT NULL,
  `id_ibge` int NOT NULL,
  `nm_cidade` varchar(100) NOT NULL,
  `nm_estado` varchar(2) NOT NULL,
  `nm_telefone1` varchar(45) NOT NULL,
  `nm_telefone2` varchar(45) DEFAULT NULL,
  `nm_email` varchar(100) DEFAULT NULL,
  `new_tablecol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoas`
--

LOCK TABLES `pessoas` WRITE;
/*!40000 ALTER TABLE `pessoas` DISABLE KEYS */;
INSERT INTO `pessoas` VALUES (1,'Fornecedor','2024-08-19',1,'teste','teste','465445018156','5464654564','sdfsgb','1857000','sdfsdfsd',456,NULL,'sddf',456,'svdsf','sp','654566546',NULL,NULL,NULL),(2,'Cliente',NULL,1,'ASDASD','ASDSAD','46544501816','4156444444','Consumidor Final','18530170','Rua Indalécio Costa',123,NULL,'CECAP',3554508,'Tietê','SP','123123',NULL,NULL,NULL),(3,'Cliente','2024-08-30',1,'asdadasdasd','qwweqwe','46544501816','111111111111111111','Consumidor Final','18530170','Rua Indalécio Costa',104,NULL,'CECAP',3554508,'Tietê','SP','11111111111111111111',NULL,NULL,NULL);
/*!40000 ALTER TABLE `pessoas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-30 19:23:39
