-- MySQL dump 10.13  Distrib 5.5.54, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	5.5.54-0ubuntu0.14.04.1

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
-- Current Database: `library`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `library` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `library`;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `content` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (13,'ggdfg','gdfgfd','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2017-02-10 11:27:42','2017-02-10 11:27:42'),(14,'rtrreetht','ttrhttrryttrhr','htrtLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2017-02-10 11:27:52','2017-02-10 11:27:52'),(15,'ggdfgg','gfdfgdff','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2017-02-10 11:28:12','2017-02-10 11:28:12'),(17,'salut','c moi','dsfsdffdfgd','2017-02-10 14:27:59','2017-02-10 14:27:59');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `genre` varchar(45) NOT NULL,
  `description` mediumtext NOT NULL,
  `note` int(11) NOT NULL,
  `img` varchar(45) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,'Doom','FPS','Doom est une série de jeux vidéo de tir à la première personne développé par id Software. Le premier titre de la série — Doom — est publié en shareware sur PC en décembre 1993. Le jeu est ensuite porté sur de nombreux autres supports et a bénéficié de deux suites, Doom II et Doom 3, publiées respectivement en 1994 et 2004. Un quatrième opus, baptisé Doom, est sorti en 2016.',7,'/img/cover/Doom.jpg','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'Warcraft 3','STR','Warcraft III: Reign of Chaos est un jeu vidéo de stratégie en temps réel (STR) développé par Blizzard Entertainment. Il s\'agit du troisième volet de la série Warcraft et du quatrième jeu de stratégie en temps réel développé par le studio après Warcraft: Orcs and Humans, Warcraft II: Tides of Darkness et StarCraft ayant connu de solides succès critiques et commerciaux.',8,'/img/cover/w3.jpg','0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'Half-Life','FPS','Le jeu débute quelques minutes avant l’incident de Black Mesa. Le joueur incarne Gordon Freeman, participant à l’expérience depuis l’intérieur même de la chambre de test où elle a lieu, et est donc aux premières loges pour assister à la catastrophe qui se produira. Il se retrouve ensuite dans ce qui reste de la base, infestée de monstres. Cet opus reste comme un symbole de l’apparition des plus grands FPS, avec Perfect Dark. Une version remasterisée utilisant le moteur Source est sortie en 2004 sous le nom d\'Half-Life: Source.',9,'/img/cover/Half-Life.jpg','0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'Battlefield','FPS','Battlefield 4 apporte plusieurs petits changements par rapport à son prédécesseur. L\'ATH du jeu reste le même mais son design est nouveau. Le coin inférieur gauche dispose d\'une mini-carte où les objectifs, alliés et ennemis y apparaissent ; muni d\'une boussole pour la navigation plus simplifiée. Les tickets et points de la partie figurent à cet emplacement lors du multijoueur. Le coin inférieur droit comporte un compteur de santé en pourcentage, de munitions et de grenades. Au centre de l\'écran est affiché le réticule qui montre la dispersion des balles en tir au jugé, lorsque le personnage se déplace le réticule s’élargit.',6,'/img/cover/bf.jpeg','0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'Far Cry','FPS','Far Cry est un jeu vidéo de tir à la première personne, développé par le studio allemand Crytek et édité par Ubisoft Montréal sur PC en 2004. Doté d\'un moteur graphique novateur, Far Cry fut l\'un des premiers rares jeux de tir à la première personne à se dérouler sous le soleil d\'une île paradisiaque. Le jeu a connu un franc succès auprès des joueurs et a été numéro un des ventes en avril et mai 2004 en France, au Royaume-Uni et aux États-Unis1. 730 000 exemplaires se sont vendus en moins de quatre mois après sa sortie1.',8,'/img/cover/farcry.jpg','0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'gta5','FREE','Grand Theft Auto V (plus communément abrégé GTA V) est un jeu vidéo d\'action-aventure, développé par Rockstar North et édité par Rockstar Games. Il s\'agit du premier titre majeur de la série des jeux vidéo Grand Theft Auto depuis la commercialisation de Grand Theft Auto IV en 2008, et d\'une suite de l\'univers fictif intronisé dans ce jeu. Quinzième jeu de la série en comptant les contenus additionnels et les épisodes portables, GTA V est le cinquième volet officiel de la saga ainsi que le second opus de la franchise à cheval sur deux générations de consoles (GTA 2 est sorti sur des consoles de cinquième et sixième génération). ',10,'/img/cover/gta5.jpg','0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'Tombe Raider','STR','Tomb Raider est une franchise constituée de jeux vidéo d\'action-aventure, de comics, romans et de films se centrant sur les aventures du personnage de fiction Lara Croft, archéologue britannique.\n\nDepuis le Tomb Raider original en 1996, la série s\'est développée en une franchise médiatique lucrative, et Lara Croft est devenue une icône dans l\'industrie du jeu vidéo. Le Guinness des records a reconnu Lara Croft comme étant « l\'héroïne humaine de jeux vidéo la plus couronnée de succès », en 2006[réf. nécessaire].\n\nSix jeux de la série ont été développés par Core Design, et les cinq derniers par Crystal Dynamics.',7,'/img/cover/tr.jpg','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `password` tinytext,
  `updated_at` varchar(45) DEFAULT NULL,
  `created_at` varchar(45) DEFAULT NULL,
  `remember_token` tinytext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@admin.com','admin','$2y$10$hvyIn7PDNmoSI9KtmYdEY.TKKroVNF9Dtcivl86qeekeoWLfe7FDy','2017-02-09 10:43:59','2017-02-09 10:43:59','pyc4QSgiGIq2MCUqTgcaICWYPgJ3Lp3aht9s2sdZ4FLixxyNx69ylKs5hfp3');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-10 15:19:38
