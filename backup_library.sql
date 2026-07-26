/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-12.3.2-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: library
-- ------------------------------------------------------
-- Server version	11.4.12-MariaDB-ubu2404

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `year` varchar(4) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES
(1,'Fuego y Sangre','Gorge R.R Martin','2011','https://imgs.search.brave.com/DT3OxZu98UXx-qf1KJ25eNeYRzyCdAEszD18IVL44vA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zczM2/NS5saXZlcnBvb2wu/Y29tLm14L3hsLzEw/Nzg3NTUwOTguanBn'),
(2,'Indingno De ser Humano ','Osamu Dazai','2009','https://imgs.search.brave.com/8tbavcm9AbyfmhSpI61EGh1aJ6Ll1mdjQhijs0_yN0E/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuY2RuMy5idXNj/YWxpYnJlLmNvbS9m/aXQtaW4vMzYweDM2/MC8wMC9kZS8wMGRl/MGEzMmRkMzc5N2Ux/MDExMzliMzVlOTdk/MjI2Mi5qcGc'),
(3,'Crimen y Castigo','Fiódor Dostoievski ','2000','https://imgs.search.brave.com/kYakL-AHcBsyPd40fP8jLibC-X5JD1pcl6H7I8Xo3qs/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9odHRw/Mi5tbHN0YXRpYy5j/b20vRF9RX05QXzJY/Xzg1MjExNS1NTFU1/MjI4NDk0MDk1NF8x/MTIwMjItRS53ZWJw'),
(4,'Cuentos de Amor Lucura y de Muerto ','Horacio Quiroga','1998','https://imgs.search.brave.com/RPU_FkntjleC_yVvYLA34lPPVRgxwFDy23oK7NcRhHE/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/c29tb3N2b2Nlcy5j/b20ubXgvaW1hZ2Vu/ZXMvOTc4OTcwNi85/Nzg5NzA2NjYwMTEu/R0lG.gif'),
(5,'Ciudades de papel','Emir lucero ','2023',NULL),
(6,'La fuerza de Shecid','Carlos Cuahutemoc Sanchez','1993','https://share.google/X1pXpScRTc5ze1ED0'),
(7,'El corazón de piedra verde ','Salvador de Madariaga ','1942',NULL),
(8,'El Gato Negro ','Edgar Allan Poe','2002','https://imgs.search.brave.com/kmqQy9MbnI0bbCYQ4xYYHX3gF0lKxeQMwjLmkVvrt0U/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9odHRw/Mi5tbHN0YXRpYy5j/b20vRF9RX05QXzJY/XzcxMTkxOS1NTFU3/ODg2MDQ0MjcxN18w/OTIwMjQtVi53ZWJw'),
(9,'La última pregunta','Isaac Asimov','1956','https://cdn.kobo.com/book-images/549364c7-df99-4b17-ae13-9b0532c1bb8f/1200/1200/False/la-ultima-pregunta-flash-relatos.jpg'),
(10,'El diario de Ana Frnak ','Ana Frank','1985','https://imgs.search.brave.com/ebjmDM5Gu-L7w9KVSquJxpYcMB_r994-gouaX9JkdTw/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9odHRw/Mi5tbHN0YXRpYy5j/b20vRF9RX05QXzJY/Xzg1NjMzNS1NTE04/NzIzMzY4MTAzNl8w/NzIwMjUtVi53ZWJw'),
(11,'Relatividad para principiantes ','Alber  Einstein ','2010','https://imgs.search.brave.com/N_hWw5kWk5BSicilYmOIfDTARG3GGTunRltrKPb0Pps/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9xdWVs/aWJyb2xlby5jb20v/aW1hZ2VzL2xpYnJv/cy9saWJyb18xMzY3/MzIyNTI4LmpwZw'),
(12,'El Extranjero','Albert Cammus ','1889','https://imgs.search.brave.com/WbBqBhA3HvwozxJnhEgDtE7SMR09yYSBY9HwvKAvbns/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9odHRw/Mi5tbHN0YXRpYy5j/b20vRF9RX05QXzJY/XzY0NDUzNC1NTE0x/MDg2NTI1OTY0NDZf/MDMyMDI2LUUud2Vi/cA'),
(13,'La Iliada y la Odisea','Homero','VIII','https://m.media-amazon.com/images/I/61Ii0hNt4mL.jpg');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-07-25 18:33:04
