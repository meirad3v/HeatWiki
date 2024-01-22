-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: HeatWiki
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player` (
  `id` int(2) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `pos` varchar(30) NOT NULL,
  `date` datetime DEFAULT NULL,
  `pic` varchar(50) DEFAULT NULL,
  `hit` varchar(15) DEFAULT NULL,
  `wit` varchar(15) DEFAULT NULL,
  `link` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (1,'erik spoelstra','Coach (Tecnico)','1970-11-01 00:00:00','src/Pics/Spo.png','6\'2\'/1,88','205lb/93kg','https://www.youtube.com/embed/RlKerHhtIHw?si=F4TSvpXfOf_I9xzu&amp;autoplay=1&mute=1&controls=0'),(2,'gabe vincent','PG (ARMADOR)','1996-06-14 00:00:00','src/Pics/Gabe.png','6\'3\'/1,90m','195lb/88kg','https://www.youtube.com/embed/_Kf5t1wFk7Q?si=r9aOo8WZLvd7Xb8w&amp;autoplay=1&mute=1&controls=0'),(3,'dwyane \'the flash\' wade','SG (ALA-ARMADOR)','1982-01-17 00:00:00','src/Pics/Dwade.png','6\'4\'/1,93m','220lb/99kg','https://www.youtube.com/embed/BjTcXjL2moE?si=PW4uUH_rzV_eVYDw&amp;autoplay=1&mute=1&controls=0'),(4,'victor oladipo','SG (ALA-ARMADOR)','1992-05-04 00:00:00','src/Pics/Dipo.png','6\'4\'/1,93m','213lb/96kg','https://www.youtube.com/embed/6nWWSUktc7A?si=xq9pTxzSe9_HoLAq&amp;autoplay=1%mute=1&start=22'),(7,'kyle lowry','PG (ARMADOR)','1986-03-25 00:00:00','src/Pics/Lowry.png','6\'/1,83m','196lb/88kg','https://www.youtube.com/embed/_PyS5cIWlQw?si=uqyh62YvKSbvEFqM&amp;autoplay=1&mute=1&controls=0&amp;start=7'),(13,'bam adebayo','PF/C (ALA-PIVO/PIVO)','1997-07-18 00:00:00','src/Pics/Bam.png','69\'\\/2,06m','255lb/115kg','https://www.youtube.com/embed/KeG8MlARtgQ?si=IUqjcFPTNwDP8i9T;autoplay=1&mute=1&controls=0'),(14,'tyler herro','SG (ALA-ARMADOR)','2000-01-20 00:00:00','src/Pics/Herro.png','65\'/1,96m','195lb/88kg','https://www.youtube.com/embed/UmqADmUMOMY?si=YTkeLXBhOS4-c3Xc&amp;autoplay=1&mute=1&controls=0'),(21,'jimmy butler','SF (ALA)','1989-09-14 00:00:00','src/Pics/Jimmy.png','6\'7\\/2,01m','230lb/104kg','https://www.youtube.com/embed/0RB6OD7cW04?autoplay=1&mute=1&controls=0'),(24,'haywood highsmith','PF (ALA-PIVO)','1996-12-09 00:00:00','src/Pics/Highsmith.png','6\'9\'/2,06m','255lb/115kg','https://www.youtube.com/embed/ISmpV9RW2FA?si=MJbb6dMzrRqrGWRi&amp;autoplay=1&mute=1&controls=0'),(40,'udonis haslem','C (PIVO)','1980-06-09 00:00:00','src/Pics/Udonis.png','6\'8\\/2,03m','235lb/106kg','https://www.youtube.com/embed/Hy2mHQC4ykQ?si=bcCkJMlHhUMbjrD4&amp;autoplay=1&mute=1&controls=0');
INSERT INTO HeatWiki.player
(id, nome, pos, `date`, pic, hit, wit, link)
VALUES(2, 'gabe vincent', 'PG (ARMADOR)', '1996-06-14 00:00:00', 'src/Pics/Gabe.png', '6''3''/1,90m', '195lb/88kg', 'https://www.youtube.com/embed/_Kf5t1wFk7Q?si=r9aOo8WZLvd7Xb8w&amp;autoplay=1&mute=1&controls=0');
INSERT INTO HeatWiki.player
(id, nome, pos, `date`, pic, hit, wit, link)
VALUES(3, 'dwyane ''the flash'' wade', 'SG (ALA-ARMADOR)', '1982-01-17 00:00:00', 'src/Pics/Dwade.png', '6''4''/1,93m', '220lb/99kg', 'https://www.youtube.com/embed/BjTcXjL2moE?si=PW4uUH_rzV_eVYDw&amp;autoplay=1&mute=1&controls=0');
INSERT INTO HeatWiki.player
(id, nome, pos, `date`, pic, hit, wit, link)
VALUES(4, 'victor oladipo', 'SG (ALA-ARMADOR)', '1992-05-04 00:00:00', 'src/Pics/Dipo.png', '6''4''/1,93m', '213lb/96kg', 'https://www.youtube.com/embed/6nWWSUktc7A?si=xq9pTxzSe9_HoLAq&amp;autoplay=1%mute=1&start=22');
INSERT INTO HeatWiki.player
(id, nome, pos, `date`, pic, hit, wit, link)
VALUES(7, 'kyle lowry', 'PG (ARMADOR)', '1986-03-25 00:00:00', 'src/Pics/Lowry.png', '6''/1,83m', '196lb/88kg', 'https://www.youtube.com/embed/_PyS5cIWlQw?si=uqyh62YvKSbvEFqM&amp;autoplay=1&mute=1&controls=0&amp;start=7');
INSERT INTO HeatWiki.player
(id, nome, pos, `date`, pic, hit, wit, link)
VALUES(13, 'bam adebayo', 'PF/C (ALA-PIVO/PIVO)', '1997-07-18 00:00:00', 'src/Pics/Bam.png', '69''\\/2,06m', '255lb/115kg', 'https://www.youtube.com/embed/KeG8MlARtgQ?si=IUqjcFPTNwDP8i9T;autoplay=1&mute=1&controls=0');
INSERT INTO HeatWiki.player
(id, nome, pos, `date`, pic, hit, wit, link)
VALUES(14, 'tyler herro', 'SG (ALA-ARMADOR)', '2000-01-20 00:00:00', 'src/Pics/Herro.png', '65''/1,96m', '195lb/88kg', 'https://www.youtube.com/embed/UmqADmUMOMY?si=YTkeLXBhOS4-c3Xc&amp;autoplay=1&mute=1&controls=0');
INSERT INTO HeatWiki.player
(id, nome, pos, `date`, pic, hit, wit, link)
VALUES(21, 'jimmy butler', 'SF (ALA)', '1989-09-14 00:00:00', 'src/Pics/Jimmy.png', '6''7\\/2,01m', '230lb/104kg', 'https://www.youtube.com/embed/0RB6OD7cW04?autoplay=1&mute=1&controls=0');
INSERT INTO HeatWiki.player
(id, nome, pos, `date`, pic, hit, wit, link)
VALUES(24, 'haywood highsmith', 'PF (ALA-PIVO)', '1996-12-09 00:00:00', 'src/Pics/Highsmith.png', '6''9''/2,06m', '255lb/115kg', 'https://www.youtube.com/embed/ISmpV9RW2FA?si=MJbb6dMzrRqrGWRi&amp;autoplay=1&mute=1&controls=0');
INSERT INTO HeatWiki.player
(id, nome, pos, `date`, pic, hit, wit, link)
VALUES(40, 'udonis haslem', 'C (PIVO)', '1980-06-09 00:00:00', 'src/Pics/Udonis.png', '6''8\\/2,03m', '235lb/106kg', 'https://www.youtube.com/embed/Hy2mHQC4ykQ?si=bcCkJMlHhUMbjrD4&amp;autoplay=1&mute=1&controls=0');

/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'HeatWiki'
--
