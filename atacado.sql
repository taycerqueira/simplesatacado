-- MySQL dump 10.13  Distrib 8.0.19, for Linux (x86_64)
--
-- Host: localhost    Database: atacado
-- ------------------------------------------------------
-- Server version	8.0.19-0ubuntu0.19.10.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categoria_produto`
--

DROP TABLE IF EXISTS `categoria_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria_produto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `criado` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modificado` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_produto`
--

LOCK TABLES `categoria_produto` WRITE;
/*!40000 ALTER TABLE `categoria_produto` DISABLE KEYS */;
INSERT INTO `categoria_produto` VALUES (1,'ALIMENTOS','2020-03-01 21:30:56','2020-03-16 22:24:08'),(2,'PERFUMARIA','2020-03-01 21:36:26','2020-03-16 22:24:15');
/*!40000 ALTER TABLE `categoria_produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `categoria_produto_modificado` BEFORE UPDATE ON `categoria_produto` FOR EACH ROW SET NEW.modificado = NOW() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidade` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `uf` char(2) NOT NULL,
  `criado` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modificado` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=418 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (1,'Abaíra','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(2,'Abaré','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(3,'Acajutiba','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(4,'Adustina','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(5,'Água Fria','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(6,'Aiquara','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(7,'Alagoinhas','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(8,'Alcobaça','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(9,'Almadina','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(10,'Amargosa','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(11,'Amélia Rodrigues','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(12,'América Dourada','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(13,'Anagé','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(14,'Andaraí','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(15,'Andorinha','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(16,'Angical','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(17,'Anguera','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(18,'Antas','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(19,'Antônio Cardoso','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(20,'Antônio Gonçalves','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(21,'Aporá','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(22,'Apuarema','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(23,'Araças','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(24,'Aracatu','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(25,'Araci','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(26,'Aramari','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(27,'Arataca','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(28,'Aratuípe','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(29,'Aurelino Leal','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(30,'Baianópolis','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(31,'Baixa Grande','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(32,'Banzaê','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(33,'Barra','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(34,'Barra da Estiva','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(35,'Barra do Choça','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(36,'Barra do Mendes','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(37,'Barra do Rocha','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(38,'Barreiras','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(39,'Barro Alto','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(40,'Barro Preto (antigo Gov. Lomanto Jr.)','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(41,'Barrocas','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(42,'Belmonte','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(43,'Belo Campo','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(44,'Biritinga','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(45,'Boa Nova','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(46,'Boa Vista do Tupim','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(47,'Bom Jesus da Lapa','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(48,'Bom Jesus da Serra','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(49,'Boninal','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(50,'Bonito','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(51,'Boquira','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(52,'Botuporã','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(53,'Brejões','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(54,'Brejolândia','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(55,'Brotas de Macaúbas','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(56,'Brumado','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(57,'Buerarema','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(58,'Buritirama','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(59,'Caatiba','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(60,'Cabaceiras do Paraguaçu','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(61,'Cachoeira','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(62,'Caculé','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(63,'Caém','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(64,'Caetanos','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(65,'Caetité','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(66,'Cafarnaum','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(67,'Cairu','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(68,'Caldeirão Grande','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(69,'Camacan','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(70,'Camaçari','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(71,'Camamu','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(72,'Campo Alegre de Lourdes','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(73,'Campo Formoso','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(74,'Canápolis','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(75,'Canarana','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(76,'Canavieiras','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(77,'Candeal','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(78,'Candeias','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(79,'Candiba','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(80,'Cândido Sales','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(81,'Cansanção','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(82,'Canudos','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(83,'Capela do Alto Alegre','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(84,'Capim Grosso','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(85,'Caraíbas','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(86,'Caravelas','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(87,'Cardeal da Silva','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(88,'Carinhanha','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(89,'Casa Nova','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(90,'Castro Alves','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(91,'Catolândia','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(92,'Catu','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(93,'Caturama','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(94,'Central','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(95,'Chorrochó','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(96,'Cícero Dantas','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(97,'Cipó','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(98,'Coaraci','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(99,'Cocos','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(100,'Conceição da Feira','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(101,'Conceição do Almeida','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(102,'Conceição do Coité','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(103,'Conceição do Jacuípe','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(104,'Conde','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(105,'Condeúba','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(106,'Contendas do Sincorá','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(107,'Coração de Maria','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(108,'Cordeiros','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(109,'Coribe','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(110,'Coronel João Sá','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(111,'Correntina','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(112,'Cotegipe','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(113,'Cravolândia','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(114,'Crisópolis','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(115,'Cristópolis','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(116,'Cruz das Almas','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(117,'Curaçá','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(118,'Dário Meira','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(119,'Dias d`Ávila','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(120,'Dom Basílio','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(121,'Dom Macedo Costa','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(122,'Elísio Medrado','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(123,'Encruzilhada','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(124,'Entre Rios','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(125,'Érico Cardoso','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(126,'Esplanada','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(127,'Euclides da Cunha','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(128,'Eunápolis','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(129,'Fátima','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(130,'Feira da Mata','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(131,'Feira de Santana','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(132,'Filadélfia','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(133,'Firmino Alves','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(134,'Floresta Azul','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(135,'Formosa do Rio Preto','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(136,'Gandu','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(137,'Gavião','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(138,'Gentio do Ouro','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(139,'Glória','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(140,'Gongogi','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(141,'Governador Mangabeira','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(142,'Guajeru','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(143,'Guanambi','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(144,'Guaratinga','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(145,'Heliópolis','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(146,'Iaçu','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(147,'Ibiassucê','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(148,'Ibicaraí','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(149,'Ibicoara','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(150,'Ibicuí','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(151,'Ibipeba','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(152,'Ibipitanga','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(153,'Ibiquera','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(154,'Ibirapitanga','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(155,'Ibirapuã','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(156,'Ibirataia','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(157,'Ibitiara','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(158,'Ibititá','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(159,'Ibotirama','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(160,'Ichu','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(161,'Igaporã','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(162,'Igrapiúna','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(163,'Iguaí','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(164,'Ilhéus','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(165,'Inhambupe','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(166,'Ipecaetá','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(167,'Ipiaú','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(168,'Ipirá','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(169,'Ipupiara','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(170,'Irajuba','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(171,'Iramaia','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(172,'Iraquara','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(173,'Irará','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(174,'Irecê','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(175,'Itabela','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(176,'Itaberaba','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(177,'Itabuna','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(178,'Itacaré','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(179,'Itaeté','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(180,'Itagi','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(181,'Itagibá','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(182,'Itagimirim','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(183,'Itaguaçu da Bahia','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(184,'Itaju do Colônia','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(185,'Itajuípe','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(186,'Itamaraju','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(187,'Itamari','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(188,'Itambé','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(189,'Itanagra','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(190,'Itanhém','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(191,'Itaparica','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(192,'Itapé','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(193,'Itapebi','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(194,'Itapetinga','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(195,'Itapicuru','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(196,'Itapitanga','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(197,'Itaquara','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(198,'Itarantim','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(199,'Itatim','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(200,'Itiruçu','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(201,'Itiúba','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(202,'Itororó','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(203,'Ituaçu','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(204,'Ituberá','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(205,'Iuiú','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(206,'Jaborandi','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(207,'Jacaraci','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(208,'Jacobina','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(209,'Jaguaquara','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(210,'Jaguarari','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(211,'Jaguaripe','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(212,'Jandaíra','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(213,'Jequié','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(214,'Jeremoabo','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(215,'Jiquiriçá','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(216,'Jitaúna','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(217,'João Dourado','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(218,'Juazeiro','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(219,'Jucuruçu','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(220,'Jussara','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(221,'Jussari','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(222,'Jussiape','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(223,'Lafaiete Coutinho','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(224,'Lagoa Real','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(225,'Laje','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(226,'Lajedão','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(227,'Lajedinho','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(228,'Lajedo do Tabocal','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(229,'Lamarão','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(230,'Lapão','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(231,'Lauro de Freitas','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(232,'Lençóis','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(233,'Licínio de Almeida','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(234,'Livramento de Nossa Senhora','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(235,'Luís Eduardo Magalhães','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(236,'Macajuba','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(237,'Macarani','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(238,'Macaúbas','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(239,'Macururé','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(240,'Madre de Deus','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(241,'Maetinga','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(242,'Maiquinique','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(243,'Mairi','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(244,'Malhada','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(245,'Malhada de Pedras','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(246,'Manoel Vitorino','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(247,'Mansidão','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(248,'Maracás','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(249,'Maragogipe','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(250,'Maraú','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(251,'Marcionílio Souza','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(252,'Mascote','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(253,'Mata de São João','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(254,'Matina','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(255,'Medeiros Neto','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(256,'Miguel Calmon','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(257,'Milagres','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(258,'Mirangaba','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(259,'Mirante','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(260,'Monte Santo','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(261,'Morpará','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(262,'Morro do Chapéu','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(263,'Mortugaba','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(264,'Mucugê','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(265,'Mucuri','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(266,'Mulungu do Morro','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(267,'Mundo Novo','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(268,'Muniz Ferreira','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(269,'Muquém de São Francisco','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(270,'Muritiba','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(271,'Mutuípe','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(272,'Nazaré','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(273,'Nilo Peçanha','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(274,'Nordestina','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(275,'Nova Canaã','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(276,'Nova Fátima','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(277,'Nova Ibiá','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(278,'Nova Itarana','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(279,'Nova Redenção','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(280,'Nova Soure','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(281,'Nova Viçosa','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(282,'Novo Horizonte','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(283,'Novo Triunfo','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(284,'Olindina','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(285,'Oliveira dos Brejinhos','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(286,'Ouriçangas','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(287,'Ourolândia','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(288,'Palmas de Monte Alto','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(289,'Palmeiras','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(290,'Paramirim','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(291,'Paratinga','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(292,'Paripiranga','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(293,'Pau Brasil','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(294,'Paulo Afonso','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(295,'Pé de Serra','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(296,'Pedrão','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(297,'Pedro Alexandre','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(298,'Piatã','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(299,'Pilão Arcado','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(300,'Pindaí','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(301,'Pindobaçu','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(302,'Pintadas','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(303,'Piraí do Norte','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(304,'Piripá','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(305,'Piritiba','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(306,'Planaltino','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(307,'Planalto','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(308,'Poções','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(309,'Pojuca','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(310,'Ponto Novo','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(311,'Porto Seguro','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(312,'Potiraguá','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(313,'Prado','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(314,'Presidente Dutra','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(315,'Presidente Jânio Quadros','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(316,'Presidente Tancredo Neves','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(317,'Queimadas','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(318,'Quijingue','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(319,'Quixabeira','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(320,'Rafael Jambeiro','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(321,'Remanso','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(322,'Retirolândia','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(323,'Riachão das Neves','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(324,'Riachão do Jacuípe','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(325,'Riacho de Santana','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(326,'Ribeira do Amparo','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(327,'Ribeira do Pombal','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(328,'Ribeirão do Largo','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(329,'Rio de Contas','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(330,'Rio do Antônio','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(331,'Rio do Pires','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(332,'Rio Real','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(333,'Rodelas','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(334,'Ruy Barbosa','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(335,'Salinas da Margarida','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(336,'Salvador','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(337,'Santa Bárbara','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(338,'Santa Brígida','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(339,'Santa Cruz Cabrália','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(340,'Santa Cruz da Vitória','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(341,'Santa Inês','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(342,'Santa Luzia','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(343,'Santa Maria da Vitória','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(344,'Santa Rita de Cássia','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(345,'Santa Teresinha','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(346,'Santaluz','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(347,'Santana','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(348,'Santanópolis','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(349,'Santo Amaro','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(350,'Santo Antônio de Jesus','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(351,'Santo Estêvão','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(352,'São Desidério','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(353,'São Domingos','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(354,'São Felipe','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(355,'São Félix','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(356,'São Félix do Coribe','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(357,'São Francisco do Conde','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(358,'São Gabriel','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(359,'São Gonçalo dos Campos','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(360,'São José da Vitória','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(361,'São José do Jacuípe','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(362,'São Miguel das Matas','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(363,'São Sebastião do Passé','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(364,'Sapeaçu','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(365,'Sátiro Dias','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(366,'Saubara','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(367,'Saúde','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(368,'Seabra','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(369,'Sebastião Laranjeiras','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(370,'Senhor do Bonfim','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(371,'Sento Sé','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(372,'Serra do Ramalho','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(373,'Serra Dourada','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(374,'Serra Preta','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(375,'Serrinha','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(376,'Serrolândia','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(377,'Simões Filho','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(378,'Sítio do Mato','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(379,'Sítio do Quinto','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(380,'Sobradinho','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(381,'Souto Soares','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(382,'Tabocas do Brejo Velho','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(383,'Tanhaçu','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(384,'Tanque Novo','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(385,'Tanquinho','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(386,'Taperoá','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(387,'Tapiramutá','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(388,'Teixeira de Freitas','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(389,'Teodoro Sampaio','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(390,'Teofilândia','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(391,'Teolândia','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(392,'Terra Nova','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(393,'Tremedal','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(394,'Tucano','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(395,'Uauá','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(396,'Ubaíra','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(397,'Ubaitaba','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(398,'Ubatã','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(399,'Uibaí','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(400,'Umburanas','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(401,'Una','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(402,'Urandi','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(403,'Uruçuca','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(404,'Utinga','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(405,'Valença','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(406,'Valente','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(407,'Várzea da Roça','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(408,'Várzea do Poço','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(409,'Várzea Nova','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(410,'Varzedo','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(411,'Vera Cruz','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(412,'Vereda','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(413,'Vitória da Conquista','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(414,'Wagner','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(415,'Wanderley','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(416,'Wenceslau Guimarães','BA','2020-02-29 21:00:17','2020-02-29 21:00:17'),(417,'Xique-Xique','BA','2020-02-29 21:00:17','2020-02-29 21:00:17');
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `cidade_modificado` BEFORE UPDATE ON `cidade` FOR EACH ROW SET NEW.modificado = NOW() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idCidade` int DEFAULT NULL,
  `nome` varchar(500) NOT NULL,
  `endereco` varchar(500) DEFAULT NULL,
  `telefone` varchar(500) DEFAULT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `observacoes` varchar(500) DEFAULT NULL,
  `criado` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modificado` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_cliente_idCidade` (`idCidade`),
  CONSTRAINT `fk_cliente_idCidade` FOREIGN KEY (`idCidade`) REFERENCES `cidade` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,309,'Jorge de Pojuca','Praça principal s/n','75992311128,7536021073','83124093000193','','2020-03-01 16:42:36','2020-03-01 18:11:28');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `cliente_modificado` BEFORE UPDATE ON `cliente` FOR EACH ROW SET NEW.modificado = NOW() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `embalagem`
--

DROP TABLE IF EXISTS `embalagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `embalagem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(20) NOT NULL,
  `criado` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modificado` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `descricao` (`descricao`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `embalagem`
--

LOCK TABLES `embalagem` WRITE;
/*!40000 ALTER TABLE `embalagem` DISABLE KEYS */;
INSERT INTO `embalagem` VALUES (1,'FD 20X1','2020-03-01 21:48:39','2020-03-01 21:48:39'),(2,'CX 30X1','2020-03-01 21:51:16','2020-03-01 21:51:16'),(3,'PCT 12X1','2020-03-15 16:26:41','2020-03-15 16:26:41');
/*!40000 ALTER TABLE `embalagem` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `embalagem_modificado` BEFORE UPDATE ON `embalagem` FOR EACH ROW SET NEW.modificado = NOW() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `estoque`
--

DROP TABLE IF EXISTS `estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estoque` (
  `idProduto` int NOT NULL,
  `quantidade` int NOT NULL DEFAULT '0',
  `modificado` datetime NOT NULL,
  PRIMARY KEY (`idProduto`),
  CONSTRAINT `fk_idProduto` FOREIGN KEY (`idProduto`) REFERENCES `produto` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoque`
--

LOCK TABLES `estoque` WRITE;
/*!40000 ALTER TABLE `estoque` DISABLE KEYS */;
/*!40000 ALTER TABLE `estoque` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `estoque_modificado` BEFORE UPDATE ON `estoque` FOR EACH ROW SET NEW.modificado = NOW() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marca` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `criado` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modificado` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (1,'Nestlé','2020-03-01 21:14:15','2020-03-01 21:14:15'),(2,'FRISUL','2020-03-11 21:44:53','2020-03-11 21:44:53'),(3,'PROTEX','2020-03-15 16:26:06','2020-03-15 16:26:06');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `marca_modificado` BEFORE UPDATE ON `marca` FOR EACH ROW SET NEW.modificado = NOW() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idCategoriaProduto` int NOT NULL,
  `idMarca` int DEFAULT NULL,
  `idEmbalagem` int NOT NULL,
  `nome` varchar(255) NOT NULL,
  `preco_custo` decimal(9,2) NOT NULL,
  `preco_venda` decimal(9,2) NOT NULL,
  `criado` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modificado` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome` (`nome`),
  KEY `fk_produto_categoria` (`idCategoriaProduto`),
  KEY `fk_produto_embalagem` (`idEmbalagem`),
  KEY `fk_produto_marca` (`idMarca`),
  CONSTRAINT `fk_produto_categoria` FOREIGN KEY (`idCategoriaProduto`) REFERENCES `categoria_produto` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_produto_embalagem` FOREIGN KEY (`idEmbalagem`) REFERENCES `embalagem` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_produto_marca` FOREIGN KEY (`idMarca`) REFERENCES `marca` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,1,2,2,'CHARQUE 30KG',525.50,600.00,'2020-03-16 22:15:24','2020-03-16 22:15:24');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `produto_base_modificado` BEFORE UPDATE ON `produto` FOR EACH ROW SET NEW.modificado = NOW() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `login` varchar(50) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT '1',
  `criado` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modificado` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Tayane Cerqueira','tayane','81dc9bdb52d04dc20036dbd8313ed055',1,'2020-02-26 22:17:06','2020-02-29 20:52:16'),(2,'Carol','carol','1234',1,'2020-02-29 18:12:48','2020-02-29 18:12:48');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `usuario_modificado` BEFORE UPDATE ON `usuario` FOR EACH ROW SET NEW.modificado = NOW() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-20 22:56:39
