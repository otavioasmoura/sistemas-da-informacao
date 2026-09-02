CREATE DATABASE  IF NOT EXISTS `lanchonete_2e_2024` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lanchonete_2e_2024`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: lanchonete_2e_2024
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargo` (
  `codCargo` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(300) NOT NULL,
  `salarioInicial` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`codCargo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'Coordenador 2',3410.00),(2,'Motoboy',942.19),(3,'Assistente Administrativo',1760.00),(4,'Atendente',1553.35),(5,'Cozinheira',2420.62),(6,'Secretária',NULL);
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `codCategoria` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  PRIMARY KEY (`codCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Sucos naturais'),(2,'Refrigerantes em lata'),(3,'Água'),(5,'Refrigerantes em garrafa de 600 ml');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `codCliente` int NOT NULL AUTO_INCREMENT,
  `nomeCliente` varchar(150) NOT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL,
  PRIMARY KEY (`codCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Cliente à vista',NULL,NULL,NULL),(2,'Felipe Telles','222.222.222-22','tellesf@gmail.com','2009-01-20'),(3,'Marilia Silva','333.333.333-33','marilias@yahoo.com','2010-07-12'),(4,'Davi Pereira','444.444.444-44','davipereira@hotmail.com','1985-03-15');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `codFuncionario` int NOT NULL AUTO_INCREMENT,
  `nomeFunc` varchar(280) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `carTrabalho` varchar(32) NOT NULL,
  `dataAdmissao` date DEFAULT NULL,
  `cargo_codCargo` int NOT NULL,
  PRIMARY KEY (`codFuncionario`,`cargo_codCargo`),
  KEY `fk_funcionario_cargo1_idx` (`cargo_codCargo`),
  CONSTRAINT `fk_funcionario_cargo1` FOREIGN KEY (`cargo_codCargo`) REFERENCES `cargo` (`codCargo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'Álvaro Xavier','035.704.111-12','444','2024-01-25',1),(3,'Fabiana Silva','111.111.111-11','111','2023-05-20',5),(4,'Felipe Telles','222.222.222-22','222','2023-04-12',2),(5,'Ana Maria Carvalho','333.333.333-33','333','2024-03-05',3),(6,'Rosana Pereira','444.444.444-44','449','2019-11-14',4);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itensvenda`
--

DROP TABLE IF EXISTS `itensvenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itensvenda` (
  `codItemVenda` int NOT NULL AUTO_INCREMENT,
  `venda_codvenda` int NOT NULL,
  `produto_codProduto` int NOT NULL,
  `quantidade` double NOT NULL DEFAULT '1',
  PRIMARY KEY (`codItemVenda`,`venda_codvenda`,`produto_codProduto`),
  KEY `fk_venda_has_produto_produto1_idx` (`produto_codProduto`),
  KEY `fk_venda_has_produto_venda1_idx` (`venda_codvenda`),
  CONSTRAINT `fk_venda_has_produto_produto1` FOREIGN KEY (`produto_codProduto`) REFERENCES `produto` (`codProduto`),
  CONSTRAINT `fk_venda_has_produto_venda1` FOREIGN KEY (`venda_codvenda`) REFERENCES `venda` (`codvenda`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itensvenda`
--

LOCK TABLES `itensvenda` WRITE;
/*!40000 ALTER TABLE `itensvenda` DISABLE KEYS */;
INSERT INTO `itensvenda` VALUES (1,1,2,1),(2,1,4,2),(3,2,5,2);
/*!40000 ALTER TABLE `itensvenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marca` (
  `codMARCA` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `observacoes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codMARCA`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (1,'Pepsi',NULL),(2,'Fabricação Própria','Salgados e doces produzidos pela COETAGRI'),(3,'Coca-Cola',NULL),(4,'Elma Chips',NULL),(5,'Lacta',NULL),(6,'Nestlé','');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `codProduto` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `precoCusto` decimal(6,2) DEFAULT NULL,
  `precoVenda` decimal(6,2) NOT NULL,
  `dataValidade` date DEFAULT NULL,
  `quantMinima` int DEFAULT NULL,
  `quantEstoque` int DEFAULT NULL,
  `categoria_codCategoria` int NOT NULL,
  `marca_codMARCA` int NOT NULL,
  PRIMARY KEY (`codProduto`,`categoria_codCategoria`,`marca_codMARCA`),
  KEY `fk_produto_categoria_idx` (`categoria_codCategoria`),
  KEY `fk_produto_marca1_idx` (`marca_codMARCA`),
  CONSTRAINT `fk_produto_categoria` FOREIGN KEY (`categoria_codCategoria`) REFERENCES `categoria` (`codCategoria`),
  CONSTRAINT `fk_produto_marca1` FOREIGN KEY (`marca_codMARCA`) REFERENCES `marca` (`codMARCA`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (2,'Coca-cola em Lata',3.50,4.20,NULL,NULL,14,2,3),(4,'Pepsi em lata',3.50,4.52,NULL,NULL,30,2,1),(5,'Suco de Laranja',3.50,4.50,NULL,NULL,12,1,2);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda`
--

DROP TABLE IF EXISTS `venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venda` (
  `codvenda` int NOT NULL AUTO_INCREMENT,
  `dataHora` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tipoPagamento` enum('À vista','PIX','Cartão Débito','Cartão Crédito','Cartão Alimentação','Convênio') NOT NULL,
  `cliente_codCliente` int NOT NULL,
  `funcionario_codFuncionario` int NOT NULL,
  PRIMARY KEY (`codvenda`,`cliente_codCliente`,`funcionario_codFuncionario`),
  KEY `fk_venda_cliente1_idx` (`cliente_codCliente`),
  KEY `fk_venda_funcionario1_idx` (`funcionario_codFuncionario`),
  CONSTRAINT `fk_venda_cliente1` FOREIGN KEY (`cliente_codCliente`) REFERENCES `cliente` (`codCliente`),
  CONSTRAINT `fk_venda_funcionario1` FOREIGN KEY (`funcionario_codFuncionario`) REFERENCES `funcionario` (`codFuncionario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda`
--

LOCK TABLES `venda` WRITE;
/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
INSERT INTO `venda` VALUES (1,'2024-08-20 07:44:00','PIX',1,3),(2,'2024-08-20 07:49:47','Convênio',4,4);
/*!40000 ALTER TABLE `venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vi_cargosfuncionarios`
--

DROP TABLE IF EXISTS `vi_cargosfuncionarios`;
/*!50001 DROP VIEW IF EXISTS `vi_cargosfuncionarios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vi_cargosfuncionarios` AS SELECT 
 1 AS `nomeFunc`,
 1 AS `carTrabalho`,
 1 AS `nome`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_cargosordenados`
--

DROP TABLE IF EXISTS `vi_cargosordenados`;
/*!50001 DROP VIEW IF EXISTS `vi_cargosordenados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vi_cargosordenados` AS SELECT 
 1 AS `codCargo`,
 1 AS `nome`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_carpadio`
--

DROP TABLE IF EXISTS `vi_carpadio`;
/*!50001 DROP VIEW IF EXISTS `vi_carpadio`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vi_carpadio` AS SELECT 
 1 AS `codProduto`,
 1 AS `nomeProduto`,
 1 AS `precoVenda`,
 1 AS `nomeCategoria`,
 1 AS `nomeMarca`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_controlefuncionarios`
--

DROP TABLE IF EXISTS `vi_controlefuncionarios`;
/*!50001 DROP VIEW IF EXISTS `vi_controlefuncionarios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vi_controlefuncionarios` AS SELECT 
 1 AS `nomeFunc`,
 1 AS `carTrabalho`,
 1 AS `admissao`,
 1 AS `anosContrato`,
 1 AS `nome`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_estoquebaixo`
--

DROP TABLE IF EXISTS `vi_estoquebaixo`;
/*!50001 DROP VIEW IF EXISTS `vi_estoquebaixo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vi_estoquebaixo` AS SELECT 
 1 AS `nome`,
 1 AS `precoCusto`,
 1 AS `quantEstoque`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_idadeclientes`
--

DROP TABLE IF EXISTS `vi_idadeclientes`;
/*!50001 DROP VIEW IF EXISTS `vi_idadeclientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vi_idadeclientes` AS SELECT 
 1 AS `nomeCliente`,
 1 AS `email`,
 1 AS `nascimento`,
 1 AS `idade`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_listafuncionarios`
--

DROP TABLE IF EXISTS `vi_listafuncionarios`;
/*!50001 DROP VIEW IF EXISTS `vi_listafuncionarios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vi_listafuncionarios` AS SELECT 
 1 AS `nomeFunc`,
 1 AS `cpf`,
 1 AS `admissao`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_notinha`
--

DROP TABLE IF EXISTS `vi_notinha`;
/*!50001 DROP VIEW IF EXISTS `vi_notinha`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vi_notinha` AS SELECT 
 1 AS `venda_codvenda`,
 1 AS `nome`,
 1 AS `quantidade`,
 1 AS `precoVenda`,
 1 AS `totalPorItem`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_totalpagarporvenda`
--

DROP TABLE IF EXISTS `vi_totalpagarporvenda`;
/*!50001 DROP VIEW IF EXISTS `vi_totalpagarporvenda`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vi_totalpagarporvenda` AS SELECT 
 1 AS `codvenda`,
 1 AS `nomeCliente`,
 1 AS `totalPorVenda`,
 1 AS `tipoPagamento`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_vendascpf`
--

DROP TABLE IF EXISTS `vi_vendascpf`;
/*!50001 DROP VIEW IF EXISTS `vi_vendascpf`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vi_vendascpf` AS SELECT 
 1 AS `codvenda`,
 1 AS `dataVenda`,
 1 AS `tipoPagamento`,
 1 AS `nomeCliente`,
 1 AS `cpf`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vi_cargosfuncionarios`
--

/*!50001 DROP VIEW IF EXISTS `vi_cargosfuncionarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_cargosfuncionarios` AS select `f`.`nomeFunc` AS `nomeFunc`,`f`.`carTrabalho` AS `carTrabalho`,`c`.`nome` AS `nome` from (`funcionario` `f` join `cargo` `c` on((`f`.`cargo_codCargo` = `c`.`codCargo`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_cargosordenados`
--

/*!50001 DROP VIEW IF EXISTS `vi_cargosordenados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_cargosordenados` AS select `cargo`.`codCargo` AS `codCargo`,`cargo`.`nome` AS `nome` from `cargo` order by `cargo`.`nome` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_carpadio`
--

/*!50001 DROP VIEW IF EXISTS `vi_carpadio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_carpadio` AS select `p`.`codProduto` AS `codProduto`,`p`.`nome` AS `nomeProduto`,`p`.`precoVenda` AS `precoVenda`,`c`.`nome` AS `nomeCategoria`,`m`.`nome` AS `nomeMarca` from ((`produto` `p` join `categoria` `c` on((`p`.`categoria_codCategoria` = `c`.`codCategoria`))) join `marca` `m` on((`p`.`marca_codMARCA` = `m`.`codMARCA`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_controlefuncionarios`
--

/*!50001 DROP VIEW IF EXISTS `vi_controlefuncionarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_controlefuncionarios` AS select `f`.`nomeFunc` AS `nomeFunc`,`f`.`carTrabalho` AS `carTrabalho`,date_format(`f`.`dataAdmissao`,'%d/%m/%Y') AS `admissao`,floor(((to_days(curdate()) - to_days(`f`.`dataAdmissao`)) / 365)) AS `anosContrato`,`c`.`nome` AS `nome` from (`funcionario` `f` join `cargo` `c` on((`f`.`cargo_codCargo` = `c`.`codCargo`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_estoquebaixo`
--

/*!50001 DROP VIEW IF EXISTS `vi_estoquebaixo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_estoquebaixo` AS select `p`.`nome` AS `nome`,`p`.`precoCusto` AS `precoCusto`,`p`.`quantEstoque` AS `quantEstoque` from `produto` `p` where (`p`.`quantEstoque` < 20) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_idadeclientes`
--

/*!50001 DROP VIEW IF EXISTS `vi_idadeclientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_idadeclientes` AS select `c`.`nomeCliente` AS `nomeCliente`,`c`.`email` AS `email`,date_format(`c`.`dataNascimento`,'%d/%m/%Y') AS `nascimento`,floor(((to_days(curdate()) - to_days(`c`.`dataNascimento`)) / 365)) AS `idade` from `cliente` `c` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_listafuncionarios`
--

/*!50001 DROP VIEW IF EXISTS `vi_listafuncionarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_listafuncionarios` AS select `funcionario`.`nomeFunc` AS `nomeFunc`,`funcionario`.`cpf` AS `cpf`,date_format(`funcionario`.`dataAdmissao`,'%d/%m/%Y') AS `admissao` from `funcionario` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_notinha`
--

/*!50001 DROP VIEW IF EXISTS `vi_notinha`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_notinha` AS select `i`.`venda_codvenda` AS `venda_codvenda`,`p`.`nome` AS `nome`,`i`.`quantidade` AS `quantidade`,`p`.`precoVenda` AS `precoVenda`,format((`i`.`quantidade` * `p`.`precoVenda`),2) AS `totalPorItem` from (`itensvenda` `i` join `produto` `p` on((`i`.`produto_codProduto` = `p`.`codProduto`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_totalpagarporvenda`
--

/*!50001 DROP VIEW IF EXISTS `vi_totalpagarporvenda`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_totalpagarporvenda` AS select `v`.`codvenda` AS `codvenda`,`c`.`nomeCliente` AS `nomeCliente`,format(sum((`i`.`quantidade` * `p`.`precoVenda`)),2) AS `totalPorVenda`,`v`.`tipoPagamento` AS `tipoPagamento` from (((`venda` `v` join `cliente` `c` on((`v`.`cliente_codCliente` = `c`.`codCliente`))) join `itensvenda` `i` on((`i`.`venda_codvenda` = `v`.`codvenda`))) join `produto` `p` on((`p`.`codProduto` = `i`.`produto_codProduto`))) group by `v`.`codvenda`,`c`.`nomeCliente`,`v`.`tipoPagamento` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_vendascpf`
--

/*!50001 DROP VIEW IF EXISTS `vi_vendascpf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_vendascpf` AS select `v`.`codvenda` AS `codvenda`,date_format(`v`.`dataHora`,'%d/%m/%Y') AS `dataVenda`,`v`.`tipoPagamento` AS `tipoPagamento`,`c`.`nomeCliente` AS `nomeCliente`,`c`.`cpf` AS `cpf` from (`venda` `v` join `cliente` `c` on((`v`.`cliente_codCliente` = `c`.`codCliente`))) where (`c`.`cpf` is not null) */;
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

-- Dump completed on 2024-09-30 10:53:35
