-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: ngos_courses
-- ------------------------------------------------------
-- Server version	5.7.14-log

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
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(245) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(245) CHARACTER SET latin1 DEFAULT NULL,
  `start_date` varchar(245) CHARACTER SET latin1 DEFAULT NULL,
  `location` varchar(245) CHARACTER SET latin1 DEFAULT NULL,
  `trainer` varchar(245) CHARACTER SET latin1 DEFAULT NULL,
  `number_of_seats` int(11) DEFAULT NULL,
  `id_ngo` int(11) DEFAULT NULL,
  `end_datel` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (2,'HTML','test','3-3-2020','mafraq','21',20,60,'5-3-2020'),(4,'Dss','test course','3-6-2020','mafraq','19',30,59,'8-9-2000'),(5,'Java','Test Course','6-6-2020','irbid','19',40,59,'4-7-2020'),(8,'Html','Test Course','6-9-2020','mafraq','24',5,59,'5-9-2020'),(9,'gccsvazv','add description for the course','1/1/2000','hv,jh','21',10,59,'1/1/2003'),(10,'gccsvazv','add description for the course','1/1/2000','hv,jh','21',10,59,'1/1/2003'),(11,'gccsvazv','add description for the course','1/1/2000','hv,jh','21',10,59,'1/1/2003'),(13,'html','add description for the dfyg','1/1/2020','ssssssss','23',11,59,'1/1/2017'),(14,'html','add description for the dfyg','1/1/2020','ssssssss','23',11,59,'1/1/2017'),(15,'html','add description for the dfyg','1/1/2020','ssssssss','23',11,59,'1/1/2017'),(17,'html','add description for the dfyg','1/1/2020','ssssssss','23',11,59,'1/1/2017'),(18,'ert','add descriptgfhj','1/1/1111','wret','21',12,59,'1/1/1111'),(19,'ss','aaaaaa','5-6-2020','kk','19',4,59,'5-6-2020'),(20,'aaa','aaaa','2-2-2020','aaaaa','undefined',81,65,'2-2-2020'),(21,'aaa','DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD','2-2-2020','SASFC','undefined',52,65,'2-2-2020'),(22,'sadsasa','ddsdsds','2-2-2022','sdfdsf','undefined',52,65,'2-2-2020'),(23,'maram','efssssssssssssssssd','2/2/2222','dsfsfdfsdf','undefined',5,65,'2/2/2222'),(24,'kkkk,,k','fghfghfgh','2/2/2222','esfsdf','undefined',4,65,'2/2/2222'),(25,'hbczhn','zxczx','2/2/2000','sxsz','19',3,65,'2/2/2003');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_trainee`
--

DROP TABLE IF EXISTS `courses_trainee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_trainee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_course` int(11) DEFAULT NULL,
  `id_trainee` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_trainee`
--

