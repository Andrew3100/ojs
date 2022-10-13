-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ojs
-- ------------------------------------------------------
-- Server version	5.6.43

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
-- Table structure for table `access_keys`
--

DROP TABLE IF EXISTS `access_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `access_keys` (
  `access_key_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `context` varchar(40) NOT NULL,
  `key_hash` varchar(40) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `assoc_id` bigint(20) DEFAULT NULL,
  `expiry_date` datetime NOT NULL,
  PRIMARY KEY (`access_key_id`),
  KEY `access_keys_hash` (`key_hash`,`user_id`,`context`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_keys`
--

LOCK TABLES `access_keys` WRITE;
/*!40000 ALTER TABLE `access_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `access_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcement_settings`
--

DROP TABLE IF EXISTS `announcement_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcement_settings` (
  `announcement_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) DEFAULT NULL,
  UNIQUE KEY `announcement_settings_pkey` (`announcement_id`,`locale`,`setting_name`),
  KEY `announcement_settings_announcement_id` (`announcement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement_settings`
--

LOCK TABLES `announcement_settings` WRITE;
/*!40000 ALTER TABLE `announcement_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcement_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcement_type_settings`
--

DROP TABLE IF EXISTS `announcement_type_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcement_type_settings` (
  `type_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `announcement_type_settings_pkey` (`type_id`,`locale`,`setting_name`),
  KEY `announcement_type_settings_type_id` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement_type_settings`
--

LOCK TABLES `announcement_type_settings` WRITE;
/*!40000 ALTER TABLE `announcement_type_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcement_type_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcement_types`
--

DROP TABLE IF EXISTS `announcement_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcement_types` (
  `type_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assoc_type` smallint(6) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  PRIMARY KEY (`type_id`),
  KEY `announcement_types_assoc` (`assoc_type`,`assoc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement_types`
--

LOCK TABLES `announcement_types` WRITE;
/*!40000 ALTER TABLE `announcement_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcement_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements` (
  `announcement_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assoc_type` smallint(6) DEFAULT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `date_expire` date DEFAULT NULL,
  `date_posted` datetime NOT NULL,
  PRIMARY KEY (`announcement_id`),
  KEY `announcements_assoc` (`assoc_type`,`assoc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_sources`
--

DROP TABLE IF EXISTS `auth_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_sources` (
  `auth_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `plugin` varchar(32) NOT NULL,
  `auth_default` smallint(6) NOT NULL DEFAULT '0',
  `settings` text,
  PRIMARY KEY (`auth_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_sources`
--

LOCK TABLES `auth_sources` WRITE;
/*!40000 ALTER TABLE `auth_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author_settings`
--

DROP TABLE IF EXISTS `author_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author_settings` (
  `author_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  UNIQUE KEY `author_settings_pkey` (`author_id`,`locale`,`setting_name`),
  KEY `author_settings_author_id` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author_settings`
--

LOCK TABLES `author_settings` WRITE;
/*!40000 ALTER TABLE `author_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `author_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `author_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(90) NOT NULL,
  `include_in_browse` smallint(6) NOT NULL DEFAULT '1',
  `publication_id` bigint(20) NOT NULL,
  `seq` double(8,2) NOT NULL DEFAULT '0.00',
  `user_group_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`author_id`),
  KEY `authors_publication_id` (`publication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `context_id` bigint(20) NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `seq` bigint(20) DEFAULT NULL,
  `path` varchar(255) NOT NULL,
  `image` text,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_path` (`context_id`,`path`),
  KEY `category_context_id` (`context_id`,`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_settings`
--

DROP TABLE IF EXISTS `category_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_settings` (
  `category_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object)',
  UNIQUE KEY `category_settings_pkey` (`category_id`,`locale`,`setting_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_settings`
--

LOCK TABLES `category_settings` WRITE;
/*!40000 ALTER TABLE `category_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citation_settings`
--

DROP TABLE IF EXISTS `citation_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citation_settings` (
  `citation_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `citation_settings_pkey` (`citation_id`,`locale`,`setting_name`),
  KEY `citation_settings_citation_id` (`citation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citation_settings`
--

LOCK TABLES `citation_settings` WRITE;
/*!40000 ALTER TABLE `citation_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `citation_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citations`
--

DROP TABLE IF EXISTS `citations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citations` (
  `citation_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `publication_id` bigint(20) NOT NULL DEFAULT '0',
  `raw_citation` text NOT NULL,
  `seq` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`citation_id`),
  UNIQUE KEY `citations_publication_seq` (`publication_id`,`seq`),
  KEY `citations_publication` (`publication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citations`
--

LOCK TABLES `citations` WRITE;
/*!40000 ALTER TABLE `citations` DISABLE KEYS */;
/*!40000 ALTER TABLE `citations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `completed_payments`
--

DROP TABLE IF EXISTS `completed_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `completed_payments` (
  `completed_payment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `payment_type` bigint(20) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `assoc_id` bigint(20) DEFAULT NULL,
  `amount` double(8,2) NOT NULL,
  `currency_code_alpha` varchar(3) DEFAULT NULL,
  `payment_method_plugin_name` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`completed_payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `completed_payments`
--

LOCK TABLES `completed_payments` WRITE;
/*!40000 ALTER TABLE `completed_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `completed_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controlled_vocab_entries`
--

DROP TABLE IF EXISTS `controlled_vocab_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `controlled_vocab_entries` (
  `controlled_vocab_entry_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `controlled_vocab_id` bigint(20) NOT NULL,
  `seq` double(8,2) DEFAULT NULL,
  PRIMARY KEY (`controlled_vocab_entry_id`),
  KEY `controlled_vocab_entries_cv_id` (`controlled_vocab_id`,`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controlled_vocab_entries`
--

LOCK TABLES `controlled_vocab_entries` WRITE;
/*!40000 ALTER TABLE `controlled_vocab_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `controlled_vocab_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controlled_vocab_entry_settings`
--

DROP TABLE IF EXISTS `controlled_vocab_entry_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `controlled_vocab_entry_settings` (
  `controlled_vocab_entry_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `c_v_e_s_pkey` (`controlled_vocab_entry_id`,`locale`,`setting_name`),
  KEY `c_v_e_s_entry_id` (`controlled_vocab_entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controlled_vocab_entry_settings`
--

LOCK TABLES `controlled_vocab_entry_settings` WRITE;
/*!40000 ALTER TABLE `controlled_vocab_entry_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `controlled_vocab_entry_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controlled_vocabs`
--

DROP TABLE IF EXISTS `controlled_vocabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `controlled_vocabs` (
  `controlled_vocab_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `symbolic` varchar(64) NOT NULL,
  `assoc_type` bigint(20) NOT NULL DEFAULT '0',
  `assoc_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`controlled_vocab_id`),
  UNIQUE KEY `controlled_vocab_symbolic` (`symbolic`,`assoc_type`,`assoc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controlled_vocabs`
--

LOCK TABLES `controlled_vocabs` WRITE;
/*!40000 ALTER TABLE `controlled_vocabs` DISABLE KEYS */;
/*!40000 ALTER TABLE `controlled_vocabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_issue_orders`
--

DROP TABLE IF EXISTS `custom_issue_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_issue_orders` (
  `issue_id` bigint(20) NOT NULL,
  `journal_id` bigint(20) NOT NULL,
  `seq` double(8,2) NOT NULL DEFAULT '0.00',
  UNIQUE KEY `custom_issue_orders_pkey` (`issue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_issue_orders`
--

LOCK TABLES `custom_issue_orders` WRITE;
/*!40000 ALTER TABLE `custom_issue_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_issue_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_section_orders`
--

DROP TABLE IF EXISTS `custom_section_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_section_orders` (
  `issue_id` bigint(20) NOT NULL,
  `section_id` bigint(20) NOT NULL,
  `seq` double(8,2) NOT NULL DEFAULT '0.00',
  UNIQUE KEY `custom_section_orders_pkey` (`issue_id`,`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_section_orders`
--

LOCK TABLES `custom_section_orders` WRITE;
/*!40000 ALTER TABLE `custom_section_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_section_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_object_tombstone_oai_set_objects`
--

DROP TABLE IF EXISTS `data_object_tombstone_oai_set_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_object_tombstone_oai_set_objects` (
  `object_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tombstone_id` bigint(20) NOT NULL,
  `assoc_type` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  PRIMARY KEY (`object_id`),
  KEY `data_object_tombstone_oai_set_objects_tombstone_id` (`tombstone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_object_tombstone_oai_set_objects`
--

LOCK TABLES `data_object_tombstone_oai_set_objects` WRITE;
/*!40000 ALTER TABLE `data_object_tombstone_oai_set_objects` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_object_tombstone_oai_set_objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_object_tombstone_settings`
--

DROP TABLE IF EXISTS `data_object_tombstone_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_object_tombstone_settings` (
  `tombstone_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object)',
  UNIQUE KEY `data_object_tombstone_settings_pkey` (`tombstone_id`,`locale`,`setting_name`),
  KEY `data_object_tombstone_settings_tombstone_id` (`tombstone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_object_tombstone_settings`
--

LOCK TABLES `data_object_tombstone_settings` WRITE;
/*!40000 ALTER TABLE `data_object_tombstone_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_object_tombstone_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_object_tombstones`
--

DROP TABLE IF EXISTS `data_object_tombstones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_object_tombstones` (
  `tombstone_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `data_object_id` bigint(20) NOT NULL,
  `date_deleted` datetime NOT NULL,
  `set_spec` varchar(255) NOT NULL,
  `set_name` varchar(255) NOT NULL,
  `oai_identifier` varchar(255) NOT NULL,
  PRIMARY KEY (`tombstone_id`),
  KEY `data_object_tombstones_data_object_id` (`data_object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_object_tombstones`
--

LOCK TABLES `data_object_tombstones` WRITE;
/*!40000 ALTER TABLE `data_object_tombstones` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_object_tombstones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edit_decisions`
--

DROP TABLE IF EXISTS `edit_decisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `edit_decisions` (
  `edit_decision_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `submission_id` bigint(20) NOT NULL,
  `review_round_id` bigint(20) NOT NULL,
  `stage_id` bigint(20) DEFAULT NULL,
  `round` smallint(6) NOT NULL,
  `editor_id` bigint(20) NOT NULL,
  `decision` smallint(6) NOT NULL,
  `date_decided` datetime NOT NULL,
  PRIMARY KEY (`edit_decision_id`),
  KEY `edit_decisions_submission_id` (`submission_id`),
  KEY `edit_decisions_editor_id` (`editor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edit_decisions`
--

LOCK TABLES `edit_decisions` WRITE;
/*!40000 ALTER TABLE `edit_decisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `edit_decisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_log`
--

DROP TABLE IF EXISTS `email_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assoc_type` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `sender_id` bigint(20) NOT NULL,
  `date_sent` datetime NOT NULL,
  `event_type` bigint(20) DEFAULT NULL,
  `from_address` varchar(255) DEFAULT NULL,
  `recipients` text,
  `cc_recipients` text,
  `bcc_recipients` text,
  `subject` varchar(255) DEFAULT NULL,
  `body` text,
  PRIMARY KEY (`log_id`),
  KEY `email_log_assoc` (`assoc_type`,`assoc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_log`
--

LOCK TABLES `email_log` WRITE;
/*!40000 ALTER TABLE `email_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_log_users`
--

DROP TABLE IF EXISTS `email_log_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_log_users` (
  `email_log_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  UNIQUE KEY `email_log_user_id` (`email_log_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_log_users`
--

LOCK TABLES `email_log_users` WRITE;
/*!40000 ALTER TABLE `email_log_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_log_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_templates` (
  `email_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email_key` varchar(64) NOT NULL COMMENT 'Unique identifier for this email.',
  `context_id` bigint(20) NOT NULL,
  `enabled` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`email_id`),
  UNIQUE KEY `email_templates_email_key` (`email_key`,`context_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates_default`
--

DROP TABLE IF EXISTS `email_templates_default`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_templates_default` (
  `email_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email_key` varchar(64) NOT NULL COMMENT 'Unique identifier for this email.',
  `can_disable` smallint(6) NOT NULL DEFAULT '0',
  `can_edit` smallint(6) NOT NULL DEFAULT '0',
  `from_role_id` bigint(20) DEFAULT NULL,
  `to_role_id` bigint(20) DEFAULT NULL,
  `stage_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`email_id`),
  KEY `email_templates_default_email_key` (`email_key`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates_default`
--

LOCK TABLES `email_templates_default` WRITE;
/*!40000 ALTER TABLE `email_templates_default` DISABLE KEYS */;
INSERT INTO `email_templates_default` VALUES (1,'NOTIFICATION',0,1,NULL,NULL,NULL),(2,'NOTIFICATION_CENTER_DEFAULT',0,1,NULL,NULL,NULL),(3,'PASSWORD_RESET_CONFIRM',0,1,NULL,NULL,NULL),(4,'PASSWORD_RESET',0,1,NULL,NULL,NULL),(5,'USER_REGISTER',0,1,NULL,NULL,NULL),(6,'USER_VALIDATE',0,1,NULL,NULL,NULL),(7,'REVIEWER_REGISTER',0,1,NULL,NULL,NULL),(8,'PUBLISH_NOTIFY',0,1,NULL,NULL,NULL),(9,'LOCKSS_EXISTING_ARCHIVE',0,1,NULL,NULL,NULL),(10,'LOCKSS_NEW_ARCHIVE',0,1,NULL,NULL,NULL),(11,'SUBMISSION_ACK',1,1,NULL,65536,1),(12,'SUBMISSION_ACK_NOT_USER',1,1,NULL,65536,1),(13,'EDITOR_ASSIGN',1,1,16,16,1),(14,'REVIEW_CANCEL',1,1,16,4096,3),(15,'REVIEW_REINSTATE',1,1,16,4096,3),(16,'REVIEW_REQUEST',1,1,16,4096,3),(17,'REVIEW_REQUEST_SUBSEQUENT',1,1,16,4096,3),(18,'REVIEW_REQUEST_ONECLICK',1,1,16,4096,3),(19,'REVIEW_REQUEST_ONECLICK_SUBSEQUENT',1,1,16,4096,3),(20,'REVIEW_REQUEST_ATTACHED',0,1,16,4096,3),(21,'REVIEW_REQUEST_ATTACHED_SUBSEQUENT',0,1,16,4096,3),(22,'REVIEW_REQUEST_REMIND_AUTO',0,1,NULL,4096,3),(23,'REVIEW_REQUEST_REMIND_AUTO_ONECLICK',0,1,NULL,4096,3),(24,'REVIEW_CONFIRM',1,1,4096,16,3),(25,'REVIEW_DECLINE',1,1,4096,16,3),(26,'REVIEW_ACK',1,1,16,4096,3),(27,'REVIEW_REMIND',0,1,16,4096,3),(28,'REVIEW_REMIND_AUTO',0,1,NULL,4096,3),(29,'REVIEW_REMIND_ONECLICK',0,1,16,4096,3),(30,'REVIEW_REMIND_AUTO_ONECLICK',0,1,NULL,4096,3),(31,'EDITOR_DECISION_ACCEPT',0,1,16,65536,3),(32,'EDITOR_DECISION_SEND_TO_EXTERNAL',0,1,16,65536,3),(33,'EDITOR_DECISION_SEND_TO_PRODUCTION',0,1,16,65536,5),(34,'EDITOR_DECISION_REVISIONS',0,1,16,65536,3),(35,'EDITOR_DECISION_RESUBMIT',0,1,16,65536,3),(36,'EDITOR_DECISION_DECLINE',0,1,16,65536,3),(37,'EDITOR_DECISION_INITIAL_DECLINE',0,1,16,65536,1),(38,'EDITOR_RECOMMENDATION',0,1,16,16,3),(39,'COPYEDIT_REQUEST',1,1,16,4097,4),(40,'LAYOUT_REQUEST',1,1,16,4097,5),(41,'LAYOUT_COMPLETE',1,1,4097,16,5),(42,'EMAIL_LINK',0,1,1048576,NULL,NULL),(43,'SUBSCRIPTION_NOTIFY',0,1,NULL,1048576,NULL),(44,'OPEN_ACCESS_NOTIFY',0,1,NULL,1048576,NULL),(45,'SUBSCRIPTION_BEFORE_EXPIRY',0,1,NULL,1048576,NULL),(46,'SUBSCRIPTION_AFTER_EXPIRY',0,1,NULL,1048576,NULL),(47,'SUBSCRIPTION_AFTER_EXPIRY_LAST',0,1,NULL,1048576,NULL),(48,'SUBSCRIPTION_PURCHASE_INDL',0,1,NULL,2097152,NULL),(49,'SUBSCRIPTION_PURCHASE_INSTL',0,1,NULL,2097152,NULL),(50,'SUBSCRIPTION_RENEW_INDL',0,1,NULL,2097152,NULL),(51,'SUBSCRIPTION_RENEW_INSTL',0,1,NULL,2097152,NULL),(52,'CITATION_EDITOR_AUTHOR_QUERY',0,1,NULL,NULL,4),(53,'REVISED_VERSION_NOTIFY',0,1,NULL,16,3),(54,'STATISTICS_REPORT_NOTIFICATION',1,1,16,17,NULL),(55,'ANNOUNCEMENT',0,1,16,1048576,NULL),(56,'ORCID_COLLECT_AUTHOR_ID',0,1,NULL,NULL,NULL),(57,'ORCID_REQUEST_AUTHOR_AUTHORIZATION',0,1,NULL,NULL,NULL),(58,'MANUAL_PAYMENT_NOTIFICATION',0,1,NULL,NULL,NULL),(59,'PAYPAL_INVESTIGATE_PAYMENT',0,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `email_templates_default` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates_default_data`
--

DROP TABLE IF EXISTS `email_templates_default_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_templates_default_data` (
  `email_key` varchar(64) NOT NULL COMMENT 'Unique identifier for this email.',
  `locale` varchar(14) NOT NULL DEFAULT 'en_US',
  `subject` varchar(120) NOT NULL,
  `body` text,
  `description` text,
  UNIQUE KEY `email_templates_default_data_pkey` (`email_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates_default_data`
--

LOCK TABLES `email_templates_default_data` WRITE;
/*!40000 ALTER TABLE `email_templates_default_data` DISABLE KEYS */;
INSERT INTO `email_templates_default_data` VALUES ('ANNOUNCEMENT','cs_CZ','{$title}','<b>{$title}</b><br />\n<br />\n{$summary}<br />\n<br />\nNavštivte naši webovou stránku, pokud si chcete přečíst <a href=\"{$url}\">plný text</a>.','Tento email je posílán, pokud je vytvořeno nové oznámení.'),('ANNOUNCEMENT','da_DK','{$title}','<b>{$title}</b><br />\n<br />\n{$summary}<br />\n<br />\nBesøg vores websted  <a href=\"{$url}\">for at læse hele meddelelsen</a>.','Denne e-mail sendes, når der oprettes en ny meddelelse.'),('ANNOUNCEMENT','de_DE','{$title}','<b>{$title}</b><br />\n<br />\n{$summary}<br />\n<br />\nBesuchen Sie die Webseite um die <a href=\"{$url}\">gesamte Ankündigung</a> zu lesen.','Diese E-Mail wird gesendet, wenn eine neue Ankündigung erstellt wird.'),('ANNOUNCEMENT','en_US','{$title}','<b>{$title}</b><br />\n<br />\n{$summary}<br />\n<br />\nVisit our website to read the <a href=\"{$url}\">full announcement</a>.','This email is sent when a new announcement is created.'),('ANNOUNCEMENT','it_IT','{$titolo}','<b>{$title}</b><br />\n<br />\n{$summary}<br />\n<br />\nVisita il nostro sito per leggere la  <a href=\"{$url}\">news completa</a>.','Questo messaggio è inviato quando viene creata una nuova news.'),('ANNOUNCEMENT','pt_BR','{$title}','<b>{$title}</b><br />\n<br />\n{$summary}<br />\n<br />\nVisite nosso site para ler o <a href=\"{$url}\"> comunicado completo </a>.','Este email é enviado quando um novo comunicado é criado.'),('ANNOUNCEMENT','ru_RU','{$title}','<b>{$title}</b><br />\n<br />\n{$summary}<br />\n<br />\nПосетите наш веб-сайт, чтобы прочитать <a href=\"{$url}\">объявление полностью</a>.','Это письмо отправляется при создании нового объявления.'),('CITATION_EDITOR_AUTHOR_QUERY','cs_CZ','Zpracování citací','Vážený(á) {$authorFirstName},<br />\n<br />\nMůžete, prosím, ověřit, nebo potvrdit správnou citaci pro následující referenci z vašeho článku {$submissionTitle}:<br />\n<br />\n{$rawCitation}<br />\n<br />\nDěkuji!<br />\n<br />\n{$userFirstName}<br />\nRedaktor {$contextName}<br />\n','Tento e-mail umožňuje redaktorům vyžádat si další informace o referencích od autorů.'),('CITATION_EDITOR_AUTHOR_QUERY','da_DK','Referenceredigering','{$authorFirstName},<br />\n<br />\nDu bedes verificere eller sende os de korrekte oplysninger i forbindelse med følgende reference i din artikel {$submissionTitle}:<br />\n<br />\n{$rawCitation}<br />\n<br />\nPå forhånd tak!<br />\n<br />\n{$userFirstName}<br />\nManuskriptredaktør, {$contextName}<br />\n','Denne e-mail tillader manuskriptredaktører at anmode forfattere om yderligere oplysninger vedrørende referencer.'),('CITATION_EDITOR_AUTHOR_QUERY','de_DE','Zitationsbearbeitung','{$authorFirstName},<br />\n<br />\nkönnten Sie uns bitte die korrekte Zitation für den folgenden Verweis aus Ihrem Artikel {$submissionTitle} bestätigen bzw. nachreichen:<br />\n<br />\n{$rawCitation}<br />\n<br />\nVielen Dank!<br />\n<br />\n{$userFirstName}<br />\nLektor/in, {$contextName}<br />\n','Diese E-Mail ermöglicht es Lektor/innen, zusätzliche Informationen über Verweise von Autor/innen anzufordern.'),('CITATION_EDITOR_AUTHOR_QUERY','en_US','Citation Editing','{$authorFirstName},<br />\n<br />\nCould you please verify or provide us with the proper citation for the following reference from your article, {$submissionTitle}:<br />\n<br />\n{$rawCitation}<br />\n<br />\nThanks!<br />\n<br />\n{$userFirstName}<br />\nCopy-Editor, {$contextName}<br />\n','This email allows copyeditors to request additional information about references from authors.'),('CITATION_EDITOR_AUTHOR_QUERY','it_IT','Richiesta di verifica delle citazioni','Gentile {$authorFirstName},<br />\n<br />\nTi chiedo la cortesia di verificare la correttezza delle citazioni contenute nell\'articolo  {$submissionTitle}:<br />\n<br />\n{$rawCitation}<br />\n<br />\nGrazie,<br />\n<br />\n{$userFirstName}<br />\nCopy-Editor, {$contextName}<br />\n','Questo messaggio permette al copyeditor di chiedere a un autore ulteriori informazioni sulle citazioni bibliografiche.'),('CITATION_EDITOR_AUTHOR_QUERY','pt_BR','Edição de citação','{$authorFirstName}, <br />\n<br />\nVocê poderia verificar ou fornecer a citação adequada para a seguinte referência do seu artigo, {$submitTitle}: <br />\n<br />\n{$rawCitation} <br />\n<br />\nObrigado! <br />\n<br />\n{$userFirstName} <br />\nEditor de Cópia, {$contextName} <br />\n','Solicitação ao autor de detalhes sobre referência, enviada pelo editor de texto.'),('CITATION_EDITOR_AUTHOR_QUERY','ru_RU','Редактирование библиографических ссылок','Здравствуйте, {$authorFirstName}!<br />\n<br />\nПожалуйста, проверьте или пришлите нам правильно оформленную библиографическую ссылку для следующей ссылки из Вашей статьи «{$submissionTitle}»:<br />\n<br />\n{$rawCitation}<br />\n<br />\nЗаранее благодарю Вас!<br />\n<br />\n{$userFirstName}<br />\nЛитературный редактор журнала «{$contextName}»<br />\n','Это письмо позволяет литературным редакторам запрашивать дополнительную информацию о ссылках у авторов.'),('COPYEDIT_REQUEST','cs_CZ','Žádost o redigování příspěvku','{$participantName}:<br />\n<br />\nChtěl bych vás požádat, abyste zredigoval článek &quot;{$submissionTitle}&quot; pro {$contextName} a postupujte přitom prosím podle následujících kroků:<br />\n1. Klikněte níže na URL příspěvku.<br />\n2. Otevřete libovolný soubor v sekci Soubory návrhů a proveďte redakční editaci, případě využijte diskusi pro editační fázi.<br />\n3.  Uložte zredigovaný soubor a nahrajte ho v editačním panelu.<br />\n4 . Upozorněte redaktora, že všechny soubory byly zeditovány a může začít produkční fáze.<br />\n<br />\n{$contextName} URL: {$contextUrl}<br />\nURL příspěvku: {$submissionUrl}<br />\nUživatelské jméno: {$participantUsername}','Tento email posílá editor sekce redaktorovi, aby ho požádal o zahájení procesu redigování. Obsahuje informace o příspěvku a jek se k němu dostat.'),('COPYEDIT_REQUEST','da_DK','Forespørgsel om manuskriptredigering','{$participantName}:<br />\n<br />\nJeg vil bede dig om at foretage manuskriptredigering af &quot;{$submissionTitle}&quot; til {$contextName} ved at følge disse trin. <br />\n1. Klik på manuskriptets URL-adresse nedenfor. <br />\n2. Åbn tilgængelig(e) fil(er) under ‘Filer til redigering’ og tilføj, om nødvendigt, et indlæg under ‘Drøftelser under manuskriptredigering’.<br />\n3. Gem manuskriptredigeret fil og upload den ud for ‘Manuskriptredigering’.<br />\n4. Giv redaktøren besked, når alle filer er færdigredigerede og klar til blive videresendt til ’Produktion’.<br />\n<br />\n{$contextName} URL: {$contextUrl}<br />\nSubmission URL: {$submissionUrl}<br />\nUsername: {$participantUsername}','Denne e-mail sendes af en sektionsredaktør til manuskriptredaktøren for et manuskript og beder vedkommende om at påbegynde manuskriptredigeringsprocessen. Den indeholder oplysninger om manuskriptet og om, hvordan der oprettes adgang til det.'),('COPYEDIT_REQUEST','de_DE','Bitte um ein Lektorat','{$participantName},<br />\n<br />\nich bitte Sie, das Manuskript &quot;{$submissionTitle}&quot; für {$contextName} zu lektorieren. Bitte gehen Sie dabei folgendermaßen vor:<br />\n1. Klicken Sie auf die unten stehende URL des Beitrags.<br />\n2. Öffnen Sie alle Dateien, die unter Entwurf für Lektorat verfügbar sind, und beginnen Sie Ihr Lektorat. Fügen Sie neue Diskussionen zum Lektorat nach Bedarf hinzu.<br />\n3. Sichern Sie die lektorierte(n) Dateien und laden Sie sie unter Lektoriert hoch.<br />\n4. Benachrichtigen Sie die/den Redakteur/in, dass alle Dateien fertig sind und dass der Herstellungsprozess beginnen kann.<br />\n<br />\nURL {$contextName}: {$contextUrl}<br />\nURL des Beitrags: {$submissionUrl}<br />\nBenutzer/innenname: {$participantUsername}','Diese E-Mail wird von der/dem Rubrikredakteur/in an die/den Lektor einer Einreichung gesendet, um diese/n zu bitten, mit dem Lektorat zu beginnen. Sie liefert Informationen über die Einreichung und darüber, wie auf sie zuzugreifen ist.'),('COPYEDIT_REQUEST','en_US','Copyediting Request','{$participantName}:<br />\n<br />\nI would ask that you undertake the copyediting of &quot;{$submissionTitle}&quot; for {$contextName} by following these steps.<br />\n1. Click on the Submission URL below.<br />\n2. Open any files available under Draft Files and do your copyediting, while adding any Copyediting Discussions as needed.<br />\n3. Save copyedited file(s), and upload to Copyedited panel.<br />\n4. Notify the Editor that all files have been prepared, and that the Production process may begin.<br />\n<br />\n{$contextName} URL: {$contextUrl}<br />\nSubmission URL: {$submissionUrl}<br />\nUsername: {$participantUsername}','This email is sent by a Section Editor to a submission\'s Copyeditor to request that they begin the copyediting process. It provides information about the submission and how to access it.'),('COPYEDIT_REQUEST','it_IT','Assegnazione di copyediting','{$participantName}:<br />\n<br />\nTi chiedo di prendere in carico il copyediting del manoscritto &quot;{$submissionTitle}&quot; inviato alla testata {$contextName}.<br />\nIl documento si trova su sito web della rivista, insieme alle istruzioni per il copyediting.<br />\nSe non puoi prendere in carico il lavoro in questo periodo o hai qualche domanda, ti prego di contattarmi.<br />\n<br />\n{$contextName} URL: {$contextUrl}<br />\nURL Manoscritto: {$submissionUrl}<br />\nUsername: {$participantUsername}<br />','Questa email viene mandata dal section editor al copyeditor della submission per richiedere che comincino con il processo di copyedit. Questa fornisce informazioni sulla submission e su come accedervi.'),('COPYEDIT_REQUEST','pt_BR','Solicitação de edição de texto','{$participantName}: <br />\n<br />\nPeço que você realize a revisão textual de &quot;{$submissionTitle}&quot; para {$contextName} seguindo estas etapas. <br />\n1. Clique no URL da Submissão abaixo. <br />\n2. Abra todos os arquivos disponíveis em \"Arquivos de Versão Final\" e faça sua revisão textual, adicionando quaisquer discussões em \"Discussão da edição de texto\" conforme necessário. <br />\n3. Salve os arquivos revisados e faça o carregamento no painel \"Texto editado\". <br />\n4. Notifique o Editor de que todos os arquivos foram preparados e que o processo de \"Editoração\" pode começar. <br />\n<br />\nURL de {$contextName}: {$contextUrl} <br />\nURL de Submissão: {$submitUrl} <br />\nNome de usuário: {$participantUsername}','Mensagem enviada pelo Editor de Seção solicitando a realização de uma tarefa de edição ao Editor de Texto, com informações sobre e como acessar o documento.'),('COPYEDIT_REQUEST','ru_RU','Запрос на литературное редактирование','Здравствуйте, {$participantName}!<br />\n<br />\nЯ хотел бы попросить Вас выполнить литературное редактирование материала «{$submissionTitle}» для журнала «{$contextName}», выполнив следующие шаги.<br />\n1. Щелкните на URL материала ниже.<br />\n2. Откройте все файлы, доступные в панели «Черновики», и выполните литературное редактирование, добавляя при необходимости Обсуждения литературного редактирования.<br />\n3. Сохраните отредактированные файлы и загрузите их в панель «Отредактированные».<br />\n4. Уведомите редактора о том, что все файлы были подготовлены и можно их запускать в производство.<br />\n<br />\nURL журнала «{$contextName}»: {$contextUrl}<br />\nURL материала: {$submissionUrl}<br />\nИмя пользователя: {$participantUsername}','Это письмо редактора раздела, отправляемое литературному редактору материала с запросом начала процесса литературного редактирования. В письме содержится информация о материале и о том, как получить к нему доступ.'),('EDITOR_ASSIGN','cs_CZ','Editorský úkol','{$editorialContactName}:<br />\n<br />\nByl Vám přidělen příspěvek &quot;{$submissionTitle}&quot; do {$contextName}, abyste s ním v roli editora sekce prošel redakčním zpracováním.<br />\n<br />\nURL příspěvku: {$submissionUrl}<br />\nUživatelské jméno: {$editorUsername}<br />\n<br />\nDěkujeme.','Tento email informuje editora sekce, že mu editor přidělil úkol dohlížet na příspěvek během redakčního zpracování. Obsahuje informace o příspěvku a přístupu na stránky časopisu.'),('EDITOR_ASSIGN','da_DK','Redaktionel tildeling','{$editorialContactName}:<br />\n<br />\nSom sektionsredaktør har du fået tildelt manuskriptet &quot;{$submissionTitle}&quot;, der er sendt til {$contextName}, og som du skal følge igennem den redaktionelle proces. <br />\n<br />\nManuskriptets URL-adresse: {$submissionUrl}<br />\nBrugernavn: {$editorUsername}<br />\n<br />\nTak.','Denne e-mail underretter en sektionsredaktør om, at redaktøren har tildelt vedkommende opgaven med at følge et manuskript igennem redigeringsprocessen. Den indeholder oplysninger om manuskriptet og om, hvordan der oprettes adgang til tidsskriftets websted.'),('EDITOR_ASSIGN','de_DE','Zuweisung an Rubrikredakteur/in','{$editorialContactName},<br />\n<br />\nder Beitrag &quot;{$submissionTitle}&quot; für {$contextName} wird Ihnen zur Durchführung des redaktionellen Prozesses in Ihrer Rolle als Rubrikredakteur/in zugewiesen.<br />\n<br />\nURL des Beitrags: {$submissionUrl}<br />\nBenutzer/innenname: {$editorUsername}<br />\n<br />\nVielen Dank.','Diese E-Mail benachrichtigt eine/n Rubrikredakteur/in, dass die Redakteurin/der Redakteur ihr/ihm die Aufgabe übertragen hat, eine Einreichung durch den Redaktionsprozess hindurch zu betreuen. Sie liefert Informationen zu der Einreichung und darüber, wie auf die Zeitschriftenseite zugegriffen werden kann.'),('EDITOR_ASSIGN','en_US','Editorial Assignment','{$editorialContactName}:<br />\n<br />\nThe submission, &quot;{$submissionTitle},&quot; to {$contextName} has been assigned to you to see through the editorial process in your role as Section Editor.<br />\n<br />\nSubmission URL: {$submissionUrl}<br />\nUsername: {$editorUsername}<br />\n<br />\nThank you.','This email notifies a Section Editor that the Editor has assigned them the task of overseeing a submission through the editing process. It provides information about the submission and how to access the journal site.'),('EDITOR_ASSIGN','it_IT','Assegnazione  della proposta','Gentile {$editorialContactName},<br />\n<br />\nLa submission, &quot;{$submissionTitle},&quot; a {$contextName} ti è stata assegnata come Section Editor.<br />\n<br />\nSubmission URL: {$submissionUrl}<br />\nUsername: {$editorUsername}<br />\n<br />\nGrazie.','Questa email notifica ai section editor che l\'editor ha assegnato loro il compito di supervisionare una submission attraverso il processo editoriale. Questa fornisce informazioni sulla submission e su come accedere al sito del journal.'),('EDITOR_ASSIGN','pt_BR','Tarefa editorial','{$editorialContactName}:<br />\n<br />\nA submissão, &quot;{$submissionTitle},&quot; ao periódico {$contextName} lhe foi designada para acompanhar o processo editorial em sua função como Editor de Seção.<br />\n<br />\nURL da Submissão: {$submissionUrl}<br />\nUsuário: {$editorUsername}<br />\n<br />\nObrigado.','Mensagem notifica o Editor de Seção que uma nova tarefa de acompanhamento de submissão lhe foi designada pelo Editor-Gerente. Oferece informações sobre a submissão e como acessar o sistema.'),('EDITOR_ASSIGN','ru_RU','Назначение редактором','Здравствуйте, {$editorialContactName}!<br />\n<br />\nВ соответствии с Вашей ролью редактора раздела Вам поручен контроль прохождения через редакционный процесс материала «{$submissionTitle}» в журнале «{$contextName}».<br />\n<br />\nURL материала: {$submissionUrl}<br />\nИмя пользователя: {$editorUsername}<br />\n<br />\nЗаранее благодарю.','Это письмо уведомляет редактора раздела о том, что редактор поручил ему контроль прохождения материала через редакционный процесс. В письме содержится информация о материале и о том, как войти на сайт журнала.'),('EDITOR_DECISION_ACCEPT','cs_CZ','Rozhodnutí editora','{$authorName}:<br />\n<br />\nUčinili jsme rozhodnutí ohledně Vašeho příspěvku do {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nNaše rozhodnutí je: přijmout příspěvek k publikaci','Tento e-mail od editora nebo editora sekce autorovi obsahuje informaci o konečném rozhodnutí o přijetí příspěvku.'),('EDITOR_DECISION_ACCEPT','da_DK','Redaktørbeslutning','{$authorName}:<br />\n<br />\nVi er nået frem til en afgørelse vedrørende dit bidrag til {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nVi har besluttet at: Acceptere manuskript','Denne e-mail fra redaktøren eller sektionsredaktøren til en forfatter er en meddelelse om den endelige afgørelse vedrørende deres bidrag.'),('EDITOR_DECISION_ACCEPT','de_DE','Entscheidung der Redaktion','{$authorName},<br />\n<br />\nwir sind zu einer Entscheidung in Bezug auf Ihre Einreichung für {$contextName}: &quot;{$submissionTitle}&quot; gekommen.<br />\n<br />\nUnsere Entscheidung lautet: Beitrag annehmen','Diese E-Mail von der/dem Redakteur/in oder Rubrikredakteur/in an eine/n Autor/in informiert diese/n über eine getroffene Entscheidung zu ihrer/seiner Einreichung.'),('EDITOR_DECISION_ACCEPT','en_US','Editor Decision','{$authorName}:<br />\n<br />\nWe have reached a decision regarding your submission to {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nOur decision is to: Accept Submission','This email from the Editor or Section Editor to an Author notifies them of a final \"accept submission\" decision regarding their submission.'),('EDITOR_DECISION_ACCEPT','it_IT','Decisione dell\'editor','&lt;![CDATA[{$authorName}:<br />\n<br />\nAbbiamo raggiunto una decisione riguardo alla Sua submission a {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nLa decisione è di accettare la proposta','Questa mail è inviata dall\'Editor o Section Editor ad un autore per avvisarlo che è stata presa la decisione finale di accettare il manoscritto per la pubblicazione.'),('EDITOR_DECISION_ACCEPT','pt_BR','Decisão editorial','{$authorName}:<br />\n<br />\nNós chegamos a uma decisão referente a sua submissão para o periódico {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nNossa decisão é de: Aceitar a Submissão','Esta é uma mensagem do Editor/Editor de Seção ao autor para notificá-lo da decisão editorial (final) tomada sobre a submissão.'),('EDITOR_DECISION_ACCEPT','ru_RU','Решение редакции','Здравствуйте, {$authorName}!<br />\n<br />\nМы приняли решение относительно Вашего материала «{$submissionTitle}», направленного в журнал «{$contextName}».<br />\n<br />\nНаше решение: Принять материал','Это письмо редактора или редактора раздела, отправляемое автору, чтобы уведомить его об окончательном решении «Принять материал» относительно присланного материала.'),('EDITOR_DECISION_DECLINE','cs_CZ','Rozhodnutí editora','{$authorName}:<br />\n<br />\nUčinili jsme rozhodnutí ohledně Vašeho příspěvku do {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nNaše rozhodnutí je: odmítnout příspěvek','Tento e-mail od editora nebo editora sekce informuje autora o konečném rozhodnutí o odmítnutí jeho příspěvku.'),('EDITOR_DECISION_DECLINE','da_DK','Redaktørbeslutning','{$authorName}:<br />\n<br />\nVi er nået frem til en afgørelse vedrørende dit bidrag til {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nVi har besluttet at: Afvise manuskript','Denne e-mail fra redaktøren eller sektionsredaktøren til en forfatter er en meddelelse om den endelige afgørelse vedrørende deres bidrag.'),('EDITOR_DECISION_DECLINE','de_DE','Entscheidung der Redaktion','{$authorName},<br />\n<br />\nwir sind zu einer Entscheidung in Bezug auf Ihre Einreichung für {$contextName}: &quot;{$submissionTitle}&quot; gekommen.<br />\n<br />\nUnsere Entscheidung lautet: Beitrag ablehnen','Diese E-Mail von der/dem Redakteur/in oder Rubrikredakteur/in an eine/n Autor/in informiert diese/n über eine getroffene Entscheidung zu ihrer/seiner Einreichung.'),('EDITOR_DECISION_DECLINE','en_US','Editor Decision','{$authorName}:<br />\n<br />\nWe have reached a decision regarding your submission to {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nOur decision is to: Decline Submission','This email from the Editor or Section Editor to an Author notifies them of a final \"decline\" decision regarding their submission.'),('EDITOR_DECISION_DECLINE','it_IT','Decisione dell\'editor','{$authorName}:<br />\n<br />\nAbbiamo raggiunto una decisione riguardo alla Sua submission a {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nLa decisione è di non accettare la proposta','Questa mail è inviata dall\'editor o dall\'editor di sezione all\'autore per non accettare una proposta.'),('EDITOR_DECISION_DECLINE','pt_BR','Decisão editorial','{$authorName}:<br />\n<br />\nNós chegamos a uma decisão referente a sua submissão para o periódico {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nNossa decisão é de: Rejeitar a Submissão','Esta mensagem do Editor/Editor de Seção ao autor notifica sobre a decisão final tomada sobre a submissão.'),('EDITOR_DECISION_DECLINE','ru_RU','Решение редакции','Здравствуйте, {$authorName}!<br />\n<br />\nМы приняли решение относительно Вашего материала «{$submissionTitle}», направленного в журнал «{$contextName}».<br />\n<br />\nНаше решение: Отклонить материал','Это письмо редактора или редактора раздела, отправляемое автору, чтобы уведомить его об окончательном решении «Отклонить материал» относительно присланного материала.'),('EDITOR_DECISION_INITIAL_DECLINE','cs_CZ','Rozhodnutí redaktora','\n			{$authorName}:<br />\n<br />\nDosáhli jsme rozhodnutí ohledně vašeho příspěvku pro {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nNaše rozhodnutí je: Odmítnout příspěvek','Tento e-mail se pošle autorovi, pokud redaktor odmítne příspěvek již před recenzním řízením'),('EDITOR_DECISION_INITIAL_DECLINE','da_DK','Redaktørbeslutning','\n			{$authorName}:<br />\n<br />\nVi er nået frem til en afgørelse vedrørende dit bidrag til {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nVi har besluttet at: Afvise manuskriptet','Denne e-mail sendes til forfatteren, hvis redaktøren afviser manuskriptet i indledningsfasen, før bedømmelsestrinnet'),('EDITOR_DECISION_INITIAL_DECLINE','de_DE','Entscheidung der Redaktion','\n			{$authorName}:<br />\n<br />\nWir sind zu einer Entscheidung hinsichtlich Ihrer Einreichung für {$contextName}, &quot;{$submissionTitle}&quot; gekommen.<br />\n<br />\nWir haben entschieden, Ihre Einreichung abzulehnen.','Diese E-Mail wird an die/den Autor/in gesendet, wenn die/der Redakteur/in die Einreichung bereits vor dem Begutachtungsprozess ablehnt.'),('EDITOR_DECISION_INITIAL_DECLINE','en_US','Editor Decision','\n			{$authorName}:<br />\n<br />\nWe have reached a decision regarding your submission to {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nOur decision is to: Decline Submission','This email is sent to the author if the editor declines their submission initially, before the review stage'),('EDITOR_DECISION_INITIAL_DECLINE','it_IT','Decisione dell\'editor','\n			Gentilissimo {$authorName}:<br />\n<br />\nAbbiamo preso una decisione in merito al suo manoscritto dal titolo &quot;{$submissionTitle}&quot; inviato a {$contextName} .<br />\n<br />\nCi rincresce informarla che non ci è possibile accettare il suo contributo','Questa mail viene mandata all\'autore se la proposta subito non viene accettata dall\'editor'),('EDITOR_DECISION_INITIAL_DECLINE','pt_BR','Decisão do Editor','\n			{$authorName}: <br />\n<br />\nChegamos a uma decisão sobre sua submissão para {$ contextName}, &quot;{$submissionTitle}&quot;. <br />\n<br />\nNossa decisão é: Recusar Submissão','Este email será enviado ao autor se o editor recusar o envio inicialmente, antes da fase de revisão'),('EDITOR_DECISION_INITIAL_DECLINE','ru_RU','Решение редакции','\n			Здравствуйте, {$authorName}!<br />\n<br />\nМы приняли решение относительно Вашего материала «{$submissionTitle}», направленного в журнал «{$contextName}».<br />\n<br />\nНаше решение: Отклонить материал','Это письмо отправляется автору, если редактор решает отклонить его материал на начальной стадии, до этапа рецензирования'),('EDITOR_DECISION_RESUBMIT','cs_CZ','Rozhodnutí editora','{$authorName}:<br />\n<br />\nUčinili jsme rozhodnutí ohledně Vašeho příspěvku do {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nNaše rozhodnutí je: znovu odeslat k recenzi','Tento e-mail od editora nebo editora sekce upozorňuje autora na konečné rozhodnutí „opětovné podání“.'),('EDITOR_DECISION_RESUBMIT','da_DK','Redaktørbeslutning','{$authorName}:<br />\n<br />\nVi er nået frem til en afgørelse vedrørende dit bidrag til {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nVi har besluttet følgende: Fremsend igen til bedømmelse','Denne e-mail fra redaktøren eller sektionsredaktøren til en forfatter er en meddelelse om den endelige afgørelse vedrørende deres bidrag.'),('EDITOR_DECISION_RESUBMIT','de_DE','Entscheidung der Redaktion','{$authorName},<br />\n<br />\nwir sind zu einer Entscheidung in Bezug auf Ihre Einreichung für {$contextName}: &quot;{$submissionTitle}&quot; gekommen.<br />\n<br />\nWir haben entschieden, dass Ihr Beitrag überarbeitet werden muss und dann erneut zum Begutachtung versendet wird.','Diese E-Mail von der/dem Redakteur/in oder Rubrikredakteur/in an eine/n Autor/in informiert diese/n über eine getroffene Entscheidung zu ihrer/seiner Einreichung.'),('EDITOR_DECISION_RESUBMIT','en_US','Editor Decision','{$authorName}:<br />\n<br />\nWe have reached a decision regarding your submission to {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nOur decision is to: Resubmit for Review','This email from the Editor or Section Editor to an Author notifies them of a final \"resubmit\" decision regarding their submission.'),('EDITOR_DECISION_RESUBMIT','it_IT','Decisione dell\'editor','{$authorName}:<br />\n<br />\nAbbiamo raggiunto una decisione riguardo alla Sua submission a {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nLa decisione è: mandarla di nuovo in revisione','Messaggio dell\'editor all\'autore per informarlo della decisione conclusiva sulla proposta inviata.'),('EDITOR_DECISION_RESUBMIT','pt_BR','Decisão editorial','{$authorName}:<br />\n<br />\nNós chegamos a uma decisão referente a sua submissão para o periódico {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nNossa decisão é de: Ressubmeter para Avaliação','Esta mensagem do Editor/Editor de Seção ao autor notifica sobre a decisão editorial final tomada sobre a submissão.'),('EDITOR_DECISION_RESUBMIT','ru_RU','Решение редакции','Здравствуйте, {$authorName}!<br />\n<br />\nМы приняли решение относительно Вашего материала «{$submissionTitle}», направленного в журнал «{$contextName}».<br />\n<br />\nНаше решение: Отправить на рецензирование повторно','Это письмо редактора или редактора раздела, отправляемое автору, чтобы уведомить его об окончательном решении «Отправить на рецензирование повторно» относительно присланного материала.'),('EDITOR_DECISION_REVISIONS','cs_CZ','Rozhodnutí editora','{$authorName}:<br />\n<br />\nUčinili jsme rozhodnutí ohledně Vašeho příspěvku do {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nNaše rozhodnutí je: požadujeme přepracování','Tento e-mail od editora nebo editora sekce upozorňuje autora o rozhodnutí „požadujeme recenzi“.'),('EDITOR_DECISION_REVISIONS','da_DK','Redaktørbeslutning','{$authorName}:<br />\n<br />\nVi er nået frem til en afgørelse vedrørende dit bidrag til {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nVi har besluttet følgende: Rettelser er påkrævet','Denne e-mail fra redaktøren eller sektionsredaktøren til en forfatter er en meddelelse om den endelige afgørelse vedrørende deres bidrag.'),('EDITOR_DECISION_REVISIONS','de_DE','Entscheidung der Redaktion','{$authorName},<br />\n<br />\nwir sind zu einer Entscheidung in Bezug auf Ihren Beitrag für {$contextName}: &quot;{$submissionTitle}&quot; gekommen.<br />\n<br />\nWir haben entschieden, dass Ihr Beitrag überarbeitet werden muss.','Diese E-Mail von der/dem Redakteur/in oder Rubrikredakteur/in an eine/n Autor/in informiert diese/n über eine getroffene Entscheidung zu ihrer/seiner Einreichung.'),('EDITOR_DECISION_REVISIONS','en_US','Editor Decision','{$authorName}:<br />\n<br />\nWe have reached a decision regarding your submission to {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nOur decision is: Revisions Required','This email from the Editor or Section Editor to an Author notifies them of a final \"revisions required\" decision regarding their submission.'),('EDITOR_DECISION_REVISIONS','it_IT','Decisione dell\'editor','&lt;![CDATA[{$authorName}:<br />\n<br />\nAbbiamo raggiunto una decisione sulla Sua proposta a {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nLa nostra decisione: è necessaria ciclo di peer-review','Questa mail è inviata dall\'Editor o dal Section Editor  all\'autore quando il manoscritto deve essere revisionato dopo la revisione.'),('EDITOR_DECISION_REVISIONS','pt_BR','Decisão editorial','{$authorName}:<br />\n<br />\nNós chegamos a uma decisão referente a sua submissão para o periódico {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nNossa decisão é de: Revisões Requeridas','Esta mensagem é enviada pelo Editor ou Editor de Seção ao autor, notificando-o da decisão final de \"<strong>Revisões Requeridas</strong>\" tomada sobre a sua submissão.'),('EDITOR_DECISION_REVISIONS','ru_RU','Решение редакции','Здравствуйте, {$authorName}!<br />\n<br />\nМы приняли решение относительно Вашего материала «{$submissionTitle}», направленного в журнал «{$contextName}».<br />\n<br />\nНаше решение: Требуется корректировка','Это письмо редактора или редактора раздела, отправляемое автору, чтобы уведомить его об окончательном решении «Требуется корректировка» относительно присланного материала.'),('EDITOR_DECISION_SEND_TO_EXTERNAL','cs_CZ','Rozhodnutí editora','Vážený(á) {$authorName}:<br />\n<br />\nDosáhli jsme rozhodnutí, které se týká vašeho příspěvku do {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nNaše rozhodnutí je: odeslat k recenzi<br />\n<br />\nWebová adresa příspěvku: {$submissionUrl}','Tento email od editora nebo editora sekce autorovi sděluje, že jejich příspěvek je odesílán k externí recenzi.'),('EDITOR_DECISION_SEND_TO_EXTERNAL','da_DK','Redaktørbeslutning','{$authorName}:<br />\n<br />\nVi er nået frem til en afgørelse vedrørende dit bidrag til {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nVi har besluttet følgende: Fremsendes til bedømmelse<br />\n<br />\nSubmission URL: {$submissionUrl}','Denne e-mail fra redaktøren eller sektionsredaktøren til forfatteren meddeler at indsendelsen videresendes til ekstern bedømmelse.'),('EDITOR_DECISION_SEND_TO_EXTERNAL','de_DE','Entscheidung der Redaktion','{$authorName}:<br />\n<br />\nWir sind zu einer Entscheidung hinsichtlich Ihrer Einreichung für {$contextName}, &quot;{$submissionTitle}&quot; gekommen.<br />\n<br />\nWir haben entschieden, ein Gutachten anzufordern.<br />\n<br />\nURL des Beitrags: {$submissionUrl}','Diese E-Mail von Redakteur/in oder Rubrikredakteur/in benachrichtigt die/den Autor/in darüber, dass ein externes Gutachten angefordert wird.'),('EDITOR_DECISION_SEND_TO_EXTERNAL','en_US','Editor Decision','{$authorName}:<br />\n<br />\nWe have reached a decision regarding your submission to {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nOur decision is to: Send to Review<br />\n<br />\nSubmission URL: {$submissionUrl}','This email from the Editor or Section Editor to an Author notifies them that their submission is being sent to an external review.'),('EDITOR_DECISION_SEND_TO_EXTERNAL','it_IT','Decisione dell\'editor','Gentilissimo {$authorName}:<br />\n<br />\nAbbiamo preso una decisione circa la tua proposta a {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nLa nostra decisione: invio a un revisore esterno<br />\n<br />\nSubmission URL: {$submissionUrl}','Questa mail è inviata dall\'Editor o dal Section Editor all\'autore quando il manoscritto viene assegnato ad un revisore.'),('EDITOR_DECISION_SEND_TO_EXTERNAL','pt_BR','Decisão do Editor','{$authorName}:<br />\n<br />\nNós chegamos a uma decisão referente a sua submissão para o periódico {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nNossa decisão é de: Enviar para avaliação<br />\n<br />\nURL da submissão: {$submissionUrl}','Este e-mail enviado pelo Editor ou Editor de Seção para um autor serve para notificar o mesmo de que sua submissão foi enviada para avaliadores externos.'),('EDITOR_DECISION_SEND_TO_EXTERNAL','ru_RU','Решение редакции','Здравствуйте, {$authorName}!<br />\n<br />\nМы приняли решение относительно Вашего материала «{$submissionTitle}», направленного в журнал «{$contextName}».<br />\n<br />\nНаше решение: Отправить на рецензирование<br />\n<br />\nURL материала: {$submissionUrl}','Это письмо редактора или редактора раздела, отправляемое автору, чтобы уведомить его об отправке материала на внешнее рецензирование.'),('EDITOR_DECISION_SEND_TO_PRODUCTION','cs_CZ','Rozhodnutí editora','{$authorName}:<br />\n<br />\nEditace vašeho příspěvku, &quot;{$submissionTitle},&quot; je hotová.  Posíláme ho nyní do produkční fáze.<br />\n<br />\nWebová adresa příspěvku: {$submissionUrl}','Tento e-mail od editora nebo editora sekce autorovi oznamuje, že jejich podání je odesláno do produkční fáze.'),('EDITOR_DECISION_SEND_TO_PRODUCTION','da_DK','Redaktørbeslutning','{$authorName}:<br />\n<br />\nVi har færdiggjort redigeringen af din indsendelse, &quot;{$submissionTitle}.  Den vil nu blive sendt til publicering.<br />\n<br />\nSubmission URL: {$submissionUrl}','Denne e-mail fra redaktøren eller sektionsredaktøren til forfatteren meddeler at indsendelsen nu sendes til publicering.'),('EDITOR_DECISION_SEND_TO_PRODUCTION','de_DE','Entscheidung der Redaktion','{$authorName}:<br />\n<br />\nDas Lektorat Ihrer Einreichung &quot;{$submissionTitle}&quot; ist beendet. Wir leiten den Beitrag jetzt zur Herstellung weiter.<br />\n<br />\nURL des Beitrags: {$submissionUrl}','Diese E-Mail von Redakteur/in oder Rubrikredakteur/in informiert die/den Autor/in darüber, dass deren Beitrag in die Herstellung weitergeleitet worden ist.'),('EDITOR_DECISION_SEND_TO_PRODUCTION','en_US','Editor Decision','{$authorName}:<br />\n<br />\nThe editing of your submission, &quot;{$submissionTitle},&quot; is complete.  We are now sending it to production.<br />\n<br />\nSubmission URL: {$submissionUrl}','This email from the Editor or Section Editor to an Author notifies them that their submission is being sent to production.'),('EDITOR_DECISION_SEND_TO_PRODUCTION','it_IT','Decisione dell\'editor','Gentilissimo {$authorName}:<br />\n<br />\nLa lavorazione editoriale della sua proposta, &quot;{$submissionTitle},&quot; è completa.  Ora viene preparata per l\'uscita sulla rivista.<br />\n<br />\nURL proposta: {$submissionUrl}','Questa mail è inviata dall\'editor o dall\'editor di sezione all\'autore quando una proposta è stata sistemata dal punto di vista editoriale.'),('EDITOR_DECISION_SEND_TO_PRODUCTION','pt_BR','Decisão do Editor','{$authorName}:<br />\n<br />\nA edição de texto da sua submissão, &quot;{$submissionTitle},&quot; está completa. Agora ela está sendo enviada para  editoração.<br />\n<br />\nURL da submissão: {$submissionUrl}','Este e-mail do Editor ou Editor de Seção para um Autor notifica-os de que seus envios estão sendo enviados para produção.'),('EDITOR_DECISION_SEND_TO_PRODUCTION','ru_RU','Решение редакции','Здравствуйте, {$authorName}!<br />\n<br />\nРедактирование Вашего материала «{$submissionTitle}» завершено. Теперь мы запускаем его в производство.<br />\n<br />\nURL материала: {$submissionUrl}','Это письмо редактора или редактора раздела, отправляемое автору, чтобы уведомить его о запуске материала в производство.'),('EDITOR_RECOMMENDATION','cs_CZ','Doporučení redaktora','{$editors}:<br />\n<br />\nDoporučení k příspěvku {$contextName}, &quot;{$submissionTitle}&quot; je: {$recommendation}','Tento e-mail je od redaktora nebo redaktora sekce pro odpovědného redaktora nebo pro redaktory sekcí - informuje o konečném doporučení ohledně příspěvku.'),('EDITOR_RECOMMENDATION','da_DK','Redaktøranbefaling','{$editors}:<br />\n<br />\nAnbefalingen med hensyn til {$contextName}, &quot;{$submissionTitle}&quot; er: {$recommendation}','Denne e-mail fra den rådgivende redaktør eller sektionsredaktør til de beslutningstagende redaktører eller sektionsredaktører videregiver en endelig anbefaling vedrørende indsendelsen.'),('EDITOR_RECOMMENDATION','de_DE','Entscheidung der Redaktion','{$editors}:<br />\n<br />\nDie Empfehlung hinsichtlich der Einreichung für {$contextName}, &quot;{$submissionTitle}&quot; ist: {$recommendation}','Diese E-Mail von der/dem vorschlagenen Redakteur/in oder Rubrikenredakteur/in an die/den Entscheidungen treffenden Redakteur/in oder Rubrikenredakteur/in informiert diese/n über die endgültige Empfehlung zur vorliegenden Einreichung.'),('EDITOR_RECOMMENDATION','en_US','Editor Recommendation','{$editors}:<br />\n<br />\nThe recommendation regarding the submission to {$contextName}, &quot;{$submissionTitle}&quot; is: {$recommendation}','This email from the recommending Editor or Section Editor to the decision making Editors or Section Editors notifies them of a final recommendation regarding the submission.'),('EDITOR_RECOMMENDATION','it_IT','Raccomandazione dell\'editor','{$editors}:<br />\n<br />\nLa raccomandazione riguardo la proposta &quot;{$submissionTitle}&quot;, giunta per  {$contextName}, è: {$recommendation}','Mail che l\'editor invia al responsabile contenente la raccomandazione su cosa fare di una certa proposta.'),('EDITOR_RECOMMENDATION','pt_BR','Recomendação do Editor','{$editors}:<br />\n<br />\nA recomendação referente à submissão para o periódico {$contextName}, &quot;{$submissionTitle}&quot; é: {$recommendation}','Este e-mail do Editor que recomenda ou do Editor de Seção para os Editores que tomam decisões ou Editores de Seção notifica-os de uma recomendação final sobre a submissão.'),('EDITOR_RECOMMENDATION','ru_RU','Рекомендация редактора','Здравствуйте, {$editors}!<br />\n<br />\nПо материалу «{$submissionTitle}», отправленному в «{$contextName}», могу рекомендовать следующее: {$recommendation}','Это письмо рекомендующего редактора или редактора раздела редакторам или редакторам раздела, принимающим решение, чтобы уведомить их об итоговой рекомендации относительного присланного материала.'),('EMAIL_LINK','cs_CZ','Zajímavý článek','Myslím, že by Vás mohl zajímat článek &quot;{$submissionTitle}&quot; autora {$authorName} vydaný ve Vol {$volume}, No {$number} ({$year}) časopisu {$contextName} na adrese &quot;{$articleUrl}&quot;.','Tato emailová šablona umožňuje registrovanému čtenáři poslat informaci o článku někomu, koho by mohl zajímat. Je dostupná přes Nástroje pro čtení a musí být povolena manažerem časopisu na stránce Správa nástrojů pro čtení.'),('EMAIL_LINK','da_DK','Artikel, der muligvis har din interesse','Jeg tænkte, at du måske ville være interesseret i at læse &quot;{$submissionTitle}&quot; af {$authorName}, der er publiceret i Årg. {$volume}, Nr. {$number} ({$year}) i {$contextName} på &quot;{$articleUrl}&quot;.','Denne e-mail-skabelon giver en registreret læser mulighed for at sende oplysninger om en artikel til en person, der muligvis er interesseret. Den er tilgængelig via læseværktøjerne og skal aktiveres af tidsskriftschefen på siden Administration af læseværktøjer.'),('EMAIL_LINK','de_DE','Möglicherweise interessierender Artikel','Ich dachte, Sie würden sich vielleicht für den Beitrag &quot;{$submissionTitle}&quot; von {$authorName}, veröffentlicht in Band {$volume}, Nummer {$number} ({$year}) von {$contextName} unter &quot;{$articleUrl}&quot;, interessieren.','Diese E-Mail-Vorlage gibt einer registrierten Leserin/einem registrierten Leser die Möglichkeit, Informationen über einen Artikel an jemanden zu senden, die/der sich eventuell dafür interessiert. Sie ist über die Lesewerkzeuge erreichbar und muss von der/dem Zeitschriftenverwalter/in in den Einstellungen der Lesewerkzeuge aktiviert werden.'),('EMAIL_LINK','en_US','Article of Possible Interest','Thought you might be interested in seeing &quot;{$submissionTitle}&quot; by {$authorName} published in Vol {$volume}, No {$number} ({$year}) of {$contextName} at &quot;{$articleUrl}&quot;.','This email template provides a registered reader with the opportunity to send information about an article to somebody who may be interested. It is available via the Reading Tools and must be enabled by the Journal Manager in the Reading Tools Administration page.'),('EMAIL_LINK','it_IT','Ti suggerisco la lettura di un articolo','Penso che potrebbe interessarti la lettura di:<br />\n &quot;{$submissionTitle}&quot; di {$authorName}<br />\npubblicato in {$contextName}, Vol. {$volume}, N. {$number} ({$year}) e disponibile all\'indirizzo &quot;{$articleUrl}&quot;.','Questo modello  email fornisce ad un utente registrato l\'opprtunità di inviare informazioni su un articolo a qualcuno che potrebbe essere interessato. E\' disponibile via utility di lettura e e deve essere abilitata dall\'amministratore della rivista nella pagina di amministrazione delle utility di lettura.'),('EMAIL_LINK','pt_BR','Artigo interessante para sua leitura','Acredito ser de seu interesse o artigo \"{$submissionTitle}\", de {$authorName}, publicado na revista {$contextName}, V. {$volume}, n. {$number}, Ano {$year}, disponível em \"{$articleUrl}\".','Mensagem enviada por um leitor a um colega, sobre um artigo considerado de seu interesse, com link para acesso e informações sobre a revista e a edição onde o documento foi publicado.'),('EMAIL_LINK','ru_RU','Эта статья будет Вам интересна','Полагаем, что Вам будет интересно посмотреть материал «{$submissionTitle}» (авторы: {$authorName}), опубликованную в Томе {$volume}, № {$number} ({$year}) журнала «{$contextName}» по адресу &quot;{$articleUrl}&quot;.','Этот шаблон письма позволяет зарегистрированному читателю возможность отправить информацию о статье тому, кому она может быть интересна. Возможность доступна через «Инструменты читателя» и должна быть включена управляющим журнала на странице «Инструменты читателя: Администрирование».'),('LAYOUT_COMPLETE','cs_CZ','Sazebnice dokončeny','{$editorialContactName}:<br />\n<br />\nNyní jsou vytvořeny sazebnicové verze souborů pro příspěvek &quot;{$submissionTitle}&quot; pro {$contextName} a jsou připraveny pro korektury.<br />\n<br />\nPokud máte nějaké otázky, kontaktujte mě prosím.<br />\n<br />\n{$participantName}','Tento email posílá typograf editorovi sekce, aby mu oznámil, že byl dokončen proces grafických úprav.'),('LAYOUT_COMPLETE','da_DK','Publiceringsversion færdiggjort','{$editorialContactName}:<br />\n<br />\nDer er nu indsat en publiceringsklar fil til manuskriptet &quot;{$submissionTitle}&quot; til {$contextName}, og den er klar til korrekturlæsning. <br />\n<br />\nHvis du har spørgsmål, er du velkommen til at kontakte mig.<br />\n<br />\n{$participantName}','Denne e-mail fra layoutredaktøren til sektionsredaktøren underretter sektionsredaktøren om, at layoutprocessen er fuldført.'),('LAYOUT_COMPLETE','de_DE','Fahnen fertigestellt','{$editorialContactName},<br />\n<br />\ndie Fahnen für das Manuskript &quot;{$submissionTitle}&quot; für {$contextName} sind fertig und stehen zum Korrekturlektorat bereit.<br />\n<br />\nFalls Sie Fragen haben, können Sie sich gerne an mich wenden.<br />\n<br />\n{$participantName}','Diese E-Mail von der/dem Layouter/in an die/den Rubrikredakteur/in benachrichtigt diese/n, dass der Layoutprozess abgeschlossen worden ist.'),('LAYOUT_COMPLETE','en_US','Galleys Complete','{$editorialContactName}:<br />\n<br />\nGalleys have now been prepared for the manuscript, &quot;{$submissionTitle},&quot; for {$contextName} and are ready for proofreading.<br />\n<br />\nIf you have any questions, please contact me.<br />\n<br />\n{$participantName}','This email from the Layout Editor to the Section Editor notifies them that the layout process has been completed.'),('LAYOUT_COMPLETE','it_IT','Bozze pronte','{$editorialContactName}:<br />\n<br />\nSono pronte le bozze dell\'articolo, &quot;{$submissionTitle}&quot; per {$contextName}, a disposizione per i correttori di bozze.<br />\n<br />\nPer qualsiasi domanda, si prega di contattarmi.<br />\n<br />\n{$participantName}','Questa email dal layout editor al section editor notifica che il processo di layout è stato completato.'),('LAYOUT_COMPLETE','pt_BR','Composições concluídas','{$editorialContactName}: <br />\n<br />\nAs provas topográficas já foram preparadas para o manuscrito &quot;{$submissionTitle} &quot; para {$contextName} e estão prontas para a revisão.<br />\n<br />\nSe você tiver alguma dúvida, favor entrar em contato comigo. <br />\n<br />\n{$participantName}','Mensagem enviada pelo Editor de Layout ao Editor de Seção, informando sobre a conclusão das composições.'),('LAYOUT_COMPLETE','ru_RU','Гранки сделаны','Здравствуйте, {$editorialContactName}!<br />\n<br />\nГранки для материала «{$submissionTitle}» в журнал «{$contextName}» уже готовы, можно начинать корректуру.<br />\n<br />\nЕсли у Вас есть какие-либо вопросы, пожалуйста, свяжитесь со мной.<br />\n<br />\n{$participantName}','Это письмо верстальщика, отправляемое редактору раздела с уведомлением о том, что верстка завершена.'),('LAYOUT_REQUEST','cs_CZ','Žádost o sazebnice','{$participantName}:<br />\n<br />\nPříspěvek &quot;{$submissionTitle}&quot; pro {$contextName} je nyní třeba připravit do sazenicového formátu podle následujících instrukcí.<br />\n1. Klikněte níže na URL příspěvku.<br />\n2. Přihlaste se do časopisu a pro vytvoření sazebnice podle standardů časopisu použijte verzi souboru pro grafické úpravy.<br />\n3. Nahrajte upravené soubory do sekce Soubory sazebnic.<br />\n4. Upozorněteč redaktora pomocí diskuse v produkční fázi, že sazebnice jsou hotové.<br />\n<br />\n{$contextName} URL: {$contextUrl}<br />\nURL příspěvku: {$submissionUrl}<br />\nUživatelské jméno: {$participantUsername}<br />\n<br />\nPokud nyní nemůžete tento úkol provést nebo máte nějaké dotazy, kontaktujte mě prosím. Děkujeme za Vaši pomoc našemu časopisu.','Tento email posílá editor sekce typografovi, aby mu oznámil, že mu byl přidělen úkol provést typografické úpravy příspěvku. Obsahuje informace o příspěvku a přístupu k němu.'),('LAYOUT_REQUEST','da_DK','Forespørgsel om publiceringsversion','{$participantName}:<br />\n<br />\nIndsendelsen &quot;{$submissionTitle}&quot; til {$contextName} skal nu gøres publiceringsklar ved at følge disse trin.<br />\n1. Klik på manuskriptets URL-adresse nedenfor.<br />\n2. Hent filerne placeret under ‘Produktionsklare filer’ og formater dem til publiceringsklare filer i overensstemmelse med tidsskriftets krav.<br />\n3. Upload de publiceringsklare filer via linket ‘Tilføj publiceringsversion’.<br />\n4. Giv redaktøren besked når publiceringsversionen er klar via linket ‘Tilføj indlæg’ under ‘Drøftelser under produktion’.<br />\n<br />\n{$contextName} URL: {$contextUrl}<br />\nSubmission URL: {$submissionUrl}<br />\nUsername: {$participantUsername}<br />\n<br />\nHvis du ikke er i stand til at påtage dig dette arbejde på nuværende tidspunkt eller har spørgsmål, bedes du kontakte mig. Tak for dit bidrag til dette tidsskrift.','Denne e-mail fra sektionsredaktøren til layoutredaktøren underretter layoutredaktøren om, at han/hun har fået til opgave at foretage layoutredigering af et manuskript. Den indeholder oplysninger om manuskriptet og om, hvordan der oprettes adgang til det.'),('LAYOUT_REQUEST','de_DE','Bitte um Layout','{$participantName},<br />\n<br />\nich bitte Sie um das Layout der Fahnen für das Manuskript &quot;{$submissionTitle}&quot; für {$contextName}. Bitte gehen Sie folgendermaßen vor:<br />\n<br />\n1. Klicken Sie auf die unten stehende URL des Beitrags.<br />\n2. Loggen Sie sich bei der Zeitschrift ein und verwenden Sie die Datei der Layout-Fassung, um die Fahne entsprechend den Vorgaben der Zeitschrift zu erstellen.<br />\n3. Schicken Sie die ABGESCHLOSSEN-E-Mail an die Redaktion.<br />\n<br />\nURL {$contextName}: {$contextUrl}<br />\nURL des Beitrags: {$submissionUrl}<br />\nBenutzer/innenname: {$participantUsername}<br />\n<br />\nFalls Sie zur Zeit nicht in der Lage sein sollten, die Arbeit zu übernehmen, oder Fragen haben, geben Sie mir bitte Bescheid. Vielen Dank für Ihre Unterstützung dieser Zeitschrift.','Diese E-Mail von der/dem Rubrikredakteur/in an die/den Layouter/in benachrichtigt diese/n, dass ihr/ihm die Aufgabe zugewiesen wird, einen Beitrag zu layouten. Sie liefert Informationen über den Beitrag und darüber, wie auf ihn zugegriffen werden kann.'),('LAYOUT_REQUEST','en_US','Request Galleys','{$participantName}:<br />\n<br />\nThe submission &quot;{$submissionTitle}&quot; to {$contextName} now needs galleys laid out by following these steps.<br />\n1. Click on the Submission URL below.<br />\n2. Log into the journal and use the Production Ready files to create the galleys according to the journal\'s standards.<br />\n3. Upload the galleys to the Galley Files section.<br />\n4. Notify the Editor using Production Discussions that the galleys are uploaded and ready.<br />\n<br />\n{$contextName} URL: {$contextUrl}<br />\nSubmission URL: {$submissionUrl}<br />\nUsername: {$participantUsername}<br />\n<br />\nIf you are unable to undertake this work at this time or have any questions, please contact me. Thank you for your contribution to this journal.','This email from the Section Editor to the Layout Editor notifies them that they have been assigned the task of performing layout editing on a submission. It provides information about the submission and how to access it.'),('LAYOUT_REQUEST','it_IT','Richiesta preparazione delle bozze','{$participantName}:<br />\n<br />\nVorrei chiederti di preparare le bozze per il manoscritto &quot;{$submissionTitle}&quot; per {$contextName}.<br />\n<br />\n{$contextName} URL: {$contextUrl}<br />\nURL manoscritto: {$submissionUrl}<br />\nUsername: {$participantUsername}<br />\n<br />\nSe non puoi prendere in carico il lavoro in questo periodo o hai qualche domanda, ti prego di contattarmi. \n<br />\nGrazie per la tua collaborazione.','Questa email dal section editor al layout editor notifica che è stato assegnato loro il compito di curare il layout di una submission. Questa fornisce informazioni sulla submission e su come accedervi.'),('LAYOUT_REQUEST','pt_BR','Solicitação de composições','{$participantName}:<br />\n<br />\nA submissão &quot;{$submissionTitle}&quot; para {$contextName} de provas tipográficas, conforme as seguintes etapas. <br />\n1. Clique na URL de Submissão abaixo. <br />\n2. Faça login no periódico e use os arquivos Prontos para Produção para criar as provas de acordo com os padrões do periódico. <br />\n3. Carregue as provas na seção Arquivos de Prova. <br />\n4. Notifique o Editor, usando as Discussões de Produção, informando de que as provas estão carregadas e prontas. <br />\n<br />\nURL de {$contextName}: {$contextUrl} <br />\nURL da submissão: {$submitUrl} <br />\nNome de usuário: {$participantUsername} <br />\n<br />\nSe você não conseguir realizar esse trabalho no momento ou tiver alguma dúvida, entre em contato comigo. Obrigado por sua contribuição para este periódico.','Mensagem enviada pelo Editor de Seção ao Editor de Layout, solicitando que sejam preparadas as Composições do texto final, com informações de acesso.'),('LAYOUT_REQUEST','ru_RU','Запрос на верстку','Здравствуйте, {$participantName}!<br />\n<br />\nНеобходимо сверстать гранки материала «{$submissionTitle}» для журнала «{$contextName}», выполнив следующие шаги.<br />\n1. Щелкните на URL материала ниже.<br />\n2. Войдите в журнал и используйте файлы из панели «Готовые для производства» для подготовки гранок в в соответствии со стандартами журнала.<br />\n3. Загрузите файлы гранок в панели «Гранки».<br />\n4. Уведомите редактора с помощью Обсуждений производства, что гранки загружены и готовы.<br />\n<br />\nURL журнала «{$contextName}»: {$contextUrl}<br />\nURL материала: {$submissionUrl}<br />\nИмя пользователя: {$participantUsername}<br />\n<br />\nЕсли Вы не можете выполнить эту работу сейчас или у Вас есть какие-либо вопросы, пожалуйста, свяжитесь со мной. Спасибо за Ваш вклад в наш журнал.','Это письмо редактора раздела, отправляемое верстальщику с уведомлением о том, что ему поручено выполнить верстку материала. В письме содержится информация о материале и о том, как получить к нему доступ.'),('LOCKSS_EXISTING_ARCHIVE','cs_CZ','Žádost o archivaci pro {$contextName}','Vážený [univerzitní knihovník]<br />\n<br />\n{$contextName} &amp;lt;{$contextUrl}&amp;gt; je časopis, ve kterém pracovník Vaší univerzity [jméno pracovníka] zastává pozici [název pozice]. Tento časopis má zájem vybudovat archiv kopatibilní s programem LOCKSS (Lots of Copies Keep Stuff Safe) společně s touto knihovnou a dalšími univerzitními knihovnami.<br />\n<br />\n[Krátký popis časopisu]<br />\n<br />\nURL k Prohlášení LOCKSS vydavatele pro náš časopis je: {$contextUrl}/gateway/lockss<br />\n<br />\nChápeme, že jste již zapojeni do LOCKSS. Pokud můžeme poskytnout jakákoliv dodatečná metadata pro účely zaregistrování našeho časopisu do Vaší verze LOCKSS, velice rádi Vám je dodáme.<br />\n<br />\nDěkujeme,<br />\n{$principalContactSignature}','Tento email žádá vlastníka LOCKSS archivu, aby zvážil zařazení tohoto časopisu do svého archivu. Obsauje URL k Prohlášení LOCKSS vydavatele časopisu.'),('LOCKSS_EXISTING_ARCHIVE','da_DK','Forespørgsel om arkivering af {$contextName}','Kære [universitetsbibliotekar]<br />\n<br />\n{$contextName} &amp;lt;{$contextUrl}&amp;gt; er et tidsskrift, hvor et medlem af dit fakultet, [navn på medlem], fungerer som [stillingsbetegnelse]. Tidsskriftet forsøger at etablere et LOCKSS-kompatibelt (Lots of Copies Keep Stuff Safe) arkiv med dette og andre universitetsbiblioteker.<br />\n<br />\n[Kort beskrivelse af tidsskrift]<br />\n<br />\nURL-adressen til LOCKSS Publisher Manifest for vores tidsskrift er: {$contextUrl}/gateway/lockss<br />\n<br />\nVi er klar over, at du allerede deltager i LOCKSS. Hvis vi kan stå til rådighed med yderligere metadata med henblik på at få vores tidsskrift registreret med din version af LOCKSS, gør vi gerne dette.<br />\n<br />\nTak.<br />\n{$principalContactSignature}','Denne e-mail anmoder den ansvarlige for et LOCKSS-arkiv om at overveje at inkludere dette tidsskrift i deres arkiv. Den indeholder URL-adressen til tidsskriftets LOCKSS Publisher Manifest.'),('LOCKSS_EXISTING_ARCHIVE','de_DE','Bitte um Archivierung von {$contextName}','Sehr geehrte/r [Bibliotheksleiter/in],<br />\n<br />\n{$contextName} &amp;lt;{$contextUrl}&amp;gt; ist eine Zeitschrift, an der ein Mitglied Ihrer Universität, [Name], als [Mitarbeiterfunktion] mitarbeitet. Die Zeitschrift beabsichtigt, mit Ihrer und anderen Universitätsbibliotheken ein mit LOCKSS (Lots of Copies Keep Stuff Safe) kompatibles Archiv aufzubauen.<br />\n<br />\n[Kurze Beschreibung der Zeitschrift]<br />\n<br />\nDie Webadresse der LOCKSS-Erklärung für unsere Zeitschrift ist: {$contextUrl}/gateway/lockss<br />\n<br />\nWir gehen von der Annahme aus, dass Sie bereits an LOCKSS beteiligt sind. Falls weitere Metadaten zur Aufnahme unserer Zeitschrift in Ihre Version von LOCKSS gebraucht werden, stellen wir sie Ihnen gern zur Verfügung.<br />\n<br />\nVielen Dank,<br />\n{$principalContactSignature}','Diese E-Mail bittet die/den Verwalter/in eines LOCKSS-Archivs zu überlegen, diese Zeitschrift in ihr/sein Archiv aufzunehmen. Sie liefert die URL zur LOCKSS-Erklärung der Herausgeber/innen der Zeitschrift.'),('LOCKSS_EXISTING_ARCHIVE','en_US','Archiving Request for {$contextName}','Dear [University Librarian]<br />\n<br />\n{$contextName} &amp;lt;{$contextUrl}&amp;gt;, is a journal for which a member of your faculty, [name of member], serves as a [title of position]. The journal is seeking to establish a LOCKSS (Lots of Copies Keep Stuff Safe) compliant archive with this and other university libraries.<br />\n<br />\n[Brief description of journal]<br />\n<br />\nThe URL to the LOCKSS Publisher Manifest for our journal is: {$contextUrl}/gateway/lockss<br />\n<br />\nWe understand that you are already participating in LOCKSS. If we can provide any additional metadata for purposes of registering our journal with your version of LOCKSS, we would be happy to provide it.<br />\n<br />\nThank you,<br />\n{$principalContactSignature}','This email requests the keeper of a LOCKSS archive to consider including this journal in their archive. It provides the URL to the journal\'s LOCKSS Publisher Manifest.'),('LOCKSS_EXISTING_ARCHIVE','it_IT','Richiesta di archiviazione per {$contextName}','Caro [Bibliotecario dell\'Universita\']<br />\n<br />\n{$contextName} &lt;{$contextUrl}&gt; è una testata con la quale un vostro membro  [nome del membro], collabora come [posizione]  sta cercando di instaurare un archivio condiviso LOCKSS (Lots of Copies Keep Stuff Safe) con questa e altre biblioteche universitarie.<br />\n<br />\n[Breve descrizione del journal]<br />\n<br />\nLa URL al manifesto di pubblicazione del LOCKSS  per il nostro journal &amp;#x00E8;: {$contextUrl}/gateway/lockss<br />\n<br />\nComprendiamo che state gi&amp;#x00E0; partecipando al LOCKSS. Se possiamo fornire qualsiasi metadato aggiuntivo per scopi di registrazione al nostro journal con la vostra versione del LOCKSS, saremo felici di fornirvelo.<br />\n<br />\nGrazie,<br />\n{$principalContactSignature}','Questa email richiede al controllore di un archivio LOCKSS di considerare di includere questo journal nei loro archivi. Questa fornisce una URL al LOCKSS Publisher Manifest del journal.'),('LOCKSS_EXISTING_ARCHIVE','pt_BR','Solicitação para Arquivamento de {$contextName}','Prezado(a) [bibliotecário(a) da universidade]<br />\n<br />\n{$contextName} &amp;lt;{$contextUrl}&amp;gt;, é um periódico para o qual um membro de sua instituição, [nome do membro], serve como [título da posição]. O periódico está buscando estabelecer um arquivo compatível com LOCKSS (Lots of Copies Keep Stuff Safe) com esta e outras bibliotecas universitárias.<br />\n<br />\n[Breve descrição do periódico]<br />\n<br />\nA URL do Manifesto do Publicador LOCKSS para nosso periódico é: {$contextUrl}/gateway/lockss<br />\n<br />\nEntendemos que você já está participando do LOCKSS. Se pudermos fornecer metadados adicionais para registrar nosso periódico com sua versão do LOCKSS, teremos prazer em fornecê-los.<br />\n<br />\nAtenciosamente,<br />\n{$principalContactSignature}','Esta mensagem solicita ao mantenedor de um repositório LOCKSS que considere incluir este periódico em seu acervo, informando a URL para o Manifesto LOCKSS da editora.'),('LOCKSS_EXISTING_ARCHIVE','ru_RU','Запрос на архивацию для журнала «{$contextName}»','Уважаемый [библиотекарь университета]!<br />\n<br />\n«{$contextName}» &amp;lt;{$contextUrl}&amp;gt; — журнал, в котором сотрудник Вашего университета, [имя сотрудника], занимает должность [название должности]. Наш журнал хотел бы создать LOCKSS(Lots of Copies Keep Stuff Safe)-совместимый архив с библиотеками Вашего и других университетов.<br />\n<br />\n[Краткое описание журнала]<br />\n<br />\nURL манифеста издателя LOCKSS для нашего журнала: {$contextUrl}/gateway/lockss<br />\n<br />\nМы знаем, что Вы уже участвуете в LOCKSS. Если мы можем предоставить любые дополнительные метаданные для регистрации нашего журнала в Вашей версии LOCKSS, мы будем рады это сделать.<br />\n<br />\nС уважением,<br />\n{$principalContactSignature}','Это письмо является обращением к владельцу LOCKSS архива с просьбой рассмотреть возможность включения этого журнала в их архив. В письме сообщается адрес (URL) манифеста издателя LOCKSS для этого журнала.'),('LOCKSS_NEW_ARCHIVE','cs_CZ','Žádost o archivaci pro {$contextName}','Vážený [univerzitní knihovník]<br />\n<br />\n{$contextName} &amp;lt;{$contextUrl}&amp;gt; je časopis, ve kterém pracovník Vaší univerzity [jméno pracovníka] zastává pozici [název pozice]. Tento časopis má zájem vybudovat archiv kopatibilní s programem LOCKSS (Lots of Copies Keep Stuff Safe) společně s touto knihovnou a dalšími univerzitními knihovnami.<br />\n<br />\n[Krátký popis časopisu]<br />\n<br />\nProgram LOCKSS &amp;lt;http://lockss.org/&amp;gt;, mezinárodní iniciativa knihoven/vydavatelů, je fungujícím příkladem archivačního úložiště s distribuovanou ochranou. Další detaily viz níže. Software, který funguje na pěžném osobním počítači, je zdarma; systém je snadno převoditelný on-line; je vyžadováno velmi málo následné údržby.<br />\n<br />\nZ důvodu pomoci při archivování našeho časopisu Vás zveme, abyste se stal členem LOCKSS komunity a pomáhal tak shromažďovat a zachovávat práci produkovanou pracovníky Vaší univerzity i dalších vědeckých pracovníků z celého světa. Abyste tak mohl učinit, pověřte prosím někoho z Vašich pracovníků, ať navštíví stránky LOCKSS, kde najde informace, jak tento systém pracuje. Těším se, že se mě budete infomovat o možnostech poskytnutí archivační podpory tonuto časopisu.<br />\n<br />\nDěkujeme,<br />\n{$principalContactSignature}','Tento email pobízí příjemce, aby se zapojil do LOCKSS iniciativy a zahrnul tento časopis do archivu. Obsahuje informace o LOCKSS iniciativě a způsobu, jak se do ní zapojit.'),('LOCKSS_NEW_ARCHIVE','da_DK','Forespørgsel om arkivering af {$contextName}','Kære [universitetsbibliotekar]<br />\n<br />\n{$contextName} &amp;lt;{$contextUrl}&amp;gt; er et tidsskrift, hvor et medlem af dit fakultet, [navn på medlem], fungerer som [stillingsbetegnelse]. Tidsskriftet forsøger at etablere et LOCKSS-kompatibelt (Lots of Copies Keep Stuff Safe) arkiv med dette og andre universitetsbiblioteker.<br />\n<br />\n[Kort beskrivelse af tidsskrift]<br />\n<br />\nLOCKSS-programmet &amp;lt;http://lockss.org/&amp;gt;, der er et internationalt biblioteks-/forlagsinitiativ, er et velfungerende eksempel på et distribueret bevarings- og arkiveringslager. Der findes flere oplysninger nedenfor. Softwaren, som kører på almindelige pc\'er, er gratis. Det er nemt at få systemet til at køre online, og den løbende vedligeholdelse af systemet er meget begrænset.<br />\n<br />\nMed henblik på at få hjælp til arkivering af vores tidsskrift inviterer vi dig til at blive medlem af LOCKSS-programmet, hvor du skal hjælpe med at indsamle og bevare titler, der er produceret af dit fakultet og af andre videnskabsmænd rundt om i verden. Det gør du ved at få en af dine medarbejdere til at besøge LOCKSS-webstedet, hvor der findes oplysninger om, hvordan systemet fungerer. Jeg ser frem til at høre, om du har mulighed for at yde denne arkiveringssupport for dette tidsskrift.<br />\n<br />\nTak.<br />\n{$principalContactSignature}','Denne e-mail opfordrer modtageren til at deltage i LOCKSS-initiativet og inkludere dette tidsskrift i arkivet. Den indeholder oplysninger om LOCKSS-initiativet og om måder, hvorpå du kan deltage.'),('LOCKSS_NEW_ARCHIVE','de_DE','Bitte um Archivierung von {$contextName}','Sehr geehrte/r [Bibliotheksleiter/in],<br />\n<br />\n{$contextName} &amp;lt;{$contextUrl}&amp;gt; ist eine Zeitschrift, an der ein Mitglied Ihrer Universität, [Name], als [Mitarbeiterfunktion] mitarbeitet. Die Zeitschrift beabsichtigt, mit Ihrer und anderen Universitätsbibliotheken ein mit LOCKSS (Lots of Copies Keep Stuff Safe) kompatibles Archiv aufzubauen.<br />\n<br />\n[Kurze Beschreibung der Zeitschrift]<br />\n<br />\nDas LOCKSS-Programm &amp;lt;http://lockss.stanford.edu/&amp;gt;, eine internationale Initiative von Bibliotheken und Verlagen, ist ein funktionierendes verteiltes System zur Erhaltung und zur Archivierung; nähere Einzelheiten finden Sie weiter unten. Die auf jedem gewöhnlichen Rechner laufende Software ist frei; das System lässt sich leicht online bringen; es braucht wenig Wartung.<br />\n<br />\nFalls Sie sich an der Archivierung unserer Zeitschrift beteiligen möchten, laden wir Sie ein, Mitglied der LOCKSS-Community zu werden und mitzuhelfen, Texte aus Ihrer Einrichtung und von Wissenschaftler/innen aus der ganzen Welt zu sammeln und zu erhalten. Dazu sollte sich jemand aus Ihrer Einrichtung auf der Webseite von LOCKSS darüber informieren, wie dieses System funktioniert. Wir freuen uns darauf, von Ihnen zu hören, um die Möglichkeit Ihre Unterstützung bei der Archivierung dieser Zeitschrift und erwarten gern Ihre Antwort zur konkreten Vorgehensweise.<br />\n<br />\nVielen Dank,<br />\n{$principalContactSignature}','Diese E-Mail ermuntert die Empfängerin/den Empfänger, an der LOCKSS-Initiative teilzunehmen und diese Zeitschrift in das Archiv aufzunehmen. Sie liefert Informationen über die LOCKSS-Initiative und über Wege, daran teilzunehmen.'),('LOCKSS_NEW_ARCHIVE','en_US','Archiving Request for {$contextName}','Dear [University Librarian]<br />\n<br />\n{$contextName} &amp;lt;{$contextUrl}&amp;gt;, is a journal for which a member of your faculty, [name of member] serves as a [title of position]. The journal is seeking to establish a LOCKSS (Lots of Copies Keep Stuff Safe) compliant archive with this and other university libraries.<br />\n<br />\n[Brief description of journal]<br />\n<br />\nThe LOCKSS Program &amp;lt;http://lockss.org/&amp;gt;, an international library/publisher initiative, is a working example of a distributed preservation and archiving repository, additional details are below. The software, which runs on an ordinary personal computer is free; the system is easily brought on-line; very little ongoing maintenance is required.<br />\n<br />\nTo assist in the archiving of our journal, we invite you to become a member of the LOCKSS community, to help collect and preserve titles produced by your faculty and by other scholars worldwide. To do so, please have someone on your staff visit the LOCKSS site for information on how this system operates. I look forward to hearing from you on the feasibility of providing this archiving support for this journal.<br />\n<br />\nThank you,<br />\n{$principalContactSignature}','This email encourages the recipient to participate in the LOCKSS initiative and include this journal in the archive. It provides information about the LOCKSS initiative and ways to become involved.'),('LOCKSS_NEW_ARCHIVE','it_IT','Archiviare richiesta per {$contextName}','Cara [biblioteca universitaria]<br />\n<br />\n{$contextName} &amp;lt;{$contextUrl}&amp;gt;, &amp;amp;#x00E8; un journal per cui un membro della vostra facolt&amp;amp;#x00E0;, [nome del membro], presta servizio come [posizione]. Il journal sta cercando di instaurare un archivio condiviso LOCKSS (Lots of Copies Keep Stuff Safe) con questa e altre biblioteche universitarie.<br />\n<br />\n[Breve descrizione del journal]<br />\n<br />\nIl programma LOCKSS &amp;lt;http://lockss.org/&amp;gt;, una iniziativa biblioteca/editore, &amp;amp;#x00E8; un esempio funzionante di un deposito distribuito di preservazione e archiviazione, dettagli aggiuntivi sono di sotto. Il software, che funziona su personal computer ordinario &amp;amp;#x00E8; libero; il sistema &amp;amp;#x00E8; portato facilmente on-line; la manutenzione continua &amp;amp;#x00E8; pochissima.<br />\n<br />\nPer assistere nell\'archiviazione del nostro journal, vi invitiamo a diventare membri della comunit&amp;amp;#x00E0; LOCKSS, per aiutare a collezionare e preservare titoli prodotti dalla vostra facolt&amp;amp;#x00E0; e di altri studiosi a livello mondiale. Per fare questo, si prega di avere qualcuno nel vostro staff che visiti il sito LOCKSS per informazioni su come il sistema opera. Aspetto con impazienza di sentire a voi la possibilit&amp;amp;#x00E0; di fornire questo supporto di archiviazione per questo journal.<br />\n<br />\nGrazie,<br />\n{$principalContactSignature}','Questa email incoraggia il destinatario a partecipare all\'iniziativa LOCKSS e a includere questo journal nell\'archivio. Questa fornisce informazioni sull\'iniziativa LOCKSS e sui modi per farne parte.'),('LOCKSS_NEW_ARCHIVE','pt_BR','Solicitação de inclusão da revista {$contextName} em seu arquivo','Prezado(a) [Bibliotecário(a) da Universidade]<br />\n<br />\n{$contextName} &amp;lt;{$contextUrl}&amp;gt;, é um periódico no qual um membro de sua instituição, [nome do membro], serve como [título da posição]. O periódico está buscando estabelecer um acervo compatível com o LOCKSS (Lots of Copies Keep Stuff Safe) com esta e outras bibliotecas universitárias.<br />\n<br />\n[Breve descrição do periódico]<br />\n<br />\nO Programa LOCKSS &amp;lt;http://lockss.org/&amp;gt;, uma iniciativa internacional entre bibliotecas e editoras, é um exemplo prático de um repositório de preservação e arquivamento distribuído, conforme detalhes adicionais abaixo. O software, que roda em um computador pessoal comum, é gratuito; o sistema é facilmente colocado online; e pouca manutenção é necessária.<br /> \n<br />\nPara ajudar no arquivamento de nosso periódico, convidamos você a se tornar um membro da comunidade LOCKSS, para ajudar a coletar e preservar títulos produzidos por seu corpo docente e por outros acadêmicos no mundo todo. Para fazer isso, peça a alguém da sua equipe que visite o site da LOCKSS para obter informações sobre como este sistema opera. Agradeço seu retorno a respeito da viabilidade de fornecer esse suporte de arquivamento para este periódico. <br />\n<br />\nAtenciosamente,<br />\n{$principalContactSignature}','Mensagem convida o destinatário a participar da iniciativa LOCKSS e incluir a revista no seu repositório. O e-mail oferece informações iniciais e sobre como participar na iniciativa LOCKSS e formas de se envolver.'),('LOCKSS_NEW_ARCHIVE','ru_RU','Запрос на архивацию для журнала «{$contextName}»','Уважаемый [библиотекарь университета]!<br />\n<br />\n«{$contextName}» &amp;lt;{$contextUrl}&amp;gt; — журнал, в котором сотрудник Вашего университета, [имя сотрудника], занимает должность [название должности]. Наш журнал хотел бы создать LOCKSS(Lots of Copies Keep Stuff Safe)-совместимый архив с библиотеками Вашего и других университетов.<br />\n<br />\n[Краткое описание журнала]<br />\n<br />\nПрограмма LOCKSS &amp;lt;http://lockss.org/&amp;gt; — международная инициатива библиотек и издателей, работающий пример распределенного архивного хранилища (подробности об этом ниже). Программное обеспечение, запускаемое на обычном персональном компьютере, является бесплатным; система легко подключается к сети Интернет; практически не требует усилий под поддержанию в рабочем состоянии.<br />\n<br />\nЧтобы помочь в архивации нашего журнала, мы приглашаем Вас стать членом сообщества LOCKSS, чтобы помочь собирать и сохранять статьи, созданные сотрудниками Вашего университета и другими учеными по всему миру. Чтобы сделать это, пожалуйста, поручите кому-то из Вашего персонала зайти на сайт LOCKSS, чтобы узнать информацию о том, как работает эта система. Жду Вашего ответа о возможности предоставить эту архивную поддержку для нашего журнала.<br />\n<br />\nС уважением,<br />\n{$principalContactSignature}','Это письмо предлагает получателю принять участие в инициативе LOCKSS и включить этот журнал в архив. В письме содержится информация об инициативе LOCKSS initiative и способах к ней присоединиться.'),('MANUAL_PAYMENT_NOTIFICATION','cs_CZ','Oznámení o manuální platbě','Je třeba zpracovat manuální platbu pro časopis {$contextName} a uživatele {$userFullName} (uživatelské jméno &quot;{$userName}&quot;).<br />\n<br />\nPoložka, za kterou je placeno &quot;{$itemName}&quot;.<br />\nCena je {$itemCost} ({$itemCurrencyCode}).<br />\n<br />\nTento email byl vygenerován OJS pluginem Manuální platby.','Tato e-mailová šablona slouží k upozornění kontaktu manažera časopisu, že byla požadována manuální platba.'),('MANUAL_PAYMENT_NOTIFICATION','da_DK','Meddelelse om manuel betaling','Der skal gennemføres en manuel betaling for tidsskriftet {$contextName} og brugeren {$userFullName} (username &quot;{$userName}&quot;).<br /></br>\n</br>\nBetalingen vedrører &quot;{$itemName}&quot;.<br />\nPrisen er {$itemCost} ({$itemCurrencyCode}).</br>\n</br>\nDenne e-mail blev genereret af Open Journal Systems\' plugin for manuelle betalinger.','Denne e-mail bruges til at meddele en af tidsskriftschefens kontakter, at der skal foretage en manuel betaling.'),('MANUAL_PAYMENT_NOTIFICATION','de_DE','Benachrichtigung über manuelle Zahlung','Eine manuelle Zahlung ist für die Zeitschrift {$contextName} und den/die Benutzer/in {$userFullName} (Benutzer/innen-Name &quot;{$userName}&quot;) angekündigt worden.<br />\n<br />\nGezahlt werden soll für &quot;{$itemName}&quot;.<br />\nDie Kosten betragen {$itemCost} ({$itemCurrencyCode}).<br />\n<br />\nDiese E-Mail wurde vom OJS-Plugin Manuelle Gebührenzahlung erzeugt.','Diese E-Mail-Vorlage wird genutzt, um eine/n Zeitschriftenverwalter/in darüber zu benachrichtigen, dass eine manuelle Zahlung beantragt worden ist.'),('MANUAL_PAYMENT_NOTIFICATION','en_US','Manual Payment Notification','A manual payment needs to be processed for the journal {$contextName} and the user {$userFullName} (username &quot;{$userName}&quot;).<br />\n<br />\nThe item being paid for is &quot;{$itemName}&quot;.<br />\nThe cost is {$itemCost} ({$itemCurrencyCode}).<br />\n<br />\nThis email was generated by Open Journal Systems\' Manual Payment plugin.','This email template is used to notify a journal manager contact that a manual payment was requested.'),('MANUAL_PAYMENT_NOTIFICATION','it_IT','Notifica di pagamento manuale','Bisogna registrare un pagamento offline per  {$contextName}, utente {$userFullName} (username &quot;{$userName}&quot;).<br />\n<br />\nIl pagamento riguarda &quot;{$itemName}&quot;.<br />\nIl costo è {$itemCost} ({$itemCurrencyCode}).<br />\n<br />\nQuesta email è generata automaticamente da Open Journal Systems\' Manual Payment plugin.','Questo template viene usato per notificare a journal manager che un pagamento manuale è stato richiesto.'),('MANUAL_PAYMENT_NOTIFICATION','pt_BR','Notificação de pagamento manual','É necessário realizar o processamento de um pagamento manual de assinatura da revista {$contextName}, pelo usuário {$userFullName} (login &quot;{$userName}&quot;).<br />\n<br />\nO item adquirido é &quot;{$itemName}&quot;.<br />\nValor em ({$itemCurrencyCode}): {$itemCost}<br />\n<br />\nEsta é uma mensagem automática da ferramenta de Pagamento manual do Open Journal Systems.','Mensagem automática notificando editor-gerente que um pagamento manual foi realizado e exige processamento.'),('MANUAL_PAYMENT_NOTIFICATION','ru_RU','Уведомление о платеже','Необходимо вручную обработать платеж для журнала «{$contextName}» и пользователя {$userFullName} (имя пользователя «{$userName}»).<br />\n<br />\nОплата вносится за «{$itemName}».<br />\nСумма {$itemCost} ({$itemCurrencyCode}).<br />\n<br />\nЭто письмо сгенерировано модулем «Ввод оплаты вручную» системы Open Journal Systems.','Этот шаблон письма используется для уведомления управляющего журналом о том, что был запрошен ввод оплаты вручную.'),('NOTIFICATION','cs_CZ','Nové oznámení od {$siteTitle}','Máte nové oznámení od {$siteTitle}:<br />\n<br />\n{$notificationContents}<br />\n<br />\nOdkaz: {$url}<br />\n<br />\n{$principalContactSignature}','E-mail se odešle registrovaným uživatelům, kteří mají povolený příjem tohoto typu oznámení.'),('NOTIFICATION','da_DK','Ny meddelelse fra {$siteTitle}','Du har modtaget en ny meddelelse fra {$siteTitle}:<br />\n<br />\n{$notificationContents}<br />\n<br />\nLink: {$url}<br />\n<br />\n{$principalContactSignature}','Denne e-mail er blevet sendt til registrerede brugere, som har valgt at få tilsendt denne type meddelelser.'),('NOTIFICATION','de_DE','Neue Benachrichtigung von {$siteTitle}','Sie haben eine neue Benachrichtigung von {$siteTitle}:<br />\n<br />\n{$notificationContents}<br />\n<br />\nLink: {$url}<br />\n<br />\n{$principalContactSignature}','Diese E-Mail wird an angemeldete Benutzer/innen geschickt, die sich für diese Art der Benachrichtigung angemeldet haben.'),('NOTIFICATION','en_US','New notification from {$siteTitle}','You have a new notification from {$siteTitle}:<br />\n<br />\n{$notificationContents}<br />\n<br />\nLink: {$url}<br />\n<br />\n{$principalContactSignature}','The email is sent to registered users that have selected to have this type of notification emailed to them.'),('NOTIFICATION','it_IT','Nuova notifica da {$siteTitle}','Hai ricevuto una nuova notifica da  {$siteTitle}:<br />\n<br />\n{$notificationContents}<br />\n<br />\nLink: {$url}<br />\n<br />\n{$principalContactSignature}','Questa mail è inviata agli utenti registrati che hanno chiesto di ricevere questo tipo di notifiche.'),('NOTIFICATION','pt_BR','Nova notificação de {$siteTitle}','Você tem uma nova notificação de {$siteTitle}:<br />\n<br />\n{$notificationContents}<br />\n<br />\nLink: {$url}<br />\n<br />\n{$principalContactSignature}','Esta mensagem é enviada a usuários cadastrados que escolheram habilitar este tipo de notificação via email.'),('NOTIFICATION','ru_RU','Новое уведомление с сайта «{$siteTitle}»','Вы получили новое уведомление с сайта «{$siteTitle}»:<br />\n<br />\n{$notificationContents}<br />\n<br />\nСсылка: {$url}<br />\n<br />\n{$principalContactSignature}','Это письмо отправляется зарегистрированным пользователям, которые указали, что данный тип уведомления отправляется им электронной почтой.'),('NOTIFICATION_CENTER_DEFAULT','cs_CZ','Zpráva týkající se {$contextName}','Vložte, prosím, vaši zprávu.','Výchozí (prázdná) zpráva použitá v nástroji List Builder Message Center Message Builder.'),('NOTIFICATION_CENTER_DEFAULT','da_DK','Besked omhandlende {$contextName}','Skriv venligst din besked.','Standardmeddelelsen (tom), der blev brugt i Notification Center Message Listbuilder.'),('NOTIFICATION_CENTER_DEFAULT','de_DE','Eine Nachricht bezüglich {$contextName}','Bitte geben Sie Ihre Nachricht ein.','Die (leere) Standardnachricht, die in der Nachrichtenliste des Benachrichtigungscenters angezeigt wird.'),('NOTIFICATION_CENTER_DEFAULT','en_US','A message regarding {$contextName}','Please enter your message.','The default (blank) message used in the Notification Center Message Listbuilder.'),('NOTIFICATION_CENTER_DEFAULT','it_IT','Un messaggio da  {$contextName}','Inserisci  qui il testo del tuo messaggio.','Questo messaggio vuoto è usato dal sistema centralizzato di messaggistica via lista.'),('NOTIFICATION_CENTER_DEFAULT','pt_BR','Uma mensagem sobre {$contextName}','Insira a sua mensagem por gentileza.','A mensagem padrão (em branco) usada no Criador de lista de mensagens do Notification Center.'),('NOTIFICATION_CENTER_DEFAULT','ru_RU','Сообщение о журнале «{$contextName}»','Пожалуйста, введите свое сообщение.','Сообщение по умолчанию (пустое) используется в редакторе списка сообщений Центра уведомлений.'),('OPEN_ACCESS_NOTIFY','cs_CZ','Nyní otevřen přístup k číslu','Čtenáři:<br />\n<br />\nČasopis {$contextName} povolil otevřený přístup k následujícímu číslu. Zveme vás k prohlédnutí obsahu časopisu a návštěvě našich stránek ({$contextUrl}).<br />\n<br />\nDěkujeme za Vás pokračující zájem o naši práci<br />\n{$editorialContactSignature}','Tento email je posílán čtenářům, kteří požádali o zasílání upozornění na přechod čísla časopisu do otevřeného přístupu.'),('OPEN_ACCESS_NOTIFY','da_DK','Udgave nu i Open Access-format','Læsere:<br />\n<br />\n{$contextName} har netop udgivet følgende udgave i et Open Access-format. Vi inviterer dig til at gennemse indholdsfortegnelsen her og derefter besøge vores websted ({$contextUrl}), hvor du kan gennemse artikler og elementer, der har din interesse.<br />\n<br />\nTak for din fortsatte interesse i vores arbejde.<br />\n{$editorialContactSignature}','Denne e-mail sendes til registrerede læsere, der har anmodet om at modtage en e-mail-meddelelse, når en udgave udgives i et Open Access-format.'),('OPEN_ACCESS_NOTIFY','de_DE','Ausgabe jetzt im Open Access','Liebe Leser/innen,<br />\n<br />\n{$contextName} hat soeben die nächste Ausgabe frei zugänglich gemacht. Wir laden Sie ein, sich hier das Inhaltsverzeichnis und auf unserer Webseite ({$contextUrl}) die Sie interessierenden Beiträge anzusehen.<br />\n<br />\nWir danken für Ihr Interesse an unserer Arbeit,<br />\n{$editorialContactSignature}','Diese E-Mail wird an registrierte Leser/innen gesendet, die darum gebeten haben, informiert zu werden, wenn eine Ausgabe frei verfügbar wird.'),('OPEN_ACCESS_NOTIFY','en_US','Issue Now Open Access','Readers:<br />\n<br />\n{$contextName} has just made available in an open access format the following issue. We invite you to review the Table of Contents here and then visit our web site ({$contextUrl}) to review articles and items of interest.<br />\n<br />\nThanks for the continuing interest in our work,<br />\n{$editorialContactSignature}','This email is sent to registered readers who have requested to receive a notification email when an issue becomes open access.'),('OPEN_ACCESS_NOTIFY','it_IT','Nuovo fascicolo disponibile ad accesso aperto','Gentile lettore,<br />\n<br />\n{$contextName} ha appena reso disponibile in modalità open access una nuova uscita. Ti invitiamo dunque a visitare il sito web ({$contextUrl}) per trovare articoli e altre risorse di tuo interesse.<br />\n<br />\nGrazie per il tuo interesse per la nostra testata<br />\n{$editorialContactSignature}','Questa email viene inviata ai lettori registrati che hanno chiesto di ricevere un\'email di notifica in caso di uscite ad accesso aperto.'),('OPEN_ACCESS_NOTIFY','pt_BR','Nova edição de Acesso Livre','Leitores: <br />\n<br />\n{$contextName} acabou de disponibilizar em um formato de acesso aberto a seguinte edição. Convidamos você a verificar o sumário abaixo e, em seguida, visitar nosso site ({$contextUrl}) para conferir os artigos e itens de interesse. <br />\n<br />\nObrigado pelo interesse em nosso trabalho, <br />\n{$editorialContactSignature}','Esta mensagem é enviada a leitores cadastrados que solicitam o recebimento do sumário de uma nova edição de Acesso Livre.'),('OPEN_ACCESS_NOTIFY','ru_RU','Выпуск уже в открытом доступе','Уважаемые читатели!<br />\n<br />\nЖурнал «{$contextName}» только что предоставил открытый доступ к следующему выпуску. Мы предлагаем вам ознакомиться здесь с содержанием выпуска, а затем посетить наш веб-сайт ({$contextUrl}), чтобы прочитать статьи и сообщения на интересующие вас темы.<br />\n<br />\nБлагодарю вас за постоянный интерес к нашей работе,<br />\n{$editorialContactSignature}','Это письмо отправляется тем зарегистрированным читателям, которые подписались на получение уведомлений на электронную почту о том, что номер появился в открытом доступе.'),('ORCID_COLLECT_AUTHOR_ID','cs_CZ','ORCID ID příspěvku','Vážený (á) {$authorName},<br/>\n<br/>\nByl jste uveden(a) jako autor manuskriptu příspěvku do {$contextName}.<br/>\nPro potvrzení vašeho autorství přidejte, prosím, pomocí níže uvedeného odkazu, k tomuto příspěvku vaše ORCID iD.<br/>\n<br/>\n<a href=\"{$authorOrcidUrl}\"><img id=\"orcid-id-logo\" src=\"https://orcid.org/sites/default/files/images/orcid_16x16.png\" width=\'16\' height=\'16\' alt=\"ORCID iD icon\" style=\"display: block; margin: 0 .5em 0 0; padding: 0; float: left;\"/>Zaregistrujte či připojte vaše ORCID iD</a><br/>\n<br/>\n<br>\n<a href=\"{$orcidAboutUrl}\">Více informací o ORCID najdete na {$contextName}</a><br/>\n<br/>\nPokud máte jakékoliv dotazy, kontaktujte nás, prosím.<br/>\n<br/>\n{$principalContactSignature}<br/>\n','Tato šablona emailu slouží k shromažďování ORCID ID od spoluautorů.'),('ORCID_COLLECT_AUTHOR_ID','da_DK','Indsendelse ORCID','Kære {$authorName},<br/>\n<br/>\nDu står opført som medforfatter til manuskriptet \"{$submissionTitle}\" i {$contextName}.<br/>\n<br/>\nFor at bekræfte forfatterskabet bedes du tilføje din ORCID id til denne indsendelse ved at gå til det fremlagte link nedenfor.<br/>\n<br/>\n{$authorOrcidUrl}<br/>\n<br/>\nHar du spørgsmål bedes du kontakte mig.<br/>\n<br/>\n{$principalContactSignature}<br/>\n','Denne e-mail bruges til at indsamle ORCID id fra medforfattere.'),('ORCID_COLLECT_AUTHOR_ID','de_DE','ORCID Zugriff erbeten','Liebe/r {$authorName},<br/>\n<br/>\nSie sind als Autor/in eines eingereichten Beitrags bei der Zeitschrift {$contextName} benannt worden.<br/>\n<br/>\nUm Ihre Autor/innenschaft zu bestätigen, geben Sie bitte Ihre ORCID iD für diese Einreichung an, indem Sie den unten angegebenen Link aufrufen.<br/>\n<a href=\"{$authorOrcidUrl}\"><img id=\"orcid-id-logo\" src=\"https://orcid.org/sites/default/files/images/orcid_16x16.png\" width=\'16\' height=\'16\' alt=\"ORCID iD icon\" style=\"display: block; margin: 0 .5em 0 0; padding: 0; float: left;\"/>ORCID iD registrieren oder ihre verbinden</a><br/>\n<br/>\n<br/>\n<a href=\"{$orcidAboutUrl}\">Mehr Informationen zu ORCID bei {$contextName}</a><br/>\n<br/>\nWenn Sie Fragen dazu haben, melden Sie sich bitte bei mir.<br/>\n<br/>\n{$principalContactSignature}<br/>\n','Diese E-Mail-Vorlage wird verwendet, um die ORCID-iDs von Co-Autor/innen einzuholen.'),('ORCID_COLLECT_AUTHOR_ID','en_US','Submission ORCID','Dear {$authorName},<br/>\n<br/>\nYou have been listed as an author on a manuscript submission to {$contextName}.<br/>\nTo confirm your authorship, please add your ORCID id to this submission by visiting the link provided below.<br/>\n<br/>\n<a href=\"{$authorOrcidUrl}\"><img id=\"orcid-id-logo\" src=\"https://orcid.org/sites/default/files/images/orcid_16x16.png\" width=\'16\' height=\'16\' alt=\"ORCID iD icon\" style=\"display: block; margin: 0 .5em 0 0; padding: 0; float: left;\"/>Register or connect your ORCID iD</a><br/>\n<br/>\n<br>\n<a href=\"{$orcidAboutUrl}\">More information about ORCID at {$contextName}</a><br/>\n<br/>\nIf you have any questions, please contact me.<br/>\n<br/>\n{$principalContactSignature}<br/>\n','This email template is used to collect the ORCID id\'s from authors.'),('ORCID_COLLECT_AUTHOR_ID','it_IT','Le chiediamo di inserire l\'ORCID','Gentile {$authorName},<br/>\n<br/>\nLei è stato indicato come co-autore di un manoscritto sottoposto per la pubblicazione a {$contextName}.<br/>\nPer confermare la sua responsabilità come autore, le chiediamo di aggiungere il suo ORCID iD alla sottomissione, utilizzando il link sottostante. <br/>\n<br/>\n<a href=\"{$authorOrcidUrl}\"><img id=\"orcid-id-logo\" src=\"https://orcid.org/sites/default/files/images/orcid_16x16.png\" width=\'16\' height=\'16\' alt=\"ORCID iD icon\" style=\"display: block; margin: 0 .5em 0 0; padding: 0; float: left;\"/>Register or connect your ORCID iD</a><br/>\n<br/>\n<br>\n<a href=\"{$orcidAboutUrl}\">Maggiori informazioni in merito ad ORCID sono disponibili a {$contextName}</a><br/>\n<br/>\nPer qualsiasi ulteriore chiarimento, la prego di contattarmi.<br/>\n<br/>\n{$principalContactSignature}<br/>\n','Questa mail è utilizzata per ottenere  l\'ORCID dai coautori.'),('ORCID_COLLECT_AUTHOR_ID','pt_BR','ORCID da submissão','Prezado(a) {$authorName},<br>\n<br>\nVocê foi listada(o) como um coautor(a) em uma submissão de manuscrito \"{$submissionTitle}\" para {$contextName}.<br/>\nPara confirmar sua autoria, por favor adicione sua id ORCID a esta submissão, visitando o link fornecido abaixo.<br/>\n<br/>\n<a href=\"{$authorOrcidUrl}\"><img id=\"orcid-id-logo\" src=\"https://orcid.org/sites/default/files/images/orcid_16x16.png\" width=\'16\' height=\'16\' alt=\"ORCID iD icon\" style=\"display: block; margin: 0 .5em 0 0; padding: 0; float: left;\"/>Registre ou conecte seu ORCID iD</a><br/>\n<br/>\n<br>\n<a href=\"{$orcidAboutUrl}\">Mais informações sobre o ORCID em {$contextName}</a><br/>\n<br/>\nSe você tiver quaisquer dúvidas, por favor entre em contato comigo.<br/>\n<br/>\n{$editorialContactSignature}<br/>\n','Este modelo de e-mail é utilizado para coletar os id ORCID dos coautores.'),('ORCID_COLLECT_AUTHOR_ID','ru_RU','ORCID материала','{$authorName}!<br/>\n<br/>\nВы были указаны как автор материала, отправленного в «{$contextName}».<br/>\nЧтобы подтвердить свое авторство, пожалуйста, добавьте свой идентификатор ORCID к этому материалу, перейдя по приведенной ниже ссылке.<br/>\n<br/>\n<a href=\"{$authorOrcidUrl}\"><img id=\"orcid-id-logo\" src=\"https://orcid.org/sites/default/files/images/orcid_16x16.png\" width=\'16\' height=\'16\' alt=\"ORCID iD icon\" style=\"display: block; margin: 0 .5em 0 0; padding: 0; float: left;\"/>Создать или подключить ваш ORCID iD</a><br/>\n<br/>\n<br>\n<a href=\"{$orcidAboutUrl}\">Дополнительная информация об ORCID в «{$contextName}»</a><br/>\n<br/>\nЕсли у Вас есть какие-либо вопросы, пожалуйста, свяжитесь со мной.<br/>\n<br/>\n{$principalContactSignature}<br/>\n','Этот шаблон письма используется для сбора идентификаторов ORCID с авторов.'),('ORCID_REQUEST_AUTHOR_AUTHORIZATION','cs_CZ','Požadavek na přístup k záznamu ORCID','Vážený(á) {$authorName},<br>\n<br>\nByl(a) jste uveden(a) jako autor manuskriptu příspěvku \"{$submissionTitle}\" to {$contextName}.\n<br>\n<br>\nDovolte nám, prosím, přidat vaše ORCID ID k tomuto příspěvku a také přidat tento příspěvek do vašeho ORCID publikačnímu profilu.<br>\nNavštivte, prosím, odkaz na oficiální webovou stránku ORCID, přihlaste se a a povolte přístup našeho časopisu dle následujících pokynů.<br>\n<a href=\"{$authorOrcidUrl}\"><img id=\"orcid-id-logo\" src=\"https://orcid.org/sites/default/files/images/orcid_16x16.png\" width=\'16\' height=\'16\' alt=\"ORCID iD icon\" style=\"display: block; margin: 0 .5em 0 0; padding: 0; float: left;\"/>Registrujte se či připojte své ORCID ID</a><br/>\n<br>\n<br>\n<a href=\"{$orcidAboutUrl}\">Více informací o  ORCID najdete na {$contextName}</a><br/>\n<br>\nPokud máte jakékoliv dotazy, kontaktujte nás, prosím.<br>\n<br>\n{$principalContactSignature}<br>\n','Tato šablona emailů je používána, pokud od autorů chceme umožnění přístupu k záznamům ORCID.'),('ORCID_REQUEST_AUTHOR_AUTHORIZATION','da_DK','Anmoder om adgang til ORCID-post','Kære {$authorName}<br>\n<br>\nDu er blevet opført som forfatter på manuskriptindsendelsen\"{$submissionTitle}\" til {$contextName}.\n<br>\n<br>\nTillad os at tilføje dit ORCID-id til denne indsendelse og også at tilføje indsendelsen til din ORCID-profil i forbindelse med publicering.<br>\nBesøg linket til det officielle ORCID-websted, log ind med din profil og tillad adgangen ved at følge instruktionerne.<br>\n<a href=\"{$authorOrcidUrl}\"><img id=\"orcid-id-logo\" src=\"https://orcid.org/sites/default/files/images/orcid_16x16.png\" width=\'16\' height=\'16\' alt=\"ORCID iD icon\" style=\"display: block; margin: 0 .5em 0 0; padding: 0; float: left;\"/>Register or Connect your ORCID iD</a><br/>\n<br>\n<br>\n<a href=\"{$orcidAboutUrl}\">More about ORCID at {$contextName}</a><br/>\n<br>\nHvis du har spørgsmål, så kontakt mig.<br>\n<br>\n{$principalContactSignature}<br>\n','Denne e-mail-skabelon bruges til at anmode om ORCID-adgang fra forfattere.'),('ORCID_REQUEST_AUTHOR_AUTHORIZATION','de_DE','ORCID Zugriff erbeten','Liebe/r {$authorName},<br>\n<br>\nSie sind als Autor/in des eingereichten Beitrags \"{$submissionTitle}\" bei der Zeitschrift {$contextName} benannt worden.<br>\n<br>\nBitte gestatten Sie uns Ihre ORCID-ID, falls vorhanden, zu diesem Beitrag hinzuzufügen, sowie ihr ORCID Profil bei Veröffentlichung des Beitrags zu aktualisieren.<br>\nDazu folgen Sie dem unten stehenden Link zur offiziellen ORCID-Seite, melden sich mit ihren Daten an und authorisieren Sie den Zugriff, indem\nSie den Anweisungen auf der Seite folgen.<br>\n<a href=\"{$authorOrcidUrl}\"><img id=\"orcid-id-logo\" src=\"https://orcid.org/sites/default/files/images/orcid_16x16.png\" width=\'16\' height=\'16\' alt=\"ORCID iD icon\" style=\"display: block; margin: 0 .5em 0 0; padding: 0; float: left;\"/>ORCID iD registrieren oder ihre verbinden</a><br/>\n<br/>\n<br>\n<a href=\"{$orcidAboutUrl}\">Mehr Informationen zu ORCID bei {$contextName}</a>.\n<br>\nWenn Sie Fragen dazu haben, melden Sie sich bitte.<br>\n<br>\n{$principalContactSignature}<br>\n','Diese E-Mail-Vorlage wird verwendet, um die Authorisierung für ORCID Profil Zugriff von Autor/innen einzuholen.'),('ORCID_REQUEST_AUTHOR_AUTHORIZATION','en_US','Requesting ORCID record access','Dear {$authorName},<br>\n<br>\nYou have been listed as an author on the manuscript submission \"{$submissionTitle}\" to {$contextName}.\n<br>\n<br>\nPlease allow us to add your ORCID id to this submission and also to add the submission to your ORCID profile on publication.<br>\nVisit the link to the official ORCID website, login with your profile and authorize the access by following the instructions.<br>\n<a href=\"{$authorOrcidUrl}\"><img id=\"orcid-id-logo\" src=\"https://orcid.org/sites/default/files/images/orcid_16x16.png\" width=\'16\' height=\'16\' alt=\"ORCID iD icon\" style=\"display: block; margin: 0 .5em 0 0; padding: 0; float: left;\"/>Register or Connect your ORCID iD</a><br/>\n<br>\n<br>\n<a href=\"{$orcidAboutUrl}\">More about ORCID at {$contextName}</a><br/>\n<br>\nIf you have any questions, please contact me.<br>\n<br>\n{$principalContactSignature}<br>\n','This email template is used to request ORCID record access from authors.'),('ORCID_REQUEST_AUTHOR_AUTHORIZATION','it_IT','Richiesta di accesso al record ORCID','Gentile {$authorName},<br>\n<br>\nIl suo nominativo è stato aggiunto come autore nel manoscritto \"{$submissionTitle}\" sottoposto per la pubblicazione a {$contextName}.\n<br>\n<br>\nLe chiediamo il permesso di aggiungere il suo ORCID a questa sottomissione e di poter aggiungere questa sottomissione al suo profilo ORCID<br>\nLe chiediamo di andare al suo profilo ufficiale ORCID e di autorizzare l\'accesso seguendo le  indicazioni che verranno fornite. <br>\n<a href=\"{$authorOrcidUrl}\"><img id=\"orcid-id-logo\" src=\"https://orcid.org/sites/default/files/images/orcid_16x16.png\" width=\'16\' height=\'16\' alt=\"ORCID iD icon\" style=\"display: block; margin: 0 .5em 0 0; padding: 0; float: left;\"/>Collega il tuo ORCID iD o registrati adesso </a><br/>\n<br>\n<br>\n<a href=\"{$orcidAboutUrl}\">Maggiori informazioni su ORCID sono disponibili a questo indirizzo: {$contextName}</a><br/>\n<br>\nSe ha qualsiasi domanda o dubbio, la prego di contattarmi.<br>\n<br>\n{$principalContactSignature}<br>\n','Questa mail è utilizzata per richiedere agli autori accesso al proprio ORCID iD.'),('ORCID_REQUEST_AUTHOR_AUTHORIZATION','pt_BR','Solicitando acesso ao registro ORCID','Prezado(a) {$authorName}, <br>\n<br>\nVocê foi listado como autor na submissão do manuscrito \"{$submissionTitle}\" to {$contextName}.\n<br>\n<br>\nPermita-nos adicionar seu ID do ORCID a essa submissão e também adicioná-lo ao seu perfil do ORCID na publicação. <br>\nVisite o link para o site oficial do ORCID, faça o login com seu perfil e autorize o acesso seguindo as instruções. <br>\n<a href=\"{$authorOrcidUrl}\"> <img id =\"orcid-id-logo\" src = \"https://orcid.org/sites/default/files/images/orcid_16x16.png\" width = \'16 \' height = \'16 \' alt = \"Ícone ORCID iD\" style = \"display: block; margin: 0 .5em 0 0; padding: 0; float: left;\" /> Registre ou conecte seu ORCID ID </a> <br/>\n<br>\n<br>\n<a href=\"{$orcidAboutUrl}\"> Mais sobre o ORCID em {$contextName} </a> <br/>\n<br>\nSe você tiver alguma dúvida, entre em contato comigo. <br>\n<br>\n{$principalContactSignature} <br>\n','Este modelo de e-mail é usado para solicitar o acesso ao registro ORCID dos autores.'),('ORCID_REQUEST_AUTHOR_AUTHORIZATION','ru_RU','Запрос доступа к записи ORCID','{$authorName}!<br>\n<br>\nВы были указаны как автор материала «{$submissionTitle}», отправленного в «{$contextName}».\n<br>\n<br>\nПожалуйста, дайте нам возможность добавить ваш ORCID id к этому материалу, а также добавить материал в ваш профиль ORCID после публикации.<br>\nПерейдите по ссылке на официальном вебсайте ORCID, войдите в систему с вашей учетной записью и авторизуйте доступ, следуя инструкциям.<br>\n<a href=\"{$authorOrcidUrl}\"><img id=\"orcid-id-logo\" src=\"https://orcid.org/sites/default/files/images/orcid_16x16.png\" width=\'16\' height=\'16\' alt=\"ORCID iD icon\" style=\"display: block; margin: 0 .5em 0 0; padding: 0; float: left;\"/>Создать или подключить ваш ORCID iD</a><br/>\n<br>\n<br>\n<a href=\"{$orcidAboutUrl}\">Подробнее об ORCID в «{$contextName}»</a><br/>\n<br>\nЕсли у Вас есть какие-либо вопросы, пожалуйста, свяжитесь со мной.<br>\n<br>\n{$principalContactSignature}<br>\n','Этот шаблон письма используется для запроса доступа к записи ORCID у авторов.'),('PASSWORD_RESET','cs_CZ','Resetování hesla','Vaše heslo pro stránku {$siteTitle} bylo úspěšně resetováno. Zapamatujte si prosím toto uživatelské jméno a heslo, protože je budete potřebovat pro veškerou práci s tímto časopisem.<br />\n<br />\nVaše uživatelské jméno: {$username}<br />\nHeslo: {$password}<br />\n<br />\n{$principalContactSignature}','Tento email je zaslán registrovanému uživateli, když úspěšně resetuje své heslo postupem uvedeným v PASSWORD_RESET_CONFIRM emailu.'),('PASSWORD_RESET','da_DK','Nulstil adgangskode','Din adgangskode er blevet nulstillet og kan benyttes på webstedet {$siteTitle}. Opbevar brugernavnet og adgangskoden, da de er nødvendige for alt arbejde i forbindelse med tidsskriftet.<br />\n<br />\nDit brugernavn: {$username}<br/>\nAdgangskode: {$password}<br />\n<br />\n{$principalContactSignature}','Denne e-mail sendes til registrerede brugere, når de har nulstillet deres adgangskode, efter at de har fulgt den proces, der er beskrevet i e-mailen PASSWORD_RESET_CONFIRM.'),('PASSWORD_RESET','de_DE','Passwort neu gesetzt','Ihr Benutzer/innen-Passwort für die Webseite {$siteTitle} wurde neu gesetzt. Bitte notieren Sie Benutzer/innennamen und Passwort, beides wird für alle Arbeiten mit dieser Zeitschrift gebraucht.<br />\n<br />\nIhr Benutzer/innenname: {$username}<br />\nPasswort: {$password}<br />\n<br />\n{$principalContactSignature}','Diese E-Mail wird an registrierte Benutzer/innen gesendet, nachdem sie ihr Passwort erfolgreich nach dem in der PASSWORD_RESET_CONFIRM-E-Mail beschriebenen Verfahren zurückgesetzt haben.'),('PASSWORD_RESET','en_US','Password Reset','Your password has been successfully reset for use with the {$siteTitle} web site. Please retain this username and password, as it is necessary for all work with the journal.<br />\n<br />\nYour username: {$username}<br />\nPassword: {$password}<br />\n<br />\n{$principalContactSignature}','This email is sent to a registered user when they have successfully reset their password following the process described in the PASSWORD_RESET_CONFIRM email.'),('PASSWORD_RESET','it_IT','Password modificata','La tua password per {$siteTitle} è stata modificata con successo.<br />\nQui sotto trovi il tuo username e la nuova password.<br />\n<br />\nUsername: {$username}<br />\nPassword: {$password}<br />\n<br />\n{$principalContactSignature}','Questa email viene mandata ad un utente registrato quando ha resettato la password seguendo il processo descritto nella email PASSWORD_RESETTA_CONFERMA.'),('PASSWORD_RESET','pt_BR','Senha Redefinida','Sua senha foi redefinida com sucesso para uso com o site {$siteTitle}. Favor guardar esse nome de usuário e senha, pois são necessários para todo o trabalho com o periódico.<br />\n<br />\nSeu usuário: {$username}<br />\nSenha: {$password}<br />\n<br />\n{$principalContactSignature}','Esta mensagem é enviada a um usuário cadastrado quando ele redefiniu sua senha com sucesso, seguindo o processo descrito na mensagem PASSWORD_RESET_CONFIRM.'),('PASSWORD_RESET','ru_RU','Пароль сброшен','Ваш пароль на сайте «{$siteTitle}» был успешно сброшен. Пожалуйста, сохраните имя пользователя и пароль, так как они требуются для работы с журналом.<br />\n<br />\nИмя пользователя: {$username}<br />\nПароль: {$password}<br />\n<br />\n{$principalContactSignature}','Это письмо отправляется зарегистрированному пользователю, когда он успешно сбросил свой пароль в соответствии с процедурой, описанной в письме PASSWORD_RESET_CONFIRM.'),('PASSWORD_RESET_CONFIRM','cs_CZ','Potvrzení o resetování hesla','Obdrželi jsme žádost o resetování Vašeho hesla pro stránku {$siteTitle}.<br />\n<br />\nPokud jste tuto žádost neodeslal, ignorujte prosím tento email a Vaše heslo nebude změněno. Pokud chcete své heslo resetovat, klikněte na URL adresu níže.<br />\n<br />\nResetovat moje heslo: {$url}<br />\n<br />\n{$principalContactSignature}','Tento email je zasílán registrovanému uživateli, když uvede, že zapomněl své heslo nebo se nemůže přihlásit. Obsahuje adresu URL, kterou může následovat a resetovat své heslo.'),('PASSWORD_RESET_CONFIRM','da_DK','Bekræftelse af nulstilling af adgangskode','Vi har modtaget en forespørgsel om at nulstille din adgangskode til webstedet {$siteTitle}.<br />\n<br />\nHvis du ikke selv har sendt denne forespørgsel, skal du ignorere denne e-mail, og din adgangskode vil ikke blive ændret. Klik på nedenstående URL-adresse, hvis adgangskoden skal ændres.<br />\n<br />\nNulstil min adgangskode: {$url}<br />\n<br />\n{$principalContactSignature}','Denne e-mail sendes til registrerede brugere, når de angiver, at de har glemt deres adgangskode eller ikke kan logge på. Den indeholder en URL-adresse, de kan følge for at nulstille deres adgangskode.'),('PASSWORD_RESET_CONFIRM','de_DE','Reset-Bestätigung für Ihr Passwort','Wir wurden aufgefordert, Ihr Passwort für die Webseite {$siteTitle} neu zu setzen.<br />\n<br />\nFalls die Aufforderung nicht von Ihnen stammt, ignorieren Sie bitte diese E-Mail, und Ihr Passwort bleibt unverändert. Falls Sie Ihr Passwort neu setzen möchten, klicken Sie bitte auf die folgende URL:<br />\n<br />\nMein Passwort neu setzen: {$url}<br />\n<br />\n{$principalContactSignature}','Diese E-Mail wird an registrierte Benutzer/innen der Benachrichtigungs-Mailingliste gesendet, die angegeben haben, dass sie ihr Passwort vergessen haben oder sich nicht einloggen können. Sie liefert eine URL, der die Benutzer/innen folgen können, um ihr Passwort zurückzusetzen.'),('PASSWORD_RESET_CONFIRM','en_US','Password Reset Confirmation','We have received a request to reset your password for the {$siteTitle} web site.<br />\n<br />\nIf you did not make this request, please ignore this email and your password will not be changed. If you wish to reset your password, click on the below URL.<br />\n<br />\nReset my password: {$url}<br />\n<br />\n{$principalContactSignature}','This email is sent to a registered user when they indicate that they have forgotten their password or are unable to login. It provides a URL they can follow to reset their password.'),('PASSWORD_RESET_CONFIRM','it_IT','Conferma di modifica password','Abbiamo ricevuto la richiesta di modificare la tua password per {$siteTitle}.<br />\n<br />\nSe non hai fatto questa richiesta, ignora questo messaggio e la password non sarà modificata.<br />\nSe invece hai fatto tu la richiesta e desideri generare una nuova password, clicca sul link qui sotto.<br />\n<br />\nReset password: {$url}<br />\n<br />\n{$principalContactSignature}','Questa email viene mandata ad un utente registrato quando questi indica che ha dimenticato la sua password o non riesce a fare il log in. Fornisce una URL per il reset della password.'),('PASSWORD_RESET_CONFIRM','pt_BR','Confirmação de Redefinição de Senha','Recebemos uma solicitação para redefinir sua senha para o site {$siteTitle}.<br />\n<br />\nSe você não fez essa solicitação, favor ignorar este e-mail e sua senha não será alterada. Se você deseja redefinir sua senha, clique na URL abaixo.<br />\n<br />\nRedefinir minha senha: {$url}<br />\n<br />\n{$principalContactSignature}','Esta mensagem é enviada a um usuário cadastrado quando o mesmo indica que tenha esquecido sua senha ou não consiga efetuar login. Um link é fornecido que permite ao usuário redefinir sua senha.'),('PASSWORD_RESET_CONFIRM','ru_RU','Подтверждение сброса пароля','Мы получили запрос на сброс Вашего пароля на сайте «{$siteTitle}».<br />\n<br />\nЕсли Вы не отправляли этот запрос, пожалуйста, проигнорируйте это письмо и Ваш пароль не будет изменен. Если Вы хотите сбросить свой пароль, то щелкните по ссылке ниже.<br />\n<br />\nСбросить мой пароль: {$url}<br />\n<br />\n{$principalContactSignature}','Это письмо отправляется зарегистрированному пользователю, когда он сообщает, что забыл пароль или не может войти на сайт. В письме содержится ссылка (URL), перейдя по которой пользователь сможет сбросить свой пароль.'),('PAYPAL_INVESTIGATE_PAYMENT','cs_CZ','Neobvyklá PayPal aktivita','OJS zaznamenal neobvyklou aktivitu v souvislosti s podporou plateb přes PayPal pro časopis {$contextName}. Tato aktivita může vyžadovat další kontrolu nebo ruční zásah.<br />\n                       <br />\nTento email byl vygenerován OJS pluginem pro PayPal.<br />\n<br />\nKompletní informace k požadavku:<br />\n{$postInfo}<br />\n<br />\nDoplňkové informace (pokud byly uvedeny):<br />\n{$additionalInfo}<br />\n<br />\nProměnné serveru:<br />\n{$serverVars}<br />\n','Tato e-mailová šablona slouží k upozornění primárního kontaktu časopisu, že se zásuvný modul PayPal setkal s podezřelou aktivitou nebo činností vyžadující ruční zásah.'),('PAYPAL_INVESTIGATE_PAYMENT','da_DK','Usædvanlig PayPal-aktivitet','Open Journal Systems er stødt på en usædvanlig aktivitet i forbindelse med PayPal-betalingsunderstøttelsen til tidsskriftet {$contextName}. Denne aktivitet kan kræve yderligere undersøgelse eller manuel indgriben.<br />\n                       <br />\nDenne e-mail blev genereret af Open Journal Systems \'PayPal-plug-in<br />\n<br />\nUdførlig information:<br />\n{$postInfo}<br />\n<br />\nYderligere information (hvis leveret):<br />\n{$additionalInfo}<br />\n<br />\nServer vars:<br />\n{$serverVars}<br />\n','Denne e-mail-skabelon bruges til at underrette et tidsskrifts primære kontaktperson om, at mistænkelig aktivitet eller aktivitet, der kræver manuel indblanding, tilstødte PayPal-plug-in\'en.'),('PAYPAL_INVESTIGATE_PAYMENT','de_DE','Ungewöhnliche PayPal-Aktivität','Open Journal Systems hat eine ungewöhnliche Aktivität in Bezug auf die Unterstützung  von PayPal-Zahlungen für die Zeitschrift {$contextName} festgestellt. Diese Aktivität könnte eine nähere Untersuchung oder ein Eingreifen erfordern.<br />\n<br />\nDiese E-Mail wurde durch das Open Journal Systems-Plugin PayPal-Gebührenzahlung erzeugt.<br />\n<br />\nVolle Informationen zu dieser Anfrage:<br />\n{$postInfo}<br />\n<br />\nZusätzliche Informationen (soweit angegeben):<br />\n{$additionalInfo}<br />\n<br />\nServer vars:<br />\n{$serverVars}<br />\n','Diese E-Mail-Vorlage wird genutzt, um den primären Zeitschriftenkontakt darüber zu benachrichtigen, dass verdächtige Aktivitäten durch das PayPal-PlugIn entdeckt worden sind.'),('PAYPAL_INVESTIGATE_PAYMENT','en_US','Unusual PayPal Activity','Open Journal Systems has encountered unusual activity relating to PayPal payment support for the journal {$contextName}. This activity may need further investigation or manual intervention.<br />\n                       <br />\nThis email was generated by Open Journal Systems\' PayPal plugin.<br />\n<br />\nFull post information for the request:<br />\n{$postInfo}<br />\n<br />\nAdditional information (if supplied):<br />\n{$additionalInfo}<br />\n<br />\nServer vars:<br />\n{$serverVars}<br />\n','This email template is used to notify a journal\'s primary contact that suspicious activity or activity requiring manual intervention was encountered by the PayPal plugin.'),('PAYPAL_INVESTIGATE_PAYMENT','it_IT','Attività PayPal sospetta','Open Journal Systems ha riscontrato un\'attivtà sospetta sul conto PayPal della rivista {$contextName}. Ciò può richiedere ulteriori indagini o un intervento manuale.<br />\n<br />\nQuesta email è stata generata da Open Journal Systems\' PayPal plugin<br />\n<br />\nTutte le informazioni sulla richiesta:<br />\n{$postInfo}<br />\n<br />\nInformazioni aggiuntive (se disponibili):<br />\n{$additionalInfo}<br />\n<br />\nServer vars:<br />\n{$serverVars}<br />\n','Questa mail viene inviata dal plugin paypal al gestore di un journal quanto si notano delle attività sospette o c\'è bisogno di un intervento manuale.'),('PAYPAL_INVESTIGATE_PAYMENT','pt_BR','Atividade incomum na conta PayPal','O sistema encontrou atividade incomum relacionada ao suporte a pagamentos via PayPal da revista {$contextName}. Esta atividade pode exigir investigação mais profunda ou intervenção manual.<br />\n                       <br />\nEsta é uma mensagem automática da ferramenta de Pagamento via PayPal do Open Journal Systems.<br />\n<br />\nInformações detalhadas da notificação:<br />\n{$postInfo}<br />\n<br />\nInformações adicionais (caso informado):<br />\n{$additionalInfo}<br />\n<br />\nVariáveis do servidor:<br />\n{$serverVars}<br />\n','Esta mensagem notifica o contato principal da revista sobre atividades suspeitas, ou atividades que exijam intervenção manual, detectadas pelo Plugin de Pagamento via PayPal.'),('PAYPAL_INVESTIGATE_PAYMENT','ru_RU','Необычная активность PayPal','Система Open Journal Systems обнаружила необычную активность, связанную с поддержкой платежей через PayPal для журнала «{$contextName}». Эта активность может требовать дополнительного изучения или вмешательства в ручном режиме.<br />\n                       <br />\nЭто письмо было сгенерировано модулем «Платежи через PayPal» системы Open Journal Systems.<br />\n<br />\nПолная информация для запроса:<br />\n{$postInfo}<br />\n<br />\nДополнительная информация (если есть):<br />\n{$additionalInfo}<br />\n<br />\nПеременные сервера:<br />\n{$serverVars}<br />\n','Этот шаблон письма используется для уведомления контактного лица редакции о том, что была зарегистрирована подозрительная активность или активность, требующая вмешательства в ручном режиме, вызванная модулем «Платежи через PayPal».'),('PUBLISH_NOTIFY','cs_CZ','Vydání nového čísla','Čtenáři:<br />\n<br />\n{$contextName} zrovna vydává své poslední číslo na {$contextUrl}. Zveme Vás zde ke shlédnutí obsahu a poté návštěvě našich stránek se všemi články.<br />\n<br />\nDěkujeme za Váš dlouhodobý zájem o naši práci,<br />\n{$editorialContactSignature}','Tento email je zasílán registrovaným čtenářům prostřednictvím odkazu \"Informovat uživatele\" z domácí stránky editora. Informuje čtenáře o novém čísle a zve je k návštěvě časopisu přes poskytnutou URL adresu.'),('PUBLISH_NOTIFY','da_DK','Nyt nummer er blevet publiceret','Læsere:<br />\n<br />\n{$contextName} har lige publiceret det seneste nummer på {$contextUrl}. Vi inviterer dig til at gennemse indholdsfortegnelsen her og derefter besøge vores websted, hvor du kan gennemse artikler og materiale, der har din interesse.<br />\n<br />\nTak for din fortsatte interesse i vores arbejde.<br />\n{$editorialContactSignature}','Denne e-mail sendes til registrerede læsere via linket \"Underret brugere\" på redaktørens brugerstartside. Den underretter læsere om en ny udgave og inviterer dem til at besøge tidsskriftet på en angiven URL-adresse.'),('PUBLISH_NOTIFY','de_DE','Neue Ausgabe erschienen','Liebe Leserinnen und Leser,<br />\n<br />\n{$contextName} hat soeben die neueste Ausgabe unter {$contextUrl} veröffentlicht. Wir laden Sie ein, hier das Inhaltsverzeichnis zu lesen und sich dann auf unserer Webseite die Sie interessierenden Beiträge anzusehen.<br />\n<br />\nDanke für das andauernde Interesse an unserer Arbeit,<br />\n{$editorialContactSignature}','Diese E-Mail wird an registrierte Benutzer/innen mittels des \"Benutzer/innen benachrichtigen\"-Links auf der persönlichen Startseite einer Redakteurin/eines Redakteurs gesendet. Sie benachrichtigt Benutzer/innen über eine neue Ausgabe und lädt sie ein, die Zeitschrift unter einer angegebenen URL aufzusuchen.'),('PUBLISH_NOTIFY','en_US','New Issue Published','Readers:<br />\n<br />\n{$contextName} has just published its latest issue at {$contextUrl}. We invite you to review the Table of Contents here and then visit our web site to review articles and items of interest.<br />\n<br />\nThanks for the continuing interest in our work,<br />\n{$editorialContactSignature}','This email is sent to registered readers via the \"Notify Users\" link in the Editor\'s User Home. It notifies readers of a new issue and invites them to visit the journal at a supplied URL.'),('PUBLISH_NOTIFY','it_IT','Pubblicato un nuovo fascicolo','Gentile lettore,<br />\n<br />\nAll\'indirizzo {$contextUrl} è appena stato pubblicato un nuovo numero di {$contextName}.<br />\n<br />\nGrazie per l\'interesse dimostratoci,<br />\n{$editorialContactSignature}','Questa email viene mandata ai lettori registrsati tramite il link \"Notifica Utenti\" nella home utente del curatore. Questa informa i lettori di una nuova uscita e li invita a visitare il journal alla URL fornita.'),('PUBLISH_NOTIFY','pt_BR','Nova Edição Publicada','Caros leitores:<br />\n<br />\n{$contextName} acaba de publicar sua edição mais recente em {$contextUrl}. Convidamos a consultar o sumário abaixo e, em seguida, visitar o site para verificar os artigos e itens de interesse.<br />\n<br />\nAgradecemos pelo interesse em nosso trabalho,<br />\n{$editorialContactSignature}','Esta mensagem é enviada para leitores cadastrados através do link \"notificação de usuários\" na página do Editor. Ela avisa os leitores a respeito de uma nova edição e os convida a acessar o periódico através da URL informada.'),('PUBLISH_NOTIFY','ru_RU','Опубликован новый выпуск','Уважаемые читатели!<br />\n<br />\nЖурнал «{$contextName}» только что опубликовал свой последний выпуск на сайте {$contextUrl}. Мы предлагаем вам ознакомиться здесь с содержанием выпуска, а затем посетить наш веб-сайт, чтобы прочитать статьи и сообщения на интересующие вас темы.<br />\n<br />\nБлагодарю вас за постоянный интерес к нашей работе,<br />\n{$editorialContactSignature}','Это письмо отправляется зарегистрированным читателям по ссылке «Уведомить пользователей» на главной странице редактора. Оно сообшает читателям о выходе нового выпуска и приглашает их посетить сайт журнала по указанному адресу (URL).'),('REVIEWER_REGISTER','cs_CZ','Zaregistrování na pozici recenzenta pro {$contextName}','S ohledem na Vaši odbornost jsme si Vás dovolili zaregistrovat do databáze recenzentů pro časopis {$contextName}. To Vás nezavazuje k žádné odpovědnosti, pouze nám to umožní Vás rychle kontaktovat s příspěvkem, který byste mohl případně recenzovat. Pokud Vás přizveme ke zpracování recenze, budete mít příležitost vidět název a abstrakt daného příspěvku a vždy budete v pozici, kdy můžete rozhodnout, zda přizvání přijmete nebo odmítnete. Můžete také kdykoliv požádat o odstranění Vašeho jména ze seznamu recenzentů.<br />\n<br />\nPřidělili jsme Vám uživatelské jméno a heslo, které budete používat na internetových stránkách časopisu. Možná budete chtít například upravit svůj profil nebo rozsah zájmu o zpracování recenzí.<br />\n<br />\nUživatelské jméno: {$username}<br />\nHeslo: {$password}<br />\n<br />\nDěkujeme,<br />\n{$principalContactSignature}','Tento email je zaslán nově registrovanému recenzentovi jako přivítání do systému a poskytne mu doklad o jeho uživatelském jménu a heslu.'),('REVIEWER_REGISTER','da_DK','Registrering som bedømmer hos {$contextName}','På baggrund af din ekspertise har vi taget den frihed at registrere dit navn i bedømmerdatabasen for {$contextName}. Dette stiller ikke krav om nogen form for engagement fra din side, men gør det blot muligt for os at kontakte dig med hensyn til en eventuelt bedømmelse af et manuskript. Hvis du inviteres til at foretage en bedømmelse, vil du have mulighed for at se titlen på og et resumé af det pågældende manuskript, og du vil altid kunne acceptere eller afvise invitationen. Du kan til enhver tid også bede om at få dit navn fjernet fra listen over bedømmere.<br />\n<br />\nVi giver dig et brugernavn og en adgangskode, der skal bruges i forbindelse med alle interaktioner med tidsskriftet via tidsskriftets webside. Du kan f.eks. bede om at få opdateret din profil, herunder dine bedømmelsesinteresser.<br />\n<br />\nBrugernavn: {$username}<br />\nAdgangskode: {$password}<br />\n<br />\nTak. <br />\n{$principalContactSignature}','Denne e-mail sendes til netop registrerede bedømmere for at byde dem velkommen til systemet og for at oplyse dem om deres brugernavn og adgangskode.'),('REVIEWER_REGISTER','de_DE','Registrierung als Gutachter/in bei {$contextName}','Angesichts Ihrer Erfahrung haben wir uns erlaubt, Ihren Namen der Gutachter/innendatenbank von {$contextName} hinzuzufügen. Dies verpflichtet Sie in keiner Weise, ermöglicht uns aber, Sie um mögliche Gutachten für eine Einreichung zu bitten. Wenn Sie zu einem Gutachten eingeladen werden, werden Sie Titel und Abstract des Beitrags sehen können und werden stets selber entscheiden können, ob Sie der Einladung folgen oder nicht. Sie können zu jedem Zeitpunkt Ihren Namen von der Gutachter/innenliste entfernen lassen.<br />\n<br />\nWir senden Ihnen einen Benutzer/innennamen und ein Passwort, die sie in allen Schritten der Zusammenarbeit mit der Zeitschrift über deren Website benötigen. Vielleicht möchten Sie z.B. Ihr Profil inkl. Ihrer Begutachtungsinteressen aktualisieren.<br />\n<br />\nUsername: {$username}<br />\nPassword: {$password}<br />\n<br />\nVielen Dank,<br />\n{$principalContactSignature}','Diese E-Mail wird an neu registrierte Gutachter/innen gesendet, um sie beim System willkommen zu heißen und ihnen Benutzer/innennamen und Passwort zu bestätigen.'),('REVIEWER_REGISTER','en_US','Registration as Reviewer with {$contextName}','In light of your expertise, we have taken the liberty of registering your name in the reviewer database for {$contextName}. This does not entail any form of commitment on your part, but simply enables us to approach you with a submission to possibly review. On being invited to review, you will have an opportunity to see the title and abstract of the paper in question, and you\'ll always be in a position to accept or decline the invitation. You can also ask at any point to have your name removed from this reviewer list.<br />\n<br />\nWe are providing you with a username and password, which is used in all interactions with the journal through its website. You may wish, for example, to update your profile, including your reviewing interests.<br />\n<br />\nUsername: {$username}<br />\nPassword: {$password}<br />\n<br />\nThank you,<br />\n{$principalContactSignature}','This email is sent to a newly registered reviewer to welcome them to the system and provide them with a record of their username and password.'),('REVIEWER_REGISTER','it_IT','Registrazione come revisore per {$contextName}','Alla luce delle tue competenze, ci siamo presi la libertà di registrare il tuo nome nella banca dati dei revisori per {$contextName}.<br />\n<br />\nQuesto non implica nessun tipo di impegno da parte tua, ma semplicemente  ci permette di contattarti per proporti la revisione di manoscritti sottoposti per la  pubblicazione per la questa testata.<br />\n<br />\nQuando ti inviteremo ad una revisione, riceverai il titolo e l\'abstracts del manoscritto ed avrai l\'opportunità di  accettare o rifiutare l\'invito. Puoi anche chiedere in qualsiasi momento di far rimuovere il tuo nome dall\'elenco dei revisori.<br />\n<br />\nDi seguito il tuo nome utente e password, che vengono usate per tutte le interazioni con la rivista attraverso il suo sito web.<br />\nSe hai modo, ti suggeriamo di  verificare le informazioni inserite e di completare il tuo profilo, inclusi i tuoi interessi di revisione.<br />\n<br />\nNome utente: {$username}<br />\nPassword: {$password}<br />\n<br />\nCon i più cordiali saluti,<br />\n{$principalContactSignature}','Questa email viene inviata ad un nuovo revisore quando viene registrato per la prima volta, inviandogli username e password.'),('REVIEWER_REGISTER','pt_BR','Cadastrado como Avaliador em {$contextName}','Devido à sua experiência, tomamos a liberdade de cadastrar seu nome no banco de dados de avaliadores para {$contextName}. Isso não implica qualquer forma de compromisso de sua parte, mas simplesmente nos permite lhe contatar com uma submissão para uma possível avaliação. Ao ser convidado(a) a avaliar, você terá a oportunidade de ver o título e o resumo do artigo em questão e poderá sempre aceitar ou recusar o convite. Você também pode pedir a qualquer momento para remover seu nome desta lista de avaliadores.<br />\n<br />\nEstamos fornecendo a você um nome de usuário e senha, que são usados em todas as interações com o periódico por meio de seu site. Você pode, por exemplo, atualizar seu perfil, incluindo seus interesses de avaliação.<br />\n<br />\nUsuário: {$username}<br />\nSenha: {$password}<br />\n<br />\nAtenciosamente,<br />\n{$principalContactSignature}','Esta mensagem é enviada a um avaliador recém-cadastrado para dar-lhe as boas-vindas e deixar registrado o seu nome de login e senha.'),('REVIEWER_REGISTER','ru_RU','Регистрация в качестве рецензента в журнале «{$contextName}»','Принимая во внимание Ваш опыт, мы взяли на себя смелость зарегистрировать Вас в базе данных потенциальных рецензентов для журнала «{$contextName}». Это не налагает на Вас никаких обязательств, а просто позволяет нам обращаться к Вам при поступлении в наш журнал материалов, рецензентом которых Вы могли бы стать. Получив предложение дать рецензию, Вы сможете увидеть название и аннотацию рукописи в запросе, и у Вас всегда будет возможность принять или отклонить это предложение. Вы также, в любой момент, можете попросить, чтобы мы удалили Ваше имя из этого списка рецензентов.<br />\n<br />\nМы высылаем Вам имя пользователя и пароль, которые используются при любом взаимодействии с нашим журналом через веб-сайт. Например, Вы можете откорректировать свои данные в профиле пользователя, указав интересующую Вас как рецензента тематику.<br />\n<br />\nИмя пользователя: {$username}<br />\nПароль: {$password}<br />\n<br />\nС уважением,<br />\n{$principalContactSignature}','Это письмо отправляется вновь зарегистрированному рецензенту, приветствуя его в системе и сообщая ему имя пользователя и пароль для доступа к сайту.'),('REVIEW_ACK','cs_CZ','Poděkování za zpracování recenze článku','{$reviewerName}:<br />\n<br />\nDěkujeme za dokončení recenze příspěvku &quot;{$submissionTitle}&quot; pro {$contextName}. Vážíme si Vaší práce vedoucí ke zkvalitnění článků, které publikujeme.','Tento email posílá editor sekce, aby potvrdil přijetí zpracované recenze a poděkoval recenzentovi za jeho práci.'),('REVIEW_ACK','da_DK','Bekræftelse af bedømmelse af artikel','{$reviewerName}:<br />\n<br />\nTak, fordi du har fuldført bedømmelsen af manuskriptet &quot;{$submissionTitle}&quot; til {$contextName}. Vi påskønner dit bidrag til kvaliteten af de artikler, vi publicerer.','Denne e-mail sendes af sektionsredaktøren for at bekræfte modtagelsen af en fuldført bedømmelse og takker bedømmeren for sit bidrag.'),('REVIEW_ACK','de_DE','Eingangsbestätigung für ein Gutachten','{$reviewerName},<br />\n<br />\nvielen Dank für Ihr Gutachten zum Beitrag &quot;{$submissionTitle}&quot; für {$contextName}. Ihre Stellungnahme ist eine wichtige Unterstützung für unsere Bemühungen um die Qualität der von uns veröffentlichten Arbeiten.','Diese E-Mail wird von eine/r Rubrikredakteur/in gesendet, um den Empfang eines abgeschlossenen Gutachtens zu bestätigen und um der Gutachterin/dem Gutachter für die Mitwirkung zu danken.'),('REVIEW_ACK','en_US','Article Review Acknowledgement','{$reviewerName}:<br />\n<br />\nThank you for completing the review of the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We appreciate your contribution to the quality of the work that we publish.','This email is sent by a Section Editor to confirm receipt of a completed review and thank the reviewer for their contributions.'),('REVIEW_ACK','it_IT','Ringraziamenti per la revisione','Gentile {$reviewerName}:<br />\n<br />\nGrazie per aver completato la revisione del manoscritto &quot;{$submissionTitle},&quot; per {$contextName}. Apprezziamo il tuo contributo nel mantenere alta la qualità della rivista.','Questa email viene inviata dal section editor per confermare la ricezione di una revisione completata e per ringraziare i revisori per i loro contributi.'),('REVIEW_ACK','pt_BR','Agradecimento pela avaliação','{$reviewerName}:<br />\n<br />\nAgradeço por enviar o parecer da submissão &quot;{$submissionTitle},&quot; para o periódico {$contextName}. Nós apreciamos sua contribuição para manter a qualidade dos trabalhos que publicamos.','Mensagem enviada pelo Editor de Seção ao Avaliador para confirmar recebimento e agradecer o avaliador pela conclusão da avaliação.'),('REVIEW_ACK','ru_RU','Подтверждение получения рецензии','Здравствуйте, {$reviewerName}!<br />\n<br />\nБлагодарю Вас за рецензию на материал «{$submissionTitle}» для журнала «{$contextName}». Мы ценим Ваш вклад в качество работы, которую мы публикуем.','Это письмо отправляется редактором раздела в качестве подтверждения получения рецензии на статью и благодарности рецензенту за его вклад.'),('REVIEW_CANCEL','cs_CZ','Žádost o zrušení recenze','{$reviewerName}:<br />\n<br />\nV tomto bodě jsme se rozhodli odvolat naši žádost, abyste pro nás zpracoval recenzi příspěvku &quot;{$submissionTitle}&quot; pro {$contextName}. Omlouváme se za veškeré nepříjemnosti, které by Vám to mohlo způsobit, a doufáme, že Vás budeme moci oslovit ohledně recenzních řízení tohoto časopisu v budoucnu.<br />\n<br />\nV případě, že budete mít jakékoliv dotazy, mě prosím kontaktujte.','Tento email zasílá editor sekce recenzentovi, který má rozpracovanou recenzi, aby mu oznámil, že požadavek na zpracování recenze byl zrušen.'),('REVIEW_CANCEL','da_DK','Annullering af forespørgsel om bedømmelse','{$reviewerName}:<br />\n<br />\nPå nuværende tidspunkt har vi valgt at annullere vores forespørgsel til dig om at bedømme manuskriptet &quot;{$submissionTitle}&quot; til {$contextName}. Vi beklager den ulejlighed, dette eventuelt måtte forårsage, og vi håber, at vi må henvende os til dig i fremtiden og bede om din assistance i forbindelse med dette tidsskrifts bedømmelsesproces.<br />\n<br />\nHvis du har spørgsmål, er du velkommen til at kontakte mig.','Denne e-mail sendes af sektionsredaktøren til en bedømmer, som er ved at bedømme et manuskript, og underretter vedkommende om, at bedømmelsen er blevet annulleret.'),('REVIEW_CANCEL','de_DE','Rücknahme einer Bitte um ein Gutachten','{$reviewerName},<br />\n<br />\nwir haben uns entschieden, unsere Anfrage nach einem Gutachten für den Beitrag &quot;{$submissionTitle}&quot; für {$contextName} zurückzuziehen. Verzeihen Sie bitte die Ihnen dadurch evtl. entstandenen Unannehmlichkeiten. Wir hoffen, dass wir weiterhin auf Ihre Hilfe als Gutachter/in für die Zeitschrift zählen können.<br />\n<br />\nFalls Sie Fragen haben, können Sie sich gerne an mich wenden.','Diese E-Mail wird von der/dem Rubrikredakteur/in an eine/n Gutachter/in gesendet, die an einem Gutachten arbeiten, um sie darüber zu informieren, dass das Gutachten abgesagt worden ist.'),('REVIEW_CANCEL','en_US','Request for Review Cancelled','{$reviewerName}:<br />\n<br />\nWe have decided at this point to cancel our request for you to review the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We apologize for any inconvenience this may cause you and hope that we will be able to call on you to assist with this journal\'s review process in the future.<br />\n<br />\nIf you have any questions, please contact me.','This email is sent by the Section Editor to a Reviewer who has a submission review in progress to notify them that the review has been cancelled.'),('REVIEW_CANCEL','it_IT','Cancellazione richiesta di revisione','Gentile {$reviewerName}:<br />\n<br />\nAbbiamo deciso di cancellare la nostra richiesta di revisione della proposta, &quot;{$submissionTitle},&quot; per {$contextName}.<br />\n<br />\nCi scusiamo per qualsiasi disturbo possiamo aver causato speriamo di poter contare su di te in una prossima occasione.<br />\n<br />\nSe hai qualsiasi richiesta, ti prego di contattarmi.','Questa email viene inviata dal section editor al revisore che ha una  revisione di una proposta in corso per fargli sapere che la revisione è stata cancellata.'),('REVIEW_CANCEL','pt_BR','Cancelamento de solicitação de avaliação','{$reviewerName}:<br />\n<br />\nNós decidimos cancelar o pedido de avaliação da submissão, &quot;{$submissionTitle},&quot; para o periódico {$contextName}. Nós pedimos desculpas por qualquer inconveniência que isso lhe causou e esperamos poder contar com sua assistência no processo de avaliação por pares deste periódico no futuro.<br />\n<br />\nSe tiver alguma dúvida, por gentileza, entre em contato comigo.','Mensagem enviada pelo Editor de Seção com um processo de avaliação em andamento, notificando que o processo em questão foi cancelado.'),('REVIEW_CANCEL','ru_RU','Запрос на рецензирование отменен','Здравствуйте, {$reviewerName}!<br />\n<br />\nНа данный момент мы решили отменить наш запрос на рецензирование Вами материала «{$submissionTitle}» для журнала «{$contextName}». Мы приносим свои извинения за причиненное Вам беспокойство и надеемся, что в будущем мы сможем к Вам обратиться за помощью в рецензировании материалов для нашего журнала.<br />\n<br />\nЕсли у Вас есть вопросы, пожалуйста, свяжитесь со мной.','Это письмо редактора раздела, отправляемое рецензенту, который начал рецензировать материал, с уведомлением о том, что рецензирование отменено.'),('REVIEW_CONFIRM','cs_CZ','Mohu zpracovat recenzi','Editoři:<br />\n<br />\nMohu a jsem ochotný zpracovat recenzi příspěvku &quot;{$submissionTitle}&quot; pro {$contextName}. Děkuji, že jste mě oslovili. Plánuji dokončit zpracování recenze ve stanoveném termínu {$reviewDueDate}, případně dříve.<br />\n<br />\n{$reviewerName}','Tento email posílá recenzent editorovi sekce v odpovědi na žádost o zpracování recenze, aby mu oznámil, že žádost přijal a zpracuje recenzi ve stanoveném termínu.'),('REVIEW_CONFIRM','da_DK','Kan foretage bedømmelse','Redaktører:<br />\n<br />\nJeg kan og er villig til at bedømme manuskriptet &quot;{$submissionTitle}&quot; til {$contextName}. Tak, fordi du tænkte på mig, og jeg planlægger at være færdig med bedømmelsen senest på forfaldsdatoen, {$reviewDueDate}, hvis ikke før.<br />\n<br />\n{$reviewerName}','Denne e-mail sendes af en bedømmer til sektionsredaktøren som svar på en bedømmelsesforespørgsel og underretter sektionsredaktøren om, at bedømmelsesforespørgslen er blevet accepteret, og at bedømmelsen vil være fuldført til den angivne dato.'),('REVIEW_CONFIRM','de_DE','Einwilligung in die Begutachtung','Sehr geehrte Redaktion,<br />\n<br />\nich bin in der Lage und auch gern bereit, den Beitrag &quot;{$submissionTitle}&quot; für {$contextName} zu begutachten. Vielen Dank für Ihr Vertrauen; ich werde das Gutachten spätestens bis zum {$reviewDueDate} einreichen, wenn möglich auch früher.<br />\n<br />\n{$reviewerName}','Diese E-Mail wird von einer Gutachterin/einem Gutachter an die/den Rubrikredakteur/in als Antwort auf eine Begutachtungsanfrage gesendet, um die/den Rubrikredakteur/in darüber zu informieren, dass die Begutachtung übernommen wird und bis zu dem angegebenen Datum abgeschlossen sein wird.'),('REVIEW_CONFIRM','en_US','Able to Review','Editors:<br />\n<br />\nI am able and willing to review the submission, &quot;{$submissionTitle},&quot; for {$contextName}. Thank you for thinking of me, and I plan to have the review completed by its due date, {$reviewDueDate}, if not before.<br />\n<br />\n{$reviewerName}','This email is sent by a Reviewer to the Section Editor in response to a review request to notify the Section Editor that the review request has been accepted and will be completed by the specified date.'),('REVIEW_CONFIRM','it_IT','Accettazione incarico di revisione','Gentile Editor,<br />\n<br />\nAccetto l\'incarico di revisionare &quot;{$submissionTitle},&quot; per {$contextName}.<br />\nPenso di completare la revisione per la data che mi avete comunicato, {$reviewDueDate}, se non prima.<br />\n<br />\n{$reviewerName}','Questa email viene mandata dal revisore  al section editor in risposta a una richiesta di revisione per far sapere a quest\'ultimo che la richiesta è stata accettata e sarà completata alla data specificata.'),('REVIEW_CONFIRM','pt_BR','Disponível para realizar avaliação','Prezados editores, <br />\n<br />\nEu tenho disponibilidade para dar um parecer para a submissão, &quot;{$submissionTitle},&quot; para o periódico {$contextName}. Agradeço por lembrar de mim, e pretendo enviar o parecer até {$reviewDueDate}, se não antes.<br />\n<br />\nAtenciosamente,\n<br />\n{$reviewerName}','Mensagem enviada pelo Avaliador ao Editor de Seção, em resposta à solicitação de avaliação, para notificar disponibilidade para realizar a tarefa e de que a mesma será concluída no prazo especificado.'),('REVIEW_CONFIRM','ru_RU','Согласен дать рецензию','Уважаемые редакторы!<br />\n<br />\nЯ готов дать рецензию на материал «{$submissionTitle}» для журнала «{$contextName}». Благодарю Вас, что обратились ко мне; я планирую завершить рецензирование к указанному сроку, {$reviewDueDate}, а возможно и раньше.<br />\n<br />\n{$reviewerName}','Это письмо рецензента, отправляемое редактору раздела, в ответ на запрос на рецензирование статьи, чтобы уведомить редактора раздела о том, что запрос на рецензирование принят и рецензия будет предоставлена к указанной дате.'),('REVIEW_DECLINE','cs_CZ','Nemohu zpracovat recenzi','Editoři:<br />\n<br />\nObávám se, že tentokrát nejsem schopen zpracovat recenzi příspěvku &quot;{$submissionTitle}&quot; pro {$contextName}. Děkuji, že jste mě oslovili a neváhejte mě jindy opět kontaktovat.<br />\n<br />\n{$reviewerName}','Tento email posílá recenzent editorovi sekce v odpovědi na žádost o zpracování recenze, aby mu oznámil, že recenzi nemůže zpracovat.'),('REVIEW_DECLINE','da_DK','Kan ikke foretage bedømmelse','Redaktører:<br />\n<br />\nJeg beklager, at jeg på nuværende tidspunkt ikke kan bedømme manuskriptet &quot;{$submissionTitle}&quot; til {$contextName}. Tak, fordi du tænkte på mig, og du er altid velkommen til at kontakte mig en anden gang.<br />\n<br />\n{$reviewerName}','Denne e-mail sendes af en bedømmer til sektionsredaktøren som svar på en bedømmelsesforespørgsel og underretter sektionsredaktøren om, at bedømmelsesforespørgslen er blevet afvist.'),('REVIEW_DECLINE','de_DE','Ablehnung der Bitte um ein Gutachten','Sehr geehrte Redaktion,<br />\n<br />\nleider kann ich gegenwärtig die Begutachtung des Beitrags &quot;{$submissionTitle}&quot; für {$contextName} nicht übernehmen. Ich danke für Ihr Vertrauen. Bei anderer Gelegenheit können Sie sich gerne wieder an mich wenden.<br />\n<br />\n{$reviewerName}','Diese E-Mail wird von einer Gutachterin/einem Gutachter an die/den Rubrikredakteur/in als Antwort auf eine Begutachtungsanfrage gesendet, um darüber zu informieren, dass die Anfrage abgelehnt wird.'),('REVIEW_DECLINE','en_US','Unable to Review','Editors:<br />\n<br />\nI am afraid that at this time I am unable to review the submission, &quot;{$submissionTitle},&quot; for {$contextName}. Thank you for thinking of me, and another time feel free to call on me.<br />\n<br />\n{$reviewerName}','This email is sent by a Reviewer to the Section Editor in response to a review request to notify the Section Editor that the review request has been declined.'),('REVIEW_DECLINE','it_IT','Rifiuto incarico di revisione','Egregia redazione:<br />\n<br />\nSono spiacente di non poter revisionare la proposta, &quot;{$submissionTitle},&quot; per {$contextName}. Spero che ci siano future occasioni di collaborazione.<br />\n<br />\n{$reviewerName}','Questa email viene mandata dal revisore al section editor in risposta a una richiesta di revisione per far sapere a quest\'ultimo che la richiesta è stata declinata.'),('REVIEW_DECLINE','pt_BR','Indisponível para realizar avaliação','Editores(as):<br />\n<br />\nTemo não poder dar um parecer à submissão &quot;{$submissionTitle},&quot; para o periódico {$contextName} no momento. Agradeço por lembrar de mim, e fiquem à vontade para me convidar novamente em um outro momento.<br />\n<br />\n{$reviewerName}','Mensagem enviada pelo Avaliador ao Editor de Seção, em resposta à solicitação de avaliação, para notificar sua NÃO disponibilidade para realizar a tarefa, rejeitando a solicitação.'),('REVIEW_DECLINE','ru_RU','Не могу дать рецензию','Уважаемые редакторы!<br />\n<br />\nБоюсь, что в данный момент я не могу дать рецензию на материал «{$submissionTitle}» для журнала «{$contextName}». Благодарю вас, что обратились ко мне, в другой раз также не стесняйтесь, обращайтесь ко мне.<br />\n<br />\n{$reviewerName}','Это письмо рецензента, отправляемое редактору раздела, в ответ на запрос на рецензирование статьи, чтобы уведомить редактора раздела о том, что запрос на рецензирование отклонен.'),('REVIEW_REINSTATE','cs_CZ','Žádost o recenzi byla obnovena','{$reviewerName}:<br />\n<br />\nRádi bychom obnovili naši žádost o kontrolu příspěvku &quot;{$submissionTitle},&quot; pro {$contextName}. Doufáme, že budete moci pomoci s procesem recenzí tohoto časopisu. <br />\n<br />\nPokud máte nějaké dotazy, kontaktujte mě.','Tento e-mail je odeslán editorem sekce recenzentovi, který právě provádí recenzi příspěvku, aby mu oznámil, že zrušená recenze byla obnovena.'),('REVIEW_REINSTATE','da_DK','Anmodning om bedømmelse genindsat','{$reviewerName}:<br />\n<br />\nVi vil gerne på ny anmode om, at du foretager en bedømmelse af indsendelsen, &quot;{$submissionTitle},&quot; for {$contextName}. Vi håber, at du vil kunne være behjælpelig med at gennemføre dette tidsskrifts bedømmelsesforløb.<br />\n<br />\nDu bedes kontakte mig, hvis du har spørgsmål.','Denne e-mail er afsendt af sektionsredaktøren til en bedømmer, som er i gang med en bedømmelse for at underrette vedkommende om, at en annulleret bedømmelse er blevet genindsat.'),('REVIEW_REINSTATE','de_DE','Anfrage nach einem Gutachten wiederhergestellt.','{$reviewerName},<br />\n<br />\nWir möchten unsere Anfrage nach einem Gutachten für den Beitrag &quot;{$submissionTitle},&quot;, welcher bei {$contextName} eingereicht wurde, erneuern. Wir hoffen, dass Sie uns im Begutachtunsprozess dieser Zeitschrift unterstützen können.<br />\n<br />\nWenn Sie Fragen haben, können Sie sich gern an mich wenden.','Diese E-Mail wird von der/dem Rubrikredakteur/in an eine/n Gutachter/in gesendet, die an einem Gutachten arbeiten, um sie darüber zu informieren, dass die zurüchgezogene Anfrage nach einem Gutachten hiermit erneuert wird.'),('REVIEW_REINSTATE','en_US','Request for Review Reinstated','{$reviewerName}:<br />\n<br />\nWe would like to reinstate our request for you to review the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We hope that you will be able to assist with this journal\'s review process.<br />\n<br />\nIf you have any questions, please contact me.','This email is sent by the Section Editor to a Reviewer who has a submission review in progress to notify them that a cancelled review has been reinstated.'),('REVIEW_REINSTATE','it_IT','Invito alla revisione ripristinato','{$reviewerName}:<br />\n<br />\nE\' stato ripristinato l\'invito alla revisione per il manoscritto &quot;{$submissionTitle},&quot; per la testata {$contextName}.  Ci auguriamo che le sia possibile contribuire a questo ciclo di revisione e rimaniamo a sua disposizione per qualsiasi chiarimento.','Questa mail è inviata dal Section Editor al revisore con una revisione in corso per avvisarlo che l\'invito alla revisione cancellato è stato ripristinato.'),('REVIEW_REINSTATE','pt_BR','Solicitação de revisão restabelecida','{$reviewerName}:<br />\n<br />\nNós gostaríamos de convidá-lo(a) novamente para dar um parecer à submissão, &quot;{$submissionTitle},&quot; para o periódico {$contextName}. Nós esperamos que você possa nos ajudar no processo de avaliação por pares deste periódico.<br />\n<br />\nSe tiver alguma dúvida, por favor, entre em contato comigo.','Este e-mail é enviado pelo Editor de Seção a um Avaliador que possui uma avaliação de uma submissão em andamento para notificá-lo de que uma avaliação cancelada foi restabelecida.'),('REVIEW_REINSTATE','ru_RU','Запрос на возобновление рецензирования','Здравствуйте, {$reviewerName}!<br />\n<br />\nМы бы хотели возобновить наш запрос на рецензирование Вами материала «{$submissionTitle}» для журнала «{$contextName}». Мы надеемся, что Вы сможете помочь нам в процессе рецензирования для этого журнала.<br />\n<br />\nЕсли у Вас есть вопросы, пожалуйста, свяжитесь со мной.','Это письмо редактора раздела, отправляемое рецензенту, который начал рецензировать материал, с уведомлением о том, что ранее отмененное рецензирование было возобновлено.'),('REVIEW_REMIND','cs_CZ','Připomenutí recenze příspěvku','{$reviewerName}:<br />\n<br />\nDovolujeme si Vám opatrně připomenout naši žádost o zpracování recenze příspěvku &quot;{$submissionTitle}&quot; pro {$contextName}. Doufali jsme, že budeme mít tuto recenzi hotovou do {$reviewDueDate} a budeme rádi, když ji od Vás dostaneme hned, jak ji budete moci dokončit.<br />\n<br />\nPokud nemáte své uživatelské jméno a heslo pro webovou stránku časopisu, můžete použít tento odkaz pro resetování Vašeho hesla (které Vám bude zasláno emailem spolu s Vaším uživatelským jménem). {$passwordResetUrl}<br />\n<br />\nURL příspěvku: {$submissionReviewUrl}<br />\n<br />\nPotvrďte prosím, zda můžete dokončit tento nezbytný úkol pro náš časopis. Těším se, že se ozvete.<br />\n<br />\n{$editorialContactSignature}','Tento email posílá editor sekce recenzentovi, aby mu připomněl, že vypršel termín pro zpracování recenze.'),('REVIEW_REMIND','da_DK','Påmindelse om bedømmelse af manuskript','{$reviewerName}:<br />\n<br />\nDette er blot for at minde dig om vores forespørgsel om din bedømmelse af manuskriptet &quot;{$submissionTitle}&quot; til {$contextName}. Vi havde håbet på at modtage bedømmelsen senest den {$reviewDueDate} og ser frem til at modtage den, så snart du er færdig med den.<br />\n<br />\nHvis du ikke har dit brugernavn og din adgangskode til tidsskriftets websted, kan du bruge dette link til at nulstille adgangskoden (som så vil blive sendt til dig via e-mail sammen med dit brugernavn). {$passwordResetUrl}<br />\n<br />\nManuskriptets URL-adresse: {$submissionReviewUrl}<br />\n<br />\nVi beder dig bekræfte, at du er i stand til at fuldføre dette vigtige bidrag til tidsskriftets arbejde. Jeg ser frem til at høre fra dig.<br />\n<br />\n{$editorialContactSignature}','Denne e-mail sendes af sektionsredaktøren til en bedømmer for at minde vedkommende om, at bedømmelsen skulle have været afleveret.'),('REVIEW_REMIND','de_DE','Erinnerung an fälliges Gutachten','{$reviewerName},<br />\n<br />\nwir möchten Sie freundlich an Ihre Zusage erinnern, den Beitrag &quot;{$submissionTitle}&quot; für {$contextName} zu begutachten. Wir hatten gehofft, das Gutachten bis zum {$reviewDueDate} zu erhalten. Wir würden uns freuen, wenn es uns baldmöglichst zur Verfügung stünde.<br />\n<br />\nFalls Ihnen Benutzer/innenname und Passwort fehlen, können Sie über folgenden Link Ihr Passwort neu setzen (Benutzer/innenname und Passwort gehen Ihnen umgehend per E-Mail zu). {$passwordResetUrl}<br />\n<br />\nURL des Beitrags: {$submissionReviewUrl}<br />\n<br />\nKönnten Sie uns bitte bestätigen, dass Sie nach wie vor bereit sind, unsere Zeitschrift gutachterlich zu unterstützen? Wir würden uns freuen, bald von Ihnen zu hören.<br />\n<br />\n{$editorialContactSignature}','Diese E-Mail wird von einer Rubrikredakteurin/einem Rubrikredakteur gesendet, um eine/n Gutachter/in daran zu erinnern, dass ihr/sein Gutachten fällig ist.'),('REVIEW_REMIND','en_US','Submission Review Reminder','{$reviewerName}:<br />\n<br />\nJust a gentle reminder of our request for your review of the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We were hoping to have this review by {$reviewDueDate}, and would be pleased to receive it as soon as you are able to prepare it.<br />\n<br />\nIf you do not have your username and password for the journal\'s web site, you can use this link to reset your password (which will then be emailed to you along with your username). {$passwordResetUrl}<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nPlease confirm your ability to complete this vital contribution to the work of the journal. I look forward to hearing from you.<br />\n<br />\n{$editorialContactSignature}','This email is sent by a Section Editor to remind a reviewer that their review is due.'),('REVIEW_REMIND','it_IT','Promemoria revisione in attesa','Gentile {$reviewerName}:<br />\n<br />\nTi ricordo la richiesta di revisione della submission, &quot;{$submissionTitle},&quot; per {$contextName}. La data di scadenza prevista è {$reviewDueDate}.<br />\n<br />\nSe non hai una username and password per il sito web della rivista, puoi usare questo link per resettare la  password (che ti sarà quindi mandata per email insieme con la username). {$passwordResetUrl}<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nTi chiedo la cortesia di di confermare la volontà di portare a termine l\'incarico.<br />\n<br />\n{$editorialContactSignature}','Questa email viene mandata da un section editor per ricordare al revisore che è attesa la revisione.'),('REVIEW_REMIND','pt_BR','Lembrete de solicitação de avaliação','{$reviewerName}:<br />\n<br />\nEste é apenas um lembrete amigável do nosso pedido de avaliação da submissão, &quot;{$submissionTitle},&quot; ao periódico {$contextName}. Esperávamos ter recebido sua avaliação até {$reviewDueDate}, então gostaríamos de recebê-la assim que você conseguir prepará-la.<br />\n<br />\nSe você não tiver seu nome de usuário e senha para o site do periódico, poderá usar este link para redefinir sua senha (que será enviada por e-mail juntamente com seu nome de usuário). {$passwordResetUrl}<br />\n<br />\nURL da submissão: {$submissionReviewUrl}<br />\n<br />\nPor favor, confirme que poderá completar essa contribuição vital ao trabalho do periódico. Aguardo seu retorno.<br />\n<br />\n{$editorialContactSignature}','Mensagem enviada pelo Editor de Seção ao Avaliador como lembrete da tarefa de avaliação em andamento ainda não concluída.'),('REVIEW_REMIND','ru_RU','Напоминание о рецензии на материал','Здравствуйте, {$reviewerName}:<br />\n<br />\nЭто напоминание о нашем запросе Вашей рецензии на материал «{$submissionTitle}» для журнала «{$contextName}». Мы надеялись получить эту рецензию до {$reviewDueDate} и будем рады, если Вы как можно скорее ее подготовите.<br />\n<br />\nЕсли у Вас нет имени пользователя и пароля для доступа к сайту журнала, Вы можете воспользоваться этой ссылкой для сброса Вашего пароля (он будет направлен Вам вместе с Вашим именем пользователя на электронную почту). {$passwordResetUrl}<br />\n<br />\nURL материала: {$submissionReviewUrl}<br />\n<br />\nПожалуйста, подтвердите, что Вы сможете сделать этот важный вклад в работу нашего журнала. Жду вашего ответа.<br />\n<br />\n{$editorialContactSignature}','Это письмо отправляется редактором раздела, чтобы напомнить рецензенту о том, что срок предоставления рецензии уже прошел.'),('REVIEW_REMIND_AUTO','cs_CZ','Automatické připomenutí recenze příspěvku','{$reviewerName}:<br />\n<br />\nDovolujeme si Vám opatrně připomenout naši žádost o zpracování recenze příspěvku &quot;{$submissionTitle}&quot; pro {$contextName}. Doufali jsme, že budeme mít tuto recenzi hotovou do {$reviewDueDate} a tento email byl automaticky vygenerován a poslán, jelikož stanovený termín již vypršel. Budeme velice rádi, když od Vás recenzi dostaneme hned, jak ji budete moci dokončit.<br />\n<br />\nPokud nemáte své uživatelské jméno a heslo pro webovou stránku časopisu, můžete použít tento odkaz pro resetování Vašeho hesla (které Vám bude zasláno emailem spolu s Vaším uživatelským jménem). {$passwordResetUrl}<br />\n<br />\nURL příspěvku: {$submissionReviewUrl}<br />\n<br />\nPotvrďte prosím, zda můžete dokončit tento nezbytný úkol pro náš časopis. Těším se, že se ozvete.<br />\n<br />\n{$editorialContactSignature}','Tento email je automaticky poslán, když recenzentovi vyprší stanovený termín pro zpracování recenze (viz Možnosti recenze v Nastavení časopisu, Krok 2) a je zakázán přístup recenzenta na jedno kliknutí. Musí být povoleny a nakonfigurovány naplánované úlohy (viz konfigurační soubor stránky).'),('REVIEW_REMIND_AUTO','da_DK','Automatisk påmindelse om bedømmelse af manuskript','{$reviewerName}:<br />\n<br />\nDette er blot for at minde dig om vores forespørgsel om din bedømmelse af manuskriptet &quot;{$submissionTitle}&quot; til {$contextName}. Vi havde håbet på at modtage bedømmelsen senest den {$reviewDueDate}, og denne e-mail er blevet automatisk genereret og sendt til dig, da den pågældende dato er overskredet. Vi ser stadig frem til at modtage den, så snart du er færdig med den.<br />\n<br />\nHvis du ikke har dit brugernavn og din adgangskode til tidsskriftets websted, kan du bruge dette link til at nulstille adgangskoden (som så vil blive sendt til dig via e-mail sammen med dit brugernavn). {$passwordResetUrl}<br />\n<br />\nManuskriptets URL-adresse: {$submissionReviewUrl}<br />\n<br />\nVi beder dig bekræfte, at du er i stand til at fuldføre dette vigtige bidrag til tidsskriftets arbejde. Jeg ser frem til at høre fra dig.<br />\n<br />\n{$editorialContactSignature}','Denne e-mail sendes automatisk, når en bedømmers forfaldsdato overskrides (se Bedømmelsesindstillinger under Indstillinger> Workflow > Bedømmelse), og når adgang for bedømmere ved hjælp af ét klik er deaktiveret. Planlagte opgaver skal aktiveres og konfigureres (se webstedets konfigurationsfil).'),('REVIEW_REMIND_AUTO','de_DE','Automatische Erinnerung an die Fälligkeit eines Gutachtens','{$reviewerName},<br />\n<br />\nhiermit möchten wir Sie freundlich an Ihre Zusage erinnern, den Beitrag &quot;{$submissionTitle}&quot; für {$contextName} zu begutachten. Wir hatten gehofft, das Gutachten zum {$reviewDueDate} zu erhalten. Diese E-Mail wurde automatisch erstellt und nach Überschreitung des Termins versandt. Wir würden uns freuen, wenn uns das Gutachten baldmöglichst zur Verfügung stünde.<br />\n<br />\nFalls Ihnen Benutzer/innennamen und Passwort fehlen, können Sie über folgenden Link Ihr Passwort neu setzen (Benutzer/innenname und Passwort gehen Ihnen umgehend per E-Mail zu). {$passwordResetUrl}<br />\n<br />\nURL des Beitrags: {$submissionReviewUrl}<br />\n<br />\nKönnten Sie uns bitte bestätigen, dass Sie nach wie vor bereit sind, unsere Zeitschrift gutachterlich zu unterstützen? Wir würden uns freuen, bald von Ihnen zu hören.<br />\n<br />\n{$editorialContactSignature}','Diese E-Mail wird automatisch verschickt, wenn das Fälligkeitsdatum für eine/n Gutachter/in verstrichen ist (vgl. die Begutachtungseinstellungen in Schritt 2 des Zeitschriftensetups) und wenn der One-Click-Zugang für Gutachter/innen deaktiviert ist. Planmäßige Aufgaben (scheduled tasks) müssen aktiviert und konfiguriert sein (vgl. die Konfigurationsdatei der Website).'),('REVIEW_REMIND_AUTO','en_US','Automated Submission Review Reminder','{$reviewerName}:<br />\n<br />\nJust a gentle reminder of our request for your review of the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We were hoping to have this review by {$reviewDueDate}, and this email has been automatically generated and sent with the passing of that date. We would still be pleased to receive it as soon as you are able to prepare it.<br />\n<br />\nIf you do not have your username and password for the journal\'s web site, you can use this link to reset your password (which will then be emailed to you along with your username). {$passwordResetUrl}<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nPlease confirm your ability to complete this vital contribution to the work of the journal. I look forward to hearing from you.<br />\n<br />\n{$editorialContactSignature}','This email is automatically sent when a reviewer\'s due date elapses (see Review Options under Settings > Workflow > Review) and one-click reviewer access is disabled. Scheduled tasks must be enabled and configured (see the site configuration file).'),('REVIEW_REMIND_AUTO','it_IT','Promemoria automatico revisione in attesa','Gentile {$reviewerName},<br />\n<br />\nQuesto è un promemoria automatico della richiesta di revisione del manoscritto &quot;{$submissionTitle},&quot; per {$contextName}.<br />\n<br />\nScadenza prevista:  {$reviewDueDate}.<br />\n<br />\nPuoi usare questo link per resettare la  password (che ti sarà quindi mandata per email insieme con la username). {$passwordResetUrl}<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nTi chiedo la cortesia di confermare al più presto la tua disponibilità di prendere in carico questo incarico.<br />\n<br />\n{$editorialContactSignature}','Questa email viene mandata automaticamente quando una data di revisionee scade (vedi opzioni del revisore nel Impostazioni > Flusso di lavoro > Revisione) e l\'accesso one-click del revisore è disattivato. I compiti programmati devono essere abilitati e configurati (vedi il file di configurazione del sito).'),('REVIEW_REMIND_AUTO','pt_BR','Lembrete automático de solicitação de avaliação','{$reviewerName}:<br />\n<br />\nEste é apenas um lembrete amigável do nosso pedido de avaliação da submissão, &quot;{$submissionTitle},&quot; ao periódico {$contextName}. Esperávamos ter recebido sua avaliação até {$reviewDueDate}, então este email foi gerado automaticamente com o passar daquele prazo. Nós ainda assim ficaríamos gratos em recebê-la assim que você conseguir prepará-la.<br />\n<br />\nSe você não tiver seu nome de usuário e senha para o site do periódico, poderá usar este link para redefinir sua senha (que será enviada por e-mail juntamente com seu nome de usuário). {$passwordResetUrl}<br />\n<br />\nURL da submissão: {$submissionReviewUrl}<br />\n<br />\nPor favor, confirme que poderá completar essa contribuição vital ao trabalho do periódico. Aguardo seu retorno.<br />\n<br />\n{$editorialContactSignature}','Mensagem enviada automaticamente ao avaliador quando a data de conclusão de avaliação for ultrapassada (veja as Opções de Avaliação no Passo 2 da Configuração da Revista). Tarefas agendadas devem ser habilitadas e configuradas (veja o arquivo de configuração do sistema).'),('REVIEW_REMIND_AUTO','ru_RU','Автоматическое напоминание о рецензии на материал','Здравствуйте, {$reviewerName}!<br />\n<br />\nЭто напоминание о нашем запросе Вашей рецензии на материал «{$submissionTitle}» для журнала «{$contextName}». Мы надеялись получить эту рецензию до {$reviewDueDate}, и это письмо было автоматически сгенерировано и отправлено, так как эта дата уже прошла. Мы будем рады, если Вы как можно скорее ее подготовите.<br />\n<br />\nЕсли у Вас нет имени пользователя и пароля для доступа к сайту журнала, Вы можете воспользоваться этой ссылкой для сброса Вашего пароля (он будет направлен Вам вместе с Вашим именем пользователя на электронную почту). {$passwordResetUrl}<br />\n<br />\nURL материала: {$submissionReviewUrl}<br />\n<br />\nПожалуйста, подтвердите, что Вы сможете сделать этот важный вклад в работу нашего журнала. Жду вашего ответа.<br />\n<br />\n{$editorialContactSignature}','Это письмо отправляется автоматически, когда дата предоставления рецензии рецензентом прошла (смотрите Параметры рецензирования в Настройки > Рабочий процесс > Рецензирование) и прямой доступ рецензента по ссылке отключен. Запланированные задачи должны быть включены и настроены (смотрите файл конфигурации сайта).'),('REVIEW_REMIND_AUTO_ONECLICK','cs_CZ','Automatické připomenutí recenze příspěvku','{$reviewerName}:<br />\n<br />\nDovolujeme si Vám opatrně připomenout naši žádost o zpracování recenze příspěvku &quot;{$submissionTitle}&quot; pro {$contextName}. Doufali jsme, že budeme mít tuto recenzi hotovou do {$reviewDueDate} a tento email byl automaticky vygenerován a poslán, jelikož stanovený termín již vypršel. Budeme velice rádi, když od Vás recenzi dostaneme hned, jak ji budete moci dokončit.<br />\n<br />\nURL příspěvku: {$submissionReviewUrl}<br />\n<br />\nPotvrďte prosím, zda můžete dokončit tento nezbytný úkol pro náš časopis. Těším se, že se ozvete.<br />\n<br />\n{$editorialContactSignature}','Tento email je automaticky poslán, když recenzentovi vyprší stanovený termín pro zpracování recenze (viz Možnosti recenze v Nastavení časopisu, Krok 2) a je povolen přístup recenzenta na jedno kliknutí. Musí být povoleny a nakonfigurovány naplánované úlohy (viz konfigurační soubor stránky).'),('REVIEW_REMIND_AUTO_ONECLICK','da_DK','Automatisk påmindelse om bedømmelse af manuskript','{$reviewerName}:<br />\n<br />\nDette er blot for at minde dig om vores forespørgsel om din bedømmelse af manuskriptet &quot;{$submissionTitle}&quot; til {$contextName}. Vi havde håbet på at modtage bedømmelsen senest den {$reviewDueDate}, og denne e-mail er blevet automatisk genereret og sendt til dig, da den pågældende dato er overskredet. Vi ser stadig frem til at modtage den, så snart du er færdig med den.<br />\n<br />\nManuskriptets URL-adresse: {$submissionReviewUrl}<br />\n<br />\nVi beder dig bekræfte, at du er i stand til at fuldføre dette vigtige bidrag til tidsskriftets arbejde. Jeg ser frem til at høre fra dig.<br />\n<br />\n{$editorialContactSignature}','Denne e-mail sendes automatisk, når en bedømmers forfaldsdato overskrides (se Bedømmelsesindstillinger under Indstillinger > Workflow > Bedømmelse), og når adgang for bedømmere ved hjælp af ét klik er aktiveret. Planlagte opgaver skal aktiveres og konfigureres (se webstedets konfigurationsfil).'),('REVIEW_REMIND_AUTO_ONECLICK','de_DE','Automatische Erinnerung an Begutachtung','{$reviewerName},<br />\n<br />\nhiermit möchten wir Sie freundlich an Ihre Zusage erinnern, den Beitrag &quot;{$submissionTitle}&quot; für {$contextName} zu begutachten. Wir hatten gehofft, das Gutachten zum {$reviewDueDate} zu erhalten. Diese E-Mail wurde automatisch erstellt und nach Überschreitung des Termins versandt. Wir würden uns freuen, wenn uns das Gutachten baldmöglichst zur Verfügung stünde.<br />\n<br />\nURL des Beitrags: {$submissionReviewUrl}<br />\n<br />\nKönnten Sie uns bitte bestätigen, dass Sie nach wie vor bereit sind, unsere Zeitschrift mit Ihrer wertvollen gutachterlichen Arbeit zu unterstützen? Wir würden uns freuen, bald von Ihnen zu hören.<br />\n<br />\n{$editorialContactSignature}','Diese E-Mail wird automatisch verschickt, wenn das Fälligkeitsdatum für eine/n Gutachter/in verstrichen ist (vgl. die Begutachtungseinstellungen in Schritt 2 des Zeitschriftensetups) und wenn der One-Click-Zugang für Gutachter/innen aktiviert ist. Planmäßige Aufgaben (scheduled tasks) müssen aktiviert und konfiguriert sein (vgl. die Konfigurationsdatei der Website).'),('REVIEW_REMIND_AUTO_ONECLICK','en_US','Automated Submission Review Reminder','{$reviewerName}:<br />\n<br />\nJust a gentle reminder of our request for your review of the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We were hoping to have this review by {$reviewDueDate}, and this email has been automatically generated and sent with the passing of that date. We would still be pleased to receive it as soon as you are able to prepare it.<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nPlease confirm your ability to complete this vital contribution to the work of the journal. I look forward to hearing from you.<br />\n<br />\n{$editorialContactSignature}','This email is automatically sent when a reviewer\'s due date elapses (see Review Options under Settings > Workflow > Review) and one-click reviewer access is enabled. Scheduled tasks must be enabled and configured (see the site configuration file).'),('REVIEW_REMIND_AUTO_ONECLICK','it_IT','Promemoria automatico revisione in attesa','Gentile {$reviewerName},<br />\n<br />\nQuesto è un promemoria automatico della richiesta di revisione della submission &quot;{$submissionTitle},&quot; per {$contextName}.<br />\n<br />\nScadenza prevista:  {$reviewDueDate}.<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nTi chiedo la cortesia di confermare al più presto la tua disponibilità di portare a termine l\'incarico o meno.<br />\n<br />\n{$editorialContactSignature}','Questa email viene mandata automaticamente quando una data di revisionee scade (vedi opzioni del revisore nel Journal Setup, passo 2) e l\'accesso one-click del revisore è attivato. I compiti programmati devono essere abilitati e configurati (vedi il file di configurazione del sito).'),('REVIEW_REMIND_AUTO_ONECLICK','pt_BR','Lembrete automático de solicitação de avaliação','{$reviewerName}:<br />\n<br />\nEste é apenas um lembrete amigável do nosso pedido de avaliação da submissão, &quot;{$submissionTitle},&quot; ao periódico {$contextName}. Esperávamos ter recebido sua avaliação até {$reviewDueDate}, então este email foi gerado automaticamente com o passar daquele prazo. Nós ainda assim ficaríamos gratos em recebê-la assim que você conseguir prepará-la.<br />\n<br />\nURL da submissão: {$submissionReviewUrl}<br />\n<br />\nPor favor, confirme que poderá completar essa contribuição vital ao trabalho do periódico. Aguardo seu retorno.<br />\n<br />\n{$editorialContactSignature}','Mensagem enviada automaticamente ao avaliador quando a data de conclusão de avaliação for ultrapassada (veja as Opções de Avaliação no Passo 2 da Configuração da Revista) e o acesso 1-Clique estiver ativado. Tarefas agendadas devem ser habilitadas e configuradas (veja o arquivo de configuração do sistema).'),('REVIEW_REMIND_AUTO_ONECLICK','ru_RU','Автоматическое напоминание о рецензии на материал','Здравствуйте, {$reviewerName}!<br />\n<br />\nЭто напоминание о нашем запросе Вашей рецензии на материал «{$submissionTitle}» для журнала «{$contextName}». Мы надеялись получить эту рецензию до {$reviewDueDate}, и это письмо было автоматически сгенерировано и отправлено, так как эта дата уже прошла. Мы будем рады, если Вы как можно скорее ее подготовите.<br />\n<br />\nURL материала: {$submissionReviewUrl}<br />\n<br />\nПожалуйста, подтвердите, что Вы сможете сделать этот важный вклад в работу нашего журнала. Жду вашего ответа.<br />\n<br />\n{$editorialContactSignature}','Это письмо отправляется автоматически, когда дата предоставления рецензии рецензентом прошла (смотрите Параметры рецензирования в Настройки > Рабочий процесс > Рецензирование) и прямой доступ рецензента по ссылке включен. Запланированные задачи должны быть включены и настроены (смотрите файл конфигурации сайта).'),('REVIEW_REMIND_ONECLICK','cs_CZ','Připomenutí recenze příspěvku','{$reviewerName}:<br />\n<br />\nDovolujeme si Vám opatrně připomenout naši žádost o zpracování recenze příspěvku &quot;{$submissionTitle}&quot; pro {$contextName}. Doufali jsme, že budeme mít tuto recenzi hotovou do {$reviewDueDate} a budeme rádi, když ji od Vás dostaneme hned, jak ji budete moci dokončit.<br />\n<br />\nURL příspěvku: {$submissionReviewUrl}<br />\n<br />\nPotvrďte prosím, zda můžete dokončit tento nezbytný úkol pro náš časopis. Těším se, že se ozvete.<br />\n<br />\n{$editorialContactSignature}','Tento email posílá editor sekce recenzentovi, aby mu připomněl, že vypršel termín pro zpracování recenze.'),('REVIEW_REMIND_ONECLICK','da_DK','Påmindelse om bedømmelse af manuskript','{$reviewerName}:<br />\n<br />\nDette er blot for at minde dig om vores forespørgsel om din bedømmelse af manuskriptet &quot;{$submissionTitle}&quot; til {$contextName}. Vi havde håbet på at modtage bedømmelsen senest den {$reviewDueDate} og ser frem til at modtage den, så snart du er færdig med den.<br />\n<br />\nManuskriptets URL-adresse: {$submissionReviewUrl}<br />\n<br />\nVi beder dig bekræfte, at du er i stand til at fuldføre dette vigtige bidrag til tidsskriftets arbejde. Jeg ser frem til at høre fra dig.<br />\n<br />\n{$editorialContactSignature}','Denne e-mail sendes af sektionsredaktøren til en bedømmer for at minde vedkommende om, at bedømmelsen skulle have været afleveret.'),('REVIEW_REMIND_ONECLICK','de_DE','Erinnerung an die Fälligkeit eines Gutachtens','{$reviewerName},<br />\n<br />\nhiermit möchten wir Sie freundlich an Ihre Zusage erinnern, den Beitrag &quot;{$submissionTitle}&quot; für {$contextName} zu begutachten. Wir hatten gehofft, das Gutachten zum {$reviewDueDate} zu erhalten. Diese E-Mail wurde automatisch erstellt und nach Überschreitung des Termins versandt. Wir würden uns freuen, wenn uns das Gutachten baldmöglichst zur Verfügung stünde.<br />\n<br />\nURL des Beitrags: {$submissionReviewUrl}<br />\n<br />\nKönnten Sie uns bitte bestätigen, dass Sie nach wie vor bereit sind, unsere Zeitschrift gutachterlich zu unterstützen? Wir würden uns freuen, bald von Ihnen zu hören.<br />\n<br />\n{$editorialContactSignature}','Diese E-Mail wird von einer Rubrikredakteurin/einem Rubrikredakteur gesendet, um eine/n Gutachter/in daran zu erinnern, dass ihr/sein Gutachten fällig ist.'),('REVIEW_REMIND_ONECLICK','en_US','Submission Review Reminder','{$reviewerName}:<br />\n<br />\nJust a gentle reminder of our request for your review of the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We were hoping to have this review by {$reviewDueDate}, and would be pleased to receive it as soon as you are able to prepare it.<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nPlease confirm your ability to complete this vital contribution to the work of the journal. I look forward to hearing from you.<br />\n<br />\n{$editorialContactSignature}','This email is sent by a Section Editor to remind a reviewer that their review is due.'),('REVIEW_REMIND_ONECLICK','it_IT','Promemoria revisione in attesa','Gentile {$reviewerName},<br />\n<br />\nTi ricordo la richiesta di revisione della submission, &quot;{$submissionTitle},&quot; per {$contextName}. La data di scadenza prevista è {$reviewDueDate}.<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nTi chiedo la cortesia di confermare al più presto la tua disponibilità a portare a termine l\'incarico o meno.<br />\n<br />\n{$editorialContactSignature}','Questa email viene mandata da un section editor per ricordare al revisore che è attesa la revisione.'),('REVIEW_REMIND_ONECLICK','pt_BR','Lembrete de solicitação de avaliação','{$reviewerName}:<br />\n<br />\nEste é apenas um lembrete amigável do nosso pedido de avaliação da submissão, &quot;{$submissionTitle},&quot; ao periódico {$contextName}. Esperávamos ter recebido sua avaliação até {$reviewDueDate}, então gostaríamos de recebê-la assim que você conseguir prepará-la.<br />\n<br />\nURL da submissão: {$submissionReviewUrl}<br />\n<br />\nPor favor, confirme que poderá completar essa contribuição vital ao trabalho do periódico. Aguardo seu retorno.<br />\n<br />\n{$editorialContactSignature}','Mensagem enviada pelo Editor de Seção ao Avaliador como lembrete da tarefa de avaliação em andamento ainda não concluída.'),('REVIEW_REMIND_ONECLICK','ru_RU','Напоминание о рецензии на материал','Здравствуйте, {$reviewerName}!<br />\n<br />\nЭто напоминание о нашем запросе Вашей рецензии на материал «{$submissionTitle}» для журнала «{$contextName}». Мы надеялись получить эту рецензию до {$reviewDueDate} и будем рады, если Вы как можно скорее ее подготовите.<br />\n<br />\nURL материала: {$submissionReviewUrl}<br />\n<br />\nПожалуйста, подтвердите, что Вы сможете сделать этот важный вклад в работу нашего журнала. Жду вашего ответа.<br />\n<br />\n{$editorialContactSignature}','Это письмо отправляется редактором раздела, чтобы напомнить рецензенту о том, что срок предоставления рецензии уже прошел.'),('REVIEW_REQUEST','cs_CZ','Žádost o zpracování recenze článku','{$reviewerName}:<br />\n<br />\nDomnívám se, že byste mohl být výborným recenzentem příspěvku &quot;{$submissionTitle},&quot; který byl zaslán do {$contextName}. Abstrakt příspěvku je vložen níže. Věřím, že zvážíte možnost přijetí tohoto pro nás důležitého úkolu.<br />\n<br />\nProsím, přihlaste se do {$responseDueDate} na stránkách časopisu, abyste uvedl, zda recenzi zpracujete nebo ne a také pro přístup k příspěvku a zaznamenání Vaší recenze a doporučení. Adresa webové stránky je {$contextUrl}<br />\n<br />\nTermín pro zpracování recenze je {$reviewDueDate}.<br />\n<br />\nPokud nemáte své uživatelské jméno a heslo pro webovou stránku časopisu, můžete použít tento odkaz pro resetování Vašeho hesla (které Vám bude zasláno emailem spolu s Vaším uživatelským jménem). {$passwordResetUrl}<br />\n<br />\nURL příspěvku: {$submissionReviewUrl}<br />\n<br />\nDěkujeme za zvážení této žádosti.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','Tento email od editora sekce pro recenzenta žádá, aby recenzent přijal nebo odmítl úkol zpracovat recenzi příspěvku. Obsahuje informace o příspěvku, jako je název a abstrakt, termín pro zpracování recenze a jak se dostat k samotnému příspěvku. Tato zpráva je používána, pokud je zvoleno Standardní recenzí řízení ve druhém kroku  Nastavení časopisu. (V jiném případě viz REVIEW_REQUEST_ATTACHED.)'),('REVIEW_REQUEST','da_DK','Forespørgsel om bedømmelse af artikel','{$reviewerName}:<br />\n<br />\nJeg tror, at du vil være en fremragende bedømmer af manuskriptet &quot;{$submissionTitle}&quot;, der er blevet sendt til {$contextName}. Nedenfor finder du et resumé af manuskriptet, og jeg håber, at du vil overveje at påtage dig denne vigtige opgave for os.<br />\n<br />\nLog på tidsskriftets websted inden den {$responseDueDate} for at angive, om du vil påtage dig bedømmelsen eller ej, samt for at få adgang til manuskriptet og registrere din bedømmelse og anbefaling. Webstedet er {$contextUrl}<br />\n<br />\nSelve bedømmelsen skal afleveres senest den {$reviewDueDate}.<br />\n<br />\nHvis du ikke har dit brugernavn og din adgangskode til tidsskriftets websted, kan du bruge dette link til at nulstille adgangskoden (som så vil blive sendt til dig via e-mail sammen med dit brugernavn). {$passwordResetUrl}<br />\n<br />\nManuskriptets URL-adresse: {$submissionReviewUrl}<br />\n<br />\nTak for din overvejelse af denne forespørgsel.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n {$submissionAbstract}','Denne e-mail fra sektionsredaktøren til en bedømmer anmoder bedømmeren om at acceptere eller afvise at bedømme et manuskript. Den indeholder oplysninger om manuskriptet, f.eks. titel og resumé, forfaldsdato for bedømmelse, samt hvordan der kan oprettes adgang til selve manuskriptet. Denne meddelelse benyttes, hvis indstillingen Standardbedømmelsesproces er valgt under Konfiguration af tidsskrift, trin 2. (Se ellers REVIEW_REQUEST_ATTACHED.)'),('REVIEW_REQUEST','de_DE','Bitte um ein Gutachten','{$reviewerName},<br />\n<br />\naufgrund Ihrer Forschungsschwerpunkte wären Sie ein/e ausgezeichnete/r Gutachter/in für das Manuskript &quot;{$submissionTitle}&quot;, das zur Publikation in {$contextName} eingereicht worden ist. Weiter unten finden Sie eine Kurzfassung des Beitrags. Ich hoffe sehr, dass Sie sich bereitfinden können, uns mit Ihrer Stellungnahme zu unterstützen. Sie wären uns eine große Hilfe.<br />\n<br />\nLoggen Sie sich bitte bis zum {$responseDueDate} auf der Webseite unserer Zeitschrift ein, um uns Ihre Zu- oder Absage mitzuteilen. Sie finden dort den Beitrag und können gegebenenfalls auch Ihr Gutachten und Ihre Empfehlung dort abgeben. Die Webseite ist {$contextUrl}.<br />\n<br />\nDas Gutachten wäre fällig am {$reviewDueDate}.<br />\n<br />\nFalls Sie nicht über Benutzer/innennamen und Passwort verfügen, können Sie über folgenden Link Ihr Passwort neu setzen (Benutzer/innennamen und Passwort gehen Ihnen umgehend per E-Mail zu). {$passwordResetUrl}<br />\n<br />\nURL des Beitrags: {$submissionReviewUrl}<br />\n<br />\nIn der Hoffnung auf eine positive Antwort,<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','Diese E-Mail von der/dem Rubrikredakteur/in an eine/n Gutachter/in bittet darum, dass diese/r die Aufgabe, eine Einreichung zu begutachten, übernimmt oder ablehnt. Sie liefert Informationen über die Einreichung wie Titel und Abstract, ein Fälligkeitsdatum für das Gutachten und darüber, wie auf die Einreichung zugegriffen werden kann. Diese Nachricht wird benutzt, wenn in Schritt 2 des Zeitschriftensetups das Standardbegutachtungsverfahren ausgewählt worden ist. (Ansonsten siehe REVIEW_REQUEST_ATTACHED.)'),('REVIEW_REQUEST','en_US','Article Review Request','{$reviewerName}:<br />\n<br />\nI believe that you would serve as an excellent reviewer of the manuscript, &quot;{$submissionTitle},&quot; which has been submitted to {$contextName}. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br />\n<br />\nPlease log into the journal web site by {$responseDueDate} to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation. The web site is {$contextUrl}<br />\n<br />\nThe review itself is due {$reviewDueDate}.<br />\n<br />\nIf you do not have your username and password for the journal\'s web site, you can use this link to reset your password (which will then be emailed to you along with your username). {$passwordResetUrl}<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nThank you for considering this request.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','This email from the Section Editor to a Reviewer requests that the reviewer accept or decline the task of reviewing a submission. It provides information about the submission such as the title and abstract, a review due date, and how to access the submission itself. This message is used when the Standard Review Process is selected in Management > Settings > Workflow > Review. (Otherwise see REVIEW_REQUEST_ATTACHED.)'),('REVIEW_REQUEST','it_IT','Richiesta di revisione di un articolo','<br />Gentile {$reviewerName},<br />\n<br />\nDesidero invitarti alla  revisione del manoscritto &quot;{$submissionTitle},&quot; che è stato sottomesso per la pubblicazione {$contextName}. L\'abstract del manoscritto  è inserito in calce. Spero che vorrai prendere in carico questo compito.<br />\n<br />\nTi chiedo quindi di effettuare il log in al sito web della rivista entro il {$responseDueDate} per indicare se prenderai in carico la revisione o meno.<br />\nPotrai poi accedere alla submission e inviare il tuo parere. Il sito web è {$contextUrl}<br />\n<br />\nLa data di scadenza per la revisione è fissata al {$reviewDueDate}.<br />\n<br />\nSe non hai una username and password per il sito web della rivista, puoi usare questo link per resettare la  password (che ti sarà quindi mandata per email insieme con la username). {$passwordResetUrl}<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nGrazie per la tua collaborazione.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n======<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\nAbstract<br />\n{$submissionAbstract}','Questa email dal section editor al revisore richiede che quest\'ultimo accetti o rifiuti il compito di revisionare una proposta. Fornisce informazioni sulla submission quali il titolo e l\'abstract, una data attesa per la revisione, e su come accedere alla submission stessa. Questo messaggio è usato quando il processo Standard di revisione è selezionato nel Journal Setup, fase 2. (Altrimenti vedi  ALLEGATA_RICHIESTA_REVISIONE.)'),('REVIEW_REQUEST','pt_BR','A revista {$contextName} solicita avaliação de artigo','{$reviewerName}:<br />\n<br />\nAcredito que você poderia servir como um(a) excelente avaliador(a) do manuscrito, &quot;{$submissionTitle},&quot; que foi submetido ao periódico {$contextName}. O resumo da submissão está inserido abaixo e espero que você considere realizar essa importante tarefa para nós.<br />\n<br />\nFaça o login no site do periódico antes de {$responseDueDate} para indicar sua disponibilidade, bem como para acessar submissão e registrar sua avaliação e recomendação. O site é {$contextUrl}<br />\n<br />\nA avaliação em si tem como prazo {$reviewDueDate}.<br />\n<br />\nSe você não tiver seu nome de usuário e senha para o site do periódico, poderá usar este link para redefinir sua senha (que será enviada por e-mail juntamente com seu nome de usuário). {$passwordResetUrl}<br />\n<br />\nURL da submissão: {$submissionReviewUrl}<br />\n<br />\nAgradeço por considerar esta solicitação.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','Mensagem do Editor de Seção para solicitar ao Avaliador que indique disponibilidade ou não para realizar uma avaliação. Oferece informações sobre a submissão, como título e resumo, além da data para a conclusão dos trabalhos e como acessar o documento. Esta mensagem é usada quando se utiliza o Processo Padrão de Avaliação, definido no Passo 2 de Configuração da Revista. (Caso contrário veja REVIEW_REQUEST_ATTACHED.)'),('REVIEW_REQUEST','ru_RU','Запрос на рецензирование статьи','Здравствуйте, {$reviewerName}!<br />\n<br />\nЯ полагаю, что Вы могли бы быть прекрасным рецензентом для материала «{$submissionTitle}», который был направлен в журнал «{$contextName}». Аннотация статьи приведена ниже, и я надеюсь, что Вы возьметесь выполнить эту важную задачу для нас.<br />\n<br />\nПожалуйста, войдите на сайт журнала до {$responseDueDate}, чтобы подтвердить Ваше согласие на рецензирование или отказаться от рецензирования, а также получить доступ к материалу и оставить свою рецензию и рекомендацию. Адрес сайта — {$contextUrl}<br />\n<br />\nСама рецензия должна быть предоставлена до {$reviewDueDate}.<br />\n<br />\nЕсли у Вас нет имени пользователя и пароля для доступа к сайту журнала, Вы можете воспользоваться этой ссылкой для сброса Вашего пароля (он будет направлен Вам вместе с Вашим именем пользователя на электронную почту). {$passwordResetUrl}<br />\n<br />\nURL материала: {$submissionReviewUrl}<br />\n<br />\nЗаранее благодарю Вас,<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n«{$submissionTitle}»<br />\n<br />\n{$submissionAbstract}','Это письмо редактора раздела, отправляемое рецензенту, с запросом согласия или отказа от выполнения рецензирования материала. В письме приводится информация о материале, такая как название и аннотация, срок выполнения рецензии и как получить доступ к самому материалу. Это сообщение используется, если выбран стандартный процесс рецензирования в Управление > Настройки > Рабочий процесс > Рецензирование. (В ином случае, смотрите REVIEW_REQUEST_ATTACHED.)'),('REVIEW_REQUEST_ATTACHED','cs_CZ','Žádost o zpracování recenze článku','{$reviewerName}:<br />\n<br />\nDomnívám se, že byste mohl být výborným recenzentem příspěvku &quot;{$submissionTitle}&quot; a žádám Vás, abyste zvážil možnost přijetí tohoto pro nás důležitého úkolu. Instrukce pro zpracování recenze pro tento časopis jsou připojeny níže a příspěvek je přiložen k tomuto emailu. Vaši recenzi příspěvku spolu s Vaším doporučením byste mi měl zaslat emailem do {$reviewDueDate}.<br />\n<br />\nUveďte prosím do {$responseDueDate} v odpovědi na tento email, zda můžete a chcete zpracovat tuto recenzi.<br />\n<br />\nDěkujeme za zvážení této žádosti.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n<br />\nInstrukce pro zpracování recenze<br />\n<br />\n{$reviewGuidelines}<br />\n','Tento email od editora sekce pro recenzenta žádá, aby recenzent přijal nebo odmítl úkol zpracovat recenzi příspěvku. Obsahuje příspěvek jako přílohu. Tato zpráva je používána, pokud je zvoleno Recenzí řízení vyžívající emailových příloh ve druhém kroku  Nastavení časopisu. (V jiném případě viz REVIEW_REQUEST.)'),('REVIEW_REQUEST_ATTACHED','da_DK','Forespørgsel om bedømmelse af artikel','{$reviewerName}:<br />\n<br />\nJeg tror, at du vil kunne være en fremragende bedømmer af manuskriptet &quot;{$submissionTitle}&quot;, og jeg beder dig om at overveje at påtage dig denne vigtige opgave for os. Dette tidsskrifts Retningslinjer for bedømmelser er angivet nedenfor, og manuskriptet er vedhæftet denne e-mail. Din bedømmelse af manuskriptet samt din anbefaling skal sendes til mig pr. e-mail senest den {$reviewDueDate}.<br />\n<br />\nMeld venligst tilbage via e-mail inden den {$responseDueDate}, om du kan og er villig til at foretage bedømmelsen.<br />\n<br />\nTak for din overvejelse af denne forespørgsel.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n<br />\nRetningslinjer for bedømmelser<br />\n<br />\n{$reviewGuidelines}<br />\n','Denne e-mail sendes af sektionsredaktøren til en bedømmer og beder vedkommende om at acceptere eller afvise at bedømme et manuskript. Manuskriptet er vedhæftet denne e-mail. Denne meddelelse benyttes, hvis indstillingen Bedømmelsesproces, hvor manuskript er vedhæftet e-mail, er valgt under konfiguration af tidsskrift, Indstillinger > Workflow > Bedømmelse. (Se ellers REVIEW_REQUEST.)'),('REVIEW_REQUEST_ATTACHED','de_DE','Bitte um ein Gutachten','{$reviewerName},<br />\n<br />\naufgrund Ihrer Forschungsschwerpunkte wären Sie ein/e ausgezeichnete/r Gutachter/in für das Manuskript &quot;{$submissionTitle}&quot;. Ich hoffe sehr, dass Sie sich bereitfinden können, uns mit Ihrer Stellungnahme zu unterstützen. Sie wären uns eine große Hilfe. Die Richtlinien für die Begutachtung sind angefügt, ebenso der Beitrag, um den es geht. Ihr Gutachten und Ihre Empfehlung sollten gegebenenfalls bis zum {$reviewDueDate} per E-Mail bei uns eingehen.<br />\n<br />\nBitte benachrichtigen Sie uns bis zum {$responseDueDate} per E-Mail, ob Sie das Gutachten übernehmen können.<br />\n<br />\nIn der Hoffnung auf eine positive Antwort,<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n<br />\nRichtlinien für Gutachter/innen<br />\n<br />\n{$reviewGuidelines}<br />\n','Diese E-Mail wird von der/dem Rubrikredakteur/in an eine/n Gutachter/in gesendet, um darum zu bitten, dass sie/er die Aufgabe, eine Einreichung zu begutachten, übernimmt oder ablehnt. Sie enthält die Einreichung als E-Mail-Anhang. Diese Nachricht wird benutzt, wenn in Schritt 2 des Zeitschriftensetups das Begutachtungsverfahren über E-Mail-Anhänge ausgewählt worden ist. (Ansonsten siehe REVIEW_REQUEST.)'),('REVIEW_REQUEST_ATTACHED','en_US','Article Review Request','{$reviewerName}:<br />\n<br />\nI believe that you would serve as an excellent reviewer of the manuscript, &quot;{$submissionTitle},&quot; and I am asking that you consider undertaking this important task for us. The Review Guidelines for this journal are appended below, and the submission is attached to this email. Your review of the submission, along with your recommendation, should be emailed to me by {$reviewDueDate}.<br />\n<br />\nPlease indicate in a return email by {$responseDueDate} whether you are able and willing to do the review.<br />\n<br />\nThank you for considering this request.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n<br />\nReview Guidelines<br />\n<br />\n{$reviewGuidelines}<br />\n','This email is sent by the Section Editor to a Reviewer to request that they accept or decline the task of reviewing a submission. It includes the submission as an attachment. This message is used when the Email-Attachment Review Process is selected in Management > Settings > Workflow > Review. (Otherwise see REVIEW_REQUEST.)'),('REVIEW_REQUEST_ATTACHED','it_IT','Richiesta di revisione di un articolo','Gentilissimo {$reviewerName}:<br />\n<br />\nDesidero invitarti alla revisione del manoscritto &quot;{$submissionTitle}&quot;.<br />\nLe linee guida per la revisione sono indicate sotto e il manoscritto è allegato.<br />\n<br />\nPuoi comunicarmi il tuo parere per email entro il {$reviewDueDate}.<br />\n<br />\nTi chiedo di farmi sapere entro il {$responseDueDate} se accetti o meno l\'incarico di revisione.<br />\n<br />\nGrazie per la tua collaborazione<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n<br />\nLinee guida per le revisioni<br />\n<br />\n{$reviewGuidelines}<br />\n','Questa email viene inviata dal section editor al revisore richiedendo a quest\'ultimo di accettare o rifiutare il compito di revisionare una proposta. Include la submission come allegato. Questo messaggio è usato il processo di revisione degli allegati Email è selezionato nel Journal Setup, fase 2. (Altrimenti vedi RICHIESTA_REVISIONE.)'),('REVIEW_REQUEST_ATTACHED','pt_BR','A revista {$contextName} solicita avaliação de artigo','{$reviewerName}:<br />\n<br />\nEu acredito que você seria um ótimo(a) parecerista para o manuscrito, &quot;{$submissionTitle},&quot; e estou pedindo que considere aceitar esta importante tarefa para nós. As Diretrizes de Avaliação deste periódico seguem abaixo, e a submissão está anexa ao email. Sua avaliação da submissão, junto à sua recomendação, devem ser enviadas por email para mim até {$reviewDueDate}.<br />\n<br />\nPor gentileza, indique se você aceita dar o parecer ou não por e-mail até {$responseDueDate}.<br />\n<br />\nObrigado por considerar este pedido.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n<br />\nDiretrizes de Avaliação<br />\n<br />\n{$reviewGuidelines}<br />\n','Este email é enviado pelo Editor de Seção para um Avaliador solicitando que ele aceite ou decline a tarefa de dar um parecer para uma submissão. A submissão é enviada anexada ao e-mail. A mensagem é utilizada quando o Processo de Avaliação por Anexo de E-mail é selecionado em Gerenciamento > Configurações > Fluxo de Trabalho > Avaliação. (Alternativamente veja REVIEW_REQUEST)'),('REVIEW_REQUEST_ATTACHED','ru_RU','Запрос на рецензирование статьи','Здравствуйте, {$reviewerName}!<br />\n<br />\nЯ полагаю, что Вы могли бы быть прекрасным рецензентом для материала «{$submissionTitle}» и прошу Вас взяться выполнить эту важную задачу для нас. Руководство для рецензентов этого журнала добавлено ниже, материал для рецензирования приложен к этому письму. Ваша рецензия на материал, вместе с рекомендацией, должны быть отправлены мне электронной почтой до {$reviewDueDate}.<br />\n<br />\nПожалуйста, сообщите в ответном письме до {$responseDueDate} сможете ли Вы взяться за рецензирование.<br />\n<br />\nЗаранее благодарю Вас,<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n<br />\nРуководство для рецензентов<br />\n<br />\n{$reviewGuidelines}<br />\n','Это письмо редактора раздела, отправляемое рецензенту, с запросом согласия или отказа от выполнения рецензирования материала. К письму приложен сам материал для рецензирования. Это сообщение используется, если выбран процесс рецензирования через электронную почту в Управление > Настройки > Рабочий процесс > Рецензирование. (В ином случае, смотрите REVIEW_REQUEST.)'),('REVIEW_REQUEST_ATTACHED_SUBSEQUENT','cs_CZ','Požadavek na recenzi článku','{$reviewerName}:<br />\n<br />\nTento email se týká rukopisu &quot;{$submissionTitle},&quot; předkládaného autorem {$contextName}.<br />\n<br />\nNa základě recenze předchozí verze rukopisu podali autoři nyní opravenou verzi tohoto článku. Byly bychom rádi, kdybyste nám pomohli tuto revidovanou verzi ohodnotit.<br />\n<br />\nPokyny pro recenzenty tohoto časopisu jsou připojeny níže, a samotný opravený příspěvek je vložen do tohoto emailu jako příloha. Vaše recenze opraveného příspěvku spolu s vašemi doporučeními by měla být odeslána emailem do {$reviewDueDate}.<br />\n<br />\nProsíme vás, abyste v odpovědi na tento email uvedl(a) do {$responseDueDate}, zda jste schopen(a) a ochoten(na) udělat tuto recenzi.<br />\n<br />\nDěkujeme předem za vaši ochotu.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n<br />\nPokyny pro recenzenty<br />\n<br />\n{$reviewGuidelines}<br />\n','Tento email je zaslán Editorem sekce recenzentovi, aby ho požádal o přijetí nebo odmítnutí opakované recenze příspěvku v druhém či dalším kole recenzního řízení. Zahrnuje příspěvek jako přílohu. Tato zpráva se používá v případě, že je v části Správa> Nastavení> Pracovní postup> Kontrola vybrána možnost Prověřování příloh emailu. (Jinak viz REVIEW_REQUEST_SUBSEQUENT.)'),('REVIEW_REQUEST_ATTACHED_SUBSEQUENT','da_DK','Forespørgsel om bedømmelse af artikel','{$reviewerName}:<br />\n<br />\nDette omhandler manuskriptet &quot;{$submissionTitle},&quot; som behandles af {$contextName}.<br />\n<br />\nSom opfølgning på en tidligere bedømmelse af manuskriptet, har forfatterne indsendt en revideret version af deres indlæg. Vi vil sætte stor pris på din hjælp, hvis du vil foretage en bedømmelse af det.<br />\n<br />\nTidsskriftets retningslinjer for bedømmelser er tilføjet nedenfor og indlægget er vedhæftet denne e-mail. Din bedømmelse af indlægget sammen med din anbefaling bedes sendt til mig senest {$reviewDueDate}.<br />\n<br />\nDu bedes meddele os, om du vil påtage dig bedømmelsen eller ej senest {$responseDueDate}.<br />\n<br />\nTak for din overvejelse af denne forespørgsel.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n<br />\nRetningslinjer for bedømmelser<br />\n<br />\n{$reviewGuidelines}<br />\n','Denne mail sendes af sektionsredaktøren til en bedømmer, der bedes oplyse om vedkommende vil påtage sig at bedømme et indlæg i en anden eller senere bedømmelsesrunde. Det inkluderer indlægget som vedhæftet fil. Denne forespørgsel anvendes når man har valgt at sende bedømmelsen vedhæftet e-mailen under Indstillinger > Workflow > Bedømmelse. (Ellers see REVIEW_REQUEST_SUBSEQUENT.)'),('REVIEW_REQUEST_ATTACHED_SUBSEQUENT','de_DE','Bitte um ein Gutachten','{$reviewerName},<br />\n<br />\ndiese E-Mail betrifft das Manuskript &quot;{$submissionTitle}&quot;, das bei {$contextName} in der Begutachtung ist.<br />\n<br />\nNach der Begutachtung der früheren Fassung des Manuskripts haben die Autor/innen nun eine überarbeitete Fassung ihres Artikels eingereicht. Wir würden uns freuen, wenn Sie bei der Beurteilung helfen könnten.<br />\n<br />\nDie Begutachtungsrichtlinien dieser Zeitschrift sind unten angehängt, und der Beitrag selber ist dieser E-Mail beigefügt. Ihr Gutachten zu diesem Beitrag sollte zusammen mit Ihrer Empfehlung mir per E-Mail bis zum {$reviewDueDate} zugehen.<br />\n<br />\nBitte teilen Sie uns in einer E-Mail bis zum {$responseDueDate} mit, ob Sie das Gutachten übernehmen können.<br />\n<br />\nIn der Hoffnung auf eine positive Antwort,<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n<br />\nBegutachtungsrichtlinien<br />\n<br />\n{$reviewGuidelines}<br />\n','Diese E-Mail wird von der/dem Rubrikredakteur/in an eine/n Gutachter/in gesendet, damit diese/r die Aufgabe, eine Einreichung in einer zweiten oder weiteren Begutachtungsrunde zu beurteilen, übernimmt oder ablehnt. Sie enthält die Einreichung als E-Mail-Anhang. Diese Nachricht wird benutzt, wenn in Schritt 2 des Zeitschriftensetups das Begutachtungsverfahren über E-Mail-Anhänge ausgewählt worden ist. (Ansonsten siehe  REVIEW_REQUEST_SUBSEQUENT.)'),('REVIEW_REQUEST_ATTACHED_SUBSEQUENT','en_US','Article Review Request','{$reviewerName}:<br />\n<br />\nThis regards the manuscript &quot;{$submissionTitle},&quot; which is under consideration by {$contextName}.<br />\n<br />\nFollowing the review of the previous version of the manuscript, the authors have now submitted a revised version of their paper. We would appreciate it if you could help evaluate it.<br />\n<br />\nThe Review Guidelines for this journal are appended below, and the submission is attached to this email. Your review of the submission, along with your recommendation, should be emailed to me by {$reviewDueDate}.<br />\n<br />\nPlease indicate in a return email by {$responseDueDate} whether you are able and willing to do the review.<br />\n<br />\nThank you for considering this request.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n<br />\nReview Guidelines<br />\n<br />\n{$reviewGuidelines}<br />\n','This email is sent by the Section Editor to a Reviewer to request that they accept or decline the task of reviewing a submission for a second or greater round of review. It includes the submission as an attachment. This message is used when the Email-Attachment Review Process is selected in Management > Settings > Workflow > Review. (Otherwise see REVIEW_REQUEST_SUBSEQUENT.)'),('REVIEW_REQUEST_ATTACHED_SUBSEQUENT','it_IT','Richiesta di revisione di un articolo','Gentile {$reviewerName}:<br />\n<br />\nTi scrivo riguardo al manoscritto &quot;{$submissionTitle},&quot; proposto per la pubblicazione in {$contextName}.<br />\n<br />\nSeguendo i suggerimenti ricevuti dai revisori, l\'autore ha inviato una nuova versione modificata. Ti sarei grato se ci aiutassi a valutarla.<br />\n<br />\nPiù sotto trovi le Linee guida sulla revisione e il file del manoscritto è in allegato. Puoi inviarmi la revisione e il tuo parere sulla proposta via email, entro il  {$reviewDueDate}.<br />\n<br />\nPerfavore informami entro il {$responseDueDate} se accetti o meno l\'incarico.<br />\n<br />\nGrazie della disponibilià<br />\n{$editorialContactSignature}<br />\n<br />\n<br />\nLinee guida sulla revisione<br />\n<br />\n{$reviewGuidelines}<br />\n','Questo messaggio viene inviato dall\'editor a un revisore chiedendogli di accettare o rifiutare l\'incarico di revisione di una proposta per un secondo o successivo round di revisione. Contiene in allegato il file del manoscritto. Questo messaggio viene utilizzato quando è stato selezionato nel Setup, il processo di revisione con allegati email. (In caso contrario vedi REVIEW_REQUEST_SUBSEQUENT.)'),('REVIEW_REQUEST_ATTACHED_SUBSEQUENT','pt_BR','Solicitação de avaliação de artigo','{$reviewerName}:<br />\n<br />\nEsta mensagem é referente ao manuscrito &quot;{$submissionTitle},&quot; que está sendo considerado para publicação pelo periódico {$contextName}.<br />\n<br />\nApós a avaliação da versão anterior do manuscrito, os autores submeteram uma versão revisada do artigo. Nós agradeceríamos se você pudesse ajudar com uma avaliação.<br />\n<br />\nAs Diretrizes de Avaliação deste periódico seguem abaixo e a submissão está anexa ao e-mail. Sua avaliação da submissão, junto à recomendação, deve ser enviada por e-mail até {$reviewDueDate}.<br />\n<br />\nPor gentileza, envie um email de retorno até{$responseDueDate} indicando se você poderá dar o parecer ou não.<br />\n<br />\nObrigado por considerar este pedido.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n<br />\nDiretrizes de Avaliação<br />\n<br />\n{$reviewGuidelines}<br />\n','Esta mensagem é enviada pelo Editor de seção ao avaliador, perguntando se estaria disponível para enviar a avaliação de uma submissão em uma segunda rodada ou superior. A mensagem inclui a submissão como anexo. Ela é usada quando o processo de avaliação via e-mail é escolhido em  Configurações > Fluxo de trabalho > Avaliação.  (Caso contrário, veja REVIEW_REQUEST_SUBSEQUENT.)'),('REVIEW_REQUEST_ATTACHED_SUBSEQUENT','ru_RU','Запрос на рецензирование статьи','Здравствуйте, {$reviewerName}!<br />\n<br />\nЭто письмо касается материала «{$submissionTitle}», который рассматривается журналом «{$contextName}».<br />\n<br />\nПо результатам рецензирования предыдущей версии материала авторы прислали откорректированную версию их статьи. Мы были бы рады, если бы Вы помогли оценить ее.<br />\n<br />\nРуководство для рецензентов этого журнала добавлено ниже, материал для рецензирования приложен к этому письму. Ваша рецензия на материал, вместе с рекомендацией, должны быть отправлены мне электронной почтой до {$reviewDueDate}.<br />\n<br />\nПожалуйста, сообщите в ответном письме до {$responseDueDate} сможете ли Вы взяться за рецензирование.<br />\n<br />\nЗаранее благодарю Вас,<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n<br />\nРуководство для рецензентов<br />\n<br />\n{$reviewGuidelines}<br />\n','Это письмо редактора раздела, отправляемое рецензенту, с запросом согласия или отказа от выполнения рецензирования материала во втором или последующих раундах рецензирования. К письму приложен сам материал для рецензирования. Это сообщение используется, если выбран процесс рецензирования через электронную почту в Управление > Настройки > Рабочий процесс > Рецензирование. (В ином случае, смотрите REVIEW_REQUEST_SUBSEQUENT.)'),('REVIEW_REQUEST_ONECLICK','cs_CZ','Žádost o zpracování recenze článku','{$reviewerName}:<br />\n<br />\nDomnívám se, že byste mohl být výborným recenzentem příspěvku &quot;{$submissionTitle},&quot; který byl zaslán do {$contextName}. Abstrakt příspěvku je vložen níže. Věřím, že zvážíte možnost přijetí tohoto pro nás důležitého úkolu.<br />\n<br />\nProsím, přihlaste se do {$responseDueDate} na stránkách časopisu, abyste uvedl, zda recenzi zpracujete nebo ne a také pro přístup k příspěvku a zaznamenání Vaší recenze a doporučení.<br />\n<br />\nTermín pro zpracování recenze je {$reviewDueDate}.<br />\n<br />\nURL příspěvku: {$submissionReviewUrl}<br />\n<br />\nDěkujeme za zvážení této žádosti.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','Tento email od editora sekce pro recenzenta žádá, aby recenzent přijal nebo odmítl úkol zpracovat recenzi příspěvku. Obsahuje informace o příspěvku, jako je název a abstrakt, termín pro zpracování recenze a jak se dostat k samotnému příspěvku. Tato zpráva je používána, pokud je zvoleno Standardní recenzí řízení ve druhém kroku  Nastavení časopisu a je povolen přístup recenzenta na jedno kliknutí.'),('REVIEW_REQUEST_ONECLICK','da_DK','Forespørgsel om bedømmelse af artikel','{$reviewerName}:<br />\n<br />\nJeg tror, at du vil være en fremragende bedømmer af manuskriptet &quot;{$submissionTitle}&quot;, der er blevet sendt til {$contextName}. Nedenfor finder du et resumé af manuskriptet, og jeg håber, at du vil overveje at påtage dig denne vigtige opgave for os.<br />\n<br />\nLog på tidsskriftets websted inden den {$responseDueDate} for at angive, om du vil påtage dig bedømmelsen eller ej, samt for at få adgang til manuskriptet og registrere din bedømmelse og anbefaling.<br />\n<br />\nSelve bedømmelsen skal afleveres senest den {$reviewDueDate}.<br />\n<br />\nManuskriptets URL-adresse: {$submissionReviewUrl}<br />\n<br />\nTak for din overvejelse af denne forespørgsel.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n {$submissionAbstract}','Denne e-mail fra sektionsredaktøren til en bedømmer anmoder bedømmeren om at acceptere eller afvise at bedømme et manuskript. Den indeholder oplysninger om manuskriptet, f.eks. titel og resumé, forfaldsdato for bedømmelse, samt hvordan der kan oprettes adgang til selve manuskriptet. Denne meddelelse benyttes, hvis indstillingen \'Standardbedømmelsesproces\' er valgt under konfiguration af tidsskrift, Indstillinger > Workflow > Bedømmelse og adgang for bedømmere ved hjælp af ét klik er aktiveret.'),('REVIEW_REQUEST_ONECLICK','de_DE','Bitte um ein Gutachten','{$reviewerName},<br />\n<br />\naufgrund Ihrer Forschungsschwerpunkte wären Sie ein/e ausgezeichnete/r Gutachter/in für das Manuskript &quot;{$submissionTitle}&quot;, das zur Publikation in {$contextName} eingereicht worden ist. Weiter unten finden Sie eine Kurzfassung des Beitrags. Ich hoffe sehr, dass Sie sich bereitfinden können, uns mit Ihrer Stellungnahme zu unterstützen. Sie wären uns eine große Hilfe.<br />\n<br />\nLoggen Sie sich bitte bis zum {$responseDueDate} auf der Webseite unserer Zeitschrift ein, um uns Ihre Zu- oder Absage mitzuteilen. Sie finden dort den Beitrag und können gegebenenfalls auch Ihr Gutachten und Ihre Empfehlung dort abgeben.<br />\n<br />\nDas Gutachten wäre fällig am {$reviewDueDate}.<br />\n<br />\nURL des Beitrags: {$submissionReviewUrl}<br />\n<br />\nIn der Hoffnung auf eine positive Antwort,<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','Diese E-Mail von der/dem Rubrikredakteur/in an eine/n Gutachter/in bittet darum, dass diese/r die Aufgabe, eine Einreichung zu begutachten, übernimmt oder ablehnt. Sie liefert Informationen über die Einreichung wie Titel und Abstract, ein Fälligkeitsdatum für das Gutachten und darüber, wie auf die Einreichung zugegriffen werden kann. Diese Nachricht wird benutzt, wenn in Schritt 2 des Zeitschriftensetups das Standardbegutachtungsverfahren ausgewählt worden ist und wenn der One-Click-Zugang für Gutachter/innen aktiviert ist.'),('REVIEW_REQUEST_ONECLICK','en_US','Article Review Request','{$reviewerName}:<br />\n<br />\nI believe that you would serve as an excellent reviewer of the manuscript, &quot;{$submissionTitle},&quot; which has been submitted to {$contextName}. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br />\n<br />\nPlease log into the journal web site by {$responseDueDate} to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br />\n<br />\nThe review itself is due {$reviewDueDate}.<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nThank you for considering this request.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','This email from the Section Editor to a Reviewer requests that the reviewer accept or decline the task of reviewing a submission. It provides information about the submission such as the title and abstract, a review due date, and how to access the submission itself. This message is used when the Standard Review Process is selected in Management > Settings > Workflow > Review, and one-click reviewer access is enabled.'),('REVIEW_REQUEST_ONECLICK','it_IT','Richiesta di revisione di un articolo','Gentile {$reviewerName}:<br />\n<br />\nTi propongo la revisione del manoscritto &quot;{$submissionTitle},&quot; che è stato inviato a {$contextName}. L\'abstract della proposta è più sotto. Spero che vorrai prendere in carico questo compito.<br />\n<br />\nTi chiedo quindi di effettuare il log in al sito web della rivista entro il {$responseDueDate} per indicare se prenderai in carico la revisione o meno. Potrai poi accedere alla submission e inviare il tuo parere.<br />\n<br />\nLa data di scadenza per la revisione è fissata al {$reviewDueDate}.<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nGrazie per la tua collaborazione<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\nAbstract<br />\n{$submissionAbstract}','Questa email dal section editor al revisore richiede che quest\'ultimo accetti o rifiuti il compito di revisionare una proposta. Fornisce informazioni sulla proposta quali il titolo e l\'abstract, una data attesa per la revisione, e su come accedere alla proposta stessa. Questo messaggio è usato quando il processo standard di revisione è selezionato nel Journal Setup, e il accesso one-click del revisore è attivato.'),('REVIEW_REQUEST_ONECLICK','pt_BR','Solicita avaliação de artigo','{$reviewerName}:<br />\n<br />\nEu acredito que você seria um(a) excelente parecerista para o manuscrito, &quot;{$submissionTitle},&quot; que foi submetido ao periódico {$contextName}. O resumo da submissão segue abaixo e eu espero que você considere o aceite desta tarefa importante.<br />\n<br />\nPor gentileza, logue no site do periódico até {$responseDueDate} para indicar se você aceita fazer o parecer ou não, além de acessar a submissão para registrar sua avaliação e recomendação.<br />\n<br />\nO prazo para entrega do parecer é {$reviewDueDate}.<br />\n<br />\nURL da submissão: {$submissionReviewUrl}<br />\n<br />\nObrigado por considerar este pedido.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','Mensagem do Editor de Seção para solicitar ao Avaliador que indique disponibilidade ou não para realizar uma avaliação. Oferece informações sobre a submissão, como título e resumo, além da data para a conclusão dos trabalhos e como acessar o documento. Esta mensagem é usada quando se utiliza o Processo Padrão de Avaliação, definido no Passo 2 de Configuração da Revista e a opção de acesso de avaliadores com 1-clique esteja habilitada.'),('REVIEW_REQUEST_ONECLICK','ru_RU','Запрос на рецензирование статьи','Здравствуйте, {$reviewerName}!<br />\n<br />\nЯ полагаю, что Вы могли бы быть прекрасным рецензентом для материала «{$submissionTitle}», который был направлен в журнал «{$contextName}». Аннотация статьи приведена ниже, и я надеюсь, что Вы возьметесь выполнить эту важную задачу для нас.<br />\n<br />\nПожалуйста, войдите на сайт журнала до {$responseDueDate}, чтобы подтвердить Ваше согласие на рецензирование или отказаться от рецензирования, а также получить доступ к материалу и оставить свою рецензию и рекомендацию.<br />\n<br />\nСама рецензия должна быть предоставлена до {$reviewDueDate}.<br />\n<br />\nURL материала: {$submissionReviewUrl}<br />\n<br />\nЗаранее благодарю Вас,<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n«{$submissionTitle}»<br />\n<br />\n{$submissionAbstract}','Это письмо редактора раздела, отправляемое рецензенту, с запросом согласия или отказа от выполнения рецензирования материала. В письме приводится информация о материале, такая как название и аннотация, срок выполнения рецензии и как получить доступ к самому материалу. Это сообщение используется, если выбран стандартный процесс рецензирования в Управление > Настройки > Рабочий процесс > Рецензирование и включен прямой доступ рецензента по ссылке.'),('REVIEW_REQUEST_ONECLICK_SUBSEQUENT','cs_CZ','Požadavek na recenzi článku','{$reviewerName}:<br />\n<br />\nTento email se týká rukopisu &quot;{$submissionTitle},&quot; podávaného autorem {$contextName}.<br />\n<br />\nNa základě recenzí předchozí verze nahráli autoři opravenou verzi tohoto příspěvku. Byli bychom rádi, kdybyste nám pomohl(a) tuto verzi zkontrolovat.<br />\n<br />\nZalogujte se, prosím do  {$responseDueDate} na stránky našeho časopisu a dejte nám vědět zda jste schopen(a) a ochoten(a) udělat pro nás recenzi. Na webu najdete také přístup k vlastnímu příspěvku a můžete tam nahrát obsah recenze a doporučení autorovi.<br />\n<br />\nSamotná recenze by měla být odevzdána do {$reviewDueDate}.<br />\n<br />\nWebová adresa příspěvku: {$submissionReviewUrl}<br />\n<br />\nDěkujeme mnohokrát za spolupráci.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','Tento e-mail od editoru sekce k recenzentovi požaduje, aby recenzent přijal nebo odmítl úlohu přezkoumání příspěvku pro druhé nebo větší kolo recenzí. Poskytuje informace o podání, jako je název a abstrakt, datum splatnosti kontroly a přístup k samotnému podání. Tato zpráva se používá v případě, že je ve Správci> Nastavení> Pracovní postup> Kontrola vybrán proces Standardní kontrola a je povolen přístup jednoho recenzenta k recenzím.'),('REVIEW_REQUEST_ONECLICK_SUBSEQUENT','da_DK','Forespørgsel om bedømmelse af artikel','{$reviewerName}:<br />\n<br />\nDette omhandler manuskriptet &quot;{$submissionTitle},&quot; som behandles af {$contextName}.<br />\n<br />\nSom opfølgning på en tidligere bedømmelse af manuskriptet, har forfatterne indsendt en revideret version af deres indlæg. Vi vil sætte stor pris på din hjælp, hvis du vil foretage en bedømmelse af det.<br />\n<br />\nLog på tidsskriftets websted inden {$responseDueDate} for at angive, om du vil påtage dig bedømmelsen eller ej, samt for at få adgang til manuskriptet og registrere din bedømmelse og anbefaling.<br />\n<br />\nSelve bedømmelsen skal afleveres senest den {$reviewDueDate}.<br />\n<br />\nManuskriptets URL URL: {$submissionReviewUrl}<br />\n<br />\nTak for din overvejelse af denne forespørgsel. <br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','Denne mail sendes af sektionsredaktøren til en bedømmer, der bedes oplyse om vedkommende vil påtage sig at bedømme et indlæg i en anden eller senere bedømmelsesrunde. Det indeholder informationer om indlægget så som titel og resumé, forfaldsdato for indlevering af bedømmelse samt hvordan man får adgang til indlægget. Denne besked anvendes når man har valgt standardopsætningen for bedømmelsesprocessen, Indstillinger > Workflow > Bedømmelse, og ’Aktiver adgang for bedømmere ved hjælp af ét klik’ er aktiveret.'),('REVIEW_REQUEST_ONECLICK_SUBSEQUENT','de_DE','Bitte um ein Gutachten','{$reviewerName},<br />\n<br />\ndiese E-Mail betrifft das Manuskript &quot;{$submissionTitle}&quot;, das bei {$contextName} in der Begutachtung ist.<br />\n<br />\nNach der Begutachtung der früheren Fassung des Manuskripts haben die Autor/innen nun eine überarbeitete Fassung ihres Artikels eingereicht. Wir würden uns freuen, wenn Sie bei der Beurteilung helfen könnten.<br />\n<br />\nBitte loggen Sie sich auf der Website der Zeitschrift bis zum {$responseDueDate} ein, um uns Ihre Zu- oder Absage mitzuteilen. Sie finden dort den Beitrag und können auch Ihr Gutachten und Ihre Empfehlung dort abgeben.<br />\n<br />\nDas Gutachten selbst wäre fällig zum {$reviewDueDate}.<br />\n<br />\nURL des Beitrags: {$submissionReviewUrl}<br />\n<br />\nIn der Hoffnung auf eine positive Antwort,<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','Diese E-Mail wird von der/dem Rubrikredakteur/in an eine/n Gutachter/in gesendet, damit diese/r die Aufgabe, eine Einreichung in einer zweiten oder weiteren Begutachtungsrunde zu beurteilen, übernimmt oder ablehnt. Sie übermittelt Informationen über die Einreichung wie den Titel und das Abstract, ein Fälligkeitsdatum für das Gutachten und Informationen, wie auf die Einreichung zugegriffen werden kann. Diese Nachricht wird benutzt, wenn in Schritt 2 des Zeitschriftensetups das Standardbegutachtungsverfahren ausgewählt worden ist und wenn der One-Click-Zugang für Gutachter/innen aktiviert ist.'),('REVIEW_REQUEST_ONECLICK_SUBSEQUENT','en_US','Article Review Request','{$reviewerName}:<br />\n<br />\nThis regards the manuscript &quot;{$submissionTitle},&quot; which is under consideration by {$contextName}.<br />\n<br />\nFollowing the review of the previous version of the manuscript, the authors have now submitted a revised version of their paper. We would appreciate it if you could help evaluate it.<br />\n<br />\nPlease log into the journal web site by {$responseDueDate} to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br />\n<br />\nThe review itself is due {$reviewDueDate}.<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nThank you for considering this request.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','This email from the Section Editor to a Reviewer requests that the reviewer accept or decline the task of reviewing a submission for a second or greater round of review. It provides information about the submission such as the title and abstract, a review due date, and how to access the submission itself. This message is used when the Standard Review Process is selected in Management > Settings > Workflow > Review, and one-click reviewer access is enabled.'),('REVIEW_REQUEST_ONECLICK_SUBSEQUENT','it_IT','Richiesta di revisione di un articolo','Gentile {$reviewerName}:<br />\n<br />\nTi scrivo riguardo al manoscritto &quot;{$submissionTitle},&quot; in corso di revisione per eventuale pubblicazione in {$contextName}.<br />\n<br />\nL\'autore ha inviato una nuova versione, modificata secondo i suggerimenti ricevuti dai revisori. Tu sarei grato se volessi aiutarci a valutarla.<br />\n<br />\nTi chiedo di autenticarti al sito {$responseDueDate} per indicarmi se intendi accettare l\'incarico o meno e poi per accedere alla proposta e registrare il tuo parere.<br />\n<br />\nLa data di scadenza è il {$reviewDueDate}.<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nTi ringrazio per la disponibilità<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','Questo messaggio viene inviato dall\'editor a un revisore chiedendogli di accettare o rifiutare l\'incarico di revisione di una proposta per un secondo o successivo ciclo di revisione.Fornisce informazioni come il titolo e l\'abstract, una data di scadenza e modalità di accesso al manoscritto. Questo messaggio viene utilizzato quando il processo di revisione standard è stato selezionato nel Setup ed è abilitato l\'accesso oneclick.'),('REVIEW_REQUEST_ONECLICK_SUBSEQUENT','pt_BR','Solicitação de avaliação de artigo','{$reviewerName}:<br />\n<br />\nEsta mensagem é referente ao manuscrito &quot;{$submissionTitle},&quot; que está sendo considerado para publicação pelo periódico {$contextName}.<br />\n<br />\nApós uma avaliação da versão anterior do manuscrito, os autores submeteram uma versão revisada do artigo. Nós agradeceríamos se você pudesse ajudar com um parecer.<br />\n<br />\nPor gentileza, logue no site do periódico até {$responseDueDate} para indicar se você irá aceitar dar o parecer ou não, e também para acessar a submissão e registrar sua avaliação e recomendação.<br />\n<br />\nO prazo para envio do parecer é {$reviewDueDate}.<br />\n<br />\nURL da submissão: {$submissionReviewUrl}<br />\n<br />\nObrigado por considerar este pedido.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','Este e-mail do Editor de Seção para um Avaliador solicita que o avaliador aceite ou recuse a tarefa de avaliar uma submissão para uma segunda ou maior rodada de avaliação. Ele fornece informações sobre a submissão, como título e resumo, uma data limite para avaliação e como acessar a própria submissão. Esta mensagem é usada quando o processo de avaliação está selecionado em Configuração > Fluxo de Trabalho > Avaliação e a opção \"Habilitar acesso 1-clique\" na área do avaliador está ativada.'),('REVIEW_REQUEST_ONECLICK_SUBSEQUENT','ru_RU','Запрос на рецензирование статьи','Здравствуйте, {$reviewerName}!<br />\n<br />\nЭто письмо касается материала «{$submissionTitle}», который рассматривается журналом «{$contextName}».<br />\n<br />\nПо результатам рецензирования предыдущей версии материала авторы прислали откорректированную версию их статьи. Мы были бы рады, если бы Вы помогли оценить ее.<br />\n<br />\nПожалуйста, войдите на сайт журнала до {$responseDueDate}, чтобы подтвердить Ваше согласие на рецензирование или отказаться от рецензирования, а также получить доступ к материалу и оставить свою рецензию и рекомендацию.<br />\n<br />\nСама рецензия должна быть предоставлена до {$reviewDueDate}.<br />\n<br />\nURL материала: {$submissionReviewUrl}<br />\n<br />\nЗаранее благодарю Вас,<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n«{$submissionTitle}»<br />\n<br />\n{$submissionAbstract}','Это письмо редактора раздела, отправляемое рецензенту, с запросом согласия или отказа от выполнения рецензирования материала во втором или последующих раундах рецензирования. В письме приводится информация о материале, такая как название и аннотация, срок выполнения рецензии и как получить доступ к самому материалу. Это сообщение используется, если выбран стандартный процесс рецензирования в Управление > Настройки > Рабочий процесс > Рецензирование и включен прямой доступ рецензента по ссылке.'),('REVIEW_REQUEST_REMIND_AUTO','cs_CZ','Připomenutí požadavku na recenzi článku','{$reviewerName}:<br />\nRádi bychom se vám připomněli s naší prosbou o recenzi rukopisu &quot;{$submissionTitle},&quot; pro časopis {$contextName}. Rádi bychom dostali vaši odpověď do  {$responseDueDate}., Tento email byl vygenerován automaticky, s ohledem na to, že tento termín již uplynul.\n<br />\nVěříme, že byste byl výborný recenzent tohoto rukopisu. Níže najdete abstrakt tohoto příspěvku a doufáme, že se ujmete tohoto důležitého úkolu.<br />\n<br />\nZalogujte se, prosím, na stránkách časopisu  a dejte nám vědět, zda jste schopen(a) a ochoten(a) udělat recenzi této opravené verze, na webu máte také dostupný přístup k článku a najdete tam také odkaz k odeslání své recenze a formulář pro vaše doporučení. Webová stránka je {$contextUrl}<br />\n<br />\nTermín pro odevzdání samotné recenze je {$reviewDueDate}.<br />\n<br />\nPokud jste zapomněli svůj login a heslo na stránky časopisu, můžete použít následující odkaz na reset vašeho hesla (které vám poté bude zasláno spolu s loginem). {$passwordResetUrl}<br />\n<br />\nWebová adresa příspěvku: {$submissionReviewUrl}<br />\n<br />\nDěkujeme vám mnohokrát za spolupráci.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','Tento email se automaticky odesílá, jakmile uplyne datum splatnosti potvrzení recenzenta (viz Možnosti kontroly v sekci Nastavení> Pracovní postup> Kontrola) a přístup k recenznímu kontrole je zakázán. Plánované úlohy musí být povoleny a konfigurovány (viz konfigurační soubor webu).'),('REVIEW_REQUEST_REMIND_AUTO','da_DK','Påmindelse om anmodning om bedømmelse af artikel','{$reviewerName}:<br />\nDette er blot for at minde dig om vores forespørgsel om din bedømmelse af manuskriptet &quot;{$submissionTitle},&quot; for {$contextName}. Vi havde håbet på at modtage dit svar senest den {$responseDueDate}, og denne e-mail er blevet automatisk genereret og sendt til dig, da den pågældende dato er overskredet.\n<br />\nJeg tror, at du vil være en fremragende bedømmer af manuskriptet. Nedenfor finder du et resumé af manuskriptet, og jeg håber, at du vil overveje at påtage dig denne vigtige opgave for os.<br />\n<br />\nLog på tidsskriftets websted for at angive, om du vil påtage dig bedømmelsen eller ej, samt for at få adgang til manuskriptet og registrere din bedømmelse og anbefaling. Webstedet er {$contextUrl}<br />\n<br />\nSelve bedømmelsen skal afleveres senest den {$reviewDueDate}.<br />\n<br />\nHvis du ikke har dit brugernavn og din adgangskode til tidsskriftets websted, kan du bruge dette link til at ændre adgangskoden (som så vil blive sendt til dig via e-mail sammen med dit brugernavn). {$passwordResetUrl}<br />\n<br />\nManuskriptets URL-adresse: {$submissionReviewUrl}<br />\n<br />\nTak for din overvejelse af denne forespørgsel.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','Denne e-mail sendes automatisk når en bedømmers bekræftelsesdato er overskredet (se bedømmelsesindstillinger under Indstillinger > Workflow > Bedømmelse) og ’Aktiver adgang for bedømmere ved hjælp af ét klik’ er fravalgt. Tidsfrister og påmindelser skal være defineret.'),('REVIEW_REQUEST_REMIND_AUTO','de_DE','Erinnerung an Bitte um Begutachtung eines Artikels','{$reviewerName}:<br />\ndies ist eine freundliche Erinnerung an unsere Bitte an Sie, den Artikel &quot;{$submissionTitle},&quot; für {$contextName} zu begutachten. Wir hatten auf Ihre Antwort bis zum {$responseDueDate} gehofft. Diese E-Mail wurde automatisch erzeugt und mit Verstreichen dieses Datums verschickt.\n<br />\nWir glauben, dass Sie ausgezeichnet geeignet für die Begutachtung dieses Manuskript wären. Ein Abstract des Beitrags ist angefügt, und wir hoffen, dass Sie diese wichtige Aufgabe für uns übernehmen können.<br />\n<br />\nBitte melden Sie sich bei der Webseite der Zeitschrift an, um uns mitzuteilen, ob Sie die Begutachtung übernehmen werden. Über die Webseite können Sie auch auf den Beitrag zugreifen und Ihr Gutachten sowie Ihre Empfehlung hinzufügen. Die Webseite erreichen Sie hier: {$contextUrl}<br />\n<br />\nWir benötigen das Gutachten bis zum {$reviewDueDate}.<br />\n<br />\nWenn Sie Ihre Benutzerkennung und Ihr Passwort für die Webseite des Journals nicht haben, können Sie den folgenden Link nutzen, um Ihr Passwort zurückzusetzen (es wird Ihnen dann zusammen mit Ihrer Benutzerkennung per Mail zugeschickt): {$passwordResetUrl}<br />\n<br />\nURL des Beitrags: {$submissionReviewUrl}<br />\n<br />\nVielen Dank, dass Sie unsere Bitte berücksichtigen.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','Diese E-Mail wird automatisch verschickt, wenn das Fälligkeitsdatum für eine/n Gutachter/in verstrichen ist (vgl. die Begutachtungseinstellungen in Schritt 2 des Zeitschriftensetups) und wenn der One-Click-Zugang für Gutachter/innen deaktiviert ist. Planmäßige Aufgaben (scheduled tasks) müssen aktiviert und konfiguriert sein (vgl. die Konfigurationsdatei der Website).'),('REVIEW_REQUEST_REMIND_AUTO','en_US','Article Review Request Reminder','{$reviewerName}:<br />\nJust a gentle reminder of our request for your review of the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We were hoping to have your response by {$responseDueDate}, and this email has been automatically generated and sent with the passing of that date.\n<br />\nI believe that you would serve as an excellent reviewer of the manuscript. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br />\n<br />\nPlease log into the journal web site to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation. The web site is {$contextUrl}<br />\n<br />\nThe review itself is due {$reviewDueDate}.<br />\n<br />\nIf you do not have your username and password for the journal\'s web site, you can use this link to reset your password (which will then be emailed to you along with your username). {$passwordResetUrl}<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nThank you for considering this request.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','This email is automatically sent when a reviewer\'s confirmation due date elapses (see Review Options under Settings > Workflow > Review) and one-click reviewer access is disabled. Scheduled tasks must be enabled and configured (see the site configuration file).'),('REVIEW_REQUEST_REMIND_AUTO','it_IT','Sollecito relativo all\'invito alla revisione','Gentilissimo {$reviewerName}:<br />\nSolo una gentile ricordo della nostra richiesta di revisione della proposta &quot;{$submissionTitle},&quot; per la rivista {$contextName}. \nSperavamo di una sua risposta per il {$responseDueDate}, e questa mail è stata inviata automaticamente visto che la data è passata.\n<br />\nRiteniamo che lei possa fare un\'ottima revisione della proposta. L\'abstract della proposta è inserito qui sotto, e speriamo che lei consideri di fare questo importante lavoro per noi.<br />\n<br />\nLe chiederemmo di entrare nel sito web della rivista e indicare se porterà avanti o no la revisione, cosi come può accedere alla proposta, registrare la sua revisione e scrivere la sua valutazione. Il sito web è: {$contextUrl}<br />\n<br />\nLa revisione serve entro il {$reviewDueDate}.<br />\n<br />\nSe non ha le sue username e password per il sito, può ridefinire la password con questo link (che manderà una mail al suo indirizzo con il suo username): {$passwordResetUrl}<br />\n<br />\nURL della proposta: {$submissionReviewUrl}<br />\n<br />\nLa ringrazio per aver preso in considerazione  questa richiesta.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\nDati della proposta:\n<br/>\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','Questa mail parte automaticamente quanto la data di conferma di un revisore scade (vedi opzioni di revisione sotto Impostazioni > Flusso di lavoro > Revisione) e l\'accesso alla revisione \'one-click\' è disabilitato. I compiti programmati devono essere abilitati e configurati (vedi il file di configurazione del sito).'),('REVIEW_REQUEST_REMIND_AUTO','pt_BR','A revista {$contextName} solicita avaliação de artigo','{$reviewerName}:<br />\nEste é apenas um lembrete amigável do nosso pedido de avaliação da submissão, &quot;{$submissionTitle},&quot; ao periódico {$contextName}. Esperávamos ter recebido sua resposta até {$responseDueDate}, assim este email foi gerado e enviado automaticamente com o passar dessa data.\n<br />\nAcredito que você serviria como um(a) excelente avaliador(a) do manuscrito. O resumo da submissão está inserido abaixo e espero que você considere realizar essa importante tarefa para nós.<br />\n<br />\nFaça login no site do periódico para indicar se você fará a avaliação ou não, bem como para acessar a submissão e registrar sua avaliação e recomendação. O site é {$contextUrl}<br />\n<br />\nA avaliação em si tem como prazo {$reviewDueDate}.<br />\n<br />\nSe você não tiver seu nome de usuário e senha para o site do periódico, poderá usar este link para redefinir sua senha (que será enviada por e-mail juntamente com seu nome de usuário). {$passwordResetUrl}<br />\n<br />\nURL da submissão: {$submissionReviewUrl}<br />\n<br />\nAgradeço por considerar esta solicitação.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','Este e-mail é automaticamente enviando quando o prazo para confirmação de um avaliador vence (veja as Opções para avaliação em Configurações > Fluxo de trabalho > Avaliação) e a opção de habilitar acesso 1-clique para o avaliador está desabilitada. Tarefas agendadas devem ser habilitadas e configuradas (veja o arquivo de configuração do site).'),('REVIEW_REQUEST_REMIND_AUTO','ru_RU','Напоминание о запросе на рецензирование статьи','Здравствуйте, {$reviewerName}!<br />\nЭто напоминание о нашем запросе Вашей рецензии на материал «{$submissionTitle}» для журнала «{$contextName}». Мы ожидали получить Ваш ответ до {$responseDueDate}, и это письмо было автоматически сгенерировано и отправлено, так как эта дата уже прошла.\n<br />\nЯ полагаю, что Вы могли бы быть прекрасным рецензентом для материала. Аннотация статьи приведена ниже, и я надеюсь, что Вы возьметесь выполнить эту важную задачу для нас.<br />\n<br />\nПожалуйста, войдите на сайт журнала, чтобы подтвердить Ваше согласие на рецензирование или отказаться от рецензирования, а также получить доступ к материалу и оставить свою рецензию и рекомендацию. Адрес сайта — {$contextUrl}<br />\n<br />\nСама рецензия должна быть предоставлена до {$reviewDueDate}.<br />\n<br />\nЕсли у Вас нет имени пользователя и пароля для доступа к сайту журнала, Вы можете воспользоваться этой ссылкой для сброса Вашего пароля (он будет направлен Вам вместе с Вашим именем пользователя на электронную почту). {$passwordResetUrl}<br />\n<br />\nURL материала: {$submissionReviewUrl}<br />\n<br />\nЗаранее благодарю Вас,<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n«{$submissionTitle}»<br />\n<br />\n{$submissionAbstract}','Это письмо отправляется автоматически, когда дата подтверждения рецензентом участия в рецензировании прошла (смотрите Параметры рецензирования в Настройки > Рабочий процесс > Рецензирование) и прямой доступ рецензента по ссылке отключен. Запланированные задачи должны быть включены и настроены (смотрите файл конфигурации сайта).'),('REVIEW_REQUEST_REMIND_AUTO_ONECLICK','cs_CZ','Požadavek na recenzi článku','{$reviewerName}:<br />\nRádi bychom se vám připomněli s naší prosbou o recenzi příspěvku &quot;{$submissionTitle},&quot; do časopisu {$contextName}. Rádi bychom obdrželi vaši odpověď do {$responseDueDate}. Tento email byl automaticky vygenerován a zaslán vám, s ohledem na to, že termín již uplynul. \n<br />\nVěříme, že budete dobrým recenzentem tohoto rukopisu. Abstrakt rukopisu je vložen níže. Budeme velmi rádi, pokud se ujmete této důležité úlohy.<br />\n<br />\nZalogujte se, prosím, na webové stránky časopisu a dejte nám vědět, jestli přijmete pozvání k recenzi. Na stránkách máte přístup jak k oznámení vašeho rozhodnutí o recenzi, ale také tam máte přístup k vlastnímu rukopisu a můžete tam nahrát recenzovanou verzi článku a doporučení recenzenta.<br />\n<br />\nDatum pro dokončení recenze je {$reviewDueDate}.<br />\n<br />\nWebová adresa příspěvku: {$submissionReviewUrl}<br />\n<br />\nDěkujeme mnohokrát za spolupráci.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','Tento email je automaticky odeslán, jakmile uplyne datum stanovené pro reakci  recenzenta (viz Možnosti kontroly v sekci Nastavení> Pracovní postup> Kontrola) a je povolen přístup jednoho recenzenta k recenzím. Plánované úlohy musí být povoleny a konfigurovány (viz konfigurační soubor webu).'),('REVIEW_REQUEST_REMIND_AUTO_ONECLICK','da_DK','Forespørgsel om bedømmelse af artikel','{$reviewerName}:<br />\nDette er blot for at minde dig om vores forespørgsel om din bedømmelse af manuskriptet &quot;{$submissionTitle},&quot; for {$contextName}. Vi havde håbet på at modtage dit svar senest den {$responseDueDate}, og denne e-mail er blevet automatisk genereret og sendt til dig, da den pågældende dato er overskredet.\n<br />\nJeg tror, at du vil være en fremragende bedømmer af manuskriptet. Nedenfor finder du et resumé af manuskriptet, og jeg håber, at du vil overveje at påtage dig denne vigtige opgave for os.<br />\n<br />\nLog på tidsskriftets websted for at angive, om du vil påtage dig bedømmelsen eller ej, samt for at få adgang til manuskriptet og registrere din bedømmelse og anbefaling.<br />\n<br />\nSelve bedømmelsen skal afleveres senest den {$reviewDueDate}.<br />\n<br />\nManuskriptets URL-adresse: {$submissionReviewUrl}<br />\n<br />\nTak for din overvejelse af denne forespørgsel.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','Denne e-mail sendes automatisk når en bedømmers bekræftelsesdato er overskredet (se bedømmelsesindstillinger under Indstillinger > Workflow > Bedømmelse) og ’Aktiver adgang for bedømmere ved hjælp af ét klik’ er aktiveret. Tidsfrister og påmindelser skal være defineret.'),('REVIEW_REQUEST_REMIND_AUTO_ONECLICK','de_DE','Bitte um Begutachtung eines Artikels','{$reviewerName}:<br />\ndies ist eine höfliche Erinnerung an unsere Bitte an Sie, den Artikel &quot;{$submissionTitle},&quot; für {$contextName} zu begutachten. Wir hatten auf Ihre Antwort bis zum {$responseDueDate} gehofft. Diese E-Mail wurde automatisch erzeugt und mit Verstreichen dieses Datums verschickt.\n<br />\nWir glauben, dass Sie dass Sie ausgezeichnet geeignet für die Begutachtung dieses Manuskript wären. Ein Abstract des Beitrags ist angefügt, und wir hoffen, dass Sie diese wichtige Aufgabe für uns übernehmen können.<br />\n<br />\nBitte melden Sie sich bei der Webseite der Zeitschrift an, um uns mitzuteilen, ob Sie die Begutachtung übernehmen werden. Über die Webseite können Sie auch auf den Beitrag zugreifen und Ihr Gutachten sowie Ihre Empfehlung hinzufügen.<br />\n<br />\nWir benötigen das Gutachten bis zum {$reviewDueDate}.<br />\n<br />\nURL des Beitrags: {$submissionReviewUrl}<br />\n<br />\nVielen Dank, dass Sie unsere Bitte berücksichtigen.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','Diese E-Mail wird automatisch verschickt, wenn das Fälligkeitsdatum für eine/n Gutachter/in verstrichen ist (vgl. die Begutachtungseinstellungen in Schritt 2 des Zeitschriftensetups) und wenn der One-Click-Zugang für Gutachter/innen deaktiviert ist. Planmäßige Aufgaben (scheduled tasks) müssen aktiviert und konfiguriert sein (vgl. die Konfigurationsdatei der Website).'),('REVIEW_REQUEST_REMIND_AUTO_ONECLICK','en_US','Article Review Request','{$reviewerName}:<br />\nJust a gentle reminder of our request for your review of the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We were hoping to have your response by {$responseDueDate}, and this email has been automatically generated and sent with the passing of that date.\n<br />\nI believe that you would serve as an excellent reviewer of the manuscript. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br />\n<br />\nPlease log into the journal web site to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br />\n<br />\nThe review itself is due {$reviewDueDate}.<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nThank you for considering this request.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','This email is automatically sent when a reviewer\'s confirmation due date elapses (see Review Options under Settings > Workflow > Review) and one-click reviewer access is enabled. Scheduled tasks must be enabled and configured (see the site configuration file).'),('REVIEW_REQUEST_REMIND_AUTO_ONECLICK','it_IT','Ricordo della richiesta di revisione','Gentilissimo {$reviewerName}:<br />\nSolo una gentile ricordo della nostra richiesta di revisione della proposta &quot;{$submissionTitle},&quot; per la rivista {$contextName}. \nSperavamo di una sua risposta per il {$responseDueDate}, e questa mail è stata inviata automaticamente visto che la data è passata.\n<br />\nRiteniamo che lei possa fare un\'ottima revisione della proposta. L\'abstract della proposta è inserito qui sotto, e speriamo che lei consideri di fare questo importante lavoro per noi.<br />\n<br />\nLe chiederemmo di entrare nel sito web della rivista e indicare se porterà avanti o no la revisione, cosi come può accedere alla proposta, registrare la sua revisione e scrivere la sua valutazione. <br />\n<br />\nLa revisione serve entro il {$reviewDueDate}.<br />\n<br />\nURL della proposta: {$submissionReviewUrl}<br />\n<br />\nLa ringrazio per aver preso in considerazione  questa richiesta.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\nDati della proposta:\n<br/>\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','Questa mail parte automaticamente quanto la data di conferma di un revisore scade (vedi opzioni di revisione sotto Impostazioni > Flusso di lavoro > Revisione) e l\'accesso alla revisione \'one-click\' è abilitato. I compiti programmati devono essere abilitati e configurati (vedi il file di configurazione del sito).'),('REVIEW_REQUEST_REMIND_AUTO_ONECLICK','pt_BR','Solicita avaliação de artigo','{$reviewerName}:<br />\nEste é apenas um lembrete amigável do nosso pedido de avaliação da submissão, &quot;{$submissionTitle},&quot; ao periódico {$contextName}. Esperávamos ter recebido sua resposta até {$responseDueDate}, assim este email foi gerado e enviado automaticamente com o passar dessa data.\n<br />\nEu acredito que você seria um ótimo(a) parecerista para o manuscrito. O resumo da submissão segue abaixo e eu espero que você considere o aceite desta tarefa tão importante para nós.<br />\n<br />\nPor gentileza, logue no site do periódico para indicar se você irá aceitar dar o parecer ou não, e também para acessar a submissão e registrar sua avaliação e recomendação.<br />\n<br />\nO prazo para envio do parecer é {$reviewDueDate}.<br />\n<br />\nURL da submissão: {$submissionReviewUrl}<br />\n<br />\nObrigado por considerar este pedido.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','Esse e-mail é enviado automaticamente quando a data de limite de confirmação do avaliador termina (consulte Opções de avaliação em Configurações> Fluxo de trabalho> Avaliação) e o acesso do avaliador com 1-clique está ativado. As tarefas agendadas devem ser ativadas e configuradas (consulte o arquivo de configuração do site).'),('REVIEW_REQUEST_REMIND_AUTO_ONECLICK','ru_RU','Запрос на рецензирование статьи','Здравствуйте, {$reviewerName}!<br />\nЭто напоминание о нашем запросе Вашей рецензии на материал «{$submissionTitle}» для журнала «{$contextName}». Мы ожидали получить Ваш ответ до {$responseDueDate}, и это письмо было автоматически сгенерировано и отправлено, так как эта дата уже прошла.\n<br />\nЯ полагаю, что Вы могли бы быть прекрасным рецензентом для материала. Аннотация статьи приведена ниже, и я надеюсь, что Вы возьметесь выполнить эту важную задачу для нас.<br />\n<br />\nПожалуйста, войдите на сайт журнала, чтобы подтвердить Ваше согласие на рецензирование или отказаться от рецензирования, а также получить доступ к материалу и оставить свою рецензию и рекомендацию.<br />\n<br />\nСама рецензия должна быть предоставлена до {$reviewDueDate}.<br />\n<br />\nURL материала: {$submissionReviewUrl}<br />\n<br />\nЗаранее благодарю Вас,<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n«{$submissionTitle}»<br />\n<br />\n{$submissionAbstract}','Это письмо отправляется автоматически, когда дата подтверждения рецензентом участия в рецензировании прошла (смотрите Параметры рецензирования в Настройки > Рабочий процесс > Рецензирование) и прямой доступ рецензента по ссылке включен. Запланированные задачи должны быть включены и настроены (смотрите файл конфигурации сайта).'),('REVIEW_REQUEST_SUBSEQUENT','cs_CZ','Požadavek na recenzi článku','{$reviewerName}:<br />\n<br />\nTento email se týká rukopisu &quot;{$submissionTitle},&quot; podávaného autorem {$contextName}.<br />\n<br />\nNa základě recenzí předchozí verze nahráli autoři opravenou verzi tohoto příspěvku. Byli bychom rádi, kdybyste nám pomohl(a) tuto verzi zkontrolovat.<br />\n<br />\nZalogujte se, prosím, do {$responseDueDate} a dejte nám vědět, zda jste schopen(a) a ochoten(a) udělat recenzi této opravené verze, na webu máte také dostupný přístup k článku a najdete tam také odkaz k odeslání své recenze a formulář pro vaše doporučení. Webová stránka je {$contextUrl}<br />\n<br />\nTermín na dokončení recenze je  {$reviewDueDate}.<br />\n<br />\nPokud jste zapomněli svůj login a heslo na stránky časopisu, můžete použít následující odkaz na reset vašeho hesla (které vám poté bude zasláno spolu s loginem). {$passwordResetUrl}<br />\n<br />\nAdresa příspěvku: {$submissionReviewUrl}<br />\n<br />\nDěkujeme mnohokrát za spolupráci.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','Tento email od editora sekce recenzentovi požaduje, aby recenzent přijal nebo odmítl úlohu přezkoumání příspěvku pro druhé nebo další kolo recenzí. Poskytuje informace o podání, jako je název a abstrakt, datum dokončení recenze a přístup k samotnému příspěvku. Tato zpráva se používá v případě, že je v části Správa> Nastavení> Pracovní postup> Kontrola vybrána možnost Standardní kontrola. (Jinak viz REVIEW_REQUEST_ATTACHED_SUBSEQUENT.)'),('REVIEW_REQUEST_SUBSEQUENT','da_DK','Forespørgsel om bedømmelse af artikel','{$reviewerName}:<br />\n<br />\nDette omhandler manuskriptet &quot;{$submissionTitle},&quot; som behandles af {$contextName}.<br />\n<br />\nSom opfølgning på en tidligere bedømmelse af manuskriptet, har forfatterne indsendt en revideret version af deres indlæg. Vi vil sætte stor pris på din hjælp, hvis du vil foretage en bedømmelse af det.<br />\n<br />\nLog på tidsskriftets websted inden {$responseDueDate} for at angive, om du vil påtage dig bedømmelsen eller ej, samt for at få adgang til manuskriptet og registrere din bedømmelse og anbefaling. Webstedet er {$contextUrl}<br />\n<br />\nSelve bedømmelsen skal afleveres senest den {$reviewDueDate}.<br />\n<br />\nHvis du ikke har dit brugernavn og din adgangskode til tidsskriftets websted, kan du bruge dette link til at ændre adgangskoden (som så vil blive sendt til dig via e-mail sammen med dit brugernavn). {$passwordResetUrl}<br />\n<br />\nManuskriptets URL: {$submissionReviewUrl}<br />\n<br />\nTak for din overvejelse af denne forespørgsel.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','Denne mail sendes af sektionsredaktøren til en bedømmer, der bedes oplyse om vedkommende vil påtage sig at bedømme et indlæg i en anden eller senere bedømmelsesrunde. Det indeholder informationer om indlægget så som titel og resumé, forfaldsdato for indlevering af bedømmelse samt hvordan man får adgang til indlægget. Denne besked anvendes når man har valgt standardopsætningen for bedømmelsesprocessen > Indstillinger > Workflow > Bedømmelse. (Ellers se REVIEW_REQUEST_ATTACHED_SUBSEQUENT.)'),('REVIEW_REQUEST_SUBSEQUENT','de_DE','Bitte um ein Gutachten','{$reviewerName},<br />\n<br />\ndiese E-Mail betrifft das Manuskript &quot;{$submissionTitle}&quot;, das bei {$contextName} in der Begutachtung ist.<br />\n<br />\nNach der Begutachtung der früheren Fassung des Manuskripts haben die Autor/innen nun eine überarbeitete Fassung ihres Artikels eingereicht. Wir würden uns freuen, wenn Sie bei der Beurteilung helfen könnten.<br />\n<br />\nBitte loggen Sie sich auf der Website der Zeitschrift bis zum {$responseDueDate} ein, um uns Ihre Zu- oder Absage mitzuteilen. Sie finden dort den Beitrag und können auch Ihr Gutachten und Ihre Empfehlung dort abgeben. Die Adresse ist {$contextUrl}.<br />\n<br />\nDas Gutachten selbst wäre fällig am {$reviewDueDate}.<br />\n<br />\nFalls Sie nicht über Benutzer/innennamen und Passwort verfügen, können Sie über folgenden Link Ihr Passwort neu setzen (das Ihnen dann zusammen mit Ihrem Benutzer/innennamen per E-Mail zugesandt wird). {$passwordResetUrl}<br />\n<br />\nURL des Beitrags: {$submissionReviewUrl}<br />\n<br />\nIn der Hoffnung auf eine positive Antwort,<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','Diese E-Mail wird von der/dem Rubrikredakteur/in an eine/n Gutachter/in gesendet, damit diese/r die Aufgabe, eine Einreichung in einer zweiten oder weiteren Begutachtungsrunde zu beurteilen, übernimmt oder ablehnt. Sie übermittelt Informationen über die Einreichung wie den Titel und das Abstract, ein Fälligkeitsdatum für das Gutachten und Informationen, wie auf die Einreichung zugegriffen werden kann. Diese Nachricht wird benutzt, wenn in Schritt 2 des Zeitschriftensetups das Standardbegutachtungsverfahren ausgewählt worden ist. (Ansonsten siehe REVIEW_REQUEST_ATTACHED_SUBSEQUENT.)'),('REVIEW_REQUEST_SUBSEQUENT','en_US','Article Review Request','{$reviewerName}:<br />\n<br />\nThis regards the manuscript &quot;{$submissionTitle},&quot; which is under consideration by {$contextName}.<br />\n<br />\nFollowing the review of the previous version of the manuscript, the authors have now submitted a revised version of their paper. We would appreciate it if you could help evaluate it.<br />\n<br />\nPlease log into the journal web site by {$responseDueDate} to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation. The web site is {$contextUrl}<br />\n<br />\nThe review itself is due {$reviewDueDate}.<br />\n<br />\nIf you do not have your username and password for the journal\'s web site, you can use this link to reset your password (which will then be emailed to you along with your username). {$passwordResetUrl}<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nThank you for considering this request.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','This email from the Section Editor to a Reviewer requests that the reviewer accept or decline the task of reviewing a submission for a second or greater round of review. It provides information about the submission such as the title and abstract, a review due date, and how to access the submission itself. This message is used when the Standard Review Process is selected in Management > Settings > Workflow > Review. (Otherwise see REVIEW_REQUEST_ATTACHED_SUBSEQUENT.)'),('REVIEW_REQUEST_SUBSEQUENT','it_IT','Richiesta di fare una revisione','Gentile {$reviewerName}:<br />\n<br />\nti scrivo riguardo alla proposta &quot;{$submissionTitle},&quot; che è in revisione per essere pubblicata in {$contextName}.<br />\n<br />\nSeguendo i suggerimenti emersi in precedenza, l\'autore ha modificato il manoscritto e inviato una nuova versione. Ti sarei grato se volessi aiutarci a valutarla.<br />\n<br />\nTi prego quindi di accedere al sito entro il {$responseDueDate} per comunicare se ti incaricherai o meno della revisione e poi per accedere alla proposta e registrare il tuo parere. Il sito è {$contextUrl}<br />\n<br />\nLa data di scadenza per l\'incarico di revisione è il {$reviewDueDate}.<br />\n<br />\nSe non ricordi la tua username e password, puoi utilizzare la funzione di reset password: {$passwordResetUrl}<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nTi ringrazio della considerazione<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','Questo messaggio viene inviato dall\'editor a un revisore chiedendogli di accettare o rifiutare l\'incarico di revisione di una proposta per un secondo o successivo round di revisione. Esso fornisce informazioni come il titolo e l\'abstract, una data di scadenza e modalità di accesso alla stessa proposta. Questo messaggio viene utilizzato quando il processo di revisione standard è stato selezionato nel setup. (In caso contrario vedi REVIEW_REQUEST_ATTACHED_SUBSEQUENT.)'),('REVIEW_REQUEST_SUBSEQUENT','pt_BR','Solicitação de avaliação de artigo','{$reviewerName}:<br />\n<br />\nEsta mensagem é referente ao manuscrito &quot;{$submissionTitle},&quot; que está sendo avaliado para publicação pelo periódico {$contextName}.<br />\n<br />\nApós a avaliação da versão anterior do manuscrito, os autores submeteram uma versão revisada do artigo. Nós apreciaríamos se você pudesse ajudar com um parecer.<br />\n<br />\nPor gentileza, logue no site do periódico até {$responseDueDate} para indicar se você irá aceitar dar o parecer ou não, e também para acessar a submissão e registrar sua avaliação e recomendação. O site é {$contextUrl}<br />\n<br />\nO prazo para envio do parecer é {$reviewDueDate}.<br />\n<br />\nCaso você não possua login e senha para o site deste periódico, você pode usar este link para solicitar uma nova senha (que lhe será, então, enviada por email junto ao seu login). {$passwordResetUrl}<br />\n<br />\nURL da submissão: {$submissionReviewUrl}<br />\n<br />\nObrigado por considerar este pedido.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','Este e-mail do Editor de Seção para um Avaliador, que solicita ao usuário aceitar ou recusar a tarefa de avaliar uma submissão para uma segunda ou maior rodada de avaliação. Ele fornece informações sobre a submissão, como o título e resumo, uma data de limite de avaliação, e como acessar a própria submissão. Essa mensagem é usada quando o Processo de Avaliação Padrão é selecionado em Configurações> Fluxo de trabalho> Avaliação. (Caso contrário, consulte REVIEW_REQUEST_ATTACHED_SUBSEQUENT.)'),('REVIEW_REQUEST_SUBSEQUENT','ru_RU','Запрос на рецензирование статьи','Здравствуйте, {$reviewerName}!<br />\n<br />\nЭто письмо касается материала «{$submissionTitle}», который рассматривается журналом «{$contextName}».<br />\n<br />\nПо результатам рецензирования предыдущей версии материала авторы прислали откорректированную версию их статьи. Мы были бы рады, если бы Вы помогли оценить ее.<br />\n<br />\nПожалуйста, войдите на сайт журнала до {$responseDueDate}, чтобы подтвердить Ваше согласие на рецензирование или отказаться от рецензирования, а также получить доступ к материалу и оставить свою рецензию и рекомендацию. Адрес сайта — {$contextUrl}<br />\n<br />\nСама рецензия должна быть предоставлена до {$reviewDueDate}.<br />\n<br />\nЕсли у Вас нет имени пользователя и пароля для доступа к сайту журнала, Вы можете воспользоваться этой ссылкой для сброса Вашего пароля (он будет направлен Вам вместе с Вашим именем пользователя на электронную почту). {$passwordResetUrl}<br />\n<br />\nURL материала: {$submissionReviewUrl}<br />\n<br />\nЗаранее благодарю Вас,<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n«{$submissionTitle}»<br />\n<br />\n{$submissionAbstract}','Это письмо редактора раздела, отправляемое рецензенту, с запросом согласия или отказа от выполнения рецензирования материала во втором или последующих раундах рецензирования. В письме приводится информация о материале, такая как название и аннотация, срок выполнения рецензии и как получить доступ к самому материалу. Это сообщение используется, если выбран стандартный процесс рецензирования в Управление > Настройки > Рабочий процесс > Рецензирование. (В ином случае, смотрите RREVIEW_REQUEST_ATTACHED_SUBSEQUENT.)'),('REVISED_VERSION_NOTIFY','cs_CZ','Nahrána opravená verze příspěvku','Editoři:<br />\n<br />\nOpravená verze příspěvku &quot;{$submissionTitle}&quot; byla nahrána autorem {$authorName}.<br />\n<br />\nWebová adresa příspěvku: {$submissionUrl}<br />\n<br />\n{$editorialContactSignature}','Tento email je automaticky odeslán příslušnému editorovi článku, pokud autor odešle revidovanou verzi článku.'),('REVISED_VERSION_NOTIFY','da_DK','Revideret udgave uploadet','Redaktører:<br />\n<br />\nEn revideret udgave af &quot;{$submissionTitle}&quot; er blevet uploadet af forfatter {$authorName}.<br />\n<br />\nManuskriptets URL: {$submissionUrl}<br />\n<br />\n{$editorialContactSignature}','Denne e-mail bliver automatisk sendt til udvalgte redaktør når forfatteren uploader en revideret udgave a en artikel.'),('REVISED_VERSION_NOTIFY','de_DE','Überarbeitete Version hochgeladen','Sehr geehrte Redaktion,<br />\n<br />\neine überarbeitete Fassung von &quot;{$submissionTitle}&quot; ist von der/dem Autor/in {$authorName} hochgeladen worden.<br />\n<br />\nURL des Beitrags: {$submissionUrl}<br />\n<br />\n{$editorialContactSignature}','Diese E-Mail wird automatisch an die/den zuständige/n Redakteur/in geschickt, wenn ein/e Autor/in eine überarbeitete Fassung eines Artikels hochgeladen hat.'),('REVISED_VERSION_NOTIFY','en_US','Revised Version Uploaded','Editors:<br />\n<br />\nA revised version of &quot;{$submissionTitle}&quot; has been uploaded by the author {$authorName}.<br />\n<br />\nSubmission URL: {$submissionUrl}<br />\n<br />\n{$editorialContactSignature}','This email is automatically sent to the assigned editor when author uploads a revised version of an article.'),('REVISED_VERSION_NOTIFY','it_IT','Caricamento di versione revisionata','Caro editor:<br />\n<br />\nL\'autore {$authorName} ha caricato una versione revisionata di &quot;{$submissionTitle}&quot;.<br />\n<br />\nSubmission URL: {$submissionUrl}<br />\n<br />\n{$editorialContactSignature}','Questo messaggio viene inviato automaticamente all\'Editor quando un autore invia una versione revisionata del proprio articolo.'),('REVISED_VERSION_NOTIFY','pt_BR','Envio de versão atualizada','Editores: <br />\n<br />\nUma versão revisada de &quot;{$submissionTitle}&quot; foi carregada pelo autor {$authorName}. <br />\n<br />\nURL da Submissão: {$submissionUrl} <br />\n<br />\n{$editorialContactSignature}','Este email é enviado automaticamente ao editor designado quando o autor faz o upload de uma versão revisada de um artigo.'),('REVISED_VERSION_NOTIFY','ru_RU','Загружена исправленная версия','Уважаемые редакторы!<br />\n<br />\nИсправленная версия материала «{$submissionTitle}» была загружена на сайт (автор — {$authorName}).<br />\n<br />\nURL материала: {$submissionUrl}<br />\n<br />\n{$editorialContactSignature}','Это письмо автоматически отправляется назначенному редактору, когда автор загружает исправленную версию статьи.'),('STATISTICS_REPORT_NOTIFICATION','cs_CZ','Aktivita redakce pro {$month}, {$year}','\n{$name}, <br />\n<br />\nVaše zpráva o stavu časopisu za {$month}, {$year} je nyní k dispozici. Vaše klíčové statistiky pro tento měsíc jsou níže. <br />\n<ul>\n <li>Nová podání tento měsíc: {$newSubmissions}</li>\n <li>Odmítnuté příspěvky tento měsíc: {$declinedSubmissions}</li>\n <li>Přijaté příspěvky tento měsíc: {$acceptedSubmissions}</li>\n <li>Celkový počet příspěvků v systému: {$totalSubmissions}</li>\n</ul>\nChcete-li zobrazit podrobnější <a href=\"{$editorialStatsLink}\">statistiky redakce</a> a <a href=\"{$publicationStatsLink}\">statistiky publikovaných článků</a>, přihlaste se do časopisu. Úplná kopie statistiky redakce tohoto měsíce je připojena. <br />\n<br />\nS pozdravem <br />\n{$principalContactSignature}','Tento e-mail je automaticky zasílán měsíčně měsíčně editorům a správcům časopisů, aby jim poskytl přehled o stavu systému.'),('STATISTICS_REPORT_NOTIFICATION','da_DK','Redaktionel aktivitet for {$month}, {$year}','\n{$name}, <br />\n<br />\nDit tidsskrifts tilstandsrapport for {$month}, {$year} er nu tilgængelig. De statistiske nøgletal ses nedenfor.<br />\n<ul>\n	<li>Nye indsendelser I denne måned: {$newSubmissions}</li>\n	<li>Afviste indsendelser I denne måned: {$declinedSubmissions}</li>\n	<li>Accepterede indsendelser i denne måned: {$acceptedSubmissions}</li>\n	<li>Systemets samlede antal indsendelser: {$totalSubmissions}</li>\n</ul>\nLog ind på tidsskriftet for at se flere oplysninger om <a href=\"{$editorialStatsLink}\">redaktionelle udviklingstendenser </a> og <a href=\"{$publicationStatsLink}\">offentliggjorte artikelstatistikker</a>. En komplet kopi af denne måneds redaktionelle udvikling er vedhæftet.<br />\n<br />\nMed venlig hilsen<br />\n{$principalContactSignature}','Denne e-mail sendes automatisk en gang om måneden til redaktører og tidsskriftschefer for at give dem et overblik over systemets tilstand.'),('STATISTICS_REPORT_NOTIFICATION','de_DE','Aktivität der Redaktion für {$month}, {$year}','\nSehr geehrte/r {$name}, <br />\n<br />\nDer Bericht zu Ihrem Journal für {$month}, {$year} ist nun verfügbar. Die Hauptstatistiken für diesen Monat finden Sie im folgenden.<br />\n<ul>\n	<li>Neue Einreichungen in diesem Monat: {$newSubmissions}</li>\n	<li>Abgelehnte Einreichungen in diesem Monat: {$declinedSubmissions}</li>\n	<li>Angenommene Einreichungen in diesem Monat: {$acceptedSubmissions}</li>\n	<li>Gesamtzahl der Einreichungen im System: {$totalSubmissions}</li>\n</ul>\nDetailliertere Daten finden Sie beim Journal unter <a href=\"{$editorialStatsLink}\">Redaktionelle Trends</a> und <a href=\"{$publicationStatsLink}\">Veröffentlichungsstatistik</a>.  Eine Kopie des Gesamtberichtes der redaktionellen Trends ist beigefügt.<br />\n<br />\nMit freundlichen Grüßen,<br />\n{$principalContactSignature}','Diese E-Mail wird monatlich an die Redakteure und Journal Manager gesendet und stellt Statistiken zum Journal zur Verfügung.'),('STATISTICS_REPORT_NOTIFICATION','en_US','Editorial activity for {$month}, {$year}','\n{$name}, <br />\n<br />\nYour journal health report for {$month}, {$year} is now available. Your key stats for this month are below.<br />\n<ul>\n	<li>New submissions this month: {$newSubmissions}</li>\n	<li>Declined submissions this month: {$declinedSubmissions}</li>\n	<li>Accepted submissions this month: {$acceptedSubmissions}</li>\n	<li>Total submissions in the system: {$totalSubmissions}</li>\n</ul>\nLogin to the journal to view more detailed <a href=\"{$editorialStatsLink}\">editorial trends</a> and <a href=\"{$publicationStatsLink}\">published article stats</a>. A full copy of this month\'s editorial trends is attached.<br />\n<br />\nSincerely,<br />\n{$principalContactSignature}','This email is automatically sent monthly to editors and journal managers to provide them a system health overview.'),('STATISTICS_REPORT_NOTIFICATION','it_IT','Attività editorial e per {$month}, {$year}','\n{$name}, <br />\n<br />\nE\' disponibile il report per il mese di  {$month}, {$year} e di seguito sono indicate le statistiche principali<br />\n<ul>\n	<li>nuovi contributi ricevuti: {$newSubmissions}</li>\n	<li>manoscritti rigettati: {$declinedSubmissions}</li>\n	<li>manoscritti accettati: {$acceptedSubmissions}</li>\n	<li>manoscritti totali nel sistema: {$totalSubmissions}</li>\n</ul>\nAccedi al sito per consultare gli <a href=\"{$editorialStatsLink}\">editorial trends</a> e il  <a href=\"{$publicationStatsLink}\">report degli articoli pubblicati</a>. Il report completo dell\'attività editoriale del mese è allegata.<br />\n<br />\nDistinti saluti,<br />\n{$principalContactSignature}','Questo report sull\'attività del sistema è inviato via email  mensilmente in automatico agli editors.'),('STATISTICS_REPORT_NOTIFICATION','pt_BR','Atividade editorial para {$month}, {$year}','\n{$name}, <br />\n<br />\nSeu relatório do estado atual do sistema do mês de {$month}, {$year} está disponível. Suas estatísticas-chave deste mês seguem abaixo.<br />\n<ul>\n	<li>Novas submissões este mês: {$newSubmissions}</li>\n	<li>Submissões rejeitadas este mês: {$declinedSubmissions}</li>\n	<li>Submissões aceitas este mês: {$acceptedSubmissions}</li>\n	<li>Total de submissões no sistema {$totalSubmissions}</li>\n</ul>\nEfetue login no site do periódico para obter uma visão mais detalhada das <a href=\"{$editorialStatsLink}\">tendências editoriais</a> e <a href=\"{$publicationStatsLink}\">estatísticas de artigos publicados</a>. Uma cópia completa do relatório de tendencias editoriais deste mês segue anexa.<br />\n<br />\nAtenciosamente,<br />\n{$principalContactSignature}','Este e-mail é automaticamente enviado todo mês aos editores e gerentes do sistema para dar-lhes uma visão geral do estado do sistema.'),('STATISTICS_REPORT_NOTIFICATION','ru_RU','Активность журнала за {$month} {$year} года','\nЗдравствуйте, {$name}! <br />\n<br />\nОтчёт об активности журнала за {$month} {$year} года уже доступен. Ключевые статистические параметры этого месяца приведены ниже.<br />\n<ul>\n	<li>Новых материалов за месяц: {$newSubmissions}</li>\n	<li>Отклонено материалов за месяц: {$declinedSubmissions}</li>\n	<li>Принято материалов за месяц: {$acceptedSubmissions}</li>\n	<li>Общее число материалов в системе: {$totalSubmissions}</li>\n</ul>\nВойдите в систему, чтобы посмотреть более подробные отчёты о <a href=\"{$editorialStatsLink}\">тенденциях редакции</a> и <a href=\"{$publicationStatsLink}\">статистике опубликованных статей</a>. Полная копия отчёта о тенденциях редакции за данный месяц прилагается к письму.<br />\n<br />\nС уважением,<br />\n{$principalContactSignature}','Это письмо каждый месяц автоматически отправляется редакторам и управляющим журнала, чтобы у них было представление о работе системы.'),('SUBMISSION_ACK','cs_CZ','Poděkování za příspěvek','{$authorName}:<br />\n<br />\nDěkujeme za zaslání příspěvku &quot;{$submissionTitle}&quot; do {$contextName}. S online systémem, který používáme, budete moci sledovat postup příspěvku redakčním procesem po přihlášení na stránkách časopisu:<br />\n<br />\nURL rukopisu: {$submissionUrl}<br />\nUživatelské jméno: {$authorUsername}<br />\n<br />\nPokud máte nějaké otázky, kontaktujte mě prosím. Děkujeme, že jste zvolili tento časopis pro publikování Vaší práce.<br />\n<br />\n{$editorialContactSignature}','Tento email, pokud je povolen, je automaticky zaslán autorce/autorovi, když dokončí proces odesílání příspěvku do časopisu. Obsahuje informace o možnosti sledování příspěvku během redakčního zpracování a poděkování autorovi za příspěvek.'),('SUBMISSION_ACK','da_DK','Bekræftelse af indsendelse','{$authorName}:<br />\n<br />\nTak, fordi du har fremsendt manuskriptet &quot;{$submissionTitle}&quot; til {$contextName}. Ved hjælp af det online-tidsskriftsstyringssystem, vi bruger, kan du følge manuskriptet igennem den redaktionelle proces ved at logge på tidsskriftets websted:<br />\n<br />\nManuskriptets URL-adresse: {$submissionUrl}<br />\nBrugernavn: {$authorUsername}<br />\n<br />\nHvis du har spørgsmål, er du velkommen til at kontakte mig. Tak, fordi du har valgt at publicere din artikel i dette tidsskrift.<br />\n<br />\n{$editorialContactSignature}','Når denne e-mail er aktiveret, bliver den automatisk sendt til en forfatter, når vedkommende har indsendt et manuskript til tidsskriftet. Den indeholder oplysninger om, hvordan forfatteren kan følge manuskriptet igennem processen, og den takker forfatteren for manuskriptet.'),('SUBMISSION_ACK','de_DE','Eingangsbestätigung','{$authorName},<br />\n<br />\nvielen Dank für die Einreichung Ihres Manuskript &quot;{$submissionTitle}&quot; zur Veröffentlichung in {$contextName}. Das Verwaltungssystem unserer Webzeitschrift erlaubt Ihnen, jederzeit den Lauf Ihres Beitrags im Redaktionsprozess zu beobachten. Sie loggen sich dazu einfach auf unserer Webseite ein:<br />\n<br />\nURL des Manuskripts: {$submissionUrl}<br />\nBenutzer/innenname: {$authorUsername}<br />\n<br />\nFür weitere Fragen stehen wir Ihnen gern zur Verfügung. Danke für Ihr Interesse an einer Veröffentlichung in unserer Zeitschrift.<br />\n<br />\n{$editorialContactSignature}','Diese E-Mail wird, sofern aktiviert, automatisch an eine Autorin/einen Autor gesendet, wenn sie den Einreichungsprozess eines Manuskripts für die Zeitschrift abgeschlossen haben. Sie liefert Informationen über das Verfolgen der Einreichung durch den Prozess hindurch und dankt der Autorin/dem Autor für die Einreichung.'),('SUBMISSION_ACK','en_US','Submission Acknowledgement','{$authorName}:<br />\n<br />\nThank you for submitting the manuscript, &quot;{$submissionTitle}&quot; to {$contextName}. With the online journal management system that we are using, you will be able to track its progress through the editorial process by logging in to the journal web site:<br />\n<br />\nSubmission URL: {$submissionUrl}<br />\nUsername: {$authorUsername}<br />\n<br />\nIf you have any questions, please contact me. Thank you for considering this journal as a venue for your work.<br />\n<br />\n{$editorialContactSignature}','This email, when enabled, is automatically sent to an author when they complete the process of submitting a manuscript to the journal. It provides information about tracking the submission through the process and thanks the author for the submission.'),('SUBMISSION_ACK','it_IT','Proposta ricevuta','Gentile {$authorName},<br />\n<br />\nGrazie per aver inviato il suo contributo &quot;{$submissionTitle}&quot; alla testata  {$contextName}. Potrà il processo di revisione del suo manoscritto attraverso portale utilizzando la sua login al sito:<br />\n<br />\nURL della proposta: {$submissionUrl}<br />\nUsername: {$authorUsername}<br />\n<br />\nPer qualsiasi domanda non esiti a contattarmi.<br />\nLa ringrazio per la preferenza espressa nei confronti di {$contextName}.<br />\n<br />\n{$editorialContactSignature}','Questa email, quando è abilitata, viene inviata automaticamente all\'autore quando viene completato il processo di sottomissione del manoscritto. Fornisce informazioni su come tracciare il manoscritto e ringrazia l\'autore per la proposta.'),('SUBMISSION_ACK','pt_BR','Agradecimento pela submissão','{$authorName}:<br />\n<br />\nObrigado por submeter o manuscrito, &quot;{$submissionTitle}&quot; ao periódico {$contextName}. Com o sistema de gerenciamento de periódicos on-line que estamos usando, você poderá acompanhar seu progresso através do processo editorial efetuando login no site do periódico:<br />\n<br />\nURL da Submissão: {$submissionUrl}<br />\nUsuário: {$authorUsername}<br />\n<br />\nSe você tiver alguma dúvida, entre em contato conosco. Agradecemos por considerar este periódico para publicar o seu trabalho.<br />\n<br />\n{$editorialContactSignature}','Mensagem enviada automaticamente pelo sistema ao autor, quando habilitada, ao ser concluído o processo de submissão de um manuscrito à revista. Oferece informações sobre os mecanismos para acompanhamento da submissão durante o processo editorial, e serve como registro e confirmação da submissão.'),('SUBMISSION_ACK','ru_RU','Подтверждение отправки','Здравствуйте, {$authorName}!<br />\n<br />\nБлагодарим Вас за отправку материала «{$submissionTitle}» в журнал «{$contextName}». С помощью онлайн-системы управления журналом, которую мы используем, Вы сможете отслеживать его прохождение через редакционный процесс, заходя на сайт журнала:<br />\n<br />\nURL материала: {$submissionUrl}<br />\nИмя пользователя: {$authorUsername}<br />\n<br />\nЕсли у Вас возникнут какие-то вопросы, пожалуйста, свяжитесь со мной. Спасибо за выбор нашего журнала для публикации Вашей работы.<br />\n<br />\n{$editorialContactSignature}','Это письмо (если эта возможность включена) автоматически отправляется автору, когда он завершает процесс отправки материала в журнал. В письме содержится информация об отслеживании прохождения материала через редакционный процесс и благодарность автору за присланный материал.'),('SUBMISSION_ACK_NOT_USER','cs_CZ','Poděkování za příspěvek','Dobrý den,<br />\n<br />\n{$submitterName} nahrál rukopis, &quot;{$submissionTitle}&quot; do časopisu {$contextName}. <br />\n<br />\nPokud máte nějaké dotazy, kontaktujte mne, prosím. Děkujeme vám za využívání našeho příspěvku pro vaše práce.<br />\n<br />\n{$editorialContactSignature}','Tento email, je-li povolen, je automaticky odeslán ostatním autorům článku, kteří nejsou uživateli v rámci OJS uvedenými během procesu podání příspěvku.'),('SUBMISSION_ACK_NOT_USER','da_DK','Indsendelsesbekræftelse','Hej<br />\n<br />\n{$submitterName} har indsendt manuskriptet &quot;{$submissionTitle}&quot; til {$contextName}. <br />\n<br />\nHvis du har spørgsmål, er du velkommen til at kontakte mig. Tak fordi du har valgt at publicere din artikel i dette tidsskrift.<br />\n<br />\n{$editorialContactSignature}','Når denne e-mail er aktiveret, sendes den automatisk til de øvrige forfattere, der ikke er registrerede brugere i OJS, men angivet under indsendelsesprocessen.'),('SUBMISSION_ACK_NOT_USER','de_DE','Eingangsbestätigung','Liebe/r Autor/in,<br />\n<br />\n{$submitterName} hat das Manuskript &quot;{$submissionTitle}&quot; bei {$contextName} eingereicht. <br />\n<br />\nFür weitere Fragen stehen wir Ihnen gern zur Verfügung. Danke für Ihr Interesse an einer Veröffentlichung in unserer Zeitschrift.<br />\n<br />\n{$editorialContactSignature}','Diese E-Mail wird, sofern aktiviert, automatisch an die weiteren Autor/innen geschickt, die laut Einreichung keine OJS-Benutzeraccounts haben.'),('SUBMISSION_ACK_NOT_USER','en_US','Submission Acknowledgement','Hello,<br />\n<br />\n{$submitterName} has submitted the manuscript, &quot;{$submissionTitle}&quot; to {$contextName}. <br />\n<br />\nIf you have any questions, please contact me. Thank you for considering this journal as a venue for your work.<br />\n<br />\n{$editorialContactSignature}','This email, when enabled, is automatically sent to the other authors who are not users within OJS specified during the submission process.'),('SUBMISSION_ACK_NOT_USER','it_IT','Proposta ricevuta','Salve,<br />\n<br />\n{$submitterName} ha inviato un manoscritto dal titolo &quot;{$submissionTitle}&quot; alla rivista {$contextName}. <br />\n<br />\nQualsiasi domanda abbia, chieda pure. Grazie per aver considerato la rivista per pubblicare il vostro lavoro.<br />\n<br />\n{$editorialContactSignature}','Questa mail, quando abilitata, è inviata in automatico agli altri autori di un lavoro che non sono utenti dell\'OJS in questione quanto un lavoro viene sottomesso a una rivista.'),('SUBMISSION_ACK_NOT_USER','pt_BR','Agradecimento pela submissão','Olá,<br />\n<br />\n{$submitterName} submeteu o manuscrito, &quot;{$submissionTitle}&quot; ao periódico {$contextName}. <br />\n<br />\nSe você tiver alguma dúvida, entre em contato conosco. Agradecemos por considerar este periódico para publicar o seu trabalho.<br />\n<br />\n{$editorialContactSignature}','Quando habilitada, esta mensagem é enviada automaticamente aos coautores informados durante o processo de submissão, que não estão cadastrados no OJS.'),('SUBMISSION_ACK_NOT_USER','ru_RU','Подтверждение отправки','Здравствуйте!<br />\n<br />\nПользователь {$submitterName} отправил материал «{$submissionTitle}» в журнал «{$contextName}». <br />\n<br />\nЕсли у Вас возникнут какие-то вопросы, пожалуйста, свяжитесь со мной. Спасибо за выбор нашего журнала для публикации Вашей работы.<br />\n<br />\n{$editorialContactSignature}','Это письмо (если эта возможность включена) автоматически отправляется другим авторам, которые не являются пользователями OJS, указанным в процессе отправки материала.'),('SUBSCRIPTION_AFTER_EXPIRY','cs_CZ','Vypršelo předplatné','{$subscriberName}:<br />\n<br />\nVaše předplatné pro {$contextName} vypršelo.<br />\n<br />\n{$subscriptionType}<br />\nDatum vypršení: {$expiryDate}<br />\n<br />\nPro obnovení předplatného přejděte prosím na stránky časopisu. Do systému se můžete přihlásit Vaším uživatelským jménem &quot;{$username}&quot;.<br />\n<br />\nPokud máte nějaké otázky, neváhejte mě prosím kontaktovat.<br />\n<br />\n{$subscriptionContactSignature}','Tento email informuje předplatitele, že jeho předplatné vypršelo. Obsahuje URL časopisu a instrukce pro přístup.'),('SUBSCRIPTION_AFTER_EXPIRY','da_DK','Abonnementet er udløbet','{$subscriberName}:<br />\n<br />\nDit abonnement på {$contextName} er udløbet.<br />\n<br />\n{$subscriptionType}<br />\nUdløbsdato: {$expiryDate}<br />\n<br />\nHvis du vil forny abonnementet, skal du gå til tidsskriftets websted. Du kan logge på systemet med dit brugernavn, &quot;{$username}&quot;.<br />\n<br />\nHvis du har spørgsmål, er du velkommen til at kontakte mig.<br />\n<br />\n{$subscriptionContactSignature}','Denne e-mail underretter en abonnent om, at vedkommendes abonnement er udløbet. Den indeholder tidsskriftets URL-adresse samt adgangsinstruktioner.'),('SUBSCRIPTION_AFTER_EXPIRY','de_DE','Abonnement abgelaufen','{$subscriberName},<br />\n<br />\nIhr Abonnement für {$contextName} ist ausgelaufen.<br />\n<br />\n{$subscriptionType}<br />\nAblaufdatum: {$expiryDate}<br />\n<br />\nFalls Sie Ihr Abonnement erneuern möchten, gehen Sie bitte zur Website der Zeitschrift. Sie können sich mit Ihrem Benutzer/innennamen &quot;{$username}&quot; in das System einloggen.<br />\n<br />\nFalls Sie Fragen haben, können Sie sich gerne an mich wenden.<br />\n<br />\n{$subscriptionContactSignature}','Diese E-Mail informiert eine/n Abonnentin/Abonnenten, dass ihr/sein Abonnement abgelaufen ist. Sie liefert die URL der Zeitschrift und Zugriffsinformationen.'),('SUBSCRIPTION_AFTER_EXPIRY','en_US','Subscription Expired','{$subscriberName}:<br />\n<br />\nYour {$contextName} subscription has expired.<br />\n<br />\n{$subscriptionType}<br />\nExpiry date: {$expiryDate}<br />\n<br />\nTo renew your subscription, please go to the journal website. You are able to log in to the system with your username, &quot;{$username}&quot;.<br />\n<br />\nIf you have any questions, please feel free to contact me.<br />\n<br />\n{$subscriptionContactSignature}','This email notifies a subscriber that their subscription has expired. It provides the journal\'s URL along with instructions for access.'),('SUBSCRIPTION_AFTER_EXPIRY','it_IT','Abbonamento scaduto','Gentile {$subscriberName}:<br />\n<br />\nIl suo abbonamento a  {$contextName} è scaduto.<br />\n<br />\n{$subscriptionType}<br />\nData di scadenza: {$expiryDate}<br />\n<br />\nPer rinnovare l\'abbonamento, si rechi sul nostro sito. Per l\'accesso utilizzi la sua username, &quot;{$username}&quot;.<br />\n<br />\nPer qualsiasi domanda e ulteriore informazione, non esiti a contattarmi.<br />\n<br />\n{$subscriptionContactSignature}','Questa email informa un abbonato che il suo abbonamento a  è scaduto. Fornisce la URL della rivista e le istruzioni per l\'accesso.'),('SUBSCRIPTION_AFTER_EXPIRY','pt_BR','Expiração de assinatura','{$subscriberName}: <br />\n<br />\nSua assinatura do {$contextName} expirou. <br />\n<br />\n{$subscriptionType} <br />\nData de validade: {$expiryDate} <br />\n<br />\nPara renovar sua assinatura, acesse o site da revista. Você pode fazer login no sistema com seu nome de usuário, &quot;{$username}&quot;. <br />\n<br />\nSe você tiver alguma dúvida, por favor não hesite em contactar-me. <br />\n<br />\n{$subscriptionContactSignature}','Esta mensagem avisa o assinante da expiração da assinatura. Informa a URL da revista e instruções de acesso.'),('SUBSCRIPTION_AFTER_EXPIRY','ru_RU','уведомление об окончании срока подписки','Здравствуйте, {$subscriberName}!<br />\n<br />\nСрок Вашей подписки на журнал «{$contextName}» истек.<br />\n<br />\n{$subscriptionType}<br />\nДата окончания подписки: {$expiryDate}<br />\n<br />\nДля продления Вашей подписки, пожалуйста, перейдите на сайт журнала. Вы можете войти на сайт журнала со своим именем пользователя «{$username}».<br />\n<br />\nЕсли у Вас есть какие-либо вопросы, пожалуйста, не стесняйтесь, связывайтесь со мной.<br />\n<br />\n{$subscriptionContactSignature}','Это письмо уведомляет подписчика о том, что срок его подписки закончился. В письме содержится URL журнала и инструкции по доступу.'),('SUBSCRIPTION_AFTER_EXPIRY_LAST','cs_CZ','Předplatné vypršelo – poslední připomínka','{$subscriberName}:<br />\n<br />\nVaše předplatné pro {$contextName} vypršelo.<br />\nVězte prosím, že toto je poslední připomínka, která Vám bude poslána.<br />\n<br />\n{$subscriptionType}<br />\nDatum vypršení: {$expiryDate}<br />\n<br />\nPro obnovení předplatného přejděte prosím na stránky časopisu. Do systému se můžete přihlásit Vaším uživatelským jménem &quot;{$username}&quot;.<br />\n<br />\nPokud máte nějaké otázky, neváhejte mě prosím kontaktovat.<br />\n<br />\n{$subscriptionContactSignature}','Tento email informuje předplatitele, že jeho předplatné vypršelo. Obsahuje URL časopisu a instrukce pro přístup.'),('SUBSCRIPTION_AFTER_EXPIRY_LAST','da_DK','Abonnementet er udløbet – sidste påmindelse','{$subscriberName}:<br />\n<br />\nDit abonnement på {$contextName} er udløbet.<br />\nVær opmærksom på, at dette er den sidste påmindelse, du vil modtage.<br />\n<br />\n{$subscriptionType}<br />\nUdløbsdato: {$expiryDate}<br />\n<br />\nHvis du vil forny abonnementet, skal du gå til tidsskriftets websted. Du kan logge på systemet med dit brugernavn, &quot;{$username}&quot;.<br />\n<br />\nHvis du har spørgsmål, er du velkommen til at kontakte mig.<br />\n<br />\n{$subscriptionContactSignature}','Denne e-mail underretter en abonnent om, at vedkommendes abonnement er udløbet. Den indeholder tidsskriftets URL-adresse samt adgangsinstruktioner.'),('SUBSCRIPTION_AFTER_EXPIRY_LAST','de_DE','Abonnement abgelaufen – letzte Benachrichtigung','{$subscriberName},<br />\n<br />\nIhr Abonnement für {$contextName} ist abgelaufen.<br />\nBitte beachten Sie, dass dies die letzte Benachrichtung ist, die wir Ihnen senden.<br />\n<br />\n{$subscriptionType}<br />\nAblaufdatum: {$expiryDate}<br />\n<br />\nFalls Sie Ihr Abonnement erneuern möchten, gehen Sie bitte zur Website der Zeitschrift. Sie können sich mit Ihrem Benutzer/innennamen &quot;{$username}&quot; in das System einloggen.<br />\n<br />\nFalls Sie Fragen haben, können Sie sich gerne an mich wenden.<br />\n<br />\n{$subscriptionContactSignature}','Diese E-Mail informiert eine/n Abonnentin/Abonnenten, dass ihr/sein Abonnement abgelaufen ist. Sie liefert die URL der Zeitschrift und Zugriffsinformationen.'),('SUBSCRIPTION_AFTER_EXPIRY_LAST','en_US','Subscription Expired - Final Reminder','{$subscriberName}:<br />\n<br />\nYour {$contextName} subscription has expired.<br />\nPlease note that this is the final reminder that will be emailed to you.<br />\n<br />\n{$subscriptionType}<br />\nExpiry date: {$expiryDate}<br />\n<br />\nTo renew your subscription, please go to the journal website. You are able to log in to the system with your username, &quot;{$username}&quot;.<br />\n<br />\nIf you have any questions, please feel free to contact me.<br />\n<br />\n{$subscriptionContactSignature}','This email notifies a subscriber that their subscription has expired. It provides the journal\'s URL along with instructions for access.'),('SUBSCRIPTION_AFTER_EXPIRY_LAST','it_IT','Abbonamento scaduto - Ultimo avviso','Gentilissimo {$subscriberName}:<br />\n<br />\nIl suo abbonamento a  {$contextName} è scaduto.<br />\nQuesto è l\'ultimo avviso che le inviamo.<br />\n<br />\n{$subscriptionType}<br />\nData di scadenza: {$expiryDate}<br />\n<br />\nPer rinnovare l\'abbonamento visiti il sito della testata. Per l\'accesso utilizzi il suo username &quot;{$username}&quot;.<br />\n<br />\n<br />\nPer qualsiasi domanda e ulteriore informazione, non esiti a contattarci.<br />\n<br />\n{$subscriptionContactSignature}','Questa email informa un abbonato che il suo abbonamento a  è scaduto. Fornisce la URL della rivista e le istruzioni per l\'accesso.'),('SUBSCRIPTION_AFTER_EXPIRY_LAST','pt_BR','Expiração de assinatura - Lembrete final','{$subscriberName}: <br />\n<br />\nSua assinatura do {$contextName} expirou. <br />\nObserve que este é o lembrete final que lhe será enviado por e-mail. <br />\n<br />\n{$subscriptionType} <br />\nData de validade: {$expiryDate} <br />\n<br />\nPara renovar sua assinatura, acesse o site da revista. Você pode fazer login no sistema com seu nome de usuário, &quot;{$username}&quot;. <br />\n<br />\nSe você tiver alguma dúvida, não hesite em contactar-me. <br />\n<br />\n{$subscriptionContactSignature}','Esta mensagem é o último aviso ao assinante da expiração da assinatura. Informa a URL da revista e instruções de acesso.'),('SUBSCRIPTION_AFTER_EXPIRY_LAST','ru_RU','Срок подписки истек — последнее напоминание','Здравствуйте, {$subscriberName}!<br />\n<br />\nСрок Вашей подписки на журнал «{$contextName}» истек.<br />\nПожалуйста, обратите внимание, что это — последнее напоминание, которое будет отправлено Вам электронной почтой.<br />\n<br />\n{$subscriptionType}<br />\nДата окончания подписки: {$expiryDate}<br />\n<br />\nДля продления Вашей подписки, пожалуйста, перейдите на сайт журнала. Вы можете войти на сайт журнала со своим именем пользователя «{$username}».<br />\n<br />\nЕсли у Вас есть какие-либо вопросы, пожалуйста, не стесняйтесь, связывайтесь со мной.<br />\n<br />\n{$subscriptionContactSignature}','Это письмо уведомляет подписчика о том, что срок его подписки закончился. В письме содержится URL журнала и инструкции по доступу.'),('SUBSCRIPTION_BEFORE_EXPIRY','cs_CZ','Oznámení o vypršení předplatného','{$subscriberName}:<br />\n<br />\nVaše předplatné pro {$contextName} brzy vyprší.<br />\n<br />\n{$subscriptionType}<br />\nDatum vypršení: {$expiryDate}<br />\n<br />\nPro zajištění kontinuity přístupu k tomuto časopisu přejděte prosím na stránky časopisu a obnovte Vaše předplatné. Můžete se do systému přihlásit Vaším uživatelským jménem &quot;{$username}&quot;.<br />\n<br />\nPokud máte nějaké otázky, neváhejte mě prosím kontaktovat.<br />\n<br />\n{$subscriptionContactSignature}','Tento email informuje předplatitele, že jeho předplatné brzy vyprší. Obsahuje URL časopisu a instrukce pro přístup.'),('SUBSCRIPTION_BEFORE_EXPIRY','da_DK','Meddelelse om udløb af abonnement','{$subscriberName}:<br />\n<br />\nDit abonnement på {$contextName} udløber snart.<br />\n<br />\n{$subscriptionType}<br />\nUdløbsdato: {$expiryDate}<br />\n<br />\nHvis du vil sikre, at du fortsat har adgang til dette tidsskrift, skal du gå til tidsskriftets websted og forny dit abonnement. Du kan logge på systemet med dit brugernavn, &quot;{$username}&quot;.<br />\n<br />\nHvis du har spørgsmål, er du velkommen til at kontakte mig.<br />\n<br />\n{$subscriptionContactSignature}','Denne e-mail underretter en abonnent om, at vedkommendes abonnement snart udløber. Den indeholder tidsskriftets URL-adresse samt adgangsinstruktioner.'),('SUBSCRIPTION_BEFORE_EXPIRY','de_DE','Benachrichtigung über ablaufendes Abonnement','{$subscriberName},<br />\n<br />\nIhr Abonnement für {$contextName} läuft demnächst aus.<br />\n<br />\n{$subscriptionType}<br />\nAblaufdatum: {$expiryDate}<br />\n<br />\nUm den künftigen Zugang zu dieser Zeitschrift zu gewährleisten, gehen Sie bitte zur Website der Zeitschrift und erneuern Sie Ihr Abonnement. Sie können sich mit Ihrem Benutzer/innennamen &quot;{$username}&quot; in das System einloggen.<br />\n<br />\nFalls Sie Fragen haben, können Sie sich gerne an mich wenden.<br />\n<br />\n{$subscriptionContactSignature}','Diese E-Mail informiert eine/n Abonnentin/Abonnenten, dass ihr/sein Abonnement demnächst abläuft. Sie liefert die URL der Zeitschrift und Zugriffsinformationen.'),('SUBSCRIPTION_BEFORE_EXPIRY','en_US','Notice of Subscription Expiry','{$subscriberName}:<br />\n<br />\nYour {$contextName} subscription is about to expire.<br />\n<br />\n{$subscriptionType}<br />\nExpiry date: {$expiryDate}<br />\n<br />\nTo ensure the continuity of your access to this journal, please go to the journal website and renew your subscription. You are able to log in to the system with your username, &quot;{$username}&quot;.<br />\n<br />\nIf you have any questions, please feel free to contact me.<br />\n<br />\n{$subscriptionContactSignature}','This email notifies a subscriber that their subscription will soon expire. It provides the journal\'s URL along with instructions for access.'),('SUBSCRIPTION_BEFORE_EXPIRY','it_IT','Avviso di abbonamento in scadenza','Gentile {$subscriberName}:<br />\n<br />\nIl suo abbonamento a {$contextName} sta per scadere.<br />\n<br />\n{$subscriptionType}<br />\nData di scadenza: {$expiryDate}<br />\n<br />\nPer continuare ad accedere a questa rivista, si rechi sul sito e rinnovi l\'abbonamento. Per l\'accesso utilizzi la sua username, &quot;{$username}&quot;.<br />\n<br />\nPer qualsiasi domanda e ulteriore informazione, non esiti a contattarmi.<br />\n<br />\n{$subscriptionContactSignature}','Questa email informa un abbonato della prossima scadenza del suo abbonamento. Fornisce la URL della rivista e le istruzioni per l\'accesso.'),('SUBSCRIPTION_BEFORE_EXPIRY','pt_BR','Aviso de expiração de assinatura','{$subscriberName}: <br />\n<br />\nSua assinatura do {$contextName} está prestes a expirar. <br />\n<br />\n{$subscriptionType} <br />\nData de validade: {$expiryDate} <br />\n<br />\nPara garantir a continuidade do seu acesso a esta revista, acesse o site da revista e renove sua assinatura. Você pode fazer login no sistema com seu nome de usuário, &quot;{$username}&quot;. <br />\n<br />\nSe você tiver alguma dúvida, não hesite em contactar-me. <br />\n<br />\n{$subscriptionContactSignature}','Esta mensagem avisa o assinante da proximidade do término da assinatura. Informa a URL da revista e instruções de acesso.'),('SUBSCRIPTION_BEFORE_EXPIRY','ru_RU','Уведомление об окончании срока подписки','Здравствуйте, {$subscriberName}!<br />\n<br />\nВаша подписка на журнал «{$contextName}» истекает в ближайшее время.<br />\n<br />\n{$subscriptionType}<br />\nДата окончания подписки: {$expiryDate}<br />\n<br />\nЧтобы Ваш доступ к этому журналу не прерывался, пожалуйста, перейдите на сайт журнала и продлите Вашу подписку. Вы можете войти на сайт журнала со своим именем пользователя «{$username}».<br />\n<br />\nЕсли у Вас есть какие-либо вопросы, пожалуйста, не стесняйтесь, связывайтесь со мной.<br />\n<br />\n{$subscriptionContactSignature}','Это письмо уведомляет подписчика о том, что его подписка вскоре закончится. В письме содержится URL журнала и инструкции по доступу.'),('SUBSCRIPTION_NOTIFY','cs_CZ','Oznámení o předplatném','{$subscriberName}:<br />\n<br />\nNyní jste byl zaregistrován jako předplatitel v našem online systému pro správu časopisu {$contextName} s následujícím předplatným:<br />\n<br />\n{$subscriptionType}<br />\n<br />\nPro přístup k obsahu, který je dostupný pouze předplatitelům, se jednoduše přihlašte Vaším uživatelským jménem &quot;{$username}&quot;.<br />\n<br />\nJakmile se přihlásíte do systému, můžete kdykoliv upravit detaily svého profilu a heslo.<br />\n<br />\nVězte prosím, že pokud máte institucionální předplatné, nemusí se uživatelé z vaší instituce přihlašovat, neboť jejich přístup k předplacenému obsahu bude automaticky ověřen systémem.<br />\n<br />\nPokud máte nějaké dotazy, neváhejte mě kontaktovat<br />\n<br />\n{$subscriptionContactSignature}','Tento email informuje registrovaného čtenáře, že pro něj manažer vytvořil předplatné. Obsahuje URL časopisu a přístupové instrukce.'),('SUBSCRIPTION_NOTIFY','da_DK','Abonnementsmeddelelse','{$subscriberName}:<br />\n<br />\nDu er nu registreret i vores onlinetidsskriftsstyringssystem som abonnent på {$contextName} med følgende abonnement:<br />\n<br />\n{$subscriptionType}<br />\n<br />\nLog på systemet med dit brugernavn, &quot;{$username}&quot;, for at få adgang til indhold, der kun er tilgængeligt for abonnenter.<br />\n<br />\nNår du har logget på systemet, kan du på et hvilket som helst tidspunkt ændre dine profiloplysninger og din adgangskode.<br />\n<br />\nVær opmærksom på, at hvis du har et institutionsabonnement, behøver brugerne i institutionen ikke logge på, da forespørgsler på abonnementsindhold automatisk godkendes af systemet.<br />\n<br />\nHvis du har spørgsmål, er du velkommen til at kontakte mig.<br />\n<br />\n{$subscriptionContactSignature}','Denne e-mail underretter en registreret læser om, at abonnementschefen har oprettet et abonnement til dem. Den indeholder tidsskriftets URL-adresse samt adgangsinstruktioner.'),('SUBSCRIPTION_NOTIFY','de_DE','Abonnementbestätigung','{$subscriberName},<br />\n<br />\nSie wurden als Abonnent/in in unserem Zeitschriftenverwaltungssystem für {$contextName} registriert, und zwar in der folgenden Kategorie:<br />\n<br />\n{$subscriptionType}<br />\n<br />\nUm auf Inhalte, die nur Abonnent/innen zur Verfügung stehen, zuzugreifen, loggen Sie sich einfach mit Ihrem Benutzer/innennamen &quot;{$username}&quot; in das System ein.<br />\n<br />\nEinmal eingeloggt, können Sie jederzeit die Einzelheiten Ihres Benutzer/innenprofils und Ihr Passwort ändern.<br />\n<br />\nBeachten Sie bitte, dass Sie sich nicht einloggen müssen, wenn Sie ein institutionelles Abonnement haben. Das System gestattet Ihnen dann automatisch den Zugang zu den Inhalten für Abonnent/innen.<br />\n<br />\nFalls Sie Fragen haben, können Sie sich gerne an mich wenden.<br />\n<br />\n{$subscriptionContactSignature}','Diese E-Mail benachrichtigt eine/n registrierte/n Leser/in, dass die/der Abonnementverwalter/in für sie/ihn ein Abonnement angelegt hat. Sie liefert die URL der Zeitschrift und Zugriffsinformationen.'),('SUBSCRIPTION_NOTIFY','en_US','Subscription Notification','{$subscriberName}:<br />\n<br />\nYou have now been registered as a subscriber in our online journal management system for {$contextName}, with the following subscription:<br />\n<br />\n{$subscriptionType}<br />\n<br />\nTo access content that is available only to subscribers, simply log in to the system with your username, &quot;{$username}&quot;.<br />\n<br />\nOnce you have logged in to the system you can change your profile details and password at any point.<br />\n<br />\nPlease note that if you have an institutional subscription, there is no need for users at your institution to log in, since requests for subscription content will be automatically authenticated by the system.<br />\n<br />\nIf you have any questions, please feel free to contact me.<br />\n<br />\n{$subscriptionContactSignature}','This email notifies a registered reader that the Manager has created a subscription for them. It provides the journal\'s URL along with instructions for access.'),('SUBSCRIPTION_NOTIFY','it_IT','Notifica di abbonamento','Gentile{$subscriberName}:<br />\n<br />\nil tuo abbonamento a {$contextName} è stato attivato con le seguenti caratteristiche:<br />\n<br />\n{$subscriptionType}<br />\n<br />\nPer accedere al contenuto riservato agli abbonati, effettua semplicemente il log in al sistema con il tuo username, &quot;{$username}&quot;.<br />\n<br />\nUna volta effettuato il log in potrai modificare in ogni momento i dettagli del profilo e la password.<br />\n<br />\nGli utenti istituzionali vengono riconosciuti automaticamente dal sistema.<br />\n<br />\nPer qualsiasi domanda non esitare a contattarmi.<br />\n<br />\n{$subscriptionContactSignature}','Questa email notifica ai lettori registrati che l\'amministratore ha attivato un abbonamento per loro. Questa fornisce la URL del journal insieme con le istruzioni per l\'accesso.'),('SUBSCRIPTION_NOTIFY','pt_BR','Confirmação de assinatura','{$subscriberName}: <br />\n<br />\nAgora você foi registrado como assinante em nossa {$contextName}, com a seguinte assinatura: <br />\n<br />\n{$subscriptionType} <br />\n<br />\nPara acessar o conteúdo disponível apenas para assinantes, basta fazer login no sistema com seu nome de usuário,  &quot;{$username} &quot;. <br />\n<br />\nDepois de fazer login no sistema, você poderá alterar os detalhes e a senha do seu perfil a qualquer momento. <br />\n<br />\nObserve que se você possui uma assinatura institucional, não é necessário que os usuários da sua instituição efetuem login, pois as solicitações de conteúdo da assinatura serão automaticamente autenticadas pelo sistema. <br />\n<br />\nSe você tiver alguma dúvida, por favor não hesite em contactar-me. <br />\n<br />\n{$subscriptionContactSignature}','Mensagem notifica o leitor cadastrado que o Editor criou sua Assinatura. Proporciona todas as informações necessárias para acesso ao conteúdo.'),('SUBSCRIPTION_NOTIFY','ru_RU','Уведомление о подписке','Здравствуйте, {$subscriberName}!<br />\n<br />\nВы теперь зарегистрированы в нашей онлайн-системе управления журналом как подписчик журнала «{$contextName}» со следующей подпиской:<br />\n<br />\n{$subscriptionType}<br />\n<br />\nЧтобы получить доступ к контенту, который доступен только для подписчиков, просто войдите на сайт журнала со своим именем пользователя «{$username}».<br />\n<br />\nКак только Вы войдете в систему, Вы можете в любой момент изменить Ваш профиль пользователя и пароль.<br />\n<br />\nПожалуйста, обратите внимание, что если у Вас есть подписка на всю организацию, то пользователям Вашей организации не нужно будет входить в систему, так как запросы на контент, предоставляемый по подписке, автоматически будут аутентифицированы системой.<br />\n<br />\nЕсли у Вас есть какие-либо вопросы, пожалуйста, не стесняйтесь, связывайтесь со мной.<br />\n<br />\n{$subscriptionContactSignature}','Это письмо уведомляет зарегистрированного читателя, что менеджер создал для него подписку. В письме содержится URL журнала и инструкции по доступу.'),('SUBSCRIPTION_PURCHASE_INDL','cs_CZ','Zakoupení předplatného: Individuální','Bylo online zakoupeno individuální předplatné pro {$contextName} s následujícími detaily.<br />\n<br />\nTyp předplatného:<br />\n{$subscriptionType}<br />\n<br />\nUživatel:<br />\n{$userDetails}<br />\n<br />\nInformace o členství (pokud byla uvedena):<br />\n{$membership}<br />\n<br />\nPro zobrazení nebo editaci tohoto předplatného použijte prosím následující URL odkaz.<br />\n<br />\nURL předplatného: {$subscriptionUrl}<br/>\n','Tento e-mail upozorňuje Správce předplatného, že individuální předplatné bylo zakoupeno online. Poskytuje souhrnné informace o předplatném a rychlý přístup k zakoupenému předplatnému.'),('SUBSCRIPTION_PURCHASE_INDL','da_DK','Køb af abonnement: Individuelt','Der er foretaget et online køb af et individuelt abonnement på {$contextName} med følgende oplysninger.<br />\n<br />\nAbonnementstype:<br />\n{$subscriptionType}<br />\n<br />\nBruger:<br />\n{$userDetails}<br />\n<br />\nMedlemsoplysninger (hvis angivet):<br />\n{$membership}<br />\n<br />\nFølg dette link, hvis du vil se eller redigere abonnementet.<br />\n<br />\nLink til abonnement: {$subscriptionUrl}<br />\n','Denne e-mail giver abonnementschefen besked om, at der er blevet købt et individuelt abonnement online. Meddelelsen indeholder en opsummering af abonnementsoplysningerne og et quick access-link til det købte abonnement.'),('SUBSCRIPTION_PURCHASE_INDL','de_DE','Abschluss eines Abonnements: Individuell','Ein individuelles Abonnement ist online für {$contextName} mit den folgenden Details abgeschlossen worden.<br />\n<br />\nArt des Abonnements:<br />\n{$subscriptionType}<br />\n<br />\nBenutzer/in:<br />\n{$userDetails}<br />\n<br />\nInformationen zur Mitgliedschaft (sofern angegeben):<br />\n{$membership}<br />\n<br />\nUm sich dieses Abonnement anzusehen oder es zu ändern, benutzen Sie bitte die folgende URL.<br />\n<br />\nAbonnement-URL: {$subscriptionUrl}<br />\n','Diese E-Mail benachrichtigt die/den Abonnementverwalter/in, dass ein individuelles Abonnement online erworben worden ist. Sie liefert Informationen über das Abonnement und einen Link zum schnellen Zugriff auf das abgeschlossene Abonnement.'),('SUBSCRIPTION_PURCHASE_INDL','en_US','Subscription Purchase: Individual','An individual subscription has been purchased online for {$contextName} with the following details.<br />\n<br />\nSubscription Type:<br />\n{$subscriptionType}<br />\n<br />\nUser:<br />\n{$userDetails}<br />\n<br />\nMembership Information (if provided):<br />\n{$membership}<br />\n<br />\nTo view or edit this subscription, please use the following URL.<br />\n<br />\nSubscription URL: {$subscriptionUrl}<br />\n','This email notifies the Subscription Manager that an individual subscription has been purchased online. It provides summary information about the subscription and a quick access link to the purchased subscription.'),('SUBSCRIPTION_PURCHASE_INDL','it_IT','Acquisto di un abbonamento individuale','E\' stato acquistato online un abbonamento individuale a {$contextName} con i seguenti dettagli:<br />\n<br />\nTipo di abbonamento:<br />\n{$subscriptionType}<br />\n<br />\nUtente:<br />\n{$userDetails}<br />\n<br />\nMembership (se indicato):<br />\n{$membership}<br />\n<br />\nPer vedere o modificare i dettagli dell\'abbonamento, vai alla pagina: {$subscriptionUrl}<br />\n','Questo messaggio informa il Subscription manager che è stato acquistato online un nuovo abbonamento individuale. Informa sulla procedura e fornisce un link all\'abbonamento acquistato.'),('SUBSCRIPTION_PURCHASE_INDL','pt_BR','Aquisição de Assinatura: Individual','Uma assinatura individual foi comprada on-line para {$contextName} com os seguintes detalhes. <br />\n<br />\nTipo de Assinatura: <br />\n{$subscriptionType} <br />\n<br />\nUsuário: <br />\n{$userDetails} <br />\n<br />\nInformações Assinatura (se informado): <br />\n{$membership} <br />\n<br />\nPara visualizar ou editar esta assinatura, use a seguinte URL. <br />\n<br />\nURL da Assinatura: {$subscriptionUrl} <br />\n','Esta mensagem notifica o Gerente de Assinaturas que uma assinatura individual foi adquirida online. Oferece informações sobre a assinatura e um link para acesso rápido à mesma.'),('SUBSCRIPTION_PURCHASE_INDL','ru_RU','Покупка подписки: индивидуальная','На сайте была приобретена индивидуальная подписка на журнал «{$contextName}» со следующими деталями.<br />\n<br />\nТип подписки:<br />\n{$subscriptionType}<br />\n<br />\nПользователь:<br />\n{$userDetails}<br />\n<br />\nИнформация о членстве (если указана):<br />\n{$membership}<br />\n<br />\nДля просмотра или редактирования этой подписки, пожалуйста, используйте следующий URL.<br />\n<br />\nURL подписки: {$subscriptionUrl}<br />\n','Это письмо уведомляет менеджера по подписке, что через сайт была куплена индивидуальная подписка. В письме содержится общая информация о подписке и ссылка быстрого доступа к приобретенной подписке.'),('SUBSCRIPTION_PURCHASE_INSTL','cs_CZ','Zakoupení předplatného: Institucionální','Bylo online zakoupeno institucionální předplatné pro {$contextName} s následujícími detaily. Pro aktivaci tohoto předplatného použijte prosím uvedený URL odkaz a nastavte stav předplatného na \'Aktivní\'..<br />\n<br />\nTyp předplatného:<br />\n{$subscriptionType}<br />\n<br />\nInstituce:<br />\n{$institutionName}<br />\n{$institutionMailingAddress}<br />\n<br />\nDoména (pokud byla uvedena):<br />\n{$domain}<br />\n<br />\nIP rozsah (pokud byl uveden):<br />\n{$ipRanges}<br />\n<br />\nKontaktní osoba:<br />\n{$userDetails}<br />\n<br />\nInformace o členství (pokud byly uvedeny):<br />\n{$membership}<br />\n<br />\nPro zobrazení nebo editaci tohoto předplatného použijte prosím následující URL.<br />\n<br />\nURL předplatného: {$subscriptionUrl}<br />\n','Tento e-mail upozorňuje Správce předplatného, že bylo zakoupeno institucionální předplatné online. Poskytuje souhrnné informace o předplatném a rychlý přístup k zakoupenému předplatnému.'),('SUBSCRIPTION_PURCHASE_INSTL','da_DK','Køb af abonnement: Institution','Der er foretaget et online køb af et institutionsabonnement på {$contextName} med følgende oplysninger. For at aktivere dette abonnement skal du anvende det angivne link til abonnementet og sætte abonnementsstatus til &quot;Aktiv&quot;.<br />\n<br />\nAbonnementstype:<br />\n{$subscriptionType}<br />\n<br />\nInstitution:<br />\n{$institutionName}<br />\n{$institutionMailingAddress}<br />\n<br />\nDomæne (hvis angivet):<br />\n{$domain}<br />\n<br />\nIP-områder (hvis angivet):<br />\n{$ipRanges}<br />\n<br />\nKontaktperson:<br />\n{$userDetails}<br />\n<br />\nMedlemsoplysninger (hvis angivet):<br />\n{$membership}<br />\n<br />\nFølg dette link, hvis du vil se eller redigere abonnementet.<br />\n<br />\nLink til abonnement: {$subscriptionUrl}<br />\n','Denne e-mail informerer abonnementschefen om, at et institutionelt abonnement er blevet købt online. Det giver resumeoplysninger om abonnementet og et hurtigt adgangslink til det købte abonnement.'),('SUBSCRIPTION_PURCHASE_INSTL','de_DE','Abschluss eines Abonnements: Institutionell','Ein institutionelles Abonnement ist online für {$contextName} mit den folgenden Details abgeschlossen worden. Um dieses Abonnement zu aktivieren, benutzen Sie bitte den angegebenen Abonnement-URL und setzen Sie den Abonnementstatus auf \'Aktiv\'.<br />\n<br />\nArt des Abonnements:<br />\n{$subscriptionType}<br />\n<br />\nInstitution:<br />\n{$institutionName}<br />\n{$institutionMailingAddress}<br />\n<br />\nDomain (sofern angegeben):<br />\n{$domain}<br />\n<br />\nIP-Bereich (sofern angeben):<br />\n{$ipRanges}<br />\n<br />\nKontaktperson:<br />\n{$userDetails}<br />\n<br />\nInformationen zur Mitgliedschaft (sofern angegeben):<br />\n{$membership}<br />\n<br />\nUm sich dieses Abonnement anzusehen oder es zu ändern, benutzen Sie bitte die folgende URL.<br />\n<br />\nAbonnement-URL: {$subscriptionUrl}<br />\n','Diese E-Mail benachrichtigt die/den Abonnementverwalter/in, dass ein institutionelles Abonnement online erworben worden ist. Sie liefert Informationen über das Abonnement und einen Link zum schnellen Zugriff auf das abgeschlossene Abonnement.'),('SUBSCRIPTION_PURCHASE_INSTL','en_US','Subscription Purchase: Institutional','An institutional subscription has been purchased online for {$contextName} with the following details. To activate this subscription, please use the provided Subscription URL and set the subscription status to \'Active\'.<br />\n<br />\nSubscription Type:<br />\n{$subscriptionType}<br />\n<br />\nInstitution:<br />\n{$institutionName}<br />\n{$institutionMailingAddress}<br />\n<br />\nDomain (if provided):<br />\n{$domain}<br />\n<br />\nIP Ranges (if provided):<br />\n{$ipRanges}<br />\n<br />\nContact Person:<br />\n{$userDetails}<br />\n<br />\nMembership Information (if provided):<br />\n{$membership}<br />\n<br />\nTo view or edit this subscription, please use the following URL.<br />\n<br />\nSubscription URL: {$subscriptionUrl}<br />\n','This email notifies the Subscription Manager that an institutional subscription has been purchased online. It provides summary information about the subscription and a quick access link to the purchased subscription.'),('SUBSCRIPTION_PURCHASE_INSTL','it_IT','Acquisto di un abbonamento istituzionale','E\' stato acquistato un abbonamento istituzionale a {$contextName} con i dettagli indicati sotto. Per attivare l\'abbonamento, utilizzare il link fornito sotto e selezionare lo status \'Attivo\'per tale abbonamento.<br />\n<br />\nTipo di abbonamento:<br />\n{$subscriptionType}<br />\n<br />\nEnte:<br />\n{$institutionName}<br />\n{$institutionMailingAddress}<br />\n<br />\nDominio (se indicato):<br />\n{$domain}<br />\n<br />\nIP Ranges (se indicato):<br />\n{$ipRanges}<br />\n<br />\nContattare:<br />\n{$userDetails}<br />\n<br />\nMembership (se indicato):<br />\n{$membership}<br />\n<br />\nPer vedere o modificare i dettagli, andare alla pagina: {$subscriptionUrl}<br />\n','Questo messaggio iforma il Subscription manager che è stato acquistato online un nuovo abbonamento istituzionale. Informa sulla procedura e fornisce un link all\'abbonamento acquistato.'),('SUBSCRIPTION_PURCHASE_INSTL','pt_BR','Aquisição de Assinatura: Institucional','Uma assinatura institucional foi comprada on-line para {$contextName} com os seguintes detalhes. Para ativar esta assinatura, use a URL fornecida e defina o status da assinatura como \'Ativo\'. <br />\n<br />\nTipo de Assinatura: <br />\n{$subscriptionType} <br />\n<br />\nInstituição: <br />\n{$institutionName} <br />\n{$institutionMailingAddress} <br />\n<br />\nDomínio (se fornecido): <br />\n{$domain} <br />\n<br />\nIntervalos de IP (se houver): <br />\n{$ipRanges} <br />\n<br />\nPessoa de Contato: <br />\n{$userDetails} <br />\n<br />\nInformações sobre a Assinatura (se houver): <br />\n{$membership} <br />\n<br />\nPara visualizar ou editar esta assinatura, use a seguinte URL. <br />\n<br />\nURL da Assinatura: {$subscriptionUrl} <br />\n','Esta mensagem notifica o Editor Gerente que uma assinatura institucional foi adquirida online. Oferece informações sobre a assinatura e um link para acesso rápido à mesma.'),('SUBSCRIPTION_PURCHASE_INSTL','ru_RU','Покупка подписки: на организацию','На сайте была приобретена для организации подписка на журнал «{$contextName}» со следующими деталями. Для активации подписки, пожалуйста, используйте приведенный URL подписки и установите статус подписки в «Активна».<br />\n<br />\nТип подписки:<br />\n{$subscriptionType}<br />\n<br />\nОрганизация:<br />\n{$institutionName}<br />\n{$institutionMailingAddress}<br />\n<br />\nДоменное имя (если указано):<br />\n{$domain}<br />\n<br />\nIP-диапазоны (если указаны):<br />\n{$ipRanges}<br />\n<br />\nКонтактное лицо:<br />\n{$userDetails}<br />\n<br />\nИнформация о членстве (если указана):<br />\n{$membership}<br />\n<br />\nДля просмотра или редактирования этой подписки, пожалуйста, используйте следующий URL.<br />\n<br />\nURL подписки: {$subscriptionUrl}<br />\n','Это письмо уведомляет менеджера по подписке, что через сайт была куплена подписка на организацию. В письме содержится общая информация о подписке и ссылка быстрого доступа к приобретенной подписке.'),('SUBSCRIPTION_RENEW_INDL','cs_CZ','Obnovení předplatného: Individuální','Bylo online obnoveno individuální předplatné pro {$contextName} s následujícími detaily.<br />\n<br />\nTyp předplatného:<br />\n{$subscriptionType}<br />\n<br />\nUživatel:<br />\n{$userDetails}<br />\n<br />\nInformace o členství (pokud byly uvedeny):<br />\n{$membership}<br />\n<br />\nPro zobrazení nebo editaci tohoto předplatného použijte prosím následující URL.<br />\n<br />\nURL předplatného: {$subscriptionUrl}<br />\n','Tento e-mail upozorňuje správce předplatného, že jednotlivé předplatné bylo obnoveno online. Poskytuje souhrnné informace o předplatném a rychlý přístup k obnovenému předplatnému.'),('SUBSCRIPTION_RENEW_INDL','da_DK','Fornyelse af abonnement: Individuelt','Der er foretaget en online fornyelse af et individuelt abonnement på {$contextName}med følgende oplysninger.<br />\n<br />\nAbonnementstype:<br />\n{$subscriptionType}<br />\n<br />\nBruger:<br />\n{$userDetails}<br />\n<br />\nMedlemsoplysninger (hvis angivet):<br />\n{$membership}<br />\n<br />\nFølg dette link, hvis du vil se eller redigere abonnementet.<br />\n<br />\nLink til abonnement: {$subscriptionUrl}<br />\n','Denne e-mail giver abonnementschefen besked om, at et individuelt abonnement er blevet fornyet online. Meddelelsen indeholder en opsummering af abonnementsoplysningerne og et quick access-link til det fornyede abonnement.'),('SUBSCRIPTION_RENEW_INDL','de_DE','Erneuerung eines Abonnements: Individuell','Ein individuelles Abonnement ist online für {$contextName} mit den folgenden Details erneuert worden.<br />\n<br />\nArt des Abonnements:<br />\n{$subscriptionType}<br />\n<br />\nBenutzer/in:<br />\n{$userDetails}<br />\n<br />\nInformationen zur Mitgliedschaft (sofern angegeben):<br />\n{$membership}<br />\n<br />\nUm sich dieses Abonnement anzusehen oder es zu ändern, benutzen Sie bitte die folgende URL.<br />\n<br />\nAbonnement-URL: {$subscriptionUrl}<br />\n','Diese E-Mail benachrichtigt die/den Abonnementverwalter/in, dass ein individuelles Abonement online erneuert worden ist. Sie liefert Informationen über das Abonnement und einen Link zum schnellen Zugriff auf das erneuerte Abonnement.'),('SUBSCRIPTION_RENEW_INDL','en_US','Subscription Renewal: Individual','An individual subscription has been renewed online for {$contextName} with the following details.<br />\n<br />\nSubscription Type:<br />\n{$subscriptionType}<br />\n<br />\nUser:<br />\n{$userDetails}<br />\n<br />\nMembership Information (if provided):<br />\n{$membership}<br />\n<br />\nTo view or edit this subscription, please use the following URL.<br />\n<br />\nSubscription URL: {$subscriptionUrl}<br />\n','This email notifies the Subscription Manager that an individual subscription has been renewed online. It provides summary information about the subscription and a quick access link to the renewed subscription.'),('SUBSCRIPTION_RENEW_INDL','it_IT','Rinnovo dell\'abbonamento individuale','E\' stato rinnovato online un abbonamento individuale a {$contextName} con i seguenti dettagli.<br />\n<br />\nTipo di abbonamento:<br />\n{$subscriptionType}<br />\n<br />\nUtente:<br />\n{$userDetails}<br />\n<br />\nMembership (se indicato):<br />\n{$membership}<br />\n<br />\nPer vedere o modificare i dettagli dell\'abbonamento, vai alla pagina: {$subscriptionUrl}<br />\n','Notifica del rinnovo di un abbonamento individuale.'),('SUBSCRIPTION_RENEW_INDL','pt_BR','Renovação de Assinatura Individual','Uma assinatura individual foi renovada online para {$contextName} com os seguintes detalhes. <br />\n<br />\nTipo de Assinatura: <br />\n{$subscriptionType} <br />\n<br />\nUsuário: <br />\n{$userDetails} <br />\n<br />\nInformações sobre a Assinatura (se houver): <br />\n{$membership} <br />\n<br />\nPara visualizar ou editar esta assinatura, use a seguinte URL. <br />\n<br />\nURL de inscrição: {$subscriptionUrl} <br />\n','Esta mensagem notifica o Editor Gerente que uma assinatura individual foi renovada online. Oferece informações sobre a assinatura e um link para acesso rápido à mesma.'),('SUBSCRIPTION_RENEW_INDL','ru_RU','Продление подписки: индивидуальная','На сайте была продлена индивидуальная подписка на журнал «{$contextName}» со следующими деталями.<br />\n<br />\nТип подписки:<br />\n{$subscriptionType}<br />\n<br />\nПользователь:<br />\n{$userDetails}<br />\n<br />\nИнформация о членстве (если указана):<br />\n{$membership}<br />\n<br />\nДля просмотра или редактирования этой подписки, пожалуйста, используйте следующий URL.<br />\n<br />\nURL подписки: {$subscriptionUrl}<br />\n','Это письмо уведомляет менеджера по подписке, что через сайт была продлена индивидуальная подписка. В письме содержится общая информация о подписке и ссылка быстрого доступа к продленной подписке.'),('SUBSCRIPTION_RENEW_INSTL','cs_CZ','Obnovení předplatného: Institucionální','Bylo online obnoveno institucionální předplatné pro {$contextName} s následujícími detaily.<br />\n<br />\nTyp předplatného:<br />\n{$subscriptionType}<br />\n<br />\nInstituce:<br />\n{$institutionName}<br />\n{$institutionMailingAddress}<br />\n<br />\nDoména (pokud byla uvedena):<br />\n{$domain}<br />\n<br />\nRozsah IP adres (pokud byl uveden):<br />\n{$ipRanges}<br />\n<br />\nKontaktní osoba:<br />\n{$userDetails}<br />\n<br />\nInformace o členství (pokud byla uvedena):<br />\n{$membership}<br />\n<br />\nPro zobrazení nebo editaci tohoto předplatného použijte prosím následující URL.<br />\n<br />\nURL předplatného: {$subscriptionUrl}<br />\n','Tento e-mail informuje správce předplatného o obnovení institucionálního předplatného online. Poskytuje souhrnné informace o předplatném a rychlý přístup k obnovenému předplatnému.'),('SUBSCRIPTION_RENEW_INSTL','da_DK','Fornyelse af abonnement: Institution','Der er foretaget en online fornyelse af et institutionsabonnement på {$contextName} med følgende oplysninger.<br />\n<br />\nAbonnementstype:<br />\n{$subscriptionType}<br />\n<br />\nInstitution:<br />\n{$institutionName}<br />\n{$institutionMailingAddress}<br />\n<br />\nDomæne (hvis angivet):<br />\n{$domain}<br />\n<br />\nIP-områder (hvis angivet):<br />\n{$ipRanges}<br />\n<br />\nKontaktperson:<br />\n{$userDetails}<br />\n<br />\nMedlemsoplysninger (hvis angivet):<br />\n{$membership}<br />\n<br />\nFølg dette link, hvis du vil se eller redigere abonnementet.<br />\n<br />\nLink til abonnement: {$subscriptionUrl}<br />\n','Denne e-mail giver abonnementschefen besked om, at et individuelt abonnement er blevet fornyet online. Meddelelsen indeholder en opsummering af abonnementsoplysningerne og et quick access-link til det fornyede abonnement.'),('SUBSCRIPTION_RENEW_INSTL','de_DE','Erneuerung eines Abonnements: Institutionell','Ein institutionelles Abonnement ist online für {$contextName} mit den folgenden Details erneuert worden.<br />\n<br />\nArt des Abonnements:<br />\n{$subscriptionType}<br />\n<br />\nInstitution:<br />\n{$institutionName}<br />\n{$institutionMailingAddress}<br />\n<br />\nDomain (sofern angegeben):<br />\n{$domain}<br />\n<br />\nIP-Bereich (sofern angeben):<br />\n{$ipRanges}<br />\n<br />\nKontaktperson:<br />\n{$userDetails}<br />\n<br />\nInformationen zur Mitgliedschaft (sofern angegeben):<br />\n{$membership}<br />\n<br />\nUm sich dieses Abonnement anzusehen oder es zu ändern, benutzen Sie bitte die folgende URL.<br />\n<br />\nAbonnement-URL: {$subscriptionUrl}<br />\n','Diese E-Mail benachrichtigt die/den Abonnementverwalter/in, dass ein institutionelles Abonement online erneuert worden ist. Sie liefert Informationen über das Abonnement und einen Link zum schnellen Zugriff auf das erneuerte Abonnement.'),('SUBSCRIPTION_RENEW_INSTL','en_US','Subscription Renewal: Institutional','An institutional subscription has been renewed online for {$contextName} with the following details.<br />\n<br />\nSubscription Type:<br />\n{$subscriptionType}<br />\n<br />\nInstitution:<br />\n{$institutionName}<br />\n{$institutionMailingAddress}<br />\n<br />\nDomain (if provided):<br />\n{$domain}<br />\n<br />\nIP Ranges (if provided):<br />\n{$ipRanges}<br />\n<br />\nContact Person:<br />\n{$userDetails}<br />\n<br />\nMembership Information (if provided):<br />\n{$membership}<br />\n<br />\nTo view or edit this subscription, please use the following URL.<br />\n<br />\nSubscription URL: {$subscriptionUrl}<br />\n','This email notifies the Subscription Manager that an institutional subscription has been renewed online. It provides summary information about the subscription and a quick access link to the renewed subscription.'),('SUBSCRIPTION_RENEW_INSTL','it_IT','Rinnovo dell\'abbonamento istituzionale','E\' stato rinnovato online un abbonamento istituzionale a {$contextName} con i seguenti dettagli.<br />\n<br />\nTipo di abbonamento:<br />\n{$subscriptionType}<br />\n<br />\nEnte:<br />\n{$institutionName}<br />\n{$institutionMailingAddress}<br />\n<br />\nDominio (se fornito):<br />\n{$domain}<br />\n<br />\nIP Ranges (se indicato):<br />\n{$ipRanges}<br />\n<br />\nContattare:<br />\n{$userDetails}<br />\n<br />\nMembership (se indicato):<br />\n{$membership}<br />\n<br />\nPer vedere o modificare i dettagli, andare alla pagina: {$subscriptionUrl}<br />\n','Notifica del rinnovo di un abbonamento istituzionale.'),('SUBSCRIPTION_RENEW_INSTL','pt_BR','Renovação de Assinatura Institucional','Uma assinatura institucional foi renovada online para {$contextName} com os seguintes detalhes. <br />\n<br />\nTipo de Assinatura: <br />\n{$subscriptionType} <br />\n<br />\nInstituição: <br />\n{$institutionName} <br />\n{$institutionMailingAddress} <br />\n<br />\nDomínio (se fornecido): <br />\n{$domain} <br />\n<br />\nIntervalos de IP (se houver): <br />\n{$ipRanges} <br />\n<br />\nPessoa de Contato: <br />\n{$userDetails} <br />\n<br />\nInformações sobre membros (se houver): <br />\n{$membership} <br />\n<br />\nPara visualizar ou editar esta assinatura, use a seguinte URL. <br />\n<br />\nURL da Assinatura: {$subscriptionUrl} <br />\n','Esta mensagem notifica o Editor Gerente que uma assinatura institucional foi renovada online. Oferece informações sobre a assinatura e um link para acesso rápido à mesma.'),('SUBSCRIPTION_RENEW_INSTL','ru_RU','Продление подписки: на организацию','На сайте для организации была продлена подписка на журнал «{$contextName}» со следующими деталями.<br />\n<br />\nТип подписки:<br />\n{$subscriptionType}<br />\n<br />\nОрганизация:<br />\n{$institutionName}<br />\n{$institutionMailingAddress}<br />\n<br />\nДоменное имя (если указано):<br />\n{$domain}<br />\n<br />\nIP-диапазоны (если указаны):<br />\n{$ipRanges}<br />\n<br />\nКонтактное лицо:<br />\n{$userDetails}<br />\n<br />\nИнформация о членстве (если указана):<br />\n{$membership}<br />\n<br />\nДля просмотра или редактирования этой подписки, пожалуйста, используйте следующий URL.<br />\n<br />\nURL подписки: {$subscriptionUrl}<br />\n','Это письмо уведомляет менеджера по подписке, что через сайт была продлена подписка на организацию. В письме содержится общая информация о подписке и ссылка быстрого доступа к продленной подписке.'),('USER_REGISTER','cs_CZ','Registrace do časopisu','{$userFullName}<br />\n<br />\nNyní jste zaregistrován jako uživatel časopisu {$contextName}. Přikládáme do emailu Vaše uživatelské jméno a heslo, které potřebujete pro veškerou práci s tímto časopisem na jeho stránkách. Kdykoliv můžete požádat o vyřazení ze seznamu uživatelů časopisu tím, že mě budete kontaktovat.<br />\n<br />\nUživatelské jméno: {$username}<br />\nHeslo: {$password}<br />\n<br />\nDěkujeme,<br />\n{$principalContactSignature}','Tento email je zaslán nově registrovanému uživateli jako přivítání do systému a poskytne mu doklad o jeho uživatelském jménu a heslu.'),('USER_REGISTER','da_DK','Tidsskriftsregistrering','{$userFullName}<br />\n<br />\nDu er nu registreret som bruger hos {$contextName}. Vi har anført dit brugernavn og din adgangskode i denne e-mail, som du skal bruge til alt arbejde i forbindelse med dette tidsskrift via tidsskriftets websted. Du kan til enhver tid bede om at blive fjernet fra tidsskriftets liste over brugere ved at kontakte mig.<br />\n<br />\nBrugernavn: {$username}<br />\nAdgangskode: {$password}<br />\n<br />\nTak. <br />\n{$principalContactSignature}','Denne e-mail sendes til netop registrerede brugere for at byde dem velkommen til systemet og for at oplyse dem om deres brugernavn og adgangskode.'),('USER_REGISTER','de_DE','Registrierung bei der Zeitschrift','{$userFullName},<br />\n<br />\nSie sind nun als neue/r Benutzer/in von {$contextName} registriert. Wir haben Ihren Benutzer/innennamen und Ihr Passwort in dieser Mail aufgeführt, beides wird für alle Arbeiten mit dieser Zeitschrift gebraucht. Sie können sich zu jedem Zeitpunkt als Benutzer/in der Zeitschrift austragen lassen, indem Sie mich kontaktieren.<br />\n<br />\nBenutzer/innenname: {$username}<br />\nPasswort: {$password}<br />\n<br />\nVielen Dank,<br />\n{$principalContactSignature}','Diese E-Mail wird an neu registrierte Benutzer/innen gesendet, um sie beim System willkommen zu heißen und ihnen Benutzer/innennamen und Passwort zu bestätigen.'),('USER_REGISTER','en_US','Journal Registration','{$userFullName}<br />\n<br />\nYou have now been registered as a user with {$contextName}. We have included your username and password in this email, which are needed for all work with this journal through its website. At any point, you can ask to be removed from the journal\'s list of users by contacting me.<br />\n<br />\nUsername: {$username}<br />\nPassword: {$password}<br />\n<br />\nThank you,<br />\n{$principalContactSignature}','This email is sent to a newly registered user to welcome them to the system and provide them with a record of their username and password.'),('USER_REGISTER','it_IT','Registrazione nuovo utente','Gentilissimo {$userFullName}, <br />\n<br />\nGrazie per esserti registrato a {$contextName}.<br />\nQui sotto trovi lo username e la password per accedere alla rivista ed utilizzare il portale di sottomissione e revisione. <br />\n<br />\nUsername: {$username}<br />\nPassword: {$password}<br />\n<br />\nPuoi richiedere in ogni momento la rimozione del tuo account inviandoci una mail.<br />\n<br />\nCon i più cordiali saluti,<br />\n<br />\n{$principalContactSignature}','Questa email viene mandata agli utenti appena registrati per dar loro il benvenuto nel sistema e fornirgli una nota della loro username e password.'),('USER_REGISTER','pt_BR','Cadastro no Periódico','{$userFullName}<br />\n<br />\nAgora você foi cadastrado como um usuário em {$contextName}. Incluímos seu nome de usuário e senha neste e-mail, necessários para todo o trabalho neste periódico por meio de seu site. A qualquer momento, você pode pedir para ser removido da lista de usuários da revista entrando em contato comigo.<br />\n<br />\nUsuário: {$username}<br />\nSenha: {$password}<br />\n<br />\nAtenciosamente,<br />\n{$principalContactSignature}','Esta mensagem é enviada aos usuários recém-cadastrados no sistema, para dar-lhes as boas-vindas e deixar registrado seu login e senha.'),('USER_REGISTER','ru_RU','Регистрация в журнале','Здравствуйте, {$userFullName}!<br />\n<br />\nТеперь Вы зарегистрированы как пользователь в журнале «{$contextName}». В этом письме мы указали Ваши имя пользователя и пароль, которые потребуются для работы с этим журналом через сайт. Вы в любой момент можете попросить, чтобы Вас удалили из списка пользователей журнала, для этого просто свяжитесь со мной.<br />\n<br />\nИмя пользователя: {$username}<br />\nПароль: {$password}<br />\n<br />\nС уважением,<br />\n{$principalContactSignature}','Это письмо отправляется вновь зарегистрированному пользователю, приветствуя его в системе и сообщая ему имя пользователя и пароль для доступа к сайту.'),('USER_VALIDATE','cs_CZ','Ověření Vašeho účtu','{$userFullName}<br />\n<br />\nVytvořil jste si účet pro {$contextName}, ale před tím, než ho budete moci začít používat, musí být ověřen Váš emailový účet. Pro jeho ověření jednoduše následujte odkaz uvedený níže:<br />\n<br />\n{$activateUrl}<br />\n<br />\nDěkujeme,<br />\n{$principalContactSignature}','Tento email je zaslán nově registrovanému uživateli a obsahuje odkaz sloužící k ověření jeho emailové adresy.'),('USER_VALIDATE','da_DK','Validér din konto','{$userFullName}<br />\n<br />\nDu har oprettet en konto hos {$contextName}, men inden du kan benytte den, skal du validere din e-mail-konto. Det gør du ved blot at følge linket nedenfor:<br />\n<br />\n{$activateUrl}<br />\n<br />\nTak. <br />\n{$principalContactSignature}','Denne e-mail sendes til en nyligt registreret bruger for at få vedkommende til at validere deres e-mail-konto.'),('USER_VALIDATE','de_DE','Bestätigung Ihres Benutzer/innenkontos','{$userFullName},<br />\n<br />\nSie haben ein Benutzer/innenkonto bei {$contextName} angelegt, aber bevor Sie es benutzen können, müssen Sie Ihre E-Mail-Adresse bestätigen. Dazu folgen Sie bitte einfach dem folgenden Link:<br />\n<br />\n{$activateUrl}<br />\n<br />\nVielen Dank,<br />\n{$principalContactSignature}','Diese E-Mail wird an neu registrierte Benutzer/innen gesendet, um sie aufzufordern, die angegebene E-Mail-Adresse zu verifizieren.'),('USER_VALIDATE','en_US','Validate Your Account','{$userFullName}<br />\n<br />\nYou have created an account with {$contextName}, but before you can start using it, you need to validate your email account. To do this, simply follow the link below:<br />\n<br />\n{$activateUrl}<br />\n<br />\nThank you,<br />\n{$principalContactSignature}','This email is sent to a newly registered user to validate their email account.'),('USER_VALIDATE','it_IT','Convalida il tuo account','Gentilissimo {$userFullName}<br />\n<br />\nHai creato un nuovo account in {$contextName}, ma prima di usarlo, devi convalidare il tuo indirizzo email.<br />\n<br />\nPer farlo, clicca sul link qui sotto:<br />\n{$activateUrl}<br />\n<br />\nSe non si apre automaticamente una finestra del browser per la verifica, puoi copiare questo link e incollarlo direttamente nella barra degli indirizzi del tuo browser<br />\n<br />\nGrazie,<br />\n<br />\n{$principalContactSignature}','Questa email viene spedita a un nuovo utente registrato come benvenuto nel sistema e gli fornisce una nota con il suo nome utente e password.'),('USER_VALIDATE','pt_BR','Valide seu Cadastro','{$userFullName}<br />\n<br />\nVocê criou uma conta no periódico {$contextName}, mas antes de começar a usá-la, você precisa validar sua conta de e-mail. Para fazer isso, basta clicar no link abaixo:<br />\n<br />\n{$activateUrl}<br />\n<br />\nAtenciosamente,<br />\n{$principalContactSignature}','Esta mensagem é enviada a um novo usuário cadastrado, para validação do cadastro.'),('USER_VALIDATE','ru_RU','Подтвердите свою учетную запись','Здравствуйте, {$userFullName}!<br />\n<br />\nВы создали учетную запись в журнале «{$contextName}», но перед тем как начать ее использовать, Вам нужно подтвердить адрес электронной почты. Чтобы сделать это, просто пройдите по ссылке ниже:<br />\n<br />\n{$activateUrl}<br />\n<br />\nС уважением,<br />\n{$principalContactSignature}','Это письмо отправляется вновь зарегистрированному пользователю для подтверждения его адреса электронной почты.');
/*!40000 ALTER TABLE `email_templates_default_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates_settings`
--

DROP TABLE IF EXISTS `email_templates_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_templates_settings` (
  `email_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  UNIQUE KEY `email_settings_pkey` (`email_id`,`locale`,`setting_name`),
  KEY `email_settings_email_id` (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates_settings`
--

LOCK TABLES `email_templates_settings` WRITE;
/*!40000 ALTER TABLE `email_templates_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_templates_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_log`
--

DROP TABLE IF EXISTS `event_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assoc_type` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `date_logged` datetime NOT NULL,
  `event_type` bigint(20) DEFAULT NULL,
  `message` text,
  `is_translated` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `event_log_assoc` (`assoc_type`,`assoc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_log`
--

LOCK TABLES `event_log` WRITE;
/*!40000 ALTER TABLE `event_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_log_settings`
--

DROP TABLE IF EXISTS `event_log_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_log_settings` (
  `log_id` bigint(20) NOT NULL,
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object)',
  UNIQUE KEY `event_log_settings_pkey` (`log_id`,`setting_name`),
  KEY `event_log_settings_log_id` (`log_id`),
  KEY `event_log_settings_name_value` (`setting_name`(50),`setting_value`(150))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_log_settings`
--

LOCK TABLES `event_log_settings` WRITE;
/*!40000 ALTER TABLE `event_log_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_log_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `file_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `mimetype` varchar(255) NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filter_groups`
--

DROP TABLE IF EXISTS `filter_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filter_groups` (
  `filter_group_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `symbolic` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `input_type` varchar(255) DEFAULT NULL,
  `output_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`filter_group_id`),
  UNIQUE KEY `filter_groups_symbolic` (`symbolic`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filter_groups`
--

LOCK TABLES `filter_groups` WRITE;
/*!40000 ALTER TABLE `filter_groups` DISABLE KEYS */;
INSERT INTO `filter_groups` VALUES (1,'article=>dc11','plugins.metadata.dc11.articleAdapter.displayName','plugins.metadata.dc11.articleAdapter.description','class::classes.submission.Submission','metadata::plugins.metadata.dc11.schema.Dc11Schema(ARTICLE)'),(2,'issue=>crossref-xml','plugins.importexport.crossref.displayName','plugins.importexport.crossref.description','class::classes.issue.Issue[]','xml::schema(https://www.crossref.org/schemas/crossref4.3.6.xsd)'),(3,'article=>crossref-xml','plugins.importexport.crossref.displayName','plugins.importexport.crossref.description','class::classes.submission.Submission[]','xml::schema(https://www.crossref.org/schemas/crossref4.3.6.xsd)'),(4,'issue=>datacite-xml','plugins.importexport.datacite.displayName','plugins.importexport.datacite.description','class::classes.issue.Issue','xml::schema(http://schema.datacite.org/meta/kernel-4/metadata.xsd)'),(5,'article=>datacite-xml','plugins.importexport.datacite.displayName','plugins.importexport.datacite.description','class::classes.submission.Submission','xml::schema(http://schema.datacite.org/meta/kernel-4/metadata.xsd)'),(6,'galley=>datacite-xml','plugins.importexport.datacite.displayName','plugins.importexport.datacite.description','class::classes.article.ArticleGalley','xml::schema(http://schema.datacite.org/meta/kernel-4/metadata.xsd)'),(7,'article=>doaj-xml','plugins.importexport.doaj.displayName','plugins.importexport.doaj.description','class::classes.submission.Submission[]','xml::schema(plugins/importexport/doaj/doajArticles.xsd)'),(8,'article=>doaj-json','plugins.importexport.doaj.displayName','plugins.importexport.doaj.description','class::classes.submission.Submission','primitive::string'),(9,'article=>native-xml','plugins.importexport.native.displayName','plugins.importexport.native.description','class::classes.submission.Submission[]','xml::schema(plugins/importexport/native/native.xsd)'),(10,'native-xml=>article','plugins.importexport.native.displayName','plugins.importexport.native.description','xml::schema(plugins/importexport/native/native.xsd)','class::classes.submission.Submission[]'),(11,'issue=>native-xml','plugins.importexport.native.displayName','plugins.importexport.native.description','class::classes.issue.Issue[]','xml::schema(plugins/importexport/native/native.xsd)'),(12,'native-xml=>issue','plugins.importexport.native.displayName','plugins.importexport.native.description','xml::schema(plugins/importexport/native/native.xsd)','class::classes.issue.Issue[]'),(13,'issuegalley=>native-xml','plugins.importexport.native.displayName','plugins.importexport.native.description','class::classes.issue.IssueGalley[]','xml::schema(plugins/importexport/native/native.xsd)'),(14,'native-xml=>issuegalley','plugins.importexport.native.displayName','plugins.importexport.native.description','xml::schema(plugins/importexport/native/native.xsd)','class::classes.issue.IssueGalley[]'),(15,'author=>native-xml','plugins.importexport.native.displayName','plugins.importexport.native.description','class::classes.article.Author[]','xml::schema(plugins/importexport/native/native.xsd)'),(16,'native-xml=>author','plugins.importexport.native.displayName','plugins.importexport.native.description','xml::schema(plugins/importexport/native/native.xsd)','class::classes.article.Author[]'),(17,'SubmissionFile=>native-xml','plugins.importexport.native.displayName','plugins.importexport.native.description','class::lib.pkp.classes.submission.SubmissionFile','xml::schema(plugins/importexport/native/native.xsd)'),(18,'native-xml=>SubmissionFile','plugins.importexport.native.displayName','plugins.importexport.native.description','xml::schema(plugins/importexport/native/native.xsd)','class::lib.pkp.classes.submission.SubmissionFile'),(19,'article-galley=>native-xml','plugins.importexport.native.displayName','plugins.importexport.native.description','class::classes.article.ArticleGalley','xml::schema(plugins/importexport/native/native.xsd)'),(20,'native-xml=>ArticleGalley','plugins.importexport.native.displayName','plugins.importexport.native.description','xml::schema(plugins/importexport/native/native.xsd)','class::classes.article.ArticleGalley[]'),(21,'publication=>native-xml','plugins.importexport.native.displayName','plugins.importexport.native.description','class::classes.publication.Publication','xml::schema(plugins/importexport/native/native.xsd)'),(22,'native-xml=>Publication','plugins.importexport.native.displayName','plugins.importexport.native.description','xml::schema(plugins/importexport/native/native.xsd)','class::classes.publication.Publication'),(23,'article=>pubmed-xml','plugins.importexport.pubmed.displayName','plugins.importexport.pubmed.description','class::classes.submission.Submission[]','xml::dtd'),(24,'user=>user-xml','plugins.importexport.users.displayName','plugins.importexport.users.description','class::lib.pkp.classes.user.User[]','xml::schema(lib/pkp/plugins/importexport/users/pkp-users.xsd)'),(25,'user-xml=>user','plugins.importexport.users.displayName','plugins.importexport.users.description','xml::schema(lib/pkp/plugins/importexport/users/pkp-users.xsd)','class::classes.users.User[]'),(26,'usergroup=>user-xml','plugins.importexport.users.displayName','plugins.importexport.users.description','class::lib.pkp.classes.security.UserGroup[]','xml::schema(lib/pkp/plugins/importexport/users/pkp-users.xsd)'),(27,'user-xml=>usergroup','plugins.importexport.native.displayName','plugins.importexport.native.description','xml::schema(lib/pkp/plugins/importexport/users/pkp-users.xsd)','class::lib.pkp.classes.security.UserGroup[]');
/*!40000 ALTER TABLE `filter_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filter_settings`
--

DROP TABLE IF EXISTS `filter_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filter_settings` (
  `filter_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `filter_settings_pkey` (`filter_id`,`locale`,`setting_name`),
  KEY `filter_settings_id` (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filter_settings`
--

LOCK TABLES `filter_settings` WRITE;
/*!40000 ALTER TABLE `filter_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `filter_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filters`
--

DROP TABLE IF EXISTS `filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filters` (
  `filter_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `filter_group_id` bigint(20) NOT NULL DEFAULT '0',
  `context_id` bigint(20) NOT NULL DEFAULT '0',
  `display_name` varchar(255) DEFAULT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `is_template` smallint(6) NOT NULL DEFAULT '0',
  `parent_filter_id` bigint(20) NOT NULL DEFAULT '0',
  `seq` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filters`
--

LOCK TABLES `filters` WRITE;
/*!40000 ALTER TABLE `filters` DISABLE KEYS */;
INSERT INTO `filters` VALUES (1,1,0,'Extract metadata from a(n) Submission','plugins.metadata.dc11.filter.Dc11SchemaArticleAdapter',0,0,0),(2,2,0,'Crossref XML issue export','plugins.importexport.crossref.filter.IssueCrossrefXmlFilter',0,0,0),(3,3,0,'Crossref XML issue export','plugins.importexport.crossref.filter.ArticleCrossrefXmlFilter',0,0,0),(4,4,0,'DataCite XML export','plugins.importexport.datacite.filter.DataciteXmlFilter',0,0,0),(5,5,0,'DataCite XML export','plugins.importexport.datacite.filter.DataciteXmlFilter',0,0,0),(6,6,0,'DataCite XML export','plugins.importexport.datacite.filter.DataciteXmlFilter',0,0,0),(7,7,0,'DOAJ XML export','plugins.importexport.doaj.filter.DOAJXmlFilter',0,0,0),(8,8,0,'DOAJ JSON export','plugins.importexport.doaj.filter.DOAJJsonFilter',0,0,0),(9,9,0,'Native XML submission export','plugins.importexport.native.filter.ArticleNativeXmlFilter',0,0,0),(10,10,0,'Native XML submission import','plugins.importexport.native.filter.NativeXmlArticleFilter',0,0,0),(11,11,0,'Native XML issue export','plugins.importexport.native.filter.IssueNativeXmlFilter',0,0,0),(12,12,0,'Native XML issue import','plugins.importexport.native.filter.NativeXmlIssueFilter',0,0,0),(13,13,0,'Native XML issue galley export','plugins.importexport.native.filter.IssueGalleyNativeXmlFilter',0,0,0),(14,14,0,'Native XML issue galley import','plugins.importexport.native.filter.NativeXmlIssueGalleyFilter',0,0,0),(15,15,0,'Native XML author export','plugins.importexport.native.filter.AuthorNativeXmlFilter',0,0,0),(16,16,0,'Native XML author import','plugins.importexport.native.filter.NativeXmlAuthorFilter',0,0,0),(17,18,0,'Native XML submission file import','plugins.importexport.native.filter.NativeXmlArticleFileFilter',0,0,0),(18,17,0,'Native XML submission file export','lib.pkp.plugins.importexport.native.filter.SubmissionFileNativeXmlFilter',0,0,0),(19,19,0,'Native XML representation export','plugins.importexport.native.filter.ArticleGalleyNativeXmlFilter',0,0,0),(20,20,0,'Native XML representation import','plugins.importexport.native.filter.NativeXmlArticleGalleyFilter',0,0,0),(21,21,0,'Native XML Publication export','plugins.importexport.native.filter.PublicationNativeXmlFilter',0,0,0),(22,22,0,'Native XML publication import','plugins.importexport.native.filter.NativeXmlPublicationFilter',0,0,0),(23,23,0,'ArticlePubMedXmlFilter','plugins.importexport.pubmed.filter.ArticlePubMedXmlFilter',0,0,0),(24,24,0,'User XML user export','lib.pkp.plugins.importexport.users.filter.PKPUserUserXmlFilter',0,0,0),(25,25,0,'User XML user import','lib.pkp.plugins.importexport.users.filter.UserXmlPKPUserFilter',0,0,0),(26,26,0,'Native XML user group export','lib.pkp.plugins.importexport.users.filter.UserGroupNativeXmlFilter',0,0,0),(27,27,0,'Native XML user group import','lib.pkp.plugins.importexport.users.filter.NativeXmlUserGroupFilter',0,0,0);
/*!40000 ALTER TABLE `filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre_settings`
--

DROP TABLE IF EXISTS `genre_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre_settings` (
  `genre_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object)',
  UNIQUE KEY `genre_settings_pkey` (`genre_id`,`locale`,`setting_name`),
  KEY `genre_settings_genre_id` (`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre_settings`
--

LOCK TABLES `genre_settings` WRITE;
/*!40000 ALTER TABLE `genre_settings` DISABLE KEYS */;
INSERT INTO `genre_settings` VALUES (1,'cs_CZ','name','Text článku','string'),(1,'da_DK','name','Artikeltekst','string'),(1,'de_DE','name','Artikeltext','string'),(1,'en_US','name','Article Text','string'),(1,'it_IT','name','Articolo','string'),(1,'pt_BR','name','Texto do artigo','string'),(1,'ru_RU','name','Текст статьи','string'),(2,'cs_CZ','name','Výzkumný nástroj','string'),(2,'da_DK','name','Forskningsredskab','string'),(2,'de_DE','name','Forschungsinstrument','string'),(2,'en_US','name','Research Instrument','string'),(2,'it_IT','name','Strumenti di ricerca','string'),(2,'pt_BR','name','Instrumento de pesquisa','string'),(2,'ru_RU','name','Инструмент исследования','string'),(3,'cs_CZ','name','Výzkumné materiály','string'),(3,'da_DK','name','Forskningsmateriale','string'),(3,'de_DE','name','Forschungsmaterialien','string'),(3,'en_US','name','Research Materials','string'),(3,'it_IT','name','Materiali di ricerca','string'),(3,'pt_BR','name','Materiais de pesquisa','string'),(3,'ru_RU','name','Материалы исследования','string'),(4,'cs_CZ','name','Výsledky výzkumu','string'),(4,'da_DK','name','Forskningsresultater','string'),(4,'de_DE','name','Forschungsergebnisse','string'),(4,'en_US','name','Research Results','string'),(4,'it_IT','name','Risultati di ricerca','string'),(4,'pt_BR','name','Resultados de pesquisa','string'),(4,'ru_RU','name','Результаты исследования','string'),(5,'cs_CZ','name','Přepisy','string'),(5,'da_DK','name','Transskription','string'),(5,'de_DE','name','Transkriptionen','string'),(5,'en_US','name','Transcripts','string'),(5,'it_IT','name','Trascrizioni','string'),(5,'pt_BR','name','Transcrições','string'),(5,'ru_RU','name','Транскрипты','string'),(6,'cs_CZ','name','Analýza dat','string'),(6,'da_DK','name','Dataanalyse','string'),(6,'de_DE','name','Datenanalyse','string'),(6,'en_US','name','Data Analysis','string'),(6,'it_IT','name','Analisi di dati','string'),(6,'pt_BR','name','Análise de dados','string'),(6,'ru_RU','name','Анализ данных','string'),(7,'cs_CZ','name','Soubor dat','string'),(7,'da_DK','name','Datasæt','string'),(7,'de_DE','name','Datensatz','string'),(7,'en_US','name','Data Set','string'),(7,'it_IT','name','Data set','string'),(7,'pt_BR','name','Conjunto de dados','string'),(7,'ru_RU','name','Набор данных','string'),(8,'cs_CZ','name','Zdrojové texty','string'),(8,'da_DK','name','Kildetekster','string'),(8,'de_DE','name','Quelltexte','string'),(8,'en_US','name','Source Texts','string'),(8,'it_IT','name','Fonti bibliografiche','string'),(8,'pt_BR','name','Textos fonte','string'),(8,'ru_RU','name','Исходные тексты','string'),(9,'cs_CZ','name','Multimédia','string'),(9,'da_DK','name','Multimedie','string'),(9,'de_DE','name','Multimedia','string'),(9,'en_US','name','Multimedia','string'),(9,'it_IT','name','File multimediali','string'),(9,'pt_BR','name','Multimedia','string'),(9,'ru_RU','name','Мультимедиа','string'),(10,'cs_CZ','name','Obrázek','string'),(10,'da_DK','name','Billede','string'),(10,'de_DE','name','Bild','string'),(10,'en_US','name','Image','string'),(10,'it_IT','name','Immagine','string'),(10,'pt_BR','name','Imagem','string'),(10,'ru_RU','name','Изображение','string'),(11,'cs_CZ','name','HTML šablona stylu','string'),(11,'da_DK','name','HTML stylesheet','string'),(11,'de_DE','name','HTML-Stylesheet','string'),(11,'en_US','name','HTML Stylesheet','string'),(11,'it_IT','name','Foglio di stile','string'),(11,'pt_BR','name','Folha de Estilos','string'),(11,'ru_RU','name','Таблица стилей HTML','string'),(12,'cs_CZ','name','Ostatní','string'),(12,'da_DK','name','Andet','string'),(12,'de_DE','name','Andere/s','string'),(12,'en_US','name','Other','string'),(12,'it_IT','name','Altro','string'),(12,'pt_BR','name','Outros','string'),(12,'ru_RU','name','Другое','string');
/*!40000 ALTER TABLE `genre_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `genre_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `context_id` bigint(20) NOT NULL,
  `seq` bigint(20) NOT NULL,
  `enabled` smallint(6) NOT NULL DEFAULT '1',
  `category` bigint(20) NOT NULL DEFAULT '1',
  `dependent` smallint(6) NOT NULL DEFAULT '0',
  `supplementary` smallint(6) NOT NULL DEFAULT '0',
  `entry_key` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,1,0,1,1,0,0,'SUBMISSION'),(2,1,1,1,3,0,1,'RESEARCHINSTRUMENT'),(3,1,2,1,3,0,1,'RESEARCHMATERIALS'),(4,1,3,1,3,0,1,'RESEARCHRESULTS'),(5,1,4,1,3,0,1,'TRANSCRIPTS'),(6,1,5,1,3,0,1,'DATAANALYSIS'),(7,1,6,1,3,0,1,'DATASET'),(8,1,7,1,3,0,1,'SOURCETEXTS'),(9,1,8,1,1,1,1,'MULTIMEDIA'),(10,1,9,1,2,1,0,'IMAGE'),(11,1,10,1,1,1,0,'STYLE'),(12,1,11,1,3,0,1,'OTHER');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institutional_subscription_ip`
--

DROP TABLE IF EXISTS `institutional_subscription_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `institutional_subscription_ip` (
  `institutional_subscription_ip_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subscription_id` bigint(20) NOT NULL,
  `ip_string` varchar(40) NOT NULL,
  `ip_start` bigint(20) NOT NULL,
  `ip_end` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`institutional_subscription_ip_id`),
  KEY `institutional_subscription_ip_subscription_id` (`subscription_id`),
  KEY `institutional_subscription_ip_start` (`ip_start`),
  KEY `institutional_subscription_ip_end` (`ip_end`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institutional_subscription_ip`
--

LOCK TABLES `institutional_subscription_ip` WRITE;
/*!40000 ALTER TABLE `institutional_subscription_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `institutional_subscription_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institutional_subscriptions`
--

DROP TABLE IF EXISTS `institutional_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `institutional_subscriptions` (
  `institutional_subscription_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subscription_id` bigint(20) NOT NULL,
  `institution_name` varchar(255) NOT NULL,
  `mailing_address` varchar(255) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`institutional_subscription_id`),
  KEY `institutional_subscriptions_subscription_id` (`subscription_id`),
  KEY `institutional_subscriptions_domain` (`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institutional_subscriptions`
--

LOCK TABLES `institutional_subscriptions` WRITE;
/*!40000 ALTER TABLE `institutional_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `institutional_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_files`
--

DROP TABLE IF EXISTS `issue_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issue_files` (
  `file_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `issue_id` bigint(20) NOT NULL,
  `file_name` varchar(90) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `file_size` bigint(20) NOT NULL,
  `content_type` bigint(20) NOT NULL,
  `original_file_name` varchar(127) DEFAULT NULL,
  `date_uploaded` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`file_id`),
  KEY `issue_files_issue_id` (`issue_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_files`
--

LOCK TABLES `issue_files` WRITE;
/*!40000 ALTER TABLE `issue_files` DISABLE KEYS */;
INSERT INTO `issue_files` VALUES (1,1,'1-1-PB.pdf','application/pdf',282910,1,'сusima.pdf','2022-10-12 18:45:23','2022-10-12 18:45:25');
/*!40000 ALTER TABLE `issue_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_galley_settings`
--

DROP TABLE IF EXISTS `issue_galley_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issue_galley_settings` (
  `galley_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object)',
  UNIQUE KEY `issue_galley_settings_pkey` (`galley_id`,`locale`,`setting_name`),
  KEY `issue_galley_settings_galley_id` (`galley_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_galley_settings`
--

LOCK TABLES `issue_galley_settings` WRITE;
/*!40000 ALTER TABLE `issue_galley_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue_galley_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_galleys`
--

DROP TABLE IF EXISTS `issue_galleys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issue_galleys` (
  `galley_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `locale` varchar(14) DEFAULT NULL,
  `issue_id` bigint(20) NOT NULL,
  `file_id` bigint(20) NOT NULL,
  `label` varchar(32) DEFAULT NULL,
  `seq` double(8,2) NOT NULL DEFAULT '0.00',
  `url_path` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`galley_id`),
  KEY `issue_galleys_issue_id` (`issue_id`),
  KEY `issue_galleys_url_path` (`url_path`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_galleys`
--

LOCK TABLES `issue_galleys` WRITE;
/*!40000 ALTER TABLE `issue_galleys` DISABLE KEYS */;
INSERT INTO `issue_galleys` VALUES (1,'ru_RU',1,1,'метка1',1.00,'history');
/*!40000 ALTER TABLE `issue_galleys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_settings`
--

DROP TABLE IF EXISTS `issue_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issue_settings` (
  `issue_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `issue_settings_pkey` (`issue_id`,`locale`,`setting_name`),
  KEY `issue_settings_issue_id` (`issue_id`),
  KEY `issue_settings_name_value` (`setting_name`(50),`setting_value`(150))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_settings`
--

LOCK TABLES `issue_settings` WRITE;
/*!40000 ALTER TABLE `issue_settings` DISABLE KEYS */;
INSERT INTO `issue_settings` VALUES (1,'cs_CZ','description','<p><span class=\"ExtendedText-Full extended-text__full\">Морская битва 27 мая - 28 мая 1905 года в районе острова Цусима, в которой российская 2-я эскадра флота Тихого океана под командованием вице-адмирала З. П. Рожественского потерпела сокрушительное поражение от Императорского флота Японии под командованием адмирала Хэйхатиро Того. Последнее, решающее морское сражение русско-японской войны 1904-1905 годов, в ходе которого русская эскадра была полностью разгромлена. Большая часть кораблей была потоплена противником или затоплена собственными экипажами, часть капитулировала, некоторые интернировались в нейтральных портах, и лишь четырём удалось дойти до русских портов.</span></p>','string'),(1,'cs_CZ','title','','string'),(1,'da_DK','description','<p><span class=\"ExtendedText-Full extended-text__full\">Морская битва 27 мая - 28 мая 1905 года в районе острова Цусима, в которой российская 2-я эскадра флота Тихого океана под командованием вице-адмирала З. П. Рожественского потерпела сокрушительное поражение от Императорского флота Японии под командованием адмирала Хэйхатиро Того. Последнее, решающее морское сражение русско-японской войны 1904-1905 годов, в ходе которого русская эскадра была полностью разгромлена. Большая часть кораблей была потоплена противником или затоплена собственными экипажами, часть капитулировала, некоторые интернировались в нейтральных портах, и лишь четырём удалось дойти до русских портов.</span></p>','string'),(1,'da_DK','title','','string'),(1,'de_DE','description','<p><span class=\"ExtendedText-Full extended-text__full\">Морская битва 27 мая - 28 мая 1905 года в районе острова Цусима, в которой российская 2-я эскадра флота Тихого океана под командованием вице-адмирала З. П. Рожественского потерпела сокрушительное поражение от Императорского флота Японии под командованием адмирала Хэйхатиро Того. Последнее, решающее морское сражение русско-японской войны 1904-1905 годов, в ходе которого русская эскадра была полностью разгромлена. Большая часть кораблей была потоплена противником или затоплена собственными экипажами, часть капитулировала, некоторые интернировались в нейтральных портах, и лишь четырём удалось дойти до русских портов.</span></p>','string'),(1,'de_DE','title','','string'),(1,'en_US','description','<p><span class=\"ExtendedText-Full extended-text__full\">Морская битва 27 мая - 28 мая 1905 года в районе острова Цусима, в которой российская 2-я эскадра флота Тихого океана под командованием вице-адмирала З. П. Рожественского потерпела сокрушительное поражение от Императорского флота Японии под командованием адмирала Хэйхатиро Того. Последнее, решающее морское сражение русско-японской войны 1904-1905 годов, в ходе которого русская эскадра была полностью разгромлена. Большая часть кораблей была потоплена противником или затоплена собственными экипажами, часть капитулировала, некоторые интернировались в нейтральных портах, и лишь четырём удалось дойти до русских портов.</span></p>','string'),(1,'en_US','title','','string'),(1,'it_IT','description','<p><span class=\"ExtendedText-Full extended-text__full\">Морская битва 27 мая - 28 мая 1905 года в районе острова Цусима, в которой российская 2-я эскадра флота Тихого океана под командованием вице-адмирала З. П. Рожественского потерпела сокрушительное поражение от Императорского флота Японии под командованием адмирала Хэйхатиро Того. Последнее, решающее морское сражение русско-японской войны 1904-1905 годов, в ходе которого русская эскадра была полностью разгромлена. Большая часть кораблей была потоплена противником или затоплена собственными экипажами, часть капитулировала, некоторые интернировались в нейтральных портах, и лишь четырём удалось дойти до русских портов.</span></p>','string'),(1,'it_IT','title','','string'),(1,'pt_BR','description','<p><span class=\"ExtendedText-Full extended-text__full\">Морская битва 27 мая - 28 мая 1905 года в районе острова Цусима, в которой российская 2-я эскадра флота Тихого океана под командованием вице-адмирала З. П. Рожественского потерпела сокрушительное поражение от Императорского флота Японии под командованием адмирала Хэйхатиро Того. Последнее, решающее морское сражение русско-японской войны 1904-1905 годов, в ходе которого русская эскадра была полностью разгромлена. Большая часть кораблей была потоплена противником или затоплена собственными экипажами, часть капитулировала, некоторые интернировались в нейтральных портах, и лишь четырём удалось дойти до русских портов.</span></p>','string'),(1,'pt_BR','title','','string'),(1,'ru_RU','coverImage','cover_issue_1_ru_RU.webp','string'),(1,'ru_RU','coverImageAltText','','string'),(1,'ru_RU','description','<p><span class=\"ExtendedText-Full extended-text__full\">Морская битва 27 мая - 28 мая 1905 года в районе острова Цусима, в которой российская 2-я эскадра флота Тихого океана под командованием вице-адмирала З. П. Рожественского потерпела сокрушительное поражение от Императорского флота Японии под командованием адмирала Хэйхатиро Того. Последнее, решающее морское сражение русско-японской войны 1904-1905 годов, в ходе которого русская эскадра была полностью разгромлена. Большая часть кораблей была потоплена противником или затоплена собственными экипажами, часть капитулировала, некоторые интернировались в нейтральных портах, и лишь четырём удалось дойти до русских портов.</span></p>','string'),(1,'ru_RU','title','Выпуск №1. Цусимское сражение','string');
/*!40000 ALTER TABLE `issue_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issues`
--

DROP TABLE IF EXISTS `issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issues` (
  `issue_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `journal_id` bigint(20) NOT NULL,
  `volume` smallint(6) DEFAULT NULL,
  `number` varchar(40) DEFAULT NULL,
  `year` smallint(6) DEFAULT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  `current` smallint(6) NOT NULL DEFAULT '0',
  `date_published` datetime DEFAULT NULL,
  `date_notified` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `access_status` smallint(6) NOT NULL DEFAULT '1',
  `open_access_date` datetime DEFAULT NULL,
  `show_volume` smallint(6) NOT NULL DEFAULT '0',
  `show_number` smallint(6) NOT NULL DEFAULT '0',
  `show_year` smallint(6) NOT NULL DEFAULT '0',
  `show_title` smallint(6) NOT NULL DEFAULT '0',
  `style_file_name` varchar(90) DEFAULT NULL,
  `original_style_file_name` varchar(255) DEFAULT NULL,
  `url_path` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`issue_id`),
  KEY `issues_journal_id` (`journal_id`),
  KEY `issues_url_path` (`url_path`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues`
--

LOCK TABLES `issues` WRITE;
/*!40000 ALTER TABLE `issues` DISABLE KEYS */;
INSERT INTO `issues` VALUES (1,1,1,'1',2022,1,1,'2022-10-12 18:46:35',NULL,'2022-10-12 18:46:35',1,NULL,1,1,1,1,NULL,NULL,'');
/*!40000 ALTER TABLE `issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_views`
--

DROP TABLE IF EXISTS `item_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_views` (
  `assoc_type` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_last_viewed` datetime DEFAULT NULL,
  UNIQUE KEY `item_views_pkey` (`assoc_type`,`assoc_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_views`
--

LOCK TABLES `item_views` WRITE;
/*!40000 ALTER TABLE `item_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journal_settings`
--

DROP TABLE IF EXISTS `journal_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `journal_settings` (
  `journal_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext,
  `setting_type` varchar(6) DEFAULT NULL,
  UNIQUE KEY `journal_settings_pkey` (`journal_id`,`locale`,`setting_name`),
  KEY `journal_settings_journal_id` (`journal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journal_settings`
--

LOCK TABLES `journal_settings` WRITE;
/*!40000 ALTER TABLE `journal_settings` DISABLE KEYS */;
INSERT INTO `journal_settings` VALUES (1,'','copyrightYearBasis','issue',NULL),(1,'','defaultReviewMode','2',NULL),(1,'','disableSubmissions','0',NULL),(1,'','emailSignature','<br/>\n________________________________________________________________________ <br/>\n<a href=\"http://ojs/index.php/sr\">Научные результаты</a>',NULL),(1,'','enableOai','1',NULL),(1,'','itemsPerPage','25',NULL),(1,'','keywords','request',NULL),(1,'','membershipFee','0',NULL),(1,'','numPageLinks','10',NULL),(1,'','numWeeksPerResponse','4',NULL),(1,'','numWeeksPerReview','4',NULL),(1,'','publicationFee','0',NULL),(1,'','purchaseArticleFee','0',NULL),(1,'','sidebar','[]',NULL),(1,'','supportedFormLocales','[\"ru_RU\",\"cs_CZ\",\"da_DK\",\"en_US\",\"it_IT\",\"pt_BR\",\"de_DE\"]',NULL),(1,'','supportedLocales','[\"ru_RU\",\"en_US\",\"de_DE\",\"pt_BR\",\"it_IT\",\"da_DK\",\"cs_CZ\"]',NULL),(1,'','supportedSubmissionLocales','[\"ru_RU\",\"cs_CZ\",\"da_DK\",\"it_IT\",\"de_DE\",\"pt_BR\",\"en_US\"]',NULL),(1,'','themePluginPath','default',NULL),(1,'cs_CZ','abbreviation',NULL,NULL),(1,'cs_CZ','acronym',NULL,NULL),(1,'cs_CZ','authorInformation','Máte zájem publikovat v tomto časopisu? Doporučujeme pročtení stránky <a href=\"http://ojs/index.php/sr/about\">O časopisu</a> kde jsou uvedeny pravidla časopisu pro jednotlivé sekce, stejně jako <a href=\"http://ojs/index.php/sr/about/submissions#authorGuidelines\">Pokyny pro autory</a>. Než mohou autoři odeslat příspěvek, musí se do časopisu <a href=\"http://ojs/index.php/sr/user/register\">zaregistrovat</a> nebo pokud již registrovaní jsou, mohou se jednoduše <a href=\"http://ojs/index.php/sr/login\">přihlásit</a> a zahájit pětistupňový proces.',NULL),(1,'cs_CZ','clockssLicense','Tento časopis využívá systém CLOCKSS k vytvoření distribuovaného systému archivace mezi zúčastněnými knihovnami a umožňuje knihovnám vytvářet trvalé archivy časopisu pro účely uchování a obnovy. <a href=\"http://clockss.org/\"> Více ... </a>',NULL),(1,'cs_CZ','description',NULL,NULL),(1,'cs_CZ','librarianInformation','Vyzýváme knihovníky, aby uváděli tento časopis ve svém seznamu volně dostupných elektronických publikací. Také může být vhodné poznamenat, že open source redakční software, který tento časopis využívá, je vhodný pro použití s časopisy, v jejichž redakcích mohou členové fakult dané univerzity pracovat (viz <a href=\"http://pkp.sfu.ca/ojs\">Open Journal Systems</a>).',NULL),(1,'cs_CZ','lockssLicense','Tento časopis využívá systém LOCKSS pro vytvoření distribuovaného archivačního systému mezi zúčastněnými knihovnami a dovoluje těmto knihovnám vytvářet trvalé archivy časopisu pro účely jeho uchování a obnovení. <a href=\"http://lockss.org/\">Více...</a>',NULL),(1,'cs_CZ','name',NULL,NULL),(1,'cs_CZ','openAccessPolicy','Tento časopis poskytuje okamžitý otevřený přístup ke svému obsahu na principu, podle kterého volné zpřístupnění výsledků výzkumu podporuje větší celosvětovou výměnu poznatků.',NULL),(1,'cs_CZ','privacyStatement','<p>Jména a emailové adresy vložené na této stránce budou použity výhradně pro uvedené účely tohoto časopisu a nebudou zpřístupněny pro jiné účely ani třetí straně.</p>',NULL),(1,'cs_CZ','readerInformation','Vyzýváme čtenáře, aby se zapsali do služby pro oznamování nově vydaných čísel tohoto časopisu. Použijte odkaz <a href=\"http://ojs/index.php/sr/user/register\">Registrovat</a> v horní části domácí stránky časopisu. Díky této registraci bude čtenář dostávat emailem obsah každého nově vydaného čísla. Seznam čtenářů rovněž umožňuje časopisu doložit určitou úroveň podpory nebo čtenosti časopisu. Viz <a href=\"http://ojs/index.php/sr/about/submissions#privacyStatement\">Prohlášení o soukromí</a> tohoto časopisu, které ujišťuje čtenáře, že jejich jméno a emailová adresa nebudou použity pro jiné účely.',NULL),(1,'cs_CZ','submissionChecklist','[{\"order\":1,\"content\":\"Příspěvek nebyl dosud publikován ani není v současnosti zaslán do jiného časopisu pro posouzení (nebo bylo podáno vysvětlení v Komentářích pro editora).\"},{\"order\":2,\"content\":\"Soubor příspěvku je ve formátu OpenOffice, Microsoft Word, RTF nebo WordPerfect.\"},{\"order\":3,\"content\":\"URL odkazy na reference jsou uvedeny všude, kde to bylo možné.\"},{\"order\":4,\"content\":\"Text má jednoduché řádkování; písmo má velikost 12; je použita spíše kurzíva a ne podtržení (kromě url adres); všechny ilustrace tabulky a obrázky jsou umístěny spíše v textu, než na konci.\"},{\"order\":5,\"content\":\"Text odpovídá stylistickým a bibliografickým požadavkům uvedeným v <a href=\\\"http:\\/\\/ojs\\/index.php\\/sr\\/about\\/submissions#authorGuidelines\\\" target=\\\"_new\\\">Pokynech pro autory<\\/a>, které se nachází na stránce O časopisu.\"}]',NULL),(1,'da_DK','abbreviation',NULL,NULL),(1,'da_DK','acronym',NULL,NULL),(1,'da_DK','authorInformation','Er du interesseret i at fremsende et manuskript til dette tidsskrift? Vi anbefaler, at du gennemgår siden <a href=\"http://ojs/index.php/sr/about\">Om tidsskriftet</a>, hvor du kan finde tidsskriftets sektionspolitikker, samt <a href=\"http://ojs/index.php/sr/about/submissions#authorGuidelines\">Retningslinjer for forfattere</a>. Forfattere skal <a href=\"http://ojs/index.php/sr/user/register\">tilmelde sig</a> tidsskriftet, inden de kan fremsende et manuskript. Hvis de allerede er tilmeldt, kan de blot <a href=\"http://ojs/index.php/index/login\">logge på</a> og påbegynde processen, der består af 5 trin.',NULL),(1,'da_DK','clockssLicense','Dette tidsskrift anvender CLOCKSS systemet for at understøtte et udbredt arkiveringssystem blandt deltagende biblioteker og giver disse biblioteker ret til permanent at arkivere tidsskriftet til bevaring og eventuel genoprettelse. <a href=\"http://clockss.org/\">Mere...</a>',NULL),(1,'da_DK','description',NULL,NULL),(1,'da_DK','librarianInformation','Vi opfordrer forskningsbibliotekarer til at anføre dette tidsskrift på listen over deres biblioteks beholdning af elektroniske tidsskrifter. Det kan desuden være nyttigt at bemærke, at dette tidsskrifts open source-publiceringssystem er velegnet til biblioteker, som kan være værter for det til deres fakultetsmedlemmer, som kan bruge det til de tidsskrifter, de er ved at redigere (se <a href=\"http://pkp.sfu.ca/ojs\">Open Journal Systems</a>).',NULL),(1,'da_DK','lockssLicense','Dette tidsskrift benytter LOCKSS-systemet til at oprette et distribueret arkiveringssystem blandt deltagende biblioteker og tillader disse biblioteker at oprette permanente arkiver af tidsskriftet med henblik på bevaring og genskabelse. <a href=\"http://lockss.stanford.edu/\">Mere...</a>',NULL),(1,'da_DK','name',NULL,NULL),(1,'da_DK','openAccessPolicy','Dette tidsskrift tilbyder øjeblikkelig Open Access til tidsskriftets indhold på baggrund af princippet om, at gratis offentlig adgang til forskning understøtter en større global udveksling af viden.',NULL),(1,'da_DK','privacyStatement','<p>De navne og adresser, der angives på dette tidsskrifts websted, vil udelukkende blive anvendt til tidsskriftets angivne formål og vil ikke blive gjort tilgængelige til andre formål eller for andre parter.</p>',NULL),(1,'da_DK','readerInformation','Vi opfordrer læsere til at tilmelde sig nyhedstjenesten vedrørende publiceringer fra dette tidsskrift. Brug linket <a href=\"http://ojs/index.php/sr/user/register\">$contextPath}/user/register\">Registrer</a> øverst på tidsskriftets hjemmeside. Denne registrering medfører, at læseren via e-mail modtager indholdsfortegnelsen fra hvert nyt nummer. Denne liste giver også tidsskriftet mulighed for at hævde at have et vist supportniveau eller et vist antal læsere. Se tidsskriftets<a href=\"http://ojs/index.php/sr/about/submissions#privacyStatement\">Erklæring om beskyttelse af personlige oplysninger</a>, der garanterer læserne, at deres navne og e-mail-adresser ikke benyttes til andre formål.',NULL),(1,'da_DK','submissionChecklist','[{\"order\":1,\"content\":\"Indsendelsen er ikke tidligere blevet publiceret, og det er heller ikke sendt til et andet tidsskrift med henblik på at komme i betragtning til at blive publiceret (eller der er angivet en forklaring under kommentarfeltet \'Kommentarer til redaktøren\').\"},{\"order\":2,\"content\":\"Indsendelsesfilen er i et OpenOffice, Microsoft Word- eller RTF-dokumentfilformat.\"},{\"order\":3,\"content\":\"Der er angivet URL-adresser til referencerne, hvor de er tilgængelige.\"},{\"order\":4,\"content\":\"Teksten er skrevet med enkelt linjeafstand, benytter en 12-punktsskrifttype og anvender kursiv i stedet for understregning (med undtagelse af URL-adresser), og alle illustrationer, figurer og tabeller er placeret i teksten på passende steder i stedet for til sidst.\"},{\"order\":5,\"content\":\"Teksten opfylder de stilistiske og bibliografiske krav, der er beskrevet under <a href=\\\"http:\\/\\/ojs\\/index.php\\/sr\\/about\\/submissions#authorGuidelines\\\" target=\\\"_new\\\"> Retningslinjer for forfattere <\\/a>, som findes under Om tidsskriftet.\"}]',NULL),(1,'de_DE','abbreviation',NULL,NULL),(1,'de_DE','acronym',NULL,NULL),(1,'de_DE','authorInformation','Haben Sie Interesse, einen Beitrag bei dieser Zeitschrift einzureichen? Wir möchten Sie auf <a href=\"http://ojs/index.php/sr/about\">Über uns</a>, wo Sie die Richtlinien der Zeitschrift einsehen können, und auf <a href=\"http://ojs/index.php/sr/about/submissions#authorGuidelines\">Richtlinien für Autor/innen</a> verweisen. Autor/innen müssen sich <a href=\"http://ojs/index.php/sr/user/register\">registrieren</a>, bevor Sie einen Beitrag bei der Zeitschrift einreichen können. Falls Sie bereits angemeldet sind, einfach <a href=\"http://ojs/index.php/sr/login\">einloggen</a> und die \"Fünf Schritte zur Einreichung\" abarbeiten.',NULL),(1,'de_DE','clockssLicense','Diese Zeitschrift benutzt das CLOCKSS-System, um ein verteiltes Archivsystem zwischen teilnehmenden Bibliotheken zu ermöglichen. Sie erlaubt diesen Bibliotheken, dauerhafte Archive der Zeitschrift zu Zwecken des Bewahrens und Wiederherstellens anzulegen. <a href=\"http://clockss.org/\">Mehr...</a>',NULL),(1,'de_DE','description',NULL,NULL),(1,'de_DE','librarianInformation','Wir ermutigen Forschungsbibliotheken, diese Zeitschrift in die Liste ihrer elektronischen Zeitschriften aufzunehmen. Darüber hinaus bietet das Open Source Veröffentlichungssystem dieser Zeitschrift Bibliotheken die Möglichkeit, Zeitschriften, an denen Mitglieder ihrer Fakultät mitarbeiten, online bereitzustellen. Siehe <a href=\"http://pkp.sfu.ca\">Public Knowledge Project</a>.',NULL),(1,'de_DE','lockssLicense','Diese Zeitschrift verwendet das LOCKSS-System, um mit Hilfe der teilnehmenden Bibliotheken ein dezentralen Achivierungssystem zu schaffen, bei dem diese Bibliotheken die Zeitschrift zu Aufbewahrungs- und Wiederherstellungszwecken permanent archivieren. <a href=\"http://www.lockss.org/\">Mehr...</a>',NULL),(1,'de_DE','name',NULL,NULL),(1,'de_DE','openAccessPolicy','Diese Zeitschrift bietet freien Zugang (Open Access) zu ihren Inhalten, entsprechend der Grundannahme, dass die freie öffentliche Verfügbarkeit von Forschung einem weltweiten Wissensaustausch zugute kommt.',NULL),(1,'de_DE','privacyStatement','<p>Namen und E-Mail-Adressen, die auf den Webseiten der Zeitschrift eingegeben werden, werden ausschließlich zu den angegebenen Zwecken verwendet und nicht an Dritte weitergegeben.</p>',NULL),(1,'de_DE','readerInformation','Wir empfehlen unseren Leser/innen, sich für die Benachrichtigung bei neuen Veröffentlichungen dieser Zeitschrift einzutragen. Verwenden Sie den <a href=\"http://ojs/index.php/sr/user/register\">Registrieren</a>-Link oben auf der Startseite der Zeitschrift. Angemeldete Leser/innen erhalten zu jeder neuen Ausgabe der Zeitschrift die Inhaltsangabe per E-Mail zugeschickt. Die Anmeldung ermöglicht es gleichzeitig der Zeitschrift, einen gewissen Grad an Unterstützung oder eine gewisse Leser/innenschaft zu belegen. Siehe die Regelungen zum <a href=\"http://ojs/index.php/sr/about/submissions#privacyStatement\">Schutz personenbezogener Daten</a> der Zeitschrift, die sicherstellen, dass weder Namen noch E-Mail-Adressen registrierter Benutzer/innen zu anderen Zwecken verwendet werden.',NULL),(1,'de_DE','submissionChecklist','[{\"order\":1,\"content\":\"Der Beitrag ist bisher unveröffentlicht und wurde auch keiner anderen Zeitschrift vorgelegt (andernfalls ist eine Erklärung in \\\"Kommentare für die Redaktion\\\" beigefügt).\"},{\"order\":2,\"content\":\"Die Datei liegt im Format Microsoft Word, RTF oder WordPerfect vor.\"},{\"order\":3,\"content\":\"Soweit möglich, wurden den Literaturangaben URLs beigefügt.\"},{\"order\":4,\"content\":\"Der Text liegt mit einfachem Zeilenabstand vor, Schriftgröße 12, gegebenenfalls kursiv, nicht unterstrichen (mit Ausnahme der URL-Adressen); alle Illustrationen, Grafiken und Tabellen sind an geeigneter Stelle im Text eingefügt und nicht am Textende.\"},{\"order\":5,\"content\":\"Der Text folgt den stilistischen und bibliografischen Vorgaben in<a href=\\\"http:\\/\\/ojs\\/index.php\\/sr\\/about\\/submissions#authorGuidelines\\\"> Richtlinien für Autor\\/innen<\\/a> , die unter \\\"Über uns\\\" zu finden sind.\"}]',NULL),(1,'en_US','abbreviation',NULL,NULL),(1,'en_US','acronym',NULL,NULL),(1,'en_US','authorInformation','Interested in submitting to this journal? We recommend that you review the <a href=\"http://ojs/index.php/sr/about\">About the Journal</a> page for the journal\'s section policies, as well as the <a href=\"http://ojs/index.php/sr/about/submissions#authorGuidelines\">Author Guidelines</a>. Authors need to <a href=\"http://ojs/index.php/sr/user/register\">register</a> with the journal prior to submitting or, if already registered, can simply <a href=\"http://ojs/index.php/index/login\">log in</a> and begin the five-step process.',NULL),(1,'en_US','clockssLicense','This journal utilizes the CLOCKSS system to create a distributed archiving system among participating libraries and permits those libraries to create permanent archives of the journal for purposes of preservation and restoration. <a href=\"http://clockss.org/\">More...</a>',NULL),(1,'en_US','description',NULL,NULL),(1,'en_US','librarianInformation','We encourage research librarians to list this journal among their library\'s electronic journal holdings. As well, it may be worth noting that this journal\'s open source publishing system is suitable for libraries to host for their faculty members to use with journals they are involved in editing (see <a href=\"http://pkp.sfu.ca/ojs\">Open Journal Systems</a>).',NULL),(1,'en_US','lockssLicense','This journal utilizes the LOCKSS system to create a distributed archiving system among participating libraries and permits those libraries to create permanent archives of the journal for purposes of preservation and restoration. <a href=\"http://www.lockss.org/\">More...</a>',NULL),(1,'en_US','name',NULL,NULL),(1,'en_US','openAccessPolicy','This journal provides immediate open access to its content on the principle that making research freely available to the public supports a greater global exchange of knowledge.',NULL),(1,'en_US','privacyStatement','<p>The names and email addresses entered in this journal site will be used exclusively for the stated purposes of this journal and will not be made available for any other purpose or to any other party.</p>',NULL),(1,'en_US','readerInformation','We encourage readers to sign up for the publishing notification service for this journal. Use the <a href=\"http://ojs/index.php/sr/user/register\">Register</a> link at the top of the home page for the journal. This registration will result in the reader receiving the Table of Contents by email for each new issue of the journal. This list also allows the journal to claim a certain level of support or readership. See the journal\'s <a href=\"http://ojs/index.php/sr/about/submissions#privacyStatement\">Privacy Statement</a>, which assures readers that their name and email address will not be used for other purposes.',NULL),(1,'en_US','submissionChecklist','[{\"order\":1,\"content\":\"The submission has not been previously published, nor is it before another journal for consideration (or an explanation has been provided in Comments to the Editor).\"},{\"order\":2,\"content\":\"The submission file is in OpenOffice, Microsoft Word, or RTF document file format.\"},{\"order\":3,\"content\":\"Where available, URLs for the references have been provided.\"},{\"order\":4,\"content\":\"The text is single-spaced; uses a 12-point font; employs italics, rather than underlining (except with URL addresses); and all illustrations, figures, and tables are placed within the text at the appropriate points, rather than at the end.\"},{\"order\":5,\"content\":\"The text adheres to the stylistic and bibliographic requirements outlined in the Author Guidelines.\"}]',NULL),(1,'it_IT','abbreviation',NULL,NULL),(1,'it_IT','acronym',NULL,NULL),(1,'it_IT','authorInformation','Interessato a proporre contributi a questa rivista? Raccomandiamo di rivedere la pagina <a href=\"http://ojs/index.php/sr/about\">Info</a>, in particolare le politiche delle sezioni della  rivista, e le <a href=\"http://ojs/index.php/sr/about/submissions#authorGuidelines\">linee guida per l\'autore</a>. Gli autori devono <a href=\"http://ojs/index.php/sr/user/register\">registrarsi</a> per  effettuare la prima submission alla rivista, o se gi&#x00E0; registrato pu&#x00F9; semplicemente fare il <a href=\"http://ojs/index.php/index/login\">log in</a> e cominciare il processo guidato in 5 fasi.',NULL),(1,'it_IT','clockssLicense','Questa rivista usa il sistema CLOCKSS per creare un sistema di archiviazione distribuito tra le biblioteche partecipanti e permette a queste biblioteche di creare archivi permanebti di riviste per conservazione e ripristinio. Vedi di più sul sito di <a href=\"http://clockss.org/\">CLOCKSS</a>',NULL),(1,'it_IT','description',NULL,NULL),(1,'it_IT','librarianInformation','Suggeriamo ai bibliotecari di aggiungere questa rivista nel loro sistema di reference linking. Inoltre, segnaliamo che il sistema open source utilizzato per la pubblicazione di questa rivista potrebbe essere proposto anche per la gestione di riviste nelle quali i bibliotecari siano coinvolti (vedi <a href=\"http://pkp.sfu.ca/ojs\">Open Journal Systems</a> per ulteriori dettagli).',NULL),(1,'it_IT','lockssLicense','Questa rivista partecipa a LOCKSS  per creare un sistema di archiviazione distribuito tra biblioteche e permette a queste  di creare archivi permanenti della rivista a scopo di conservazione. <a href=\"http://www.lockss.org/\">Prosegui...</a>',NULL),(1,'it_IT','name',NULL,NULL),(1,'it_IT','openAccessPolicy','Questa rivista fornisce accesso aperto ai suoi contenuti, ritendendo che rendere le ricerche disponibili liberamente al pubblico migliori lo scambio della conoscenza a livello globale.',NULL),(1,'it_IT','privacyStatement','<p>I nomi e gli indirizzi email inseriti in questo sito della rivista  saranno utilizzati esclusivamente per gli scopi dichiarati e non verranno resi disponibili per nessun altro uso.</p>',NULL),(1,'it_IT','readerInformation','Incoraggiamo i lettori a iscriversi al servizio di notifica di questa rivista. Usa il link <a href=\"http://ojs/index.php/sr/user/register\">Registra</a> in alto alla  homepage della rivista. Con questa registrazione il lettore ricever&#x00E0; l\'indice per email di ogni nuova uscita della rivista.  Vedi la <a href=\"http://ojs/index.php/sr/about/submissions#privacyStatement\">dichiarazione sulla privacy</a> della rivista che assicura il lettori che il loro nome e indirizzo email non sar&#x00E0; usato per altri fini.',NULL),(1,'it_IT','submissionChecklist','[{\"order\":1,\"content\":\"La submission non è stata precedentemente pubblicata, né proposta a un\'altra rivista (oppure si fornisce una spiegazione all\'editor nei commenti).\"},{\"order\":2,\"content\":\"Il file di submission è in un formato OpenOffice, Microsoft Word, RTF, o WordPerfect.\"},{\"order\":3,\"content\":\"Dove possibile, sono stati fornite gli URL delle referenze.\"},{\"order\":4,\"content\":\"Il testo ha spaziatura singola; usa un font 12 punti ; impiega il corsivo invece della sottolineatura (eccetto con gli indirizzi URL); e tutte le illustrazioni, figure, e tabelle sono posizionate  all\'interno del testo nei punti appropriati, piuttosto che alla fine.\"},{\"order\":5,\"content\":\"Il testo aderisce alle richieste stilistiche e bibliografiche riassunte nelle <a href=\\\"http:\\/\\/ojs\\/index.php\\/sr\\/about\\/submissions#authorGuidelines\\\">linee guida dell\'autore<\\/a>, che si trova nella pagina di informazioni sulla rivista.\"}]',NULL),(1,'pt_BR','abbreviation',NULL,NULL),(1,'pt_BR','acronym',NULL,NULL),(1,'pt_BR','authorInformation','Interessado em enviar para esta revista? Recomendamos que você analise a <a href=\"http://ojs/index.php/sr/about\">About the Journal</a> página para as políticas de seção da revista, bem como as <a href=\"http://ojs/index.php/sr/about/submissions#authorGuidelines\">Diretrizes para autores</a>. Autores precisam <a href=\"http://ojs/index.php/sr/user/register\">registrar-se</a> com a revista antes de enviar ou, se já estiver registrado, pode simplesmente <a href=\"http://ojs/index.php/index/login\"> fazer log in</a> e iniciar o processo de cinco etapas.',NULL),(1,'pt_BR','clockssLicense','Esta revista utiliza o sistema CLOCKSS para criar um sistema de arquivos distribuídos entre bibliotecas participantes e permite que tais bibliotecas mantenham cópias permanentes da revista para propósitos de preservação e recuperação. <a href=\"http://clockss.org/\">Saiba mais...</a>',NULL),(1,'pt_BR','description',NULL,NULL),(1,'pt_BR','librarianInformation','Encorajamos bibliotecários de pesquisa a listar este periódico entre os itens de periódicos eletrônicos de sua biblioteca. Além disso, pode ser interessante notar que o sistema de publicação de código aberto desta revista é adequado para as bibliotecas hospedarem seus professores para usarem com os periódicos envolvidos na edição (veja <a href=\"http://pkp.sfu.ca/ojs\">Open Journal Systems</a>).',NULL),(1,'pt_BR','lockssLicense','Este periódico utiliza o sistema LOCKSS para criar um sistema de arquivamento distribuído entre as bibliotecas participantes e permite que essas bibliotecas criem arquivos permanentes do periódico para fins de preservação e restauração. <a href=\"http://www.lockss.org/\">More...</a>',NULL),(1,'pt_BR','name',NULL,NULL),(1,'pt_BR','openAccessPolicy','Esta revista oferece acesso livre imediato ao seu conteúdo, seguindo o princípio de que disponibilizar gratuitamente o conhecimento científico ao público proporciona maior democratização mundial do conhecimento.',NULL),(1,'pt_BR','privacyStatement','<p>Os nomes e endereços informados nesta revista serão usados exclusivamente para os serviços prestados por esta publicação, não sendo disponibilizados para outras finalidades ou a terceiros.</p>',NULL),(1,'pt_BR','readerInformation','Incentivamos os leitores a se inscreverem no serviço de notificação de publicação deste periódico. Use o <a href=\"http://ojs/index.php/sr/user/register\">Registrar</a> link na parte superior da página inicial da revista. Esse registro fará com que o leitor receba o Índice por e-mail para cada nova edição da revista. Essa lista também permite que o periódico reivindique um certo nível de suporte ou leitores. Veja a <a href=\"http://ojs/index.php/sr/about/submissions#privacyStatement\">Declaração de privacidade da revista</a>, que garante aos leitores que seu nome e endereço de e-mail não serão usados para outros fins.',NULL),(1,'pt_BR','submissionChecklist','[{\"order\":1,\"content\":\"A contribuição é original e inédita, e não está sendo avaliada para publicação por outra revista; caso contrário, deve-se justificar em \\\"Comentários ao editor\\\".\"},{\"order\":2,\"content\":\"O arquivo da submissão está em formato Microsoft Word, OpenOffice ou RTF.\"},{\"order\":3,\"content\":\"Onde disponível, os URLs para as referências foram fornecidos.\"},{\"order\":4,\"content\":\"O texto está em espaço simples; usa uma fonte de 12-pontos; emprega itálico em vez de sublinhado (exceto em endereços URL); as figuras e tabelas estão inseridas no texto, não no final do documento na forma de anexos.\"},{\"order\":5,\"content\":\"O texto segue os padrões de estilo e requisitos bibliográficos descritos em <a href=\\\"http:\\/\\/ojs\\/index.php\\/sr\\/about\\/submissions#authorGuidelines\\\">Diretrizes para Autores<\\/a>, na página Sobre a Revista.\"}]',NULL),(1,'ru_RU','abbreviation','ScienceResult',NULL),(1,'ru_RU','acronym','SR',NULL),(1,'ru_RU','authorInformation','Вы хотите отправить материал для публикации в этом журнале? Рекомендуем вам посмотреть раздел <a href=\"http://ojs/index.php/sr/about\">«О журнале»</a>, где вы сможете ознакомиться с правилами разделов журнала, а также с <a href=\"http://ojs/index.php/sr/about/submissions#authorGuidelines\">Руководством для автора</a>. Авторам нужно <a href=\"http://ojs/index.php/sr/user/register\">зарегистрироваться</a> в журнале перед отправкой материалов, или, если вы уже зарегистрированы, можно просто <a href=\"http://ojs/index.php/index/login\">войти</a> со своей учетной записью и начать процесс отправки, состоящий из пяти шагов.',NULL),(1,'ru_RU','clockssLicense','Этот журнал использует систему CLOCKSS для создания распределенной архивной системы между участвующими в этой системе библиотеками и разрешает этим библиотекам создавать постоянные архивы журнала в целях сохранения и восстановления. <a href=\"http://clockss.org/\">Подробнее...</a>',NULL),(1,'ru_RU','description','<p>Описание журнала представлено тут, надо его подкорректировать</p>',NULL),(1,'ru_RU','homepageImage','{\"name\":\"журнал.png\",\"uploadName\":\"homepageImage_ru_RU.webp\",\"width\":282,\"height\":320,\"dateUploaded\":\"2022-10-12 12:01:04\",\"altText\":\"Серия журналов 100 битв которые изменили мир\"}',NULL),(1,'ru_RU','journalThumbnail','{\"name\":\"журнал.png\",\"uploadName\":\"journalThumbnail_ru_RU.webp\",\"width\":282,\"height\":320,\"dateUploaded\":\"2022-10-12 12:01:04\",\"altText\":\"100 битв которые изменили мир\"}',NULL),(1,'ru_RU','librarianInformation','Мы надеемся, что сотрудники библиотек внесут этот журнал в список электронных журналов своей библиотеки. Следует отметить, что открытая издательская система этого журнала также подходит для того, чтобы библиотеки могли разместить собственные электронные журналы, в редактировании которых участвуют преподаватели и научные работники (подробнее можно посмотреть на <a href=\"http://pkp.sfu.ca/ojs\">Open Journal Systems</a>.',NULL),(1,'ru_RU','lockssLicense','Этот журнал использует систему LOCKSS для создания распределенной архивной системы между участвующими в этой системе библиотеками и разрешает этим библиотекам создавать постоянные архивы журнала в целях сохранения и восстановления. <a href=\"http://www.lockss.org/\">Подробнее...</a>',NULL),(1,'ru_RU','name','Научные результаты',NULL),(1,'ru_RU','openAccessPolicy','Этот журнал предоставляет непосредственный открытый доступ к своему контенту, исходя из следующего принципа: свободный открытый доступ к результатам исследований способствует увеличению глобального обмена знаниями.',NULL),(1,'ru_RU','privacyStatement','<p>Имена и адреса электронной почты, введенные на сайте этого журнала, будут использованы исключительно для целей, обозначенных этим журналом, и не будут использованы для каких-либо других целей или предоставлены другим лицам и организациям.</p>',NULL),(1,'ru_RU','readerInformation','Мы приглашаем наших читателей подписаться на уведомления о выходе номеров этого журнала. Используйте ссылку <a href=\"http://ojs/index.php/sr/user/register\">РЕГИСТРАЦИЯ</a> в верхней части главной страницы журнала. Эта регистрация позволит читателю получать на электронную почту содержание каждого нового номера журнала. Этот список также позволяет журналу говорить об определенном уровне поддержки или количестве читателей. Посмотрите также страницу <a href=\"http://ojs/index.php/sr/about/submissions#privacyStatement\">Заявление о конфиденциальности</a>, которая позволяет читателям убедиться в том, что их имя и адрес электронной почты не будут использованы для других целей.',NULL),(1,'ru_RU','submissionChecklist','[{\"order\":1,\"content\":\"Этот материал ранее не был опубликован, а также не был представлен для рассмотрения и публикации в другом журнале (или дано объяснение этого в Комментариях для редактора).\"},{\"order\":2,\"content\":\"Файл с материалом представлен в формате документа OpenOffice, Microsoft Word или RTF.\"},{\"order\":3,\"content\":\"Приведены полные интернет-адреса (URL) для ссылок там, где это возможно.\"},{\"order\":4,\"content\":\"Текст набран с одинарным межстрочным интервалом; используется кегль шрифта в 12 пунктов; для выделения используется курсив, а не подчеркивание (за исключением URL-адресов); все иллюстрации, графики и таблицы расположены в соответствующих местах в тексте, а не в конце документа.\"},{\"order\":5,\"content\":\"Текст соответствует стилистическим и библиографческим требованиям, описанным в <a href=\\\"http:\\/\\/ojs\\/index.php\\/sr\\/about\\/submissions#authorGuidelines\\\" target=\\\"_new\\\">Руководстве для авторов<\\/a>, которое можно найти на странице «О журнале».\"}]',NULL);
/*!40000 ALTER TABLE `journal_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journals`
--

DROP TABLE IF EXISTS `journals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `journals` (
  `journal_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `path` varchar(32) NOT NULL,
  `seq` double(8,2) NOT NULL DEFAULT '0.00' COMMENT 'Used to order lists of journals',
  `primary_locale` varchar(14) NOT NULL,
  `enabled` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Controls whether or not the journal is considered "live" and will appear on the website. (Note that disabled journals may still be accessible, but only if the user knows the URL.)',
  PRIMARY KEY (`journal_id`),
  UNIQUE KEY `journals_path` (`path`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journals`
--

LOCK TABLES `journals` WRITE;
/*!40000 ALTER TABLE `journals` DISABLE KEYS */;
INSERT INTO `journals` VALUES (1,'sr',1.00,'ru_RU',1);
/*!40000 ALTER TABLE `journals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_file_settings`
--

DROP TABLE IF EXISTS `library_file_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `library_file_settings` (
  `file_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object|date)',
  UNIQUE KEY `library_file_settings_pkey` (`file_id`,`locale`,`setting_name`),
  KEY `library_file_settings_id` (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_file_settings`
--

LOCK TABLES `library_file_settings` WRITE;
/*!40000 ALTER TABLE `library_file_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `library_file_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_files`
--

DROP TABLE IF EXISTS `library_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `library_files` (
  `file_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `context_id` bigint(20) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `original_file_name` varchar(255) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `file_size` bigint(20) NOT NULL,
  `type` smallint(6) NOT NULL,
  `date_uploaded` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `public_access` smallint(6) DEFAULT '0',
  PRIMARY KEY (`file_id`),
  KEY `library_files_context_id` (`context_id`),
  KEY `library_files_submission_id` (`submission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_files`
--

LOCK TABLES `library_files` WRITE;
/*!40000 ALTER TABLE `library_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `library_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metadata_description_settings`
--

DROP TABLE IF EXISTS `metadata_description_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metadata_description_settings` (
  `metadata_description_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `metadata_descripton_settings_pkey` (`metadata_description_id`,`locale`,`setting_name`),
  KEY `metadata_description_settings_id` (`metadata_description_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metadata_description_settings`
--

LOCK TABLES `metadata_description_settings` WRITE;
/*!40000 ALTER TABLE `metadata_description_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `metadata_description_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metadata_descriptions`
--

DROP TABLE IF EXISTS `metadata_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metadata_descriptions` (
  `metadata_description_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assoc_type` bigint(20) NOT NULL DEFAULT '0',
  `assoc_id` bigint(20) NOT NULL DEFAULT '0',
  `schema_namespace` varchar(255) NOT NULL,
  `schema_name` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `seq` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`metadata_description_id`),
  KEY `metadata_descriptions_assoc` (`assoc_type`,`assoc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metadata_descriptions`
--

LOCK TABLES `metadata_descriptions` WRITE;
/*!40000 ALTER TABLE `metadata_descriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `metadata_descriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metrics`
--

DROP TABLE IF EXISTS `metrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metrics` (
  `load_id` varchar(255) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `pkp_section_id` bigint(20) DEFAULT NULL,
  `assoc_object_type` bigint(20) DEFAULT NULL,
  `assoc_object_id` bigint(20) DEFAULT NULL,
  `submission_id` bigint(20) DEFAULT NULL,
  `representation_id` bigint(20) DEFAULT NULL,
  `assoc_type` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `day` varchar(8) DEFAULT NULL,
  `month` varchar(6) DEFAULT NULL,
  `file_type` smallint(6) DEFAULT NULL,
  `country_id` varchar(2) DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `metric_type` varchar(255) NOT NULL,
  `metric` int(11) NOT NULL,
  KEY `metrics_load_id` (`load_id`),
  KEY `metrics_metric_type_context_id` (`metric_type`,`context_id`),
  KEY `metrics_metric_type_submission_id_assoc_type` (`metric_type`,`submission_id`,`assoc_type`),
  KEY `metrics_metric_type_submission_id_assoc` (`metric_type`,`context_id`,`assoc_type`,`assoc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metrics`
--

LOCK TABLES `metrics` WRITE;
/*!40000 ALTER TABLE `metrics` DISABLE KEYS */;
INSERT INTO `metrics` VALUES ('usage_events_20221012.log',1,NULL,NULL,NULL,NULL,NULL,256,1,'20221012','202210',NULL,NULL,NULL,NULL,'ojs::counter',86),('usage_events_20221012.log',1,NULL,NULL,NULL,NULL,NULL,259,1,'20221012','202210',NULL,NULL,NULL,NULL,'ojs::counter',3),('usage_events_20221012.log',1,NULL,259,1,NULL,NULL,261,1,'20221012','202210',2,NULL,NULL,NULL,'ojs::counter',2);
/*!40000 ALTER TABLE `metrics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navigation_menu_item_assignment_settings`
--

DROP TABLE IF EXISTS `navigation_menu_item_assignment_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `navigation_menu_item_assignment_settings` (
  `navigation_menu_item_assignment_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `navigation_menu_item_assignment_settings_pkey` (`navigation_menu_item_assignment_id`,`locale`,`setting_name`),
  KEY `assignment_settings_navigation_menu_item_assignment_id` (`navigation_menu_item_assignment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navigation_menu_item_assignment_settings`
--

LOCK TABLES `navigation_menu_item_assignment_settings` WRITE;
/*!40000 ALTER TABLE `navigation_menu_item_assignment_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `navigation_menu_item_assignment_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navigation_menu_item_assignments`
--

DROP TABLE IF EXISTS `navigation_menu_item_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `navigation_menu_item_assignments` (
  `navigation_menu_item_assignment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `navigation_menu_id` bigint(20) NOT NULL,
  `navigation_menu_item_id` bigint(20) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `seq` bigint(20) DEFAULT '0',
  PRIMARY KEY (`navigation_menu_item_assignment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navigation_menu_item_assignments`
--

LOCK TABLES `navigation_menu_item_assignments` WRITE;
/*!40000 ALTER TABLE `navigation_menu_item_assignments` DISABLE KEYS */;
INSERT INTO `navigation_menu_item_assignments` VALUES (1,1,1,0,0),(2,1,2,0,1),(3,1,3,0,2),(4,1,4,3,0),(5,1,5,3,1),(6,1,6,3,2),(7,1,7,3,3),(8,2,8,0,0),(9,2,9,0,1),(10,2,10,0,2),(11,2,11,10,0),(12,2,12,10,1),(13,2,13,10,2),(14,2,14,10,3),(15,3,15,0,0),(16,3,16,0,1),(17,3,17,0,2),(18,3,18,0,3),(19,3,19,18,0),(20,3,20,18,1),(21,3,21,18,2),(22,3,22,18,3),(23,3,23,18,4);
/*!40000 ALTER TABLE `navigation_menu_item_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navigation_menu_item_settings`
--

DROP TABLE IF EXISTS `navigation_menu_item_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `navigation_menu_item_settings` (
  `navigation_menu_item_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` longtext,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `navigation_menu_item_settings_pkey` (`navigation_menu_item_id`,`locale`,`setting_name`),
  KEY `navigation_menu_item_settings_navigation_menu_id` (`navigation_menu_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navigation_menu_item_settings`
--

LOCK TABLES `navigation_menu_item_settings` WRITE;
/*!40000 ALTER TABLE `navigation_menu_item_settings` DISABLE KEYS */;
INSERT INTO `navigation_menu_item_settings` VALUES (1,'','titleLocaleKey','navigation.register','string'),(2,'','titleLocaleKey','navigation.login','string'),(3,'','titleLocaleKey','{$loggedInUsername}','string'),(4,'','titleLocaleKey','navigation.dashboard','string'),(5,'','titleLocaleKey','common.viewProfile','string'),(6,'','titleLocaleKey','navigation.admin','string'),(7,'','titleLocaleKey','user.logOut','string'),(8,'','titleLocaleKey','navigation.register','string'),(9,'','titleLocaleKey','navigation.login','string'),(10,'','titleLocaleKey','{$loggedInUsername}','string'),(11,'','titleLocaleKey','navigation.dashboard','string'),(12,'','titleLocaleKey','common.viewProfile','string'),(13,'','titleLocaleKey','navigation.admin','string'),(14,'','titleLocaleKey','user.logOut','string'),(15,'','titleLocaleKey','navigation.current','string'),(16,'','titleLocaleKey','navigation.archives','string'),(17,'','titleLocaleKey','manager.announcements','string'),(18,'','titleLocaleKey','navigation.about','string'),(19,'','titleLocaleKey','about.aboutContext','string'),(20,'','titleLocaleKey','about.submissions','string'),(21,'','titleLocaleKey','about.editorialTeam','string'),(22,'','titleLocaleKey','manager.setup.privacyStatement','string'),(23,'','titleLocaleKey','about.contact','string'),(24,'','titleLocaleKey','common.search','string');
/*!40000 ALTER TABLE `navigation_menu_item_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navigation_menu_items`
--

DROP TABLE IF EXISTS `navigation_menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `navigation_menu_items` (
  `navigation_menu_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `context_id` bigint(20) NOT NULL,
  `path` varchar(255) DEFAULT '',
  `type` varchar(255) DEFAULT '',
  PRIMARY KEY (`navigation_menu_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navigation_menu_items`
--

LOCK TABLES `navigation_menu_items` WRITE;
/*!40000 ALTER TABLE `navigation_menu_items` DISABLE KEYS */;
INSERT INTO `navigation_menu_items` VALUES (1,0,NULL,'NMI_TYPE_USER_REGISTER'),(2,0,NULL,'NMI_TYPE_USER_LOGIN'),(3,0,NULL,'NMI_TYPE_USER_DASHBOARD'),(4,0,NULL,'NMI_TYPE_USER_DASHBOARD'),(5,0,NULL,'NMI_TYPE_USER_PROFILE'),(6,0,NULL,'NMI_TYPE_ADMINISTRATION'),(7,0,NULL,'NMI_TYPE_USER_LOGOUT'),(8,1,NULL,'NMI_TYPE_USER_REGISTER'),(9,1,NULL,'NMI_TYPE_USER_LOGIN'),(10,1,NULL,'NMI_TYPE_USER_DASHBOARD'),(11,1,NULL,'NMI_TYPE_USER_DASHBOARD'),(12,1,NULL,'NMI_TYPE_USER_PROFILE'),(13,1,NULL,'NMI_TYPE_ADMINISTRATION'),(14,1,NULL,'NMI_TYPE_USER_LOGOUT'),(15,1,NULL,'NMI_TYPE_CURRENT'),(16,1,NULL,'NMI_TYPE_ARCHIVES'),(17,1,NULL,'NMI_TYPE_ANNOUNCEMENTS'),(18,1,NULL,'NMI_TYPE_ABOUT'),(19,1,NULL,'NMI_TYPE_ABOUT'),(20,1,NULL,'NMI_TYPE_SUBMISSIONS'),(21,1,NULL,'NMI_TYPE_EDITORIAL_TEAM'),(22,1,NULL,'NMI_TYPE_PRIVACY'),(23,1,NULL,'NMI_TYPE_CONTACT'),(24,1,NULL,'NMI_TYPE_SEARCH');
/*!40000 ALTER TABLE `navigation_menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navigation_menus`
--

DROP TABLE IF EXISTS `navigation_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `navigation_menus` (
  `navigation_menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `context_id` bigint(20) NOT NULL,
  `area_name` varchar(255) DEFAULT '',
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`navigation_menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navigation_menus`
--

LOCK TABLES `navigation_menus` WRITE;
/*!40000 ALTER TABLE `navigation_menus` DISABLE KEYS */;
INSERT INTO `navigation_menus` VALUES (1,0,'user','User Navigation Menu'),(2,1,'user','User Navigation Menu'),(3,1,'primary','Primary Navigation Menu');
/*!40000 ALTER TABLE `navigation_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `note_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assoc_type` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `contents` text,
  PRIMARY KEY (`note_id`),
  KEY `notes_assoc` (`assoc_type`,`assoc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_mail_list`
--

DROP TABLE IF EXISTS `notification_mail_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_mail_list` (
  `notification_mail_list_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(90) NOT NULL,
  `confirmed` smallint(6) NOT NULL DEFAULT '0',
  `token` varchar(40) NOT NULL,
  `context` bigint(20) NOT NULL,
  PRIMARY KEY (`notification_mail_list_id`),
  UNIQUE KEY `notification_mail_list_email_context` (`email`,`context`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_mail_list`
--

LOCK TABLES `notification_mail_list` WRITE;
/*!40000 ALTER TABLE `notification_mail_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification_mail_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_settings`
--

DROP TABLE IF EXISTS `notification_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_settings` (
  `notification_id` bigint(20) NOT NULL,
  `locale` varchar(14) DEFAULT NULL,
  `setting_name` varchar(64) NOT NULL,
  `setting_value` text NOT NULL,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object)',
  UNIQUE KEY `notification_settings_pkey` (`notification_id`,`locale`,`setting_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_settings`
--

LOCK TABLES `notification_settings` WRITE;
/*!40000 ALTER TABLE `notification_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_subscription_settings`
--

DROP TABLE IF EXISTS `notification_subscription_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_subscription_settings` (
  `setting_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `setting_name` varchar(64) NOT NULL,
  `setting_value` text NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `context` bigint(20) NOT NULL,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object)',
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_subscription_settings`
--

LOCK TABLES `notification_subscription_settings` WRITE;
/*!40000 ALTER TABLE `notification_subscription_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification_subscription_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `notification_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `context_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `level` bigint(20) NOT NULL,
  `type` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_read` datetime DEFAULT NULL,
  `assoc_type` bigint(20) DEFAULT NULL,
  `assoc_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`notification_id`),
  KEY `notifications_context_id_user_id` (`context_id`,`user_id`,`level`),
  KEY `notifications_context_id` (`context_id`,`level`),
  KEY `notifications_assoc` (`assoc_type`,`assoc_id`),
  KEY `notifications_user_id_level` (`user_id`,`level`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (15,1,1,2,268435477,'2022-10-12 18:46:35',NULL,259,1);
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oai_resumption_tokens`
--

DROP TABLE IF EXISTS `oai_resumption_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oai_resumption_tokens` (
  `token` varchar(32) NOT NULL,
  `expire` bigint(20) NOT NULL,
  `record_offset` int(11) NOT NULL,
  `params` text,
  UNIQUE KEY `oai_resumption_tokens_pkey` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oai_resumption_tokens`
--

LOCK TABLES `oai_resumption_tokens` WRITE;
/*!40000 ALTER TABLE `oai_resumption_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oai_resumption_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_settings`
--

DROP TABLE IF EXISTS `plugin_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plugin_settings` (
  `plugin_name` varchar(80) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `setting_name` varchar(80) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object)',
  UNIQUE KEY `plugin_settings_pkey` (`plugin_name`,`context_id`,`setting_name`),
  KEY `plugin_settings_plugin_name` (`plugin_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_settings`
--

LOCK TABLES `plugin_settings` WRITE;
/*!40000 ALTER TABLE `plugin_settings` DISABLE KEYS */;
INSERT INTO `plugin_settings` VALUES ('acronplugin',0,'crontab','[{\"className\":\"plugins.generic.usageStats.UsageStatsLoader\",\"frequency\":{\"hour\":24},\"args\":[\"autoStage\"]},{\"className\":\"plugins.generic.usageStats.UsageStatsLoader\",\"frequency\":{\"hour\":24},\"args\":[\"autoStage\"]},{\"className\":\"plugins.importexport.crossref.CrossrefInfoSender\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"plugins.importexport.datacite.DataciteInfoSender\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"plugins.importexport.doaj.DOAJInfoSender\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"plugins.generic.usageStats.UsageStatsLoader\",\"frequency\":{\"hour\":24},\"args\":[\"autoStage\"]},{\"className\":\"plugins.importexport.crossref.CrossrefInfoSender\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"plugins.importexport.datacite.DataciteInfoSender\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"plugins.importexport.doaj.DOAJInfoSender\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"plugins.generic.usageStats.UsageStatsLoader\",\"frequency\":{\"hour\":24},\"args\":[\"autoStage\"]},{\"className\":\"plugins.importexport.crossref.CrossrefInfoSender\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"plugins.importexport.datacite.DataciteInfoSender\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"plugins.importexport.doaj.DOAJInfoSender\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"plugins.generic.usageStats.UsageStatsLoader\",\"frequency\":{\"hour\":24},\"args\":[\"autoStage\"]},{\"className\":\"plugins.importexport.crossref.CrossrefInfoSender\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"plugins.importexport.datacite.DataciteInfoSender\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"plugins.importexport.doaj.DOAJInfoSender\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"plugins.generic.usageStats.UsageStatsLoader\",\"frequency\":{\"hour\":24},\"args\":[\"autoStage\"]},{\"className\":\"plugins.importexport.crossref.CrossrefInfoSender\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"plugins.importexport.datacite.DataciteInfoSender\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"plugins.importexport.doaj.DOAJInfoSender\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"lib.pkp.classes.task.ReviewReminder\",\"frequency\":{\"hour\":24},\"args\":[]},{\"className\":\"lib.pkp.classes.task.StatisticsReport\",\"frequency\":{\"day\":\"1\"},\"args\":[]},{\"className\":\"classes.tasks.SubscriptionExpiryReminder\",\"frequency\":{\"day\":\"1\"},\"args\":[]}]','object'),('acronplugin',0,'enabled','1','bool'),('defaultthemeplugin',0,'enabled','1','bool'),('defaultthemeplugin',1,'enabled','1','bool'),('developedbyblockplugin',0,'enabled','0','bool'),('developedbyblockplugin',0,'seq','0','int'),('developedbyblockplugin',1,'enabled','0','bool'),('developedbyblockplugin',1,'seq','0','int'),('dublincoremetaplugin',1,'enabled','1','bool'),('googlescholarplugin',1,'enabled','1','bool'),('htmlarticlegalleyplugin',1,'enabled','1','bool'),('informationblockplugin',1,'enabled','1','bool'),('informationblockplugin',1,'seq','7','int'),('languagetoggleblockplugin',0,'enabled','1','bool'),('languagetoggleblockplugin',0,'seq','4','int'),('languagetoggleblockplugin',1,'enabled','1','bool'),('languagetoggleblockplugin',1,'seq','4','int'),('lensgalleyplugin',1,'enabled','1','bool'),('pdfjsviewerplugin',1,'enabled','1','bool'),('resolverplugin',1,'enabled','1','bool'),('subscriptionblockplugin',1,'enabled','1','bool'),('subscriptionblockplugin',1,'seq','2','int'),('tinymceplugin',0,'enabled','1','bool'),('tinymceplugin',1,'enabled','1','bool'),('usageeventplugin',0,'enabled','1','bool'),('usageeventplugin',0,'uniqueSiteId','63468126770ff','string'),('usagestatsplugin',0,'accessLogFileParseRegex','/^(?P<ip>\\S+) \\S+ \\S+ \\[(?P<date>.*?)\\] \"\\S+ (?P<url>\\S+).*?\" (?P<returnCode>\\S+) \\S+ \".*?\" \"(?P<userAgent>.*?)\"/','string'),('usagestatsplugin',0,'chartType','bar','string'),('usagestatsplugin',0,'createLogFiles','1','bool'),('usagestatsplugin',0,'datasetMaxCount','4','string'),('usagestatsplugin',0,'enabled','1','bool'),('usagestatsplugin',0,'optionalColumns','[\"city\",\"region\"]','object'),('webfeedplugin',1,'displayItems','1','bool'),('webfeedplugin',1,'displayPage','homepage','string'),('webfeedplugin',1,'enabled','1','bool');
/*!40000 ALTER TABLE `plugin_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_categories`
--

DROP TABLE IF EXISTS `publication_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publication_categories` (
  `publication_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  UNIQUE KEY `publication_categories_id` (`publication_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_categories`
--

LOCK TABLES `publication_categories` WRITE;
/*!40000 ALTER TABLE `publication_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_galley_settings`
--

DROP TABLE IF EXISTS `publication_galley_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publication_galley_settings` (
  `galley_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  UNIQUE KEY `publication_galley_settings_pkey` (`galley_id`,`locale`,`setting_name`),
  KEY `publication_galley_settings_galley_id` (`galley_id`),
  KEY `publication_galley_settings_name_value` (`setting_name`(50),`setting_value`(150))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_galley_settings`
--

LOCK TABLES `publication_galley_settings` WRITE;
/*!40000 ALTER TABLE `publication_galley_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication_galley_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_galleys`
--

DROP TABLE IF EXISTS `publication_galleys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publication_galleys` (
  `galley_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `locale` varchar(14) DEFAULT NULL,
  `publication_id` bigint(20) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `submission_file_id` bigint(20) unsigned DEFAULT NULL,
  `seq` double(8,2) NOT NULL DEFAULT '0.00',
  `remote_url` varchar(2047) DEFAULT NULL,
  `is_approved` smallint(6) NOT NULL DEFAULT '0',
  `url_path` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`galley_id`),
  KEY `publication_galleys_publication_id` (`publication_id`),
  KEY `publication_galleys_url_path` (`url_path`),
  KEY `publication_galleys_submission_file_id_foreign` (`submission_file_id`),
  CONSTRAINT `publication_galleys_submission_file_id_foreign` FOREIGN KEY (`submission_file_id`) REFERENCES `submission_files` (`submission_file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_galleys`
--

LOCK TABLES `publication_galleys` WRITE;
/*!40000 ALTER TABLE `publication_galleys` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication_galleys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_settings`
--

DROP TABLE IF EXISTS `publication_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publication_settings` (
  `publication_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  UNIQUE KEY `publication_settings_pkey` (`publication_id`,`locale`,`setting_name`),
  KEY `publication_settings_publication_id` (`publication_id`),
  KEY `publication_settings_name_value` (`setting_name`(50),`setting_value`(150))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_settings`
--

LOCK TABLES `publication_settings` WRITE;
/*!40000 ALTER TABLE `publication_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publications`
--

DROP TABLE IF EXISTS `publications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publications` (
  `publication_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `access_status` bigint(20) DEFAULT '0',
  `date_published` date DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `locale` varchar(14) DEFAULT NULL,
  `primary_contact_id` bigint(20) DEFAULT NULL,
  `section_id` bigint(20) DEFAULT NULL,
  `seq` double(8,2) NOT NULL DEFAULT '0.00',
  `submission_id` bigint(20) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `url_path` varchar(64) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`publication_id`),
  KEY `publications_submission_id` (`submission_id`),
  KEY `publications_section_id` (`section_id`),
  KEY `publications_url_path` (`url_path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publications`
--

LOCK TABLES `publications` WRITE;
/*!40000 ALTER TABLE `publications` DISABLE KEYS */;
/*!40000 ALTER TABLE `publications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queries`
--

DROP TABLE IF EXISTS `queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `queries` (
  `query_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assoc_type` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `stage_id` smallint(6) NOT NULL,
  `seq` double(8,2) NOT NULL DEFAULT '0.00',
  `date_posted` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `closed` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`query_id`),
  KEY `queries_assoc_id` (`assoc_type`,`assoc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queries`
--

LOCK TABLES `queries` WRITE;
/*!40000 ALTER TABLE `queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `query_participants`
--

DROP TABLE IF EXISTS `query_participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `query_participants` (
  `query_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  UNIQUE KEY `query_participants_pkey` (`query_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `query_participants`
--

LOCK TABLES `query_participants` WRITE;
/*!40000 ALTER TABLE `query_participants` DISABLE KEYS */;
/*!40000 ALTER TABLE `query_participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queued_payments`
--

DROP TABLE IF EXISTS `queued_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `queued_payments` (
  `queued_payment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `payment_data` text,
  PRIMARY KEY (`queued_payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queued_payments`
--

LOCK TABLES `queued_payments` WRITE;
/*!40000 ALTER TABLE `queued_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `queued_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_assignments`
--

DROP TABLE IF EXISTS `review_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_assignments` (
  `review_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `submission_id` bigint(20) NOT NULL,
  `reviewer_id` bigint(20) NOT NULL,
  `competing_interests` text,
  `recommendation` smallint(6) DEFAULT NULL,
  `date_assigned` datetime DEFAULT NULL,
  `date_notified` datetime DEFAULT NULL,
  `date_confirmed` datetime DEFAULT NULL,
  `date_completed` datetime DEFAULT NULL,
  `date_acknowledged` datetime DEFAULT NULL,
  `date_due` datetime DEFAULT NULL,
  `date_response_due` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `reminder_was_automatic` smallint(6) NOT NULL DEFAULT '0',
  `declined` smallint(6) NOT NULL DEFAULT '0',
  `cancelled` smallint(6) NOT NULL DEFAULT '0',
  `reviewer_file_id` bigint(20) DEFAULT NULL,
  `date_rated` datetime DEFAULT NULL,
  `date_reminded` datetime DEFAULT NULL,
  `quality` smallint(6) DEFAULT NULL,
  `review_round_id` bigint(20) NOT NULL,
  `stage_id` smallint(6) NOT NULL,
  `review_method` smallint(6) NOT NULL DEFAULT '1',
  `round` smallint(6) NOT NULL DEFAULT '1',
  `step` smallint(6) NOT NULL DEFAULT '1',
  `review_form_id` bigint(20) DEFAULT NULL,
  `unconsidered` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`review_id`),
  KEY `review_assignments_submission_id` (`submission_id`),
  KEY `review_assignments_reviewer_id` (`reviewer_id`),
  KEY `review_assignments_form_id` (`review_form_id`),
  KEY `review_assignments_reviewer_review` (`reviewer_id`,`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_assignments`
--

LOCK TABLES `review_assignments` WRITE;
/*!40000 ALTER TABLE `review_assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_files`
--

DROP TABLE IF EXISTS `review_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_files` (
  `review_id` bigint(20) NOT NULL,
  `submission_file_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `review_files_pkey` (`review_id`,`submission_file_id`),
  KEY `review_files_review_id` (`review_id`),
  KEY `review_files_submission_file_id_foreign` (`submission_file_id`),
  CONSTRAINT `review_files_submission_file_id_foreign` FOREIGN KEY (`submission_file_id`) REFERENCES `submission_files` (`submission_file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_files`
--

LOCK TABLES `review_files` WRITE;
/*!40000 ALTER TABLE `review_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_form_element_settings`
--

DROP TABLE IF EXISTS `review_form_element_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_form_element_settings` (
  `review_form_element_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `review_form_element_settings_pkey` (`review_form_element_id`,`locale`,`setting_name`),
  KEY `review_form_element_settings_review_form_element_id` (`review_form_element_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_form_element_settings`
--

LOCK TABLES `review_form_element_settings` WRITE;
/*!40000 ALTER TABLE `review_form_element_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_form_element_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_form_elements`
--

DROP TABLE IF EXISTS `review_form_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_form_elements` (
  `review_form_element_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `review_form_id` bigint(20) NOT NULL,
  `seq` double(8,2) DEFAULT NULL,
  `element_type` bigint(20) DEFAULT NULL,
  `required` smallint(6) DEFAULT NULL,
  `included` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`review_form_element_id`),
  KEY `review_form_elements_review_form_id` (`review_form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_form_elements`
--

LOCK TABLES `review_form_elements` WRITE;
/*!40000 ALTER TABLE `review_form_elements` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_form_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_form_responses`
--

DROP TABLE IF EXISTS `review_form_responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_form_responses` (
  `review_form_element_id` bigint(20) NOT NULL,
  `review_id` bigint(20) NOT NULL,
  `response_type` varchar(6) DEFAULT NULL,
  `response_value` text,
  KEY `review_form_responses_pkey` (`review_form_element_id`,`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_form_responses`
--

LOCK TABLES `review_form_responses` WRITE;
/*!40000 ALTER TABLE `review_form_responses` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_form_responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_form_settings`
--

DROP TABLE IF EXISTS `review_form_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_form_settings` (
  `review_form_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `review_form_settings_pkey` (`review_form_id`,`locale`,`setting_name`),
  KEY `review_form_settings_review_form_id` (`review_form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_form_settings`
--

LOCK TABLES `review_form_settings` WRITE;
/*!40000 ALTER TABLE `review_form_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_form_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_forms`
--

DROP TABLE IF EXISTS `review_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_forms` (
  `review_form_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assoc_type` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `seq` double(8,2) DEFAULT NULL,
  `is_active` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`review_form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_forms`
--

LOCK TABLES `review_forms` WRITE;
/*!40000 ALTER TABLE `review_forms` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_round_files`
--

DROP TABLE IF EXISTS `review_round_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_round_files` (
  `submission_id` bigint(20) NOT NULL,
  `review_round_id` bigint(20) NOT NULL,
  `stage_id` smallint(6) NOT NULL,
  `submission_file_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `review_round_files_pkey` (`submission_id`,`review_round_id`,`submission_file_id`),
  KEY `review_round_files_submission_id` (`submission_id`),
  KEY `review_round_files_submission_file_id_foreign` (`submission_file_id`),
  CONSTRAINT `review_round_files_submission_file_id_foreign` FOREIGN KEY (`submission_file_id`) REFERENCES `submission_files` (`submission_file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_round_files`
--

LOCK TABLES `review_round_files` WRITE;
/*!40000 ALTER TABLE `review_round_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_round_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_rounds`
--

DROP TABLE IF EXISTS `review_rounds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_rounds` (
  `review_round_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `submission_id` bigint(20) NOT NULL,
  `stage_id` bigint(20) DEFAULT NULL,
  `round` smallint(6) NOT NULL,
  `review_revision` bigint(20) DEFAULT NULL,
  `status` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`review_round_id`),
  UNIQUE KEY `review_rounds_submission_id_stage_id_round_pkey` (`submission_id`,`stage_id`,`round`),
  KEY `review_rounds_submission_id` (`submission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_rounds`
--

LOCK TABLES `review_rounds` WRITE;
/*!40000 ALTER TABLE `review_rounds` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_rounds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduled_tasks`
--

DROP TABLE IF EXISTS `scheduled_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduled_tasks` (
  `class_name` varchar(255) NOT NULL,
  `last_run` datetime DEFAULT NULL,
  UNIQUE KEY `scheduled_tasks_pkey` (`class_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduled_tasks`
--

LOCK TABLES `scheduled_tasks` WRITE;
/*!40000 ALTER TABLE `scheduled_tasks` DISABLE KEYS */;
INSERT INTO `scheduled_tasks` VALUES ('classes.tasks.SubscriptionExpiryReminder','2022-10-12 11:49:42'),('lib.pkp.classes.task.ReviewReminder','2022-10-13 12:28:55'),('lib.pkp.classes.task.StatisticsReport','2022-10-12 11:49:42'),('plugins.generic.usageStats.UsageStatsLoader','2022-10-13 12:28:52'),('plugins.importexport.crossref.CrossrefInfoSender','2022-10-13 12:28:54'),('plugins.importexport.datacite.DataciteInfoSender','2022-10-13 12:28:55'),('plugins.importexport.doaj.DOAJInfoSender','2022-10-13 12:28:55');
/*!40000 ALTER TABLE `scheduled_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_settings`
--

DROP TABLE IF EXISTS `section_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_settings` (
  `section_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object)',
  UNIQUE KEY `section_settings_pkey` (`section_id`,`locale`,`setting_name`),
  KEY `section_settings_section_id` (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_settings`
--

LOCK TABLES `section_settings` WRITE;
/*!40000 ALTER TABLE `section_settings` DISABLE KEYS */;
INSERT INTO `section_settings` VALUES (1,'ru_RU','abbrev','СТ','string'),(1,'ru_RU','policy','Политика раздела по умолчанию','string'),(1,'ru_RU','title','Статьи','string');
/*!40000 ALTER TABLE `section_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sections` (
  `section_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `journal_id` bigint(20) NOT NULL,
  `review_form_id` bigint(20) DEFAULT NULL,
  `seq` double(8,2) NOT NULL DEFAULT '0.00',
  `editor_restricted` smallint(6) NOT NULL DEFAULT '0',
  `meta_indexed` smallint(6) NOT NULL DEFAULT '0',
  `meta_reviewed` smallint(6) NOT NULL DEFAULT '1',
  `abstracts_not_required` smallint(6) NOT NULL DEFAULT '0',
  `hide_title` smallint(6) NOT NULL DEFAULT '0',
  `hide_author` smallint(6) NOT NULL DEFAULT '0',
  `is_inactive` smallint(6) NOT NULL DEFAULT '0',
  `abstract_word_count` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`section_id`),
  KEY `sections_journal_id` (`journal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (1,1,0,0.00,0,1,1,0,0,0,0,0);
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `session_id` varchar(128) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `ip_address` varchar(39) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `created` bigint(20) NOT NULL DEFAULT '0',
  `last_used` bigint(20) NOT NULL DEFAULT '0',
  `remember` smallint(6) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `domain` varchar(255) DEFAULT NULL,
  UNIQUE KEY `sessions_pkey` (`session_id`),
  KEY `sessions_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('028iilr44l891jv176e9ia5lcs7jg6s0',1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0',1665584842,1665670373,1,'csrf|a:2:{s:9:\"timestamp\";i:1665670373;s:5:\"token\";s:32:\"d37c944a7f5e09273134534cf5a616b4\";}userId|i:1;username|s:7:\"funikov\";','ojs'),('231282d7etav5vbgmcbine43hn199uds',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0',1665592141,1665592141,0,'','ojs'),('copca7gmqus620atu228i713vgmngugu',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0',1665592141,1665592141,0,'','ojs'),('lt2j6oiltg16l55jedf0qitadl0nqjvq',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0',1665592081,1665592081,0,'','ojs'),('mdu23bb9cciej4fvg8quajcf3lube7ij',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0',1665592141,1665592141,0,'','ojs'),('nuumde0df52hp06c6ek16q2grq5tme0m',1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0',1665564574,1665584770,1,'csrf|a:2:{s:9:\"timestamp\";i:1665570363;s:5:\"token\";s:32:\"4f71a2e1edcd8c46ee025e1c0a275fb4\";}userId|i:1;username|s:7:\"funikov\";','ojs');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site`
--

DROP TABLE IF EXISTS `site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site` (
  `redirect` bigint(20) NOT NULL DEFAULT '0' COMMENT 'If not 0, redirect to the specified journal/conference/... site.',
  `primary_locale` varchar(14) NOT NULL COMMENT 'Primary locale for the site.',
  `min_password_length` smallint(6) NOT NULL DEFAULT '6',
  `installed_locales` varchar(1024) NOT NULL DEFAULT 'en_US' COMMENT 'Locales for which support has been installed.',
  `supported_locales` varchar(1024) DEFAULT NULL COMMENT 'Locales supported by the site (for hosted journals/conferences/...).',
  `original_style_file_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site`
--

LOCK TABLES `site` WRITE;
/*!40000 ALTER TABLE `site` DISABLE KEYS */;
INSERT INTO `site` VALUES (0,'ru_RU',6,'[\"cs_CZ\",\"da_DK\",\"de_DE\",\"en_US\",\"it_IT\",\"pt_BR\",\"ru_RU\"]','[\"cs_CZ\",\"da_DK\",\"de_DE\",\"en_US\",\"it_IT\",\"pt_BR\",\"ru_RU\"]',NULL);
/*!40000 ALTER TABLE `site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_settings`
--

DROP TABLE IF EXISTS `site_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_settings` (
  `setting_name` varchar(255) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_value` text,
  UNIQUE KEY `site_settings_pkey` (`setting_name`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_settings`
--

LOCK TABLES `site_settings` WRITE;
/*!40000 ALTER TABLE `site_settings` DISABLE KEYS */;
INSERT INTO `site_settings` VALUES ('contactEmail','ru_RU','funikov.1997@mail.ru'),('contactName','cs_CZ','Open Journal Systems'),('contactName','da_DK','Open Journal Systems'),('contactName','de_DE','Open Journal Systems'),('contactName','en_US','Open Journal Systems'),('contactName','it_IT','Open Journal Systems'),('contactName','pt_BR','Open Journal Systems'),('contactName','ru_RU','Open Journal Systems'),('themePluginPath','','default');
/*!40000 ALTER TABLE `site_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stage_assignments`
--

DROP TABLE IF EXISTS `stage_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stage_assignments` (
  `stage_assignment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `submission_id` bigint(20) NOT NULL,
  `user_group_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `date_assigned` datetime NOT NULL,
  `recommend_only` smallint(6) NOT NULL DEFAULT '0',
  `can_change_metadata` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`stage_assignment_id`),
  UNIQUE KEY `stage_assignment` (`submission_id`,`user_group_id`,`user_id`),
  KEY `stage_assignments_submission_id` (`submission_id`),
  KEY `stage_assignments_user_group_id` (`user_group_id`),
  KEY `stage_assignments_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stage_assignments`
--

LOCK TABLES `stage_assignments` WRITE;
/*!40000 ALTER TABLE `stage_assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `stage_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_page_settings`
--

DROP TABLE IF EXISTS `static_page_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `static_page_settings` (
  `static_page_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` longtext,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object)',
  UNIQUE KEY `static_page_settings_pkey` (`static_page_id`,`locale`,`setting_name`),
  KEY `static_page_settings_static_page_id` (`static_page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_page_settings`
--

LOCK TABLES `static_page_settings` WRITE;
/*!40000 ALTER TABLE `static_page_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `static_page_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_pages`
--

DROP TABLE IF EXISTS `static_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `static_pages` (
  `static_page_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  PRIMARY KEY (`static_page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_pages`
--

LOCK TABLES `static_pages` WRITE;
/*!40000 ALTER TABLE `static_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `static_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subeditor_submission_group`
--

DROP TABLE IF EXISTS `subeditor_submission_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subeditor_submission_group` (
  `context_id` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `assoc_type` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  UNIQUE KEY `section_editors_pkey` (`context_id`,`assoc_id`,`assoc_type`,`user_id`),
  KEY `section_editors_context_id` (`context_id`),
  KEY `subeditor_submission_group_assoc_id` (`assoc_id`,`assoc_type`),
  KEY `subeditor_submission_group_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subeditor_submission_group`
--

LOCK TABLES `subeditor_submission_group` WRITE;
/*!40000 ALTER TABLE `subeditor_submission_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `subeditor_submission_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission_comments`
--

DROP TABLE IF EXISTS `submission_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submission_comments` (
  `comment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment_type` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `author_id` bigint(20) NOT NULL,
  `comment_title` text NOT NULL,
  `comments` text,
  `date_posted` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `viewable` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `submission_comments_submission_id` (`submission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission_comments`
--

LOCK TABLES `submission_comments` WRITE;
/*!40000 ALTER TABLE `submission_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `submission_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission_file_revisions`
--

DROP TABLE IF EXISTS `submission_file_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submission_file_revisions` (
  `revision_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `submission_file_id` bigint(20) unsigned NOT NULL,
  `file_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`revision_id`),
  KEY `submission_file_revisions_submission_file_id_foreign` (`submission_file_id`),
  KEY `submission_file_revisions_file_id_foreign` (`file_id`),
  CONSTRAINT `submission_file_revisions_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`file_id`),
  CONSTRAINT `submission_file_revisions_submission_file_id_foreign` FOREIGN KEY (`submission_file_id`) REFERENCES `submission_files` (`submission_file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission_file_revisions`
--

LOCK TABLES `submission_file_revisions` WRITE;
/*!40000 ALTER TABLE `submission_file_revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `submission_file_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission_file_settings`
--

DROP TABLE IF EXISTS `submission_file_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submission_file_settings` (
  `submission_file_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL DEFAULT 'string' COMMENT '(bool|int|float|string|object|date)',
  UNIQUE KEY `submission_file_settings_pkey` (`submission_file_id`,`locale`,`setting_name`),
  KEY `submission_file_settings_id` (`submission_file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission_file_settings`
--

LOCK TABLES `submission_file_settings` WRITE;
/*!40000 ALTER TABLE `submission_file_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `submission_file_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission_files`
--

DROP TABLE IF EXISTS `submission_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submission_files` (
  `submission_file_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `submission_id` bigint(20) NOT NULL,
  `file_id` bigint(20) unsigned NOT NULL,
  `source_submission_file_id` bigint(20) DEFAULT NULL,
  `genre_id` bigint(20) DEFAULT NULL,
  `file_stage` bigint(20) NOT NULL,
  `direct_sales_price` varchar(255) DEFAULT NULL,
  `sales_type` varchar(255) DEFAULT NULL,
  `viewable` smallint(6) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `uploader_user_id` bigint(20) DEFAULT NULL,
  `assoc_type` bigint(20) DEFAULT NULL,
  `assoc_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`submission_file_id`),
  KEY `submission_files_submission_id` (`submission_id`),
  KEY `submission_files_stage_assoc` (`file_stage`,`assoc_type`,`assoc_id`),
  KEY `submission_files_file_id_foreign` (`file_id`),
  CONSTRAINT `submission_files_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission_files`
--

LOCK TABLES `submission_files` WRITE;
/*!40000 ALTER TABLE `submission_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `submission_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission_search_keyword_list`
--

DROP TABLE IF EXISTS `submission_search_keyword_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submission_search_keyword_list` (
  `keyword_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `keyword_text` varchar(60) NOT NULL,
  PRIMARY KEY (`keyword_id`),
  UNIQUE KEY `submission_search_keyword_text` (`keyword_text`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission_search_keyword_list`
--

LOCK TABLES `submission_search_keyword_list` WRITE;
/*!40000 ALTER TABLE `submission_search_keyword_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `submission_search_keyword_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission_search_object_keywords`
--

DROP TABLE IF EXISTS `submission_search_object_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submission_search_object_keywords` (
  `object_id` bigint(20) NOT NULL,
  `keyword_id` bigint(20) NOT NULL,
  `pos` int(11) NOT NULL COMMENT 'Word position of the keyword in the object.',
  UNIQUE KEY `submission_search_object_keywords_pkey` (`object_id`,`pos`),
  KEY `submission_search_object_keywords_keyword_id` (`keyword_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission_search_object_keywords`
--

LOCK TABLES `submission_search_object_keywords` WRITE;
/*!40000 ALTER TABLE `submission_search_object_keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `submission_search_object_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission_search_objects`
--

DROP TABLE IF EXISTS `submission_search_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submission_search_objects` (
  `object_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `submission_id` bigint(20) NOT NULL,
  `type` int(11) NOT NULL COMMENT 'Type of item. E.g., abstract, fulltext, etc.',
  `assoc_id` bigint(20) DEFAULT NULL COMMENT 'Optional ID of an associated record (e.g., a file_id)',
  PRIMARY KEY (`object_id`),
  KEY `submission_search_object_submission` (`submission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission_search_objects`
--

LOCK TABLES `submission_search_objects` WRITE;
/*!40000 ALTER TABLE `submission_search_objects` DISABLE KEYS */;
/*!40000 ALTER TABLE `submission_search_objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission_settings`
--

DROP TABLE IF EXISTS `submission_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submission_settings` (
  `submission_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext,
  UNIQUE KEY `submission_settings_pkey` (`submission_id`,`locale`,`setting_name`),
  KEY `submission_settings_submission_id` (`submission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission_settings`
--

LOCK TABLES `submission_settings` WRITE;
/*!40000 ALTER TABLE `submission_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `submission_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission_tombstones`
--

DROP TABLE IF EXISTS `submission_tombstones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submission_tombstones` (
  `tombstone_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `submission_id` bigint(20) NOT NULL,
  `date_deleted` datetime NOT NULL,
  `journal_id` bigint(20) NOT NULL,
  `section_id` bigint(20) NOT NULL,
  `set_spec` varchar(255) NOT NULL,
  `set_name` varchar(255) NOT NULL,
  `oai_identifier` varchar(255) NOT NULL,
  PRIMARY KEY (`tombstone_id`),
  KEY `submission_tombstones_journal_id` (`journal_id`),
  KEY `submission_tombstones_submission_id` (`submission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission_tombstones`
--

LOCK TABLES `submission_tombstones` WRITE;
/*!40000 ALTER TABLE `submission_tombstones` DISABLE KEYS */;
/*!40000 ALTER TABLE `submission_tombstones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submissions`
--

DROP TABLE IF EXISTS `submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submissions` (
  `submission_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `context_id` bigint(20) NOT NULL,
  `current_publication_id` bigint(20) DEFAULT NULL,
  `date_last_activity` datetime DEFAULT NULL,
  `date_submitted` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `stage_id` bigint(20) NOT NULL DEFAULT '1',
  `locale` varchar(14) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `submission_progress` smallint(6) NOT NULL DEFAULT '1',
  `work_type` smallint(6) DEFAULT '0',
  PRIMARY KEY (`submission_id`),
  KEY `submissions_context_id` (`context_id`),
  KEY `submissions_publication_id` (`current_publication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submissions`
--

LOCK TABLES `submissions` WRITE;
/*!40000 ALTER TABLE `submissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription_type_settings`
--

DROP TABLE IF EXISTS `subscription_type_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscription_type_settings` (
  `type_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `subscription_type_settings_pkey` (`type_id`,`locale`,`setting_name`),
  KEY `subscription_type_settings_type_id` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription_type_settings`
--

LOCK TABLES `subscription_type_settings` WRITE;
/*!40000 ALTER TABLE `subscription_type_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscription_type_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription_types`
--

DROP TABLE IF EXISTS `subscription_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscription_types` (
  `type_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `journal_id` bigint(20) NOT NULL,
  `cost` double(8,2) NOT NULL,
  `currency_code_alpha` varchar(3) NOT NULL,
  `duration` smallint(6) DEFAULT NULL,
  `format` smallint(6) NOT NULL,
  `institutional` smallint(6) NOT NULL DEFAULT '0',
  `membership` smallint(6) NOT NULL DEFAULT '0',
  `disable_public_display` smallint(6) NOT NULL,
  `seq` double(8,2) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription_types`
--

LOCK TABLES `subscription_types` WRITE;
/*!40000 ALTER TABLE `subscription_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscription_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscriptions` (
  `subscription_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `journal_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type_id` bigint(20) NOT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `membership` varchar(40) DEFAULT NULL,
  `reference_number` varchar(40) DEFAULT NULL,
  `notes` text,
  PRIMARY KEY (`subscription_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporary_files`
--

DROP TABLE IF EXISTS `temporary_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temporary_files` (
  `file_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `file_name` varchar(90) NOT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `file_size` bigint(20) NOT NULL,
  `original_file_name` varchar(127) DEFAULT NULL,
  `date_uploaded` datetime NOT NULL,
  PRIMARY KEY (`file_id`),
  KEY `temporary_files_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporary_files`
--

LOCK TABLES `temporary_files` WRITE;
/*!40000 ALTER TABLE `temporary_files` DISABLE KEYS */;
INSERT INTO `temporary_files` VALUES (3,1,'pngF320.tmp','image/webp',19988,'1.png','2022-10-12 18:21:04'),(4,1,'pdf343E.tmp','application/pdf',282910,'сusima.pdf','2022-10-12 18:45:23');
/*!40000 ALTER TABLE `temporary_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usage_stats_temporary_records`
--

DROP TABLE IF EXISTS `usage_stats_temporary_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usage_stats_temporary_records` (
  `assoc_id` bigint(20) NOT NULL,
  `assoc_type` bigint(20) NOT NULL,
  `day` bigint(20) NOT NULL,
  `entry_time` bigint(20) NOT NULL,
  `metric` bigint(20) NOT NULL DEFAULT '1',
  `country_id` varchar(2) DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `load_id` varchar(255) NOT NULL,
  `file_type` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usage_stats_temporary_records`
--

LOCK TABLES `usage_stats_temporary_records` WRITE;
/*!40000 ALTER TABLE `usage_stats_temporary_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `usage_stats_temporary_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_group_settings`
--

DROP TABLE IF EXISTS `user_group_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_group_settings` (
  `user_group_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL COMMENT '(bool|int|float|string|object)',
  UNIQUE KEY `user_group_settings_pkey` (`user_group_id`,`locale`,`setting_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_group_settings`
--

LOCK TABLES `user_group_settings` WRITE;
/*!40000 ALTER TABLE `user_group_settings` DISABLE KEYS */;
INSERT INTO `user_group_settings` VALUES (1,'cs_CZ','name','##default.groups.name.siteAdmin##','string'),(1,'da_DK','name','##default.groups.name.siteAdmin##','string'),(1,'de_DE','name','##default.groups.name.siteAdmin##','string'),(1,'en_US','name','Site Admin','string'),(1,'it_IT','name','##default.groups.name.siteAdmin##','string'),(1,'pt_BR','name','##default.groups.name.siteAdmin##','string'),(1,'ru_RU','name','##default.groups.name.siteAdmin##','string'),(2,'','abbrevLocaleKey','default.groups.abbrev.manager','string'),(2,'','nameLocaleKey','default.groups.name.manager','string'),(2,'cs_CZ','abbrev','Man','string'),(2,'cs_CZ','name','Manažer časopisu','string'),(2,'da_DK','abbrev','JM','string'),(2,'da_DK','name','Tidsskriftschef','string'),(2,'de_DE','abbrev','ZV','string'),(2,'de_DE','name','Zeitschriftenverwalter/in','string'),(2,'en_US','abbrev','JM','string'),(2,'en_US','name','Journal manager','string'),(2,'it_IT','abbrev','MNGR','string'),(2,'it_IT','name','Journal Manager','string'),(2,'pt_BR','abbrev','GR','string'),(2,'pt_BR','name','Gerente da revista','string'),(2,'ru_RU','abbrev','УпрЖ','string'),(2,'ru_RU','name','Управляющий журналом','string'),(3,'','abbrevLocaleKey','default.groups.abbrev.editor','string'),(3,'','nameLocaleKey','default.groups.name.editor','string'),(3,'cs_CZ','abbrev','Ed','string'),(3,'cs_CZ','name','Editor časopisu','string'),(3,'da_DK','abbrev','JE','string'),(3,'da_DK','name','Tidsskriftredaktør','string'),(3,'de_DE','abbrev','ZR','string'),(3,'de_DE','name','Zeitschriftenredakteur/in','string'),(3,'en_US','abbrev','JE','string'),(3,'en_US','name','Journal editor','string'),(3,'it_IT','abbrev','EDT','string'),(3,'it_IT','name','Editor in capo','string'),(3,'pt_BR','abbrev','ER','string'),(3,'pt_BR','name','Editor da revista','string'),(3,'ru_RU','abbrev','РедЖ','string'),(3,'ru_RU','name','Редактор журнала','string'),(4,'','abbrevLocaleKey','default.groups.abbrev.productionEditor','string'),(4,'','nameLocaleKey','default.groups.name.productionEditor','string'),(4,'cs_CZ','abbrev','ProdEd','string'),(4,'cs_CZ','name','Produkční editor','string'),(4,'da_DK','abbrev','ProdE','string'),(4,'da_DK','name','Produktionsredaktør','string'),(4,'de_DE','abbrev','ProdR','string'),(4,'de_DE','name','Produktionsredakteur/in','string'),(4,'en_US','abbrev','ProdE','string'),(4,'en_US','name','Production editor','string'),(4,'it_IT','abbrev','ProdE','string'),(4,'it_IT','name','Editor di produzione','string'),(4,'pt_BR','abbrev','EP','string'),(4,'pt_BR','name','Editor de Produção','string'),(4,'ru_RU','abbrev','ВыпРед','string'),(4,'ru_RU','name','Выпускающий редактор','string'),(5,'','abbrevLocaleKey','default.groups.abbrev.sectionEditor','string'),(5,'','nameLocaleKey','default.groups.name.sectionEditor','string'),(5,'cs_CZ','abbrev','SEd','string'),(5,'cs_CZ','name','Editor sekce','string'),(5,'da_DK','abbrev','SecE','string'),(5,'da_DK','name','Sektionsredaktør','string'),(5,'de_DE','abbrev','RR','string'),(5,'de_DE','name','Rubrikredakteur/in','string'),(5,'en_US','abbrev','SecE','string'),(5,'en_US','name','Section editor','string'),(5,'it_IT','abbrev','SecE','string'),(5,'it_IT','name','Editor di sezione','string'),(5,'pt_BR','abbrev','ESeç','string'),(5,'pt_BR','name','Editor de seção','string'),(5,'ru_RU','abbrev','РедР','string'),(5,'ru_RU','name','Редактор раздела','string'),(6,'','abbrevLocaleKey','default.groups.abbrev.guestEditor','string'),(6,'','nameLocaleKey','default.groups.name.guestEditor','string'),(6,'cs_CZ','abbrev','HEd','string'),(6,'cs_CZ','name','Hostující editor','string'),(6,'da_DK','abbrev','GE','string'),(6,'da_DK','name','Gæsteredaktør','string'),(6,'de_DE','abbrev','GR','string'),(6,'de_DE','name','Gastredakteur/in','string'),(6,'en_US','abbrev','GE','string'),(6,'en_US','name','Guest editor','string'),(6,'it_IT','abbrev','G_EDT','string'),(6,'it_IT','name','Guest editor','string'),(6,'pt_BR','abbrev','EConv','string'),(6,'pt_BR','name','Editor convidado','string'),(6,'ru_RU','abbrev','ПРед','string'),(6,'ru_RU','name','Приглашенный редактор','string'),(7,'','abbrevLocaleKey','default.groups.abbrev.copyeditor','string'),(7,'','nameLocaleKey','default.groups.name.copyeditor','string'),(7,'cs_CZ','abbrev','RED','string'),(7,'cs_CZ','name','Redaktor','string'),(7,'da_DK','abbrev','CE','string'),(7,'da_DK','name','Manuskriptredaktør','string'),(7,'de_DE','abbrev','CE','string'),(7,'de_DE','name','Lektor/in','string'),(7,'en_US','abbrev','CE','string'),(7,'en_US','name','Copyeditor','string'),(7,'it_IT','abbrev','CopyE','string'),(7,'it_IT','name','Copyeditor','string'),(7,'pt_BR','abbrev','ET','string'),(7,'pt_BR','name','Editor de texto','string'),(7,'ru_RU','abbrev','ЛитРед','string'),(7,'ru_RU','name','Литературный редактор','string'),(8,'','abbrevLocaleKey','default.groups.abbrev.designer','string'),(8,'','nameLocaleKey','default.groups.name.designer','string'),(8,'cs_CZ','abbrev','Návrh','string'),(8,'cs_CZ','name','Návrhář','string'),(8,'da_DK','abbrev','Design','string'),(8,'da_DK','name','Designer','string'),(8,'de_DE','abbrev','Design','string'),(8,'de_DE','name','Designer/in','string'),(8,'en_US','abbrev','Design','string'),(8,'en_US','name','Designer','string'),(8,'it_IT','abbrev','Design','string'),(8,'it_IT','name','Designer','string'),(8,'pt_BR','abbrev','DE','string'),(8,'pt_BR','name','Designer','string'),(8,'ru_RU','abbrev','Дизайн','string'),(8,'ru_RU','name','Дизайнер','string'),(9,'','abbrevLocaleKey','default.groups.abbrev.funding','string'),(9,'','nameLocaleKey','default.groups.name.funding','string'),(9,'cs_CZ','abbrev','FC','string'),(9,'cs_CZ','name','Koordinátor financování','string'),(9,'da_DK','abbrev','FC','string'),(9,'da_DK','name','Finansieringskoordinator','string'),(9,'de_DE','abbrev','FC','string'),(9,'de_DE','name','Finanzierungskoordinator/in','string'),(9,'en_US','abbrev','FC','string'),(9,'en_US','name','Funding coordinator','string'),(9,'it_IT','abbrev','FC','string'),(9,'it_IT','name','Finanziatore','string'),(9,'pt_BR','abbrev','CF','string'),(9,'pt_BR','name','Coordenador de Financiamento','string'),(9,'ru_RU','abbrev','КФ','string'),(9,'ru_RU','name','Координатор по фондам','string'),(10,'','abbrevLocaleKey','default.groups.abbrev.indexer','string'),(10,'','nameLocaleKey','default.groups.name.indexer','string'),(10,'cs_CZ','abbrev','IND','string'),(10,'cs_CZ','name','Indexer','string'),(10,'da_DK','abbrev','IND','string'),(10,'da_DK','name','Klassifikator','string'),(10,'de_DE','abbrev','IND','string'),(10,'de_DE','name','Indizierer/in','string'),(10,'en_US','abbrev','IND','string'),(10,'en_US','name','Indexer','string'),(10,'it_IT','abbrev','IND','string'),(10,'it_IT','name','Indicizzatore','string'),(10,'pt_BR','abbrev','IND','string'),(10,'pt_BR','name','Indexador','string'),(10,'ru_RU','abbrev','Инд','string'),(10,'ru_RU','name','Индексатор','string'),(11,'','abbrevLocaleKey','default.groups.abbrev.layoutEditor','string'),(11,'','nameLocaleKey','default.groups.name.layoutEditor','string'),(11,'cs_CZ','abbrev','LE','string'),(11,'cs_CZ','name','Editor úpravy dokumentu','string'),(11,'da_DK','abbrev','LE','string'),(11,'da_DK','name','Layoutredaktør','string'),(11,'de_DE','abbrev','LE','string'),(11,'de_DE','name','Layout-Leiter/in','string'),(11,'en_US','abbrev','LE','string'),(11,'en_US','name','Layout Editor','string'),(11,'it_IT','abbrev','LE','string'),(11,'it_IT','name','Layout editor','string'),(11,'pt_BR','abbrev','EL','string'),(11,'pt_BR','name','Editor de Layout','string'),(11,'ru_RU','abbrev','Верст','string'),(11,'ru_RU','name','Верстальщик','string'),(12,'','abbrevLocaleKey','default.groups.abbrev.marketing','string'),(12,'','nameLocaleKey','default.groups.name.marketing','string'),(12,'cs_CZ','abbrev','MS','string'),(12,'cs_CZ','name','Koordinátor marketingu a prodeje','string'),(12,'da_DK','abbrev','MS','string'),(12,'da_DK','name','Marketings- og salgskoordinator','string'),(12,'de_DE','abbrev','MS','string'),(12,'de_DE','name','Marketing- und Vertriebkoordinator/in','string'),(12,'en_US','abbrev','MS','string'),(12,'en_US','name','Marketing and sales coordinator','string'),(12,'it_IT','abbrev','MKTG','string'),(12,'it_IT','name','Marketing','string'),(12,'pt_BR','abbrev','CVM','string'),(12,'pt_BR','name','Coordenador de Vendas e Marketing','string'),(12,'ru_RU','abbrev','МиП','string'),(12,'ru_RU','name','Координатор по маркетингу и продажам','string'),(13,'','abbrevLocaleKey','default.groups.abbrev.proofreader','string'),(13,'','nameLocaleKey','default.groups.name.proofreader','string'),(13,'cs_CZ','abbrev','PR','string'),(13,'cs_CZ','name','Korektor','string'),(13,'da_DK','abbrev','PR','string'),(13,'da_DK','name','Korrekturlæser','string'),(13,'de_DE','abbrev','PR','string'),(13,'de_DE','name','Korrektor/in','string'),(13,'en_US','abbrev','PR','string'),(13,'en_US','name','Proofreader','string'),(13,'it_IT','abbrev','ProofR','string'),(13,'it_IT','name','Correttore di bozze','string'),(13,'pt_BR','abbrev','LP','string'),(13,'pt_BR','name','Leitor de Prova','string'),(13,'ru_RU','abbrev','Корр','string'),(13,'ru_RU','name','Корректор','string'),(14,'','abbrevLocaleKey','default.groups.abbrev.author','string'),(14,'','nameLocaleKey','default.groups.name.author','string'),(14,'cs_CZ','abbrev','AU','string'),(14,'cs_CZ','name','Autor','string'),(14,'da_DK','abbrev','AU','string'),(14,'da_DK','name','Forfatter','string'),(14,'de_DE','abbrev','AU','string'),(14,'de_DE','name','Autor/in','string'),(14,'en_US','abbrev','AU','string'),(14,'en_US','name','Author','string'),(14,'it_IT','abbrev','AU','string'),(14,'it_IT','name','Autore','string'),(14,'pt_BR','abbrev','AU','string'),(14,'pt_BR','name','Autor','string'),(14,'ru_RU','abbrev','Авт','string'),(14,'ru_RU','name','Автор','string'),(15,'','abbrevLocaleKey','default.groups.abbrev.translator','string'),(15,'','nameLocaleKey','default.groups.name.translator','string'),(15,'cs_CZ','abbrev','Trans','string'),(15,'cs_CZ','name','Překladatel','string'),(15,'da_DK','abbrev','Overs','string'),(15,'da_DK','name','Oversætter','string'),(15,'de_DE','abbrev','Trans','string'),(15,'de_DE','name','Übersetzer/in','string'),(15,'en_US','abbrev','Trans','string'),(15,'en_US','name','Translator','string'),(15,'it_IT','abbrev','Trans','string'),(15,'it_IT','name','Traduttore','string'),(15,'pt_BR','abbrev','TR','string'),(15,'pt_BR','name','Tradutor','string'),(15,'ru_RU','abbrev','Перев','string'),(15,'ru_RU','name','Переводчик','string'),(16,'','abbrevLocaleKey','default.groups.abbrev.externalReviewer','string'),(16,'','nameLocaleKey','default.groups.name.externalReviewer','string'),(16,'cs_CZ','abbrev','Rec','string'),(16,'cs_CZ','name','Recenzent','string'),(16,'da_DK','abbrev','R','string'),(16,'da_DK','name','Bedømmer','string'),(16,'de_DE','abbrev','G','string'),(16,'de_DE','name','externe/r Gutachter/in','string'),(16,'en_US','abbrev','R','string'),(16,'en_US','name','Reviewer','string'),(16,'it_IT','abbrev','REV','string'),(16,'it_IT','name','Revisore esterno','string'),(16,'pt_BR','abbrev','A','string'),(16,'pt_BR','name','Avaliador','string'),(16,'ru_RU','abbrev','Рец','string'),(16,'ru_RU','name','Рецензент','string'),(17,'','abbrevLocaleKey','default.groups.abbrev.reader','string'),(17,'','nameLocaleKey','default.groups.name.reader','string'),(17,'cs_CZ','abbrev','Číst','string'),(17,'cs_CZ','name','Čtenář','string'),(17,'da_DK','abbrev','Læs','string'),(17,'da_DK','name','Læser','string'),(17,'de_DE','abbrev','Lesen','string'),(17,'de_DE','name','Leser/in','string'),(17,'en_US','abbrev','Read','string'),(17,'en_US','name','Reader','string'),(17,'it_IT','abbrev','Read','string'),(17,'it_IT','name','Lettore','string'),(17,'pt_BR','abbrev','LE','string'),(17,'pt_BR','name','Leitor','string'),(17,'ru_RU','abbrev','Чит','string'),(17,'ru_RU','name','Читатель','string'),(18,'','abbrevLocaleKey','default.groups.abbrev.subscriptionManager','string'),(18,'','nameLocaleKey','default.groups.name.subscriptionManager','string'),(18,'cs_CZ','abbrev','PředMan','string'),(18,'cs_CZ','name','Manažer předplatného','string'),(18,'da_DK','abbrev','SubM','string'),(18,'da_DK','name','Abonnementschef','string'),(18,'de_DE','abbrev','AV','string'),(18,'de_DE','name','Abonnementverwalter/in','string'),(18,'en_US','abbrev','SubM','string'),(18,'en_US','name','Subscription Manager','string'),(18,'it_IT','abbrev','SubM','string'),(18,'it_IT','name','Subscription manager','string'),(18,'pt_BR','abbrev','GAssin','string'),(18,'pt_BR','name','Gerente de assinatura','string'),(18,'ru_RU','abbrev','МПодп','string'),(18,'ru_RU','name','Менеджер по подписке','string');
/*!40000 ALTER TABLE `user_group_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_group_stage`
--

DROP TABLE IF EXISTS `user_group_stage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_group_stage` (
  `context_id` bigint(20) NOT NULL,
  `user_group_id` bigint(20) NOT NULL,
  `stage_id` bigint(20) NOT NULL,
  UNIQUE KEY `user_group_stage_pkey` (`context_id`,`user_group_id`,`stage_id`),
  KEY `user_group_stage_context_id` (`context_id`),
  KEY `user_group_stage_user_group_id` (`user_group_id`),
  KEY `user_group_stage_stage_id` (`stage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_group_stage`
--

LOCK TABLES `user_group_stage` WRITE;
/*!40000 ALTER TABLE `user_group_stage` DISABLE KEYS */;
INSERT INTO `user_group_stage` VALUES (1,3,1),(1,3,3),(1,3,4),(1,3,5),(1,4,4),(1,4,5),(1,5,1),(1,5,3),(1,5,4),(1,5,5),(1,6,1),(1,6,3),(1,6,4),(1,6,5),(1,7,4),(1,8,5),(1,9,1),(1,9,3),(1,10,5),(1,11,5),(1,12,4),(1,13,5),(1,14,1),(1,14,3),(1,14,4),(1,14,5),(1,15,1),(1,15,3),(1,15,4),(1,15,5),(1,16,3);
/*!40000 ALTER TABLE `user_group_stage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_groups` (
  `user_group_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `context_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `is_default` smallint(6) NOT NULL DEFAULT '0',
  `show_title` smallint(6) NOT NULL DEFAULT '1',
  `permit_self_registration` smallint(6) NOT NULL DEFAULT '0',
  `permit_metadata_edit` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_group_id`),
  KEY `user_groups_user_group_id` (`user_group_id`),
  KEY `user_groups_context_id` (`context_id`),
  KEY `user_groups_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_groups`
--

LOCK TABLES `user_groups` WRITE;
/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;
INSERT INTO `user_groups` VALUES (1,0,1,1,0,0,0),(2,1,16,1,0,0,1),(3,1,16,1,0,0,1),(4,1,16,1,0,0,1),(5,1,17,1,0,0,1),(6,1,17,1,0,0,0),(7,1,4097,1,0,0,0),(8,1,4097,1,0,0,0),(9,1,4097,1,0,0,0),(10,1,4097,1,0,0,0),(11,1,4097,1,0,0,0),(12,1,4097,1,0,0,0),(13,1,4097,1,0,0,0),(14,1,65536,1,0,1,0),(15,1,65536,1,0,0,0),(16,1,4096,1,0,1,0),(17,1,1048576,1,0,1,0),(18,1,2097152,1,0,0,0);
/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_interests`
--

DROP TABLE IF EXISTS `user_interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_interests` (
  `user_id` bigint(20) NOT NULL,
  `controlled_vocab_entry_id` bigint(20) NOT NULL,
  UNIQUE KEY `u_e_pkey` (`user_id`,`controlled_vocab_entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_interests`
--

LOCK TABLES `user_interests` WRITE;
/*!40000 ALTER TABLE `user_interests` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_interests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_settings`
--

DROP TABLE IF EXISTS `user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_settings` (
  `user_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `assoc_type` bigint(20) NOT NULL DEFAULT '0',
  `assoc_id` bigint(20) NOT NULL DEFAULT '0',
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `user_settings_pkey` (`user_id`,`locale`,`setting_name`,`assoc_type`,`assoc_id`),
  KEY `user_settings_user_id` (`user_id`),
  KEY `user_settings_locale_setting_name_index` (`setting_name`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_settings`
--

LOCK TABLES `user_settings` WRITE;
/*!40000 ALTER TABLE `user_settings` DISABLE KEYS */;
INSERT INTO `user_settings` VALUES (1,'en_US','familyName',0,0,'funikov','string'),(1,'en_US','givenName',0,0,'funikov','string'),(1,'ru_RU','familyName',0,0,'funikov','string'),(1,'ru_RU','givenName',0,0,'funikov','string');
/*!40000 ALTER TABLE `user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_user_groups`
--

DROP TABLE IF EXISTS `user_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_user_groups` (
  `user_group_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  UNIQUE KEY `user_user_groups_pkey` (`user_group_id`,`user_id`),
  KEY `user_user_groups_user_group_id` (`user_group_id`),
  KEY `user_user_groups_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_user_groups`
--

LOCK TABLES `user_user_groups` WRITE;
/*!40000 ALTER TABLE `user_user_groups` DISABLE KEYS */;
INSERT INTO `user_user_groups` VALUES (1,1),(2,1);
/*!40000 ALTER TABLE `user_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `url` varchar(2047) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `mailing_address` varchar(255) DEFAULT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `country` varchar(90) DEFAULT NULL,
  `locales` varchar(255) DEFAULT NULL,
  `gossip` text,
  `date_last_email` datetime DEFAULT NULL,
  `date_registered` datetime NOT NULL,
  `date_validated` datetime DEFAULT NULL,
  `date_last_login` datetime NOT NULL,
  `must_change_password` smallint(6) DEFAULT NULL,
  `auth_id` bigint(20) DEFAULT NULL,
  `auth_str` varchar(255) DEFAULT NULL,
  `disabled` smallint(6) NOT NULL DEFAULT '0',
  `disabled_reason` text,
  `inline_help` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `users_username` (`username`),
  UNIQUE KEY `users_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'funikov','$2y$10$YzHF2KX1XVxNGfJn1VfHiO5atdyD12CI4D8D4Rv6554SsMY1mnvWG','funikov.1997@mail.ru',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,'2022-10-12 11:49:30',NULL,'2022-10-12 18:12:21',0,NULL,NULL,0,NULL,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `versions` (
  `major` int(11) NOT NULL DEFAULT '0' COMMENT 'Major component of version number, e.g. the 2 in OJS 2.3.8-0',
  `minor` int(11) NOT NULL DEFAULT '0' COMMENT 'Minor component of version number, e.g. the 3 in OJS 2.3.8-0',
  `revision` int(11) NOT NULL DEFAULT '0' COMMENT 'Revision component of version number, e.g. the 8 in OJS 2.3.8-0',
  `build` int(11) NOT NULL DEFAULT '0' COMMENT 'Build component of version number, e.g. the 0 in OJS 2.3.8-0',
  `date_installed` datetime NOT NULL,
  `current` smallint(6) NOT NULL DEFAULT '0' COMMENT '1 iff the version entry being described is currently active. This permits the table to store past installation history for forensic purposes.',
  `product_type` varchar(30) DEFAULT NULL COMMENT 'Describes the type of product this row describes, e.g. "plugins.generic" (for a generic plugin) or "core" for the application itelf',
  `product` varchar(30) DEFAULT NULL COMMENT 'Uniquely identifies the product this version row describes, e.g. "ojs2" for OJS 2.x, "languageToggle" for the language toggle block plugin, etc.',
  `product_class_name` varchar(80) DEFAULT NULL COMMENT 'Specifies the class name associated with this product, for plugins, or the empty string where not applicable.',
  `lazy_load` smallint(6) NOT NULL DEFAULT '0' COMMENT '1 iff the row describes a lazy-load plugin; 0 otherwise',
  `sitewide` smallint(6) NOT NULL DEFAULT '0' COMMENT '1 iff the row describes a site-wide plugin; 0 otherwise',
  UNIQUE KEY `versions_pkey` (`product_type`,`product`,`major`,`minor`,`revision`,`build`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
INSERT INTO `versions` VALUES (1,0,0,0,'2022-10-12 11:49:31',1,'plugins.metadata','dc11','',0,0),(1,0,1,0,'2022-10-12 11:49:31',1,'plugins.blocks','browse','BrowseBlockPlugin',1,0),(1,0,0,0,'2022-10-12 11:49:31',1,'plugins.blocks','developedBy','DevelopedByBlockPlugin',1,0),(1,0,0,0,'2022-10-12 11:49:31',1,'plugins.blocks','information','InformationBlockPlugin',1,0),(1,0,0,0,'2022-10-12 11:49:31',1,'plugins.blocks','languageToggle','LanguageToggleBlockPlugin',1,0),(1,0,0,0,'2022-10-12 11:49:31',1,'plugins.blocks','makeSubmission','MakeSubmissionBlockPlugin',1,0),(1,1,0,0,'2022-10-12 11:49:31',1,'plugins.blocks','subscription','SubscriptionBlockPlugin',1,0),(1,0,0,0,'2022-10-12 11:49:31',1,'plugins.gateways','resolver','',0,0),(1,2,0,0,'2022-10-12 11:49:31',1,'plugins.generic','acron','AcronPlugin',1,1),(1,1,3,4,'2022-10-12 11:49:31',1,'plugins.generic','orcidProfile','OrcidProfilePlugin',1,0),(1,0,0,0,'2022-10-12 11:49:31',1,'plugins.generic','usageStats','UsageStatsPlugin',0,1),(1,0,0,0,'2022-10-12 11:49:31',1,'plugins.generic','usageEvent','',0,0),(1,0,0,0,'2022-10-12 11:49:31',1,'plugins.generic','tinymce','TinyMCEPlugin',1,0),(1,2,0,0,'2022-10-12 11:49:31',1,'plugins.generic','staticPages','StaticPagesPlugin',1,0),(1,0,0,0,'2022-10-12 11:49:31',1,'plugins.generic','recommendBySimilarity','RecommendBySimilarityPlugin',1,1),(1,0,0,0,'2022-10-12 11:49:31',1,'plugins.generic','recommendByAuthor','RecommendByAuthorPlugin',1,1),(1,0,1,0,'2022-10-12 11:49:31',1,'plugins.generic','pdfJsViewer','PdfJsViewerPlugin',1,0),(1,0,1,0,'2022-10-12 11:49:31',1,'plugins.generic','lensGalley','LensGalleyPlugin',1,0),(1,0,0,0,'2022-10-12 11:49:31',1,'plugins.generic','announcementFeed','AnnouncementFeedPlugin',1,0),(1,0,0,0,'2022-10-12 11:49:31',1,'plugins.generic','htmlArticleGalley','HtmlArticleGalleyPlugin',1,0),(1,1,0,0,'2022-10-12 11:49:31',1,'plugins.generic','googleScholar','GoogleScholarPlugin',1,0),(1,0,0,0,'2022-10-12 11:49:31',1,'plugins.generic','googleAnalytics','GoogleAnalyticsPlugin',1,0),(1,0,0,0,'2022-10-12 11:49:31',1,'plugins.generic','dublinCoreMeta','DublinCoreMetaPlugin',1,0),(1,0,0,0,'2022-10-12 11:49:31',1,'plugins.generic','driver','DRIVERPlugin',1,0),(1,2,0,0,'2022-10-12 11:49:31',1,'plugins.generic','customBlockManager','CustomBlockManagerPlugin',1,0),(0,1,0,0,'2022-10-12 11:49:31',1,'plugins.generic','citationStyleLanguage','CitationStyleLanguagePlugin',1,0),(1,0,0,0,'2022-10-12 11:49:31',1,'plugins.generic','webFeed','WebFeedPlugin',1,0),(2,1,0,0,'2022-10-12 11:49:31',1,'plugins.importexport','crossref','',0,0),(2,0,0,0,'2022-10-12 11:49:31',1,'plugins.importexport','datacite','',0,0),(1,1,0,0,'2022-10-12 11:49:31',1,'plugins.importexport','doaj','',0,0),(1,0,0,0,'2022-10-12 11:49:31',1,'plugins.importexport','native','',0,0),(1,0,0,0,'2022-10-12 11:49:31',1,'plugins.importexport','pubmed','',0,0),(1,0,0,0,'2022-10-12 11:49:31',1,'plugins.importexport','users','',0,0),(1,0,0,0,'2022-10-12 11:49:31',1,'plugins.oaiMetadataFormats','dc','',0,0),(1,0,0,0,'2022-10-12 11:49:31',1,'plugins.oaiMetadataFormats','marc','',0,0),(1,0,0,0,'2022-10-12 11:49:31',1,'plugins.oaiMetadataFormats','marcxml','',0,0),(1,0,0,0,'2022-10-12 11:49:31',1,'plugins.oaiMetadataFormats','rfc1807','',0,0),(1,0,0,0,'2022-10-12 11:49:31',1,'plugins.paymethod','manual','',0,0),(1,0,0,0,'2022-10-12 11:49:31',1,'plugins.paymethod','paypal','',0,0),(1,0,0,0,'2022-10-12 11:49:31',1,'plugins.pubIds','doi','DOIPubIdPlugin',1,0),(1,0,0,0,'2022-10-12 11:49:31',1,'plugins.pubIds','urn','URNPubIdPlugin',1,0),(1,0,0,0,'2022-10-12 11:49:31',1,'plugins.reports','articles','',0,0),(1,1,0,0,'2022-10-12 11:49:31',1,'plugins.reports','counterReport','',0,0),(2,0,0,0,'2022-10-12 11:49:31',1,'plugins.reports','reviewReport','',0,0),(1,0,0,0,'2022-10-12 11:49:31',1,'plugins.reports','subscriptions','',0,0),(1,0,0,0,'2022-10-12 11:49:31',1,'plugins.reports','views','',0,0),(1,0,0,0,'2022-10-12 11:49:31',1,'plugins.themes','default','DefaultThemePlugin',1,0),(3,3,0,13,'2022-10-12 11:49:22',1,'core','ojs2','',0,1);
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-13 19:40:28
