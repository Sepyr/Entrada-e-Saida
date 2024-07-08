-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: sistema
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `aluno_responsavel`
--

DROP TABLE IF EXISTS `aluno_responsavel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno_responsavel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `aluno` int NOT NULL,
  `responsavel` int NOT NULL,
  `grau_de_parentesco` enum('Pai','Mãe','Avo','Irmão','Irmã','Outro') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Alunos_has_Responsaveis_Responsaveis1_idx` (`responsavel`),
  KEY `fk_Alunos_has_Responsaveis_Alunos1_idx` (`aluno`),
  CONSTRAINT `fk_Alunos_has_Responsaveis_Alunos1` FOREIGN KEY (`aluno`) REFERENCES `alunos` (`matricula`),
  CONSTRAINT `fk_Alunos_has_Responsaveis_Responsaveis1` FOREIGN KEY (`responsavel`) REFERENCES `responsaveis` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno_responsavel`
--

LOCK TABLES `aluno_responsavel` WRITE;
/*!40000 ALTER TABLE `aluno_responsavel` DISABLE KEYS */;
INSERT INTO `aluno_responsavel` VALUES (39,1231,8,'Mãe'),(40,1,4,'Mãe'),(42,10,7,'Avo'),(44,7,8,'Mãe');
/*!40000 ALTER TABLE `aluno_responsavel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `aluno_turma`
--

