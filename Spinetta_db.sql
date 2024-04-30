CREATE DATABASE  IF NOT EXISTS `spinetta` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `spinetta`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: spinetta
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album` (
  `album_id` int NOT NULL AUTO_INCREMENT,
  `banda_id` int DEFAULT NULL,
  `nombre` varchar(35) NOT NULL,
  `fecha_lanza` int NOT NULL,
  `duracion` time NOT NULL,
  PRIMARY KEY (`album_id`),
  KEY `banda_id` (`banda_id`),
  CONSTRAINT `album_ibfk_1` FOREIGN KEY (`banda_id`) REFERENCES `banda` (`banda_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (1,1,'Almendra',1969,'00:37:30'),(2,1,'Almendra II',1970,'01:19:00'),(3,1,'El valle interior',1980,'00:36:48'),(4,2,'Desatormentandonos',1972,'00:41:44'),(5,2,'Pescado Rabioso 2',1973,'01:12:00'),(6,2,'Artaud',1973,'00:36:56'),(7,3,'Alma de diamante',1980,'00:38:54'),(8,3,'Bajo Belgrano',1983,'00:40:14'),(9,3,'Madre En Años Luz',1984,'00:36:02'),(10,3,'Los niños que escriben en el cielo',1981,'00:41:24'),(11,4,'Invisible ',1974,'00:37:00'),(12,4,'Durazno Sangrando',1975,'00:37:18'),(13,4,'Los jardín de los presentes',1976,'00:37:42'),(14,5,'San Critóforo',1998,'01:03:13'),(15,5,'Los ojos',1999,'01:06:02'),(16,5,'Spinetta y los socios del desierto',1997,'02:05:50'),(17,6,'Spinettalandia y sus amigos',1972,'00:34:54'),(18,6,'A 18\' Del Sol',1977,'00:38:00'),(19,6,'Kamikaze',1982,'00:45:49'),(20,6,'Mondo di cromo',1983,'00:40:22'),(21,6,'Privé',1986,'00:43:00'),(22,6,'La la la',1986,'01:23:00'),(23,6,'Téster de violencia',1988,'00:47:36'),(24,6,'Don Lucero',1989,'00:44:55'),(25,6,'Pelusón of milk',1991,'00:52:22'),(26,6,'Silver Sorgo',2001,'00:50:41'),(27,6,'Para los árboles',2003,'00:54:37'),(28,6,'Pan',2005,'01:03:22'),(29,6,'Un mañana',2008,'00:57:02');
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album_productor`
--

DROP TABLE IF EXISTS `album_productor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album_productor` (
  `album_productor_id` int NOT NULL AUTO_INCREMENT,
  `album_id` int NOT NULL,
  `productor_id` int DEFAULT NULL,
  PRIMARY KEY (`album_productor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_productor`
--

LOCK TABLES `album_productor` WRITE;
/*!40000 ALTER TABLE `album_productor` DISABLE KEYS */;
INSERT INTO `album_productor` VALUES (1,1,NULL),(2,2,NULL),(3,3,1),(4,4,1),(5,5,NULL),(6,6,1),(7,6,3),(8,7,1),(9,8,1),(10,9,1),(11,10,1),(12,11,3),(13,12,1),(14,13,1),(15,14,1),(16,15,1),(17,16,1),(18,17,1),(19,18,1),(20,19,1),(21,20,1),(22,21,1),(23,22,1),(24,22,4),(25,23,1),(26,23,5),(27,24,1),(28,25,1),(29,26,1),(30,27,1),(31,28,1),(32,29,1);
/*!40000 ALTER TABLE `album_productor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banda`
--

DROP TABLE IF EXISTS `banda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banda` (
  `banda_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(35) NOT NULL,
  `ano_creacion` int NOT NULL,
  `ano_activo` int NOT NULL,
  `cant_albumes` int NOT NULL,
  PRIMARY KEY (`banda_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banda`
--

LOCK TABLES `banda` WRITE;
/*!40000 ALTER TABLE `banda` DISABLE KEYS */;
INSERT INTO `banda` VALUES (1,'Almendra',1968,12,3),(2,'Pescado Rabioso',1971,2,3),(3,'Spinetta Jade',1980,5,4),(4,'Invisible',1973,4,3),(5,'Spinetta y los Socios del Desierto',1994,5,3),(6,'Solista',1971,37,13);
/*!40000 ALTER TABLE `banda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancion`
--

DROP TABLE IF EXISTS `cancion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cancion` (
  `cancion_id` int NOT NULL AUTO_INCREMENT,
  `album_id` int DEFAULT NULL,
  `nombre` varchar(45) NOT NULL,
  `duracion` time NOT NULL,
  PRIMARY KEY (`cancion_id`),
  KEY `album_id` (`album_id`),
  CONSTRAINT `cancion_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`)
) ENGINE=InnoDB AUTO_INCREMENT=341 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancion`
--

LOCK TABLES `cancion` WRITE;
/*!40000 ALTER TABLE `cancion` DISABLE KEYS */;
INSERT INTO `cancion` VALUES (1,1,'Muchacha','00:03:05'),(2,1,'Color Humano','00:09:10'),(3,1,'Figuración','00:03:30'),(4,1,'Ana no duerme ','00:02:43'),(5,1,'Fermín','00:03:17'),(6,1,'Plegarias para un Niño Dormido','00:04:02'),(7,1,'A Estos Hombres Tristes','00:05:57'),(8,1,'Que el Viento Borró Tus Manos','00:02:35'),(9,1,'Laura Va','00:02:48'),(10,2,'Toma el Tren Hacia el Sur ','00:03:43'),(11,2,'Jingle','00:01:27'),(12,2,'No Tengo Idea','00:02:47'),(13,2,'Camino Dificil','00:02:28'),(14,2,'Rutas Argentinas','00:02:38'),(15,2,'Vete de Mí Cuervo Negro','00:01:10'),(16,2,'Aire de Amor','00:02:58'),(17,2,'Mestizo','00:02:26'),(18,2,'Agnus Dei','00:14:25'),(19,2,'Para Ir','00:03:58'),(20,2,'Parvas ','00:05:12'),(21,2,'Cometa Azul','00:04:24'),(22,2,'Florecen los Nardos','00:06:48'),(23,2,'Carmen ','00:03:03'),(24,2,'Obertura','00:03:03'),(25,2,'Amor de Aire','00:02:37'),(26,2,'Verde Llano ','00:01:35'),(27,2,'Leves Instrucciones ','00:01:30'),(28,2,'Los Elefantes','00:06:22'),(29,2,'Un Pájaro Te sostiene','00:02:24'),(30,2,'En las Cúpulas','00:04:41'),(31,3,'Las Cosas para Hacer','00:06:37'),(32,3,'Amidama','00:03:25'),(33,3,'Miguelito, Mi Espiritiu Ha Partido a Tiempo','00:08:43'),(34,3,'Espejada ','00:02:03'),(35,3,'Cielo Fuerte','00:04:41'),(36,3,'El Fantasma de la Buena Suerte ','00:06:47'),(37,3,'Buen Día, Día de Sol','00:04:42'),(38,4,'Blues de Cris','00:03:29'),(39,4,'El Jardinero','00:09:04'),(40,4,'Dulce 3 Nocturno ','00:05:05'),(41,4,'Algo Flota en la Laguna','00:05:11'),(42,4,'Serpiente','00:08:59'),(43,5,'Panadero Ensoñado ','00:00:38'),(44,5,'Iniciado del Alba','00:03:13'),(45,5,'Poseído del Alba','00:03:42'),(46,5,'Como el Viento Voy a Ver','00:05:12'),(47,5,'Viajero Naciendo','00:02:55'),(48,5,'Hola,Dulce Viento','00:02:43'),(49,5,'Nena Boba ','00:03:07'),(50,5,'Rock de la Selva Madre','00:07:43'),(51,5,'Amame Peteribí','00:07:43'),(52,5,'16\" de Peteribí\"','00:00:16'),(53,5,'Señorita Zapada','00:01:36'),(54,5,'Credulidad','00:03:05'),(55,5,'Hola, Pequeño Ser','00:09:40'),(56,5,'Mi Espíritu Se Fue','00:04:28'),(57,5,'Sombra de la Noche Negra','00:05:58'),(58,5,'La Cereza del Zar','00:01:47'),(59,5,'Corto','00:01:42'),(60,5,'Aguas Claras de Olimpos','00:08:46'),(61,6,'Todas la Hojas son del Viento','00:02:11'),(62,6,'Cemeterio Club','00:04:56'),(63,6,'Por','00:01:40'),(64,6,'Superchería','00:04:16'),(65,6,'La Sed Verdadera','00:03:30'),(66,6,'Cantata de Puentes Amarillos','00:09:08'),(67,6,'Bajan','00:03:25'),(68,6,'A Starosta, el Idiota','00:03:14'),(69,6,'Las Habladurias del mundo','00:04:04'),(70,7,'Amenábar','00:05:28'),(71,7,'Alma de Diamante','00:04:18'),(72,7,'Dale Gracias','00:05:18'),(73,7,'Con la Sombra de Tu Aliado','00:04:25'),(74,7,'La Diosa Salvaje','00:06:19'),(75,7,'Digital Ayatollah','00:04:59'),(76,7,'Sombra en los Álamos','00:08:09'),(77,8,'Canción De Bajo Belgrano','00:03:32'),(78,8,'Vas A Iluminar La Casa','00:03:06'),(79,8,'Maribel Se Durmió','00:02:35'),(80,8,'Vida Siempre','00:05:53'),(81,8,'Ping Pong','00:04:44'),(82,8,'Mapa De Tu Amor','00:04:40'),(83,8,'Resumen Porteño','00:03:57'),(84,8,'Era De Uranio','00:04:17'),(85,8,'Cola De Mono','00:03:17'),(86,8,'Viaje y Epílogo','00:03:58'),(87,9,'Camafeo','00:03:51'),(88,9,'Entonces Es Como Dar Amor','00:05:13'),(89,9,'Amarilla Flor','00:03:06'),(90,9,'Este Es El Hombre De Hielo','00:04:02'),(91,9,'¿No Ves Que Ya No Somos Chiquitos?','00:02:13'),(92,9,'Ludmila','00:03:49'),(93,9,'Enero Del Ultimo Día','00:03:38'),(94,9,'Mula Alma','00:03:42'),(95,9,'Díganle ','00:06:36'),(96,10,'Moviola ','00:03:30'),(97,10,'La Herida De París','00:04:14'),(98,10,'El Hombre Dirigente','00:04:29'),(99,10,'Sexo','00:05:45'),(100,10,'Siguiendo Los Pasos Del Maestro','00:02:45'),(101,10,'Contra Todos Los Males De Este Mundo','00:03:04'),(102,10,'Un Viento Celeste','00:06:46'),(103,10,'No Te Busques Ya En El Umbral','00:02:29'),(104,10,'Influjo Estelar','00:03:18'),(105,10,'Nunca Me Oíste En Tiempo','00:04:46'),(106,11,'Jugo de Lucuma ','00:04:26'),(107,11,'El Diluvio y la Pasajera','00:08:42'),(108,11,'Suspensión','00:05:38'),(109,11,'Tema de Elmo Lesto','00:02:23'),(110,11,'Azafata del Tren Fantasma','00:08:16'),(111,11,'Irregular','00:07:35'),(112,12,'Encadenado al Ánima','00:15:33'),(113,12,'Durazno Sangrando','00:03:40'),(114,12,'Pleamar de Águilas','00:04:21'),(115,12,'En una Lejana Playa del Animus','00:09:55'),(116,12,'Dios de Adolescencia','00:02:46'),(117,13,'El Anillo del Capitán Beto','00:05:07'),(118,13,'Los Libros de la Buena Memoria','00:05:09'),(119,13,'Alarma Entre los Ángeles','00:06:32'),(120,13,'Que Ves el Cielo','00:02:05'),(121,13,'Ruido de Magia','00:04:36'),(122,13,'Doscientos Años','00:04:09'),(123,13,'Perdonado','00:07:05'),(124,13,'Las Golondrinas de Plaza de Mayo','00:03:23'),(125,14,'Estás Acá','00:03:20'),(126,14,'Piluso y Coquito','00:04:26'),(127,14,'Come el Viento voy a Ver','00:06:13'),(128,14,'Me Gusta Ese Tajo','00:04:38'),(129,14,'San Cristóforo','00:05:39'),(130,14,'El Rebaño del Pastor','00:06:57'),(131,14,'Bosnia','00:07:00'),(132,14,'Ana no duerme ','00:05:23'),(133,14,'Sucia Esrella','00:05:18'),(134,14,'Rutas Argentinas','00:04:24'),(135,14,'Viento del Lugar','00:07:56'),(136,14,'Tu Corazón por Mí','00:03:58'),(137,15,'Ven Vení','00:05:07'),(138,15,'Ave Seca','00:04:42'),(139,15,'Donde No Se Lee','00:04:12'),(140,15,'Extiéndete Una Vez Más','00:06:35'),(141,15,'No Me Alcanza','00:04:27'),(142,15,'Ekathé I','00:01:49'),(143,15,'Nómbrala','00:05:33'),(144,15,'Bahía Final','00:05:52'),(145,15,'Perdido En Ti','00:06:35'),(146,15,'Bagatelle','00:05:11'),(147,15,'Ekathé II','00:02:03'),(148,15,'La Flor','00:04:42'),(149,15,'Guíame','00:05:05'),(150,15,'Vera','00:04:09'),(151,16,'Cheques','00:04:04'),(152,16,'Paraíso','00:05:21'),(153,16,'Los Duendes','00:04:47'),(154,16,'Sub Rebaño','00:01:01'),(155,16,'Bosnia','00:06:17'),(156,16,'Luz Sin Freno','00:05:39'),(157,16,'Cuenta en el Sol','00:04:43'),(158,16,'Diana','00:02:55'),(159,16,'Oh! Magnolia','00:03:17'),(160,16,'Luna de Abril','00:03:28'),(161,16,'Se Convirtió en la Noche','00:05:00'),(162,16,'Tony','00:03:12'),(163,16,'Así Nunca Encontrarás el Mar','00:05:30'),(164,16,'Cuentas de un Collar','00:02:21'),(165,16,'Mi Sueño de Hoy','00:04:17'),(166,16,'Zonda','00:00:27'),(167,16,'La Orilla Infinita','00:04:25'),(168,16,'Nasty People','00:03:38'),(169,16,'Holanda','00:03:49'),(170,16,'La Espera','00:04:44'),(171,16,'Espejo en una Sombra','00:05:26'),(172,16,'Jardín de Gente','00:02:36'),(173,16,'Las Olas','00:04:52'),(174,16,'Jazmín','00:04:34'),(175,16,'Wasabi Flash','00:03:58'),(176,16,'La Luz Te fue','00:07:10'),(177,16,'El Rebaño del Pastor','00:03:59'),(178,16,'Puyen De Abril','00:02:29'),(179,16,'2 de Enero','00:03:37'),(180,16,'Cuenco de Sal','00:00:50'),(181,16,'El Sol y la Afeitadora Eléctrica','00:03:56'),(182,16,'Collar ','00:02:26'),(183,16,'Duende','00:00:52'),(184,17,'Castillo de Piedra','00:03:16'),(185,17,'Ni Cuenta Te Das ','00:03:36'),(186,17,'Tema de Pedro','00:02:11'),(187,17,'Dame, Dame Pan','00:03:26'),(188,17,'Estrella','00:03:21'),(189,17,'La Búsqueda de la Estrella','00:02:22'),(190,17,'Vamos al Bosque','00:04:13'),(191,17,'Era de Tontos','00:05:47'),(192,17,'Alteración de Tiempo','00:02:11'),(193,17,'Descalza Camina','00:03:35'),(194,17,'Lulú Toma el Taxi','00:00:37'),(195,18,'Viento del Azur','00:04:49'),(196,18,'Telgopor Viejas  ','00:02:51'),(197,18,'Mascarillas','00:05:11'),(198,18,'A Dieciocho Minutos del Sol','00:05:32'),(199,18,'Cancion para los Días de la Vida','00:05:48'),(200,18,'Toda la Vida Tiene Música Hoy','00:04:42'),(201,18,'¿Dónde Esta el Topacio?','00:05:12'),(202,18,'La Eternidad Imaginaria','00:04:42'),(203,19,'Kamikaze','00:03:12'),(204,19,'Ella También','00:04:05'),(205,19,'Águila de Trueno (Parte I)','00:02:59'),(206,19,'Águila de Trueno (Parte II)','00:01:22'),(207,19,'Almendra','00:02:39'),(208,19,'Barro Tal Vez','00:03:18'),(209,19,'¡Ah!...Basta de Pensar','00:02:42'),(210,19,'La Aventura de la Abeja Reina','00:04:51'),(211,19,'Y Tu Amor Es una Vieja Medalla','00:02:43'),(212,19,'Quedándote o Yendote','00:03:28'),(213,19,'Casas Marcadas','00:05:53'),(214,20,'Paquidermo De Luxe','00:01:32'),(215,20,'Yo Quiero Ver Un Tren','00:04:03'),(216,20,'La Rifa Del Viento','00:02:33'),(217,20,'Herido Por Vivir','00:03:53'),(218,20,'Símil Bahion','00:02:53'),(219,20,'Cuando Vuelva Del Cielo','00:04:29'),(220,20,'Lo Siento En Mi Corazón','00:03:11'),(221,20,'Será Que La Canción Llehó Hasta El Sol','00:03:21'),(222,20,'Días De Silencio','00:03:08'),(223,20,'El Bálsamo','00:03:30'),(224,20,'Para Valen','00:01:40'),(225,20,'No Te Alejes Tanto de Mí','00:03:29'),(226,20,'Tando Cromado','00:02:27'),(227,21,'Alfil, Ella No Cambia Nada','00:04:11'),(228,21,'Una Sola Cosa','00:03:29'),(229,21,'Ropa Violeta','00:04:49'),(230,21,'Como Un Perro','00:04:50'),(231,21,'Probe Amor, Llámenlo','00:04:34'),(232,21,'No Seas Fanática','00:03:38'),(233,21,'La Mirada de Freud','00:03:01'),(234,21,'Patas De Rana','00:04:17'),(235,21,'Ventiscas De Marzo','00:03:18'),(236,21,'La Pelicana yEl Androide','00:04:02'),(237,21,'Rezo por Vos','00:03:22'),(238,22,'Folly Berghet','00:03:40'),(239,22,'Instant-Taneas','00:05:38'),(240,22,'Tengo Un Mono','00:05:16'),(241,22,'Retrato De Bambis','00:01:35'),(242,22,'Asilo En Tu Corazón','00:05:36'),(243,22,'Dejaste Ver Tu Corazón','00:05:17'),(244,22,'Solo La la la','00:01:24'),(245,22,'Gricel','00:04:32'),(246,22,'Serpiente De Gas','00:04:30'),(247,22,'Todos Estos Años De Gente','00:05:19'),(248,22,'Carta Para Mil Desde El 2086','00:05:08'),(249,22,'Jabalies-Conejines','00:02:32'),(250,22,'Parte Del Aire','00:05:06'),(251,22,'Cuando El Arte Ataque','00:02:24'),(252,22,'Pequeño Ángel','00:02:37'),(253,22,'Arrecife','00:04:53'),(254,22,'Estoy Atiborrado Con Tu Amor','00:04:50'),(255,22,'Un Niño Nace ','00:04:12'),(256,22,'Woyscek','00:03:41'),(257,22,'Hay Otra Canción','00:05:12'),(258,23,'Lejísimo','00:04:40'),(259,23,'Siempre en la Pared','00:03:24'),(260,23,'Al Ver Verás','00:03:20'),(261,23,'La Luz de la Manzana','00:06:18'),(262,23,'El Marcapiel','00:04:26'),(263,23,'El Mono Tremendo','00:02:32'),(264,23,'Organismo en el Aire','00:06:47'),(265,23,'Tres Llaves','00:03:56'),(266,23,'La Bengala Perdida','00:06:08'),(267,23,'Alcanfor','00:02:54'),(268,23,'Parlante','00:03:17'),(269,24,'Oboi','00:05:11'),(270,24,'Fina Ropa Blanca ','00:05:17'),(271,24,'Wendolin','00:04:21'),(272,24,'La Melodía Es Tu Alma','00:06:26'),(273,24,'Divino Presagio','00:04:02'),(274,24,'Un Sitio Es un Sitio','00:04:40'),(275,24,'Es la Medianoche','00:03:17'),(276,24,'Un Gran Soblez','00:05:28'),(277,24,'Cielo Invertido','00:06:13'),(278,25,'Seguir Viviendo Sin Tu Amor','00:02:41'),(279,25,'Lgo De Forma Mia','00:03:16'),(280,25,'Ganges','00:04:03'),(281,25,'La Montaña','00:03:31'),(282,25,'Panacea','00:02:01'),(283,25,'Domo Tu','00:03:30'),(284,25,'Cada Luz','00:03:35'),(285,25,'Bomba Azul','00:02:40'),(286,25,'Cielo De Ti','00:02:43'),(287,25,'Cruzaras','00:05:33'),(288,25,'Hombre De Lata','00:04:09'),(289,25,'Jilguero','00:02:17'),(290,25,'Ella Bailo','00:04:24'),(291,25,'Pies De Atril','00:04:12'),(292,25,'Dime La Forma','00:04:37'),(293,26,'El Enemigo','00:05:16'),(294,26,'El Mar Es De Llant','00:03:32'),(295,26,'Ni Hables','00:03:39'),(296,26,'Tonta Luz','00:02:02'),(297,26,'Adentro Tuyo','00:05:43'),(298,26,'Llama y Verás','00:03:29'),(299,26,'Abrázame Inocentemente-Del Lemur A la Boa','00:06:42'),(300,26,'Esta Es La Sombra','00:03:16'),(301,26,'Mundo Disperso','00:04:42'),(302,26,'Cine De Atrás','00:03:55'),(303,26,'La Verdad De Las Grullas','00:05:43'),(304,26,'Bahía Final','00:02:44'),(305,27,'Sin Abandono ','00:05:15'),(306,27,'Cisne','00:05:47'),(307,27,'Halo Lunar','00:05:34'),(308,27,'Yo Miro Tu Amor','00:03:25'),(309,27,'A Su Amor, Allí','00:04:41'),(310,27,'Agua De la Miseria','00:05:53'),(311,27,'Dos Murciélagos','00:04:02'),(312,27,'Vidami','00:03:09'),(313,27,'Ciénaga Dorada','00:04:25'),(314,27,'Néctar','00:05:24'),(315,27,'El Lenguaje Del Cielo','00:04:32'),(316,27,'Tu Cuerpo Mediodía','00:02:05'),(317,28,'Sinfín','00:06:06'),(318,28,'Bolsodios','00:06:50'),(319,28,'Canción De Noche','00:05:37'),(320,28,'Proserpina','00:03:21'),(321,28,'No Habrá Un Destino Incierto','00:05:01'),(322,28,'Cabecita Calesita','00:05:21'),(323,28,'Dale Luz Al Instante','00:05:06'),(324,28,'La Flor De Santo Tomé','00:04:41'),(325,28,'Atado A Tu Frontera','00:05:58'),(326,28,'Preconición','00:03:45'),(327,28,'¡Qué Hermosa Estás!','00:05:00'),(328,28,'Espuma Mística','00:06:07'),(329,29,'La Mendiga ','00:05:48'),(330,29,'Vacío Sideral','00:04:21'),(331,29,'No Quiere Decir','00:03:59'),(332,29,'Tu Vuelo Al Fin','00:05:10'),(333,29,'Hiedra Al Sol','00:03:17'),(334,29,'Canción De Amor Para Olga','00:07:39'),(335,29,'Un Mañana ','00:02:45'),(336,29,'Mi Elemento','00:05:25'),(337,29,'Hombre De Luz','00:02:48'),(338,29,'Preso Ventanilla','00:07:05'),(339,29,'Despierta En La Brisa','00:05:27'),(340,29,'Para Soñar','00:05:03');
/*!40000 ALTER TABLE `cancion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `cancion_banda`
--

DROP TABLE IF EXISTS `cancion_banda`;
/*!50001 DROP VIEW IF EXISTS `cancion_banda`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cancion_banda` AS SELECT 
 1 AS `cancion`,
 1 AS `banda`,
 1 AS `duracion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `canciones_alternativo`
--

DROP TABLE IF EXISTS `canciones_alternativo`;
/*!50001 DROP VIEW IF EXISTS `canciones_alternativo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `canciones_alternativo` AS SELECT 
 1 AS `Cancion`,
 1 AS `Genero`,
 1 AS `Album`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `canciones_luis`
--

DROP TABLE IF EXISTS `canciones_luis`;
/*!50001 DROP VIEW IF EXISTS `canciones_luis`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `canciones_luis` AS SELECT 
 1 AS `cancion_id`,
 1 AS `nombre`,
 1 AS `duracion`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `genero_id` int NOT NULL AUTO_INCREMENT,
  `genero` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`genero_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Folk rock'),(2,'Pop'),(3,'Rock'),(4,'Rock progresivo'),(5,'Jazz rock'),(6,'rock psicodélico '),(7,'alternativo'),(8,'rock sinfonico'),(9,'Blues'),(10,'Musica acustica'),(11,'Art Rock'),(12,'Jazz'),(13,'Jazz fusion'),(14,'rock espacial'),(15,'Hard rock'),(16,'funk rock'),(17,'Blues rock'),(18,'tango rock'),(19,'soft rock');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero_album`
--

DROP TABLE IF EXISTS `genero_album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero_album` (
  `genero_cancion_id` int NOT NULL AUTO_INCREMENT,
  `album_id` int DEFAULT NULL,
  `genero_id` int DEFAULT NULL,
  PRIMARY KEY (`genero_cancion_id`),
  KEY `album_id` (`album_id`),
  KEY `genero_id` (`genero_id`),
  CONSTRAINT `genero_album_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`),
  CONSTRAINT `genero_album_ibfk_2` FOREIGN KEY (`genero_id`) REFERENCES `genero` (`genero_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero_album`
--

LOCK TABLES `genero_album` WRITE;
/*!40000 ALTER TABLE `genero_album` DISABLE KEYS */;
INSERT INTO `genero_album` VALUES (1,1,3),(2,2,2),(3,2,3),(4,3,3),(5,4,2),(6,4,3),(7,5,2),(8,5,3),(9,5,7),(10,6,2),(11,6,3),(12,6,7),(13,7,2),(14,7,3),(15,7,12),(16,8,2),(17,8,3),(18,9,2),(19,9,3),(20,10,2),(21,11,4),(22,11,13),(23,12,2),(24,12,3),(25,13,2),(26,13,3),(27,14,15),(28,14,16),(29,15,11),(30,16,3),(31,16,17),(32,16,5),(33,16,16),(34,17,2),(35,17,3),(36,18,2),(37,19,1),(38,20,4),(39,20,5),(40,20,3),(41,20,18),(42,21,3),(43,22,3),(44,23,5),(45,23,19),(46,24,3),(47,25,7),(48,25,2),(49,25,3),(50,26,2),(51,26,3),(52,27,2),(53,27,3),(54,28,2),(55,28,3),(56,29,2),(57,29,3),(58,29,7);
/*!40000 ALTER TABLE `genero_album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero_cancion`
--

DROP TABLE IF EXISTS `genero_cancion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero_cancion` (
  `genero_cancion_id` int NOT NULL AUTO_INCREMENT,
  `cancion_id` int DEFAULT NULL,
  `genero_id` int DEFAULT NULL,
  PRIMARY KEY (`genero_cancion_id`),
  KEY `cancion_id` (`cancion_id`),
  KEY `genero_id` (`genero_id`),
  CONSTRAINT `genero_cancion_ibfk_1` FOREIGN KEY (`cancion_id`) REFERENCES `cancion` (`cancion_id`),
  CONSTRAINT `genero_cancion_ibfk_2` FOREIGN KEY (`genero_id`) REFERENCES `genero` (`genero_id`)
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero_cancion`
--

LOCK TABLES `genero_cancion` WRITE;
/*!40000 ALTER TABLE `genero_cancion` DISABLE KEYS */;
INSERT INTO `genero_cancion` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,2),(5,2,3),(6,3,2),(7,3,3),(8,4,3),(9,5,2),(10,5,3),(11,6,3),(12,7,4),(13,8,5),(14,9,2),(15,9,3),(16,10,2),(17,10,3),(18,11,3),(19,12,2),(20,12,3),(21,13,2),(22,13,3),(23,14,2),(24,14,3),(25,15,2),(26,15,3),(27,16,2),(28,16,3),(29,17,3),(30,18,6),(31,19,3),(32,20,2),(33,20,3),(34,21,2),(35,21,3),(36,22,2),(37,22,3),(38,23,3),(39,24,3),(40,25,2),(41,25,3),(42,26,2),(43,26,3),(44,27,2),(45,27,3),(46,28,2),(47,28,3),(48,29,3),(49,30,2),(50,30,3),(51,31,3),(52,32,6),(53,33,3),(54,34,3),(55,35,3),(56,36,3),(57,37,3),(58,38,2),(59,38,3),(60,39,2),(61,39,3),(62,40,2),(63,40,3),(64,41,2),(65,41,3),(66,42,4),(67,43,7),(68,43,2),(69,43,3),(70,44,4),(71,45,8),(72,46,2),(73,46,3),(74,46,7),(75,47,3),(76,48,2),(77,48,3),(78,48,7),(79,49,2),(80,49,3),(81,49,7),(82,50,3),(83,51,3),(84,52,3),(85,53,2),(86,53,3),(87,53,7),(88,54,2),(89,54,3),(90,54,7),(91,55,2),(92,55,3),(93,55,7),(94,56,2),(95,56,3),(96,56,7),(97,57,2),(98,57,3),(99,57,7),(100,58,2),(101,58,3),(102,58,7),(103,59,2),(104,59,3),(105,59,7),(106,60,2),(107,60,3),(108,60,7),(109,61,2),(110,61,3),(111,61,7),(112,61,9),(113,62,2),(114,62,3),(115,62,7),(116,62,9),(117,63,10),(118,64,3),(119,65,3),(120,66,3),(121,66,4),(122,66,6),(123,66,11),(124,67,3),(125,68,3),(126,69,3),(127,69,4),(128,70,2),(129,70,3),(130,70,12),(131,71,2),(132,71,3),(133,71,12),(134,72,2),(135,72,3),(136,72,12),(137,73,2),(138,73,3),(139,73,12),(140,74,2),(141,74,3),(142,74,12),(143,75,2),(144,75,3),(145,75,12),(146,76,2),(147,76,3),(148,76,12),(149,77,2),(150,77,3),(151,78,2),(152,78,3),(153,79,2),(154,79,3),(155,80,2),(156,80,3),(157,81,3),(158,82,2),(159,82,3),(160,83,2),(161,83,3),(162,84,2),(163,84,3),(164,85,2),(165,85,3),(166,86,2),(167,86,3),(168,87,2),(169,87,3),(170,88,2),(171,88,3),(172,89,2),(173,89,3),(174,90,2),(175,91,2),(176,91,3),(177,92,2),(178,92,3),(179,93,2),(180,93,3),(181,94,2),(182,94,3),(183,95,2),(184,95,3),(185,96,3),(186,97,2),(187,97,3),(188,98,2),(189,99,2),(190,100,2),(191,101,2),(192,102,2),(193,103,2),(194,103,3),(195,104,2),(196,105,2),(197,106,4),(198,107,4),(199,108,4),(200,109,3),(201,110,4),(202,111,4),(203,112,3),(204,113,2),(205,113,3),(206,114,2),(207,114,3),(208,115,2),(209,115,3),(210,116,2),(211,116,3),(212,117,4),(213,117,13),(214,117,14),(215,118,4),(216,119,2),(217,119,3),(218,120,2),(219,121,3),(220,122,2),(221,122,3),(222,123,2),(223,123,3),(224,124,5);
/*!40000 ALTER TABLE `genero_cancion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `guitarristas`
--

DROP TABLE IF EXISTS `guitarristas`;
/*!50001 DROP VIEW IF EXISTS `guitarristas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `guitarristas` AS SELECT 
 1 AS `integrante_id`,
 1 AS `nombre`,
 1 AS `banda`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `integrante`
--

DROP TABLE IF EXISTS `integrante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `integrante` (
  `integrante_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(35) NOT NULL,
  `fecha_nac` date NOT NULL,
  `vive` tinyint(1) NOT NULL,
  PRIMARY KEY (`integrante_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `integrante`
--

LOCK TABLES `integrante` WRITE;
/*!40000 ALTER TABLE `integrante` DISABLE KEYS */;
INSERT INTO `integrante` VALUES (1,'Luis Alberto Spinetta','1950-01-23',0),(2,'Edelmiro Molinari','1947-07-08',1),(3,'Emilio del Guercio','1950-04-12',1),(4,'Rodolfo García','1946-02-23',0),(5,'Black Amaya','1950-08-20',1),(6,'Carlos Cutaia','1941-11-04',1),(7,'David Oscar Lebón','1952-10-05',1),(8,'Osvaldo Frascino','1950-11-05',1),(9,'Pedro Aznar','1959-07-23',1),(10,'Hector Lorenzo','1950-09-24',1),(11,'Diego Rapoport','1948-11-22',0),(12,'Beto Satragni','1955-08-27',0),(13,'Juan del Barrio','1957-06-14',1),(14,'Frank Ojstersek','1955-08-01',1),(15,'Leo Sujatovich','1960-03-24',1),(16,'César Franov','1965-07-30',1),(17,'Juan Carlos Fontana','1959-11-08',1),(18,'Lito Epumer','1954-04-18',1),(19,'Lito Vitale','1961-12-01',1),(20,'Paul Dourge','1961-01-15',1),(21,'Carlos Alberto Rufino','1947-11-12',1),(22,'Tomas Gubtisch','1957-06-27',1),(23,'Marcelo Torres','1960-05-12',1),(24,'Daniel Wirzt ','1975-01-27',0);
/*!40000 ALTER TABLE `integrante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `producidoxspinetta`
--

DROP TABLE IF EXISTS `producidoxspinetta`;
/*!50001 DROP VIEW IF EXISTS `producidoxspinetta`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `producidoxspinetta` AS SELECT 
 1 AS `count(album_productor_id)`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `productor`
--

DROP TABLE IF EXISTS `productor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productor` (
  `productor_id` int NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `nacimiento` date DEFAULT NULL,
  PRIMARY KEY (`productor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productor`
--

LOCK TABLES `productor` WRITE;
/*!40000 ALTER TABLE `productor` DISABLE KEYS */;
INSERT INTO `productor` VALUES (1,'Luis Alberto Spinetta ','1950-01-23'),(2,'Alberto Ohanián','1952-03-20'),(3,'Jorge Álvarez','1932-06-18'),(4,'Fito Paez','1963-03-13'),(5,'Gustavo Gauvry','1965-03-27');
/*!40000 ALTER TABLE `productor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `integrante_rol_id` int NOT NULL AUTO_INCREMENT,
  `integrante_id` int NOT NULL,
  `banda_id` int NOT NULL,
  `rol` varchar(20) NOT NULL,
  PRIMARY KEY (`integrante_rol_id`),
  KEY `integrante_id` (`integrante_id`),
  KEY `banda_id` (`banda_id`),
  CONSTRAINT `rol_ibfk_1` FOREIGN KEY (`integrante_id`) REFERENCES `integrante` (`integrante_id`),
  CONSTRAINT `rol_ibfk_2` FOREIGN KEY (`banda_id`) REFERENCES `banda` (`banda_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,1,1,'guitarra'),(2,1,1,'voz'),(3,2,1,'guitarra'),(4,2,1,'coros'),(5,3,1,'bajo'),(6,3,1,'coros'),(7,4,1,'bateria'),(8,1,2,'Voz '),(9,1,2,'guitarra'),(10,5,2,'bateria'),(11,6,2,'teclado'),(12,7,2,'coros'),(13,7,2,'bajo'),(14,7,2,'guitarra'),(15,8,2,'guitarra'),(16,9,3,'bajo'),(17,10,3,'bateria'),(18,11,3,'teclado'),(19,12,3,'bajo'),(20,13,3,'teclado'),(21,14,3,'bajo'),(22,15,3,'teclado'),(23,16,3,'bajo'),(24,17,3,'teclado'),(25,18,3,'guitarra'),(26,19,3,'teclado'),(27,20,3,'bajo'),(28,1,3,'voz'),(29,1,3,'guitarra'),(30,1,4,'Voz'),(31,1,4,'guitarra'),(32,10,4,'bateria'),(33,21,4,'bajo'),(34,22,4,'guitarra'),(35,1,5,'voz'),(36,1,5,'guitarra'),(37,23,5,'bajo'),(38,24,5,'bateria');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'spinetta'
--

--
-- Dumping routines for database 'spinetta'
--
/*!50003 DROP FUNCTION IF EXISTS `CancionesxBanda` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CancionesxBanda`(IDbanda int) RETURNS int
    DETERMINISTIC
begin
	declare cant int;
    -- Pido la cantidad de canciones que hizo una banda y lo meto en la variable cant
    select count(cancion_id) into cant 
    -- Ingreso 3 tablas (cancion, album y banda)
    from cancion left join album On cancion.album_id = album.album_id left join banda on album.banda_id = banda.banda_id 
    -- Filtro por el id de la banda que quiero
    where banda.banda_id = IDbanda;
    
	return cant;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `enalbum` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `enalbum`(nombre_cancion char(45)) RETURNS char(45) CHARSET utf8mb4
    READS SQL DATA
begin
	declare nombre_album char(45);
    -- A través del nombre de una cancion, logro dar el nombre del album a la que pertenece  
    select album.nombre into nombre_album 
    -- Uno las dos tablas (cancion y album) 
    from cancion left join album on cancion.album_id = album.album_id 
    -- Filtro por el nombre de la cancion para poder sacar el nombre del album
    where cancion.nombre like nombre_cancion;
    return nombre_album;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Delete_integrante` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Delete_integrante`(IN IDintegrante int)
begin
	-- Se concatena la parte de la sentencia delete from y el número de integrante
	set @sentencia_delete = concat('delete from integrante where integrante_id = ', IDintegrante);
    
    -- Preparación y ejecución de la sentencia delete
    prepare ejecucion from @sentencia_delete;
    execute ejecucion;
    deallocate prepare ejecucion;
 end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Ordenar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Ordenar`(IN ordenar_por varchar(15), IN asendental varchar(15))
begin
	-- Preparacion de sentencia select, a través de concatenacion 
	set @orden = concat('order by ', ordenar_por, ' ', asendental);
    set @sentencia_select = concat('select * from cancion ', @orden);

	-- Execucion de la sentencia select
    prepare ejecucion from @sentencia_select;
    execute ejecucion;
    deallocate prepare ejecucion;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `cancion_banda`
--

/*!50001 DROP VIEW IF EXISTS `cancion_banda`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cancion_banda` AS select `cancion`.`nombre` AS `cancion`,`banda`.`nombre` AS `banda`,`cancion`.`duracion` AS `duracion` from ((`cancion` left join `album` on((`cancion`.`album_id` = `album`.`album_id`))) left join `banda` on((`album`.`banda_id` = `banda`.`banda_id`))) where (`banda`.`nombre` is not null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `canciones_alternativo`
--

/*!50001 DROP VIEW IF EXISTS `canciones_alternativo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `canciones_alternativo` AS select `cancion`.`nombre` AS `Cancion`,`genero`.`genero` AS `Genero`,`album`.`nombre` AS `Album` from (((`genero` left join `genero_cancion` on((`genero`.`genero_id` = `genero_cancion`.`genero_id`))) left join `cancion` on((`genero_cancion`.`cancion_id` = `cancion`.`cancion_id`))) left join `album` on((`cancion`.`album_id` = `album`.`album_id`))) where (`genero`.`genero_id` = (select `genero`.`genero_id` from `genero` where (`genero`.`genero` like '%alter%'))) order by `album`.`nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `canciones_luis`
--

/*!50001 DROP VIEW IF EXISTS `canciones_luis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `canciones_luis` AS select `cancion`.`cancion_id` AS `cancion_id`,`cancion`.`nombre` AS `nombre`,`cancion`.`duracion` AS `duracion` from `cancion` where `cancion`.`album_id` in (select `album`.`album_id` from `album` where (`album`.`banda_id` = 6)) order by `cancion`.`duracion` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `guitarristas`
--

/*!50001 DROP VIEW IF EXISTS `guitarristas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `guitarristas` AS select `integrante`.`integrante_id` AS `integrante_id`,`integrante`.`nombre` AS `nombre`,`banda`.`nombre` AS `banda` from ((`integrante` left join `rol` on((`integrante`.`integrante_id` = `rol`.`integrante_id`))) left join `banda` on((`rol`.`banda_id` = `banda`.`banda_id`))) where ((`integrante`.`integrante_id` <> (select `integrante`.`integrante_id` from `integrante` where (`integrante`.`nombre` like '%Spinetta%'))) and (`rol`.`rol` like 'guitarra')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `producidoxspinetta`
--

/*!50001 DROP VIEW IF EXISTS `producidoxspinetta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `producidoxspinetta` AS select count(`album_productor`.`album_productor_id`) AS `count(album_productor_id)` from `album_productor` where (`album_productor`.`productor_id` = (select `productor`.`productor_id` from `productor` where (`productor`.`nombre` like '%Spinetta%'))) */;
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

-- Dump completed on 2024-04-21 12:09:40
