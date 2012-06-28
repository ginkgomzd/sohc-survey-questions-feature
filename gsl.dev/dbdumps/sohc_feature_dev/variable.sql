
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
DROP TABLE IF EXISTS `variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `variable` (
  `name` varchar(128) NOT NULL DEFAULT '' COMMENT 'The name of the variable.',
  `value` longblob NOT NULL COMMENT 'The value of the variable.',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Named variable/value pairs created by Drupal core or any...';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `variable` WRITE;
/*!40000 ALTER TABLE `variable` DISABLE KEYS */;
INSERT INTO `variable` VALUES ('admin_theme','s:5:\"seven\";');
INSERT INTO `variable` VALUES ('clean_url','s:1:\"1\";');
INSERT INTO `variable` VALUES ('comment_page','i:0;');
INSERT INTO `variable` VALUES ('cron_key','s:43:\"g8xnvaDrABrGVS2snoOoDYIDHJJjgi9QFqYBq2bWfIw\";');
INSERT INTO `variable` VALUES ('cron_last','i:1340835989;');
INSERT INTO `variable` VALUES ('css_js_query_string','s:6:\"m6c10u\";');
INSERT INTO `variable` VALUES ('date_default_timezone','s:16:\"America/New_York\";');
INSERT INTO `variable` VALUES ('drupal_private_key','s:43:\"zuwf-4ZZu5ljn9k4tqJPPydc_S8ylF9sLL1vt_u7qyU\";');
INSERT INTO `variable` VALUES ('features_codecache','a:1:{s:16:\"survey_questions\";a:2:{s:12:\"dependencies\";s:32:\"fa5951c111a3f3cb9ebdd248a7e00ee0\";s:5:\"field\";s:32:\"b10e13792798561a35a79dcc38b3f31b\";}}');
INSERT INTO `variable` VALUES ('features_ignored_orphans','a:0:{}');
INSERT INTO `variable` VALUES ('features_semaphore','a:0:{}');
INSERT INTO `variable` VALUES ('filter_fallback_format','s:10:\"plain_text\";');
INSERT INTO `variable` VALUES ('install_profile','s:8:\"standard\";');
INSERT INTO `variable` VALUES ('install_task','s:4:\"done\";');
INSERT INTO `variable` VALUES ('install_time','i:1340835989;');
INSERT INTO `variable` VALUES ('menu_expanded','a:0:{}');
INSERT INTO `variable` VALUES ('menu_masks','a:35:{i:0;i:501;i:1;i:493;i:2;i:250;i:3;i:247;i:4;i:246;i:5;i:245;i:6;i:125;i:7;i:123;i:8;i:122;i:9;i:121;i:10;i:117;i:11;i:63;i:12;i:62;i:13;i:61;i:14;i:60;i:15;i:59;i:16;i:58;i:17;i:44;i:18;i:31;i:19;i:30;i:20;i:29;i:21;i:28;i:22;i:24;i:23;i:21;i:24;i:15;i:25;i:14;i:26;i:13;i:27;i:11;i:28;i:8;i:29;i:7;i:30;i:6;i:31;i:5;i:32;i:3;i:33;i:2;i:34;i:1;}');
INSERT INTO `variable` VALUES ('node_admin_theme','s:1:\"1\";');
INSERT INTO `variable` VALUES ('node_options_page','a:1:{i:0;s:6:\"status\";}');
INSERT INTO `variable` VALUES ('node_submitted_page','b:0;');
INSERT INTO `variable` VALUES ('path_alias_whitelist','a:0:{}');
INSERT INTO `variable` VALUES ('site_default_country','s:0:\"\";');
INSERT INTO `variable` VALUES ('site_mail','s:24:\"inquire@ginkgostreet.com\";');
INSERT INTO `variable` VALUES ('site_name','s:26:\"sohc-feature-dev.localhost\";');
INSERT INTO `variable` VALUES ('theme_default','s:6:\"bartik\";');
INSERT INTO `variable` VALUES ('user_admin_role','s:1:\"3\";');
INSERT INTO `variable` VALUES ('user_pictures','s:1:\"1\";');
INSERT INTO `variable` VALUES ('user_picture_dimensions','s:9:\"1024x1024\";');
INSERT INTO `variable` VALUES ('user_picture_file_size','s:3:\"800\";');
INSERT INTO `variable` VALUES ('user_picture_style','s:9:\"thumbnail\";');
INSERT INTO `variable` VALUES ('user_register','i:2;');
/*!40000 ALTER TABLE `variable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