DROP TABLE IF EXISTS `aluno_turma`;
/*!50001 DROP VIEW IF EXISTS `aluno_turma`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `aluno_turma` AS SELECT 
 1 AS `matricula`,
 1 AS `nome`,
 1 AS `Turma`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `matricula` int NOT NULL,
  `nome` varchar(80) NOT NULL,
  `Turma` int NOT NULL,
  PRIMARY KEY (`matricula`),
  KEY `fk_Alunos_Turmas1_idx` (`Turma`),
  CONSTRAINT `fk_Alunos_Turmas1` FOREIGN KEY (`Turma`) REFERENCES `turmas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'j',1),(7,'lucas',1),(10,'aaaaa',1),(41,'anaa',1),(123,'adsas',1),(444,'Bartolomeu',1),(1231,'leticia',1),(9000,'Josecleison da silva moyses carlos pedro antonio silva ',1),(12312,'12313asda',1),(21321,'dads',1),(44444,'Tibúrcio',1);
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `curso` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'Ciências de Dados'),(2,'Magistério'),(3,'Novo Ensino Médio');
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entradas`
--

DROP TABLE IF EXISTS `entradas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entradas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `horario` time NOT NULL,
  `justificativa` varchar(255) DEFAULT NULL,
  `Aluno` int NOT NULL,
  `Pedagoga` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Entradas_Alunos1_idx` (`Aluno`),
  KEY `fk_Entradas_Pedagogas1_idx` (`Pedagoga`),
  CONSTRAINT `fk_Entradas_Alunos1` FOREIGN KEY (`Aluno`) REFERENCES `alunos` (`matricula`),
  CONSTRAINT `fk_Entradas_Pedagogas1` FOREIGN KEY (`Pedagoga`) REFERENCES `pedagogas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entradas`
--

LOCK TABLES `entradas` WRITE;
/*!40000 ALTER TABLE `entradas` DISABLE KEYS */;
/*!40000 ALTER TABLE `entradas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedagogas`
--

DROP TABLE IF EXISTS `pedagogas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedagogas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `usuario` varchar(40) NOT NULL,
  `senha` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedagogas`
--

LOCK TABLES `pedagogas` WRITE;
/*!40000 ALTER TABLE `pedagogas` DISABLE KEYS */;
INSERT INTO `pedagogas` VALUES (6,'ADMINISTRADOR','ADMINISTRADOR','abc123'),(8,'teste','teste','teste');
/*!40000 ALTER TABLE `pedagogas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `resp`
--

DROP TABLE IF EXISTS `resp`;
/*!50001 DROP VIEW IF EXISTS `resp`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `resp` AS SELECT 
 1 AS `id`,
 1 AS `matricula`,
 1 AS `nome do aluno`,
 1 AS `id responsavel`,
 1 AS `nome`,
 1 AS `grau_de_parentesco`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `responsaveis`
--

DROP TABLE IF EXISTS `responsaveis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `responsaveis` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `telefone` varchar(14) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpf_UNIQUE` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responsaveis`
--

LOCK TABLES `responsaveis` WRITE;
/*!40000 ALTER TABLE `responsaveis` DISABLE KEYS */;
INSERT INTO `responsaveis` VALUES (4,'teste','(42)22222-2222','122.222.222-22'),(5,'luiz','(42)99999-9999','222.222.222-22'),(7,'aaaaaa','(11)11111-1111','151-454-511'),(8,'Luciana','(42)99999-9999','145-487-875'),(9,'testecpf','(12)32312-3213','211-231-231');
/*!40000 ALTER TABLE `responsaveis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saidas`
--

DROP TABLE IF EXISTS `saidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saidas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `horario` time NOT NULL,
  `justificativa` varchar(255) DEFAULT NULL,
  `Aluno` int NOT NULL,
  `Pedagoga` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Saidas_Alunos1_idx` (`Aluno`),
  KEY `fk_Saidas_Pedagogas1_idx` (`Pedagoga`),
  CONSTRAINT `fk_Saidas_Alunos1` FOREIGN KEY (`Aluno`) REFERENCES `alunos` (`matricula`),
  CONSTRAINT `fk_Saidas_Pedagogas1` FOREIGN KEY (`Pedagoga`) REFERENCES `pedagogas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saidas`
--

LOCK TABLES `saidas` WRITE;
/*!40000 ALTER TABLE `saidas` DISABLE KEYS */;
/*!40000 ALTER TABLE `saidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turmas`
--

DROP TABLE IF EXISTS `turmas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turmas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `serie` varchar(10) NOT NULL,
  `turma` int NOT NULL,
  `sala` int NOT NULL,
  `Curso` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Turmas_Cursos_idx` (`Curso`),
  CONSTRAINT `fk_Turmas_Cursos` FOREIGN KEY (`Curso`) REFERENCES `cursos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turmas`
--

LOCK TABLES `turmas` WRITE;
/*!40000 ALTER TABLE `turmas` DISABLE KEYS */;
INSERT INTO `turmas` VALUES (1,'3',1,5,1);
/*!40000 ALTER TABLE `turmas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'sistema'
--

--
-- Dumping routines for database 'sistema'
--

--
-- Final view structure for view `aluno_turma`
--

/*!50001 DROP VIEW IF EXISTS `aluno_turma`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aluno_turma` AS select `alunos`.`matricula` AS `matricula`,`alunos`.`nome` AS `nome`,concat(`turmas`.`serie`,'ª ',`turmas`.`turma`,' ',`cursos`.`curso`) AS `Turma` from ((`turmas` join `cursos`) join `alunos`) where ((`turmas`.`Curso` = `cursos`.`id`) and (`alunos`.`Turma` = `turmas`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `resp`
--

/*!50001 DROP VIEW IF EXISTS `resp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `resp` AS select `aluno_responsavel`.`id` AS `id`,`alunos`.`matricula` AS `matricula`,`alunos`.`nome` AS `nome do aluno`,`responsaveis`.`id` AS `id responsavel`,`responsaveis`.`nome` AS `nome`,`aluno_responsavel`.`grau_de_parentesco` AS `grau_de_parentesco` from ((`aluno_responsavel` join `alunos`) join `responsaveis`) where ((`aluno_responsavel`.`aluno` = `alunos`.`matricula`) and (`aluno_responsavel`.`responsavel` = `responsaveis`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-08 13:11:06