LOCK TABLES `courses_trainee` WRITE;
/*!40000 ALTER TABLE `courses_trainee` DISABLE KEYS */;
/*!40000 ALTER TABLE `courses_trainee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_traines`
--

DROP TABLE IF EXISTS `courses_traines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_traines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_course` int(11) DEFAULT NULL,
  `id_traines` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_traines`
--

LOCK TABLES `courses_traines` WRITE;
/*!40000 ALTER TABLE `courses_traines` DISABLE KEYS */;
INSERT INTO `courses_traines` VALUES (20,1,1),(30,2,1),(33,4,18);
/*!40000 ALTER TABLE `courses_traines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ngos`
--

DROP TABLE IF EXISTS `ngos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ngos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `logo` varchar(245) DEFAULT NULL,
  `email` varchar(245) DEFAULT NULL,
  `website` varchar(245) DEFAULT NULL,
  `password` varchar(245) DEFAULT NULL,
  `bio` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ngos`
--

LOCK TABLES `ngos` WRITE;
/*!40000 ALTER TABLE `ngos` DISABLE KEYS */;
INSERT INTO `ngos` VALUES (58,'tt',NULL,'t@t.t',NULL,'$2a$08$Qm5Nbzygqc6XASlLilBkquME1TRNzn0r2WlOf7JW5q.BJLpNqvGku',NULL),(59,'tahany','/imeges/ngos/tahany.png','tahany.shraa@gmail.com','www.ngo.com','$2a$08$OvQqL62ByK9mAWU5.0bFjexGlEQemKB04XWJ9s1nTvrqAP/eetLvm',' ffgf ff '),(60,'w',NULL,'w@w.w',NULL,'wwwwwwwwww',NULL),(61,'n','/imeges/ngosLogo/n.png','n@n.n','','$2a$08$2oQNcEQqmkZa9FonB1Ha0eGGjNkeSTFVYfNRC8vF3cH9jW0UbJO5i',''),(62,'m','/images/ngo/m.png','m@m.m','','$2a$08$B0zzq77wehvIz.Ls2K12v.NpGwQ5R0Viih.eglYOzDWxqB76ZR0mu',''),(63,'ahmadwwwww','/images/ngo/ahmad.png','a@a.a','123124124124q12312wwww','$2a$08$Fk3RDKAa28wNsthky33Vku8qDmDtxJQ0lg4ZwmUWJ0khvIS/NcQDy','nooooooooooorw'),(64,'tahany mh','/imeges/ngos/tahany alshraa.png','a@aa.a','','$2a$08$e.0JElCF9Aqj0xXBVU0M6eJaKoQjB7ILpTMyLr6Vh8ZrCagJ.J2v6','ppppp'),(65,'ppppp',NULL,'p@p.p',NULL,'$2a$08$mrAXkE1eenW0SCZfTsvb0uXQ1rMHRjY/NyCCo82UVaFWNmlxGk.8O',NULL);
/*!40000 ALTER TABLE `ngos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainee`
--

DROP TABLE IF EXISTS `trainee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trainee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(245) CHARACTER SET latin1 DEFAULT NULL,
  `password` varchar(245) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(245) CHARACTER SET latin1 DEFAULT NULL,
  `mobile` varchar(245) CHARACTER SET latin1 DEFAULT NULL,
  `address` varchar(245) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainee`
--

LOCK TABLES `trainee` WRITE;
/*!40000 ALTER TABLE `trainee` DISABLE KEYS */;
INSERT INTO `trainee` VALUES (50,'mlak','12345678','m@m.m','0136549874','mafraq'),(51,'ali','12345678','l.@.l','1234567893','irbid');
/*!40000 ALTER TABLE `trainee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainers`
--

DROP TABLE IF EXISTS `trainers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trainers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(245) CHARACTER SET latin1 DEFAULT NULL,
  `picture` varchar(245) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(245) CHARACTER SET latin1 DEFAULT NULL,
  `mobile` varchar(245) CHARACTER SET latin1 DEFAULT NULL,
  `address` varchar(245) CHARACTER SET latin1 DEFAULT NULL,
  `short_bio` varchar(1000) CHARACTER SET latin1 DEFAULT NULL,
  `id_ngo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainers`
--

LOCK TABLES `trainers` WRITE;
/*!40000 ALTER TABLE `trainers` DISABLE KEYS */;
INSERT INTO `trainers` VALUES (19,'maram ','/imeges/trainers/m@gmail.com.png','m@gmail.com','0123466789 ','mafraq','test Bio   4444              ',65),(27,'maram mh','/imeges/trainers/marammh@gmail.com.png','marammh@gmail.com','0236598741','mafraq','Tell us about you as a Trainer: Your Background, Qualifications, Skills and Experience. \n                 ',NULL),(28,'tahany ','/imeges/trainers/tahany.shraa@gmail.com.png','tahany.shraa@gmail.com','0781565983','mafraq','Tell us about you as a Trainer: Your Background, Qualifications, Skills and Experience. \n                 ',NULL),(29,'kkkkjlj','','kk@gmail.com','8586545454','vbnm','Tell us about you as a Trainer: Your Background, Qualifications, Skills and Experience. \n                 ',NULL),(30,'aa','/imeges/trainers/a@a.a.png','a@a.a','0781234567','aaa','bfjjnfjb',NULL),(37,'tahanySH','/imeges/trainers/tahany.shraa@gmail.NET.png','tahany.shraa@gmail.NET','0794569852','AAA','ANYY',NULL),(38,'jinijninnnn','/imeges/trainers/tahany.shraa@gmail.com.png','tahany.shraa@gmail.com','0788859292','gggggggg','626',NULL),(39,'tahany alshraa','','k@gmail.com','0782222303','','5215',NULL),(40,'ahmad','','a@a.a','0782152417','dscdec','daxex',65),(42,'tahany alshraa','/imeges/trainers/tahany.shraa@gmail.k.png','tahany.shraa@gmail.k','0785555555','aaa','aaaaaaaaaaaaaaa',59);
/*!40000 ALTER TABLE `trainers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-03  5:23:02
