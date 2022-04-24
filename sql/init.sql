-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: ldap
-- ------------------------------------------------------
-- Server version       8.0.28

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
-- Table structure for table `accounts_domainuthorizedlist`
--

DROP TABLE IF EXISTS `accounts_domainuthorizedlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_domainuthorizedlist` (
                                                `id` int NOT NULL AUTO_INCREMENT,
                                                `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
                                                `mark` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
                                                `domain_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
                                                `logout_api_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
                                                PRIMARY KEY (`id`),
                                                UNIQUE KEY `mark` (`mark`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_domainuthorizedlist`
--

LOCK TABLES `accounts_domainuthorizedlist` WRITE;
/*!40000 ALTER TABLE `accounts_domainuthorizedlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_domainuthorizedlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_externalpermission`
--

DROP TABLE IF EXISTS `accounts_externalpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_externalpermission` (
                                               `id` int NOT NULL AUTO_INCREMENT,
                                               `title` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
                                               `mark` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
                                               PRIMARY KEY (`id`),
                                               UNIQUE KEY `title` (`title`),
                                               UNIQUE KEY `mark` (`mark`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_externalpermission`
--

LOCK TABLES `accounts_externalpermission` WRITE;
/*!40000 ALTER TABLE `accounts_externalpermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_externalpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_ldapserver`
--

DROP TABLE IF EXISTS `accounts_ldapserver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_ldapserver` (
                                       `id` int NOT NULL AUTO_INCREMENT,
                                       `host` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
                                       `port` int NOT NULL,
                                       `user` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
                                       `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
                                       `use_ssl` tinyint(1) NOT NULL,
                                       `ldap_server` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
                                       `desc` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                       `ldap_base_dn` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                       `ldap_user_dn` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                       `ldap_group_dn` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                       `ldap_user_object_class` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                       `ldap_group_object_class` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                       PRIMARY KEY (`id`),
                                       UNIQUE KEY `host` (`host`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_ldapserver`
--

LOCK TABLES `accounts_ldapserver` WRITE;
/*!40000 ALTER TABLE `accounts_ldapserver` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_ldapserver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_ldapuseremailverifyrecord`
--

DROP TABLE IF EXISTS `accounts_ldapuseremailverifyrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_ldapuseremailverifyrecord` (
                                                      `id` int NOT NULL AUTO_INCREMENT,
                                                      `dn` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                                      `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                                      `token` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                                      `ldap_server_id` int DEFAULT NULL,
                                                      `create_at` datetime(6) NOT NULL,
                                                      PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_ldapuseremailverifyrecord`
--

LOCK TABLES `accounts_ldapuseremailverifyrecord` WRITE;
/*!40000 ALTER TABLE `accounts_ldapuseremailverifyrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_ldapuseremailverifyrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_role`
--

DROP TABLE IF EXISTS `accounts_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_role` (
                                 `id` int NOT NULL AUTO_INCREMENT,
                                 `title` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
                                 `mark` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
                                 PRIMARY KEY (`id`),
                                 UNIQUE KEY `title` (`title`),
                                 UNIQUE KEY `mark` (`mark`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_role`
--

LOCK TABLES `accounts_role` WRITE;
/*!40000 ALTER TABLE `accounts_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_role_external_permission`
--

DROP TABLE IF EXISTS `accounts_role_external_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_role_external_permission` (
                                                     `id` int NOT NULL AUTO_INCREMENT,
                                                     `role_id` int NOT NULL,
                                                     `externalpermission_id` int NOT NULL,
                                                     PRIMARY KEY (`id`),
                                                     UNIQUE KEY `accounts_role_external_p_role_id_externalpermissi_02a3bb8a_uniq` (`role_id`,`externalpermission_id`),
                                                     KEY `accounts_role_extern_externalpermission_i_af58b560_fk_accounts_` (`externalpermission_id`),
                                                     CONSTRAINT `accounts_role_extern_externalpermission_i_af58b560_fk_accounts_` FOREIGN KEY (`externalpermission_id`) REFERENCES `accounts_externalpermission`
                                                         (`id`),
                                                     CONSTRAINT `accounts_role_extern_role_id_46e27361_fk_accounts_` FOREIGN KEY (`role_id`) REFERENCES `accounts_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_role_external_permission`
--

LOCK TABLES `accounts_role_external_permission` WRITE;
/*!40000 ALTER TABLE `accounts_role_external_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_role_external_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_user`
--

DROP TABLE IF EXISTS `accounts_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_user` (
                                 `id` int NOT NULL AUTO_INCREMENT,
                                 `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
                                 `last_login` datetime(6) DEFAULT NULL,
                                 `username` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
                                 `nickname` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                 `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                 `phone` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                 `source` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                 `is_lock` tinyint(1) NOT NULL,
                                 `is_active` tinyint(1) NOT NULL,
                                 `is_superuser` tinyint(1) NOT NULL,
                                 `is_staff` tinyint(1) NOT NULL,
                                 `unionid` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                 PRIMARY KEY (`id`),
                                 UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_user`
--

LOCK TABLES `accounts_user` WRITE;
/*!40000 ALTER TABLE `accounts_user` DISABLE KEYS */;
INSERT INTO `accounts_user` VALUES (1,'pbkdf2_sha256$216000$RT9QoyRkhtsi$3ngyFzZNl9f6CJTvWmBm6OnS+L8NbjAfVTR4MfaUKoY=','2022-04-24 17:46:55.917269','admin',NULL,'',NULL,'local',0,1,1,1,NULL);
/*!40000 ALTER TABLE `accounts_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_user_roles`
--

DROP TABLE IF EXISTS `accounts_user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_user_roles` (
                                       `id` int NOT NULL AUTO_INCREMENT,
                                       `user_id` int NOT NULL,
                                       `role_id` int NOT NULL,
                                       PRIMARY KEY (`id`),
                                       UNIQUE KEY `accounts_user_roles_user_id_role_id_d36f9c32_uniq` (`user_id`,`role_id`),
                                       KEY `accounts_user_roles_role_id_3be0e909_fk_accounts_role_id` (`role_id`),
                                       CONSTRAINT `accounts_user_roles_role_id_3be0e909_fk_accounts_role_id` FOREIGN KEY (`role_id`) REFERENCES `accounts_role` (`id`),
                                       CONSTRAINT `accounts_user_roles_user_id_5c537963_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_user_roles`
--

LOCK TABLES `accounts_user_roles` WRITE;
/*!40000 ALTER TABLE `accounts_user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_userlogininfo`
--

DROP TABLE IF EXISTS `accounts_userlogininfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_userlogininfo` (
                                          `id` int NOT NULL AUTO_INCREMENT,
                                          `login_time` datetime(6) NOT NULL,
                                          `login_ip` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
                                          `source` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
                                          `ldap_server` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                          `user_id` int NOT NULL,
                                          PRIMARY KEY (`id`),
                                          UNIQUE KEY `user_id` (`user_id`),
                                          CONSTRAINT `accounts_userlogininfo_user_id_27c21b9b_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_userlogininfo`
--

LOCK TABLES `accounts_userlogininfo` WRITE;
/*!40000 ALTER TABLE `accounts_userlogininfo` DISABLE KEYS */;
INSERT INTO `accounts_userlogininfo` VALUES (1,'2022-04-24 17:46:55.931637','124.127.8.221','local',NULL,1);
/*!40000 ALTER TABLE `accounts_userlogininfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_webauthorizationrecord`
--

DROP TABLE IF EXISTS `accounts_webauthorizationrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_webauthorizationrecord` (
                                                   `id` int NOT NULL AUTO_INCREMENT,
                                                   `status` int DEFAULT NULL,
                                                   `tag` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                                   `create_at` datetime(6) NOT NULL,
                                                   `domain_id` int DEFAULT NULL,
                                                   `user_id` int DEFAULT NULL,
                                                   PRIMARY KEY (`id`),
                                                   KEY `accounts_webauthoriz_domain_id_de1c8113_fk_accounts_` (`domain_id`),
                                                   KEY `accounts_webauthoriz_user_id_d33aa531_fk_accounts_` (`user_id`),
                                                   CONSTRAINT `accounts_webauthoriz_domain_id_de1c8113_fk_accounts_` FOREIGN KEY (`domain_id`) REFERENCES `accounts_domainuthorizedlist` (`id`),
                                                   CONSTRAINT `accounts_webauthoriz_user_id_d33aa531_fk_accounts_` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_webauthorizationrecord`
--

LOCK TABLES `accounts_webauthorizationrecord` WRITE;
/*!40000 ALTER TABLE `accounts_webauthorizationrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_webauthorizationrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
                              `id` int NOT NULL AUTO_INCREMENT,
                              `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
                              PRIMARY KEY (`id`),
                              UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
                                          `id` int NOT NULL AUTO_INCREMENT,
                                          `group_id` int NOT NULL,
                                          `permission_id` int NOT NULL,
                                          PRIMARY KEY (`id`),
                                          UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
                                          KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
                                          CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
                                          CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
                                   `id` int NOT NULL AUTO_INCREMENT,
                                   `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                                   `content_type_id` int NOT NULL,
                                   `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
                                   PRIMARY KEY (`id`),
                                   UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
                                   CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add domainuthorized list',7,'add_domainuthorizedlist'),(26,'Can change domainuthorized list',7,'change_domainuthorizedlist'),(27,'Can delete domainuthorized list',7,'delete_domainuthorizedlist'),(28,'Can view domainuthorized list',7,'view_domainuthorizedlist'),(29,'Can add 外部权限表',8,'add_externalpermission'),(30,'Can change 外部
权限表',8,'change_externalpermission'),(31,'Can delete 外部权限表',8,'delete_externalpermission'),(32,'Can view 外部权限表',8,'view_externalpermission'),(33,'Can add ldap server',9,'add_ldapserver'),(34,'Can change ldap server',9,'change_ldapserver'),(35,'Can delete ldap server',9,'delete_ldapserver'),(36,'Can view ldap server',9,'view_ldapserver'),(37,'Can add ldap user email verify record',10,'add_ldapuseremailverifyrecord'),(38,'Can change ldap user email verify record',10,'change_ldapuseremailverifyrecord'),(39,'Can delete ldap user email verify record',10,'delete_ldapuseremailverifyrecord'),(40,'Can view ldap user email verify record',10,'view_ldapuseremailverifyrecord'),(41,'Can add web authorization record',11,'add_webauthorizationrecord'),(42,'Can change web authorization record',11,'change_webauthorizationrecord'),(43,'Can delete web authorization record',11,'delete_webauthorizationrecord'),(44,'Can view web authorization record',11,'view_webauthorizationrecord'),(45,'Can add 用户登录信息',12,'add_userlogininfo'),(46,'Can change 用户登录信息',12,'change_userlogininfo'),(47,'Can delete 用户登录信息',12,'delete_userlogininfo'),(48,'Can view 用户登录信息',12,'view_userlogininfo'),(49,'Can add role',13,'add_role'),(50,'Can change role',13,'change_role'),(51,'Can delete role',13,'delete_role'),(52,'Can view role',13,'view_role');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
                                    `id` int NOT NULL AUTO_INCREMENT,
                                    `action_time` datetime(6) NOT NULL,
                                    `object_id` longtext COLLATE utf8mb4_unicode_ci,
                                    `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
                                    `action_flag` smallint unsigned NOT NULL,
                                    `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
                                    `content_type_id` int DEFAULT NULL,
                                    `user_id` int NOT NULL,
                                    PRIMARY KEY (`id`),
                                    KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
                                    KEY `django_admin_log_user_id_c564eba6_fk_accounts_user_id` (`user_id`),
                                    CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
                                    CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`),
                                    CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
                                       `id` int NOT NULL AUTO_INCREMENT,
                                       `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
                                       `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
                                       PRIMARY KEY (`id`),
                                       UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (7,'accounts','domainuthorizedlist'),(8,'accounts','externalpermission'),(9,'accounts','ldapserver'),(10,'accounts','ldapuseremailverifyrecord'),(13,'accounts','role'),(6,'accounts','user'),(12,'accounts','userlogininfo'),(11,'accounts','webauthorizationrecord'),(1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
                                     `id` int NOT NULL AUTO_INCREMENT,
                                     `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                                     `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                                     `applied` datetime(6) NOT NULL,
                                     PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'accounts','0001_initial','2022-04-24 17:42:29.840195'),(2,'contenttypes','0001_initial','2022-04-24 17:42:30.802043'),(3,'admin','0001_initial','2022-04-24 17:42:30.859370'),(4,'admin','0002_logentry_remove_auto_add','2022-04-24 17:42:31.078088'),(5,'admin','0003_logentry_add_action_flag_choices','2022-04-24 17:42:31.091189'),(6,'contenttypes','0002_remove_content_type_name','2022-04-24 17:42:31.283811'),(7,'auth','0001_initial','2022-04-24 17:42:31.458641'),(8,'auth','0002_alter_permission_name_max_length','2022-04-24 17:42:31.975018'),(9,'auth','0003_alter_user_email_max_length','2022-04-24 17:42:31.986035'),(10,'auth','0004_alter_user_username_opts','2022-04-24 17:42:31.995711'),(11,'auth','0005_alter_user_last_login_null','2022-04-24 17:42:32.005410'),(12,'auth','0006_require_contenttypes_0002','2022-04-24 17:42:32.015644'),(13,'auth','0007_alter_validators_add_error_messages','2022-04-24 17:42:32.027300'),(14,'auth','0008_alter_user_username_max_length','2022-04-24 17:42:32.039978'),(15,'auth','0009_alter_user_last_name_max_length','2022-04-24 17:42:32.049594'),(16,'auth','0010_alter_group_name_max_length','2022-04-24 17:42:32.079412'),(17,'auth','0011_update_proxy_permissions','2022-04-24 17:42:32.097158'),(18,'auth','0012_alter_user_first_name_max_length','2022-04-24 17:42:32.108801'),(19,'sessions','0001_initial','2022-04-24 17:42:32.161547');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
                                  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
                                  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
                                  `expire_date` datetime(6) NOT NULL,
                                  PRIMARY KEY (`session_key`),
                                  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('s3wls3bdo637ubqr4w6bpcvenn3p8aet','.eJxVjMsOwiAQRf-FtSEM0Acu3fsNZGYYbNVAUtqV8d-1SRe6veec-1IRt3WKW5MlzkmdFajT70bIDyk7SHcst6q5lnWZSe-KPmjT15rkeTncv4MJ2_StB-KerOdgOmHIzmdxoXM4GgoGwAmJzehH6npPLiOMmfpkbOABgcGo9wftJzga:1niYpU:ETjA75xUeIdY_KUqKgQpK90qFkN8EYW5dU42zz8pElk','2022-04-25 17:46:56.018360');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-24 17:50:02