
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
DROP TABLE IF EXISTS `watchdog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `watchdog` (
  `wid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key: Unique watchdog event ID.',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT 'The users.uid of the user who triggered the event.',
  `type` varchar(64) NOT NULL DEFAULT '' COMMENT 'Type of log message, for example "user" or "page not found."',
  `message` longtext NOT NULL COMMENT 'Text of log message to be passed into the t() function.',
  `variables` longblob NOT NULL COMMENT 'Serialized array of variables that match the message string and that is passed into the t() function.',
  `severity` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'The severity level of the event; ranges from 0 (Emergency) to 7 (Debug)',
  `link` varchar(255) DEFAULT '' COMMENT 'Link to view the result of the event.',
  `location` text NOT NULL COMMENT 'URL of the origin of the event.',
  `referer` text COMMENT 'URL of referring page.',
  `hostname` varchar(128) NOT NULL DEFAULT '' COMMENT 'Hostname of the user who triggered the event.',
  `timestamp` int(11) NOT NULL DEFAULT '0' COMMENT 'Unix timestamp of when event occurred.',
  PRIMARY KEY (`wid`),
  KEY `type` (`type`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='Table that contains logs of all system events.';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `watchdog` WRITE;
/*!40000 ALTER TABLE `watchdog` DISABLE KEYS */;
INSERT INTO `watchdog` VALUES (1,0,'system','%module module installed.','a:1:{s:7:\"%module\";s:5:\"dblog\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835875);
INSERT INTO `watchdog` VALUES (2,0,'system','%module module enabled.','a:1:{s:7:\"%module\";s:5:\"dblog\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835875);
INSERT INTO `watchdog` VALUES (3,0,'system','%module module installed.','a:1:{s:7:\"%module\";s:8:\"field_ui\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835877);
INSERT INTO `watchdog` VALUES (4,0,'system','%module module enabled.','a:1:{s:7:\"%module\";s:8:\"field_ui\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835877);
INSERT INTO `watchdog` VALUES (5,0,'system','%module module installed.','a:1:{s:7:\"%module\";s:4:\"file\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835877);
INSERT INTO `watchdog` VALUES (6,0,'system','%module module enabled.','a:1:{s:7:\"%module\";s:4:\"file\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835877);
INSERT INTO `watchdog` VALUES (7,0,'system','%module module installed.','a:1:{s:7:\"%module\";s:7:\"options\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835878);
INSERT INTO `watchdog` VALUES (8,0,'system','%module module enabled.','a:1:{s:7:\"%module\";s:7:\"options\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835878);
INSERT INTO `watchdog` VALUES (9,0,'system','%module module installed.','a:1:{s:7:\"%module\";s:8:\"taxonomy\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835878);
INSERT INTO `watchdog` VALUES (10,0,'system','%module module enabled.','a:1:{s:7:\"%module\";s:8:\"taxonomy\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835878);
INSERT INTO `watchdog` VALUES (11,0,'system','%module module installed.','a:1:{s:7:\"%module\";s:4:\"help\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835881);
INSERT INTO `watchdog` VALUES (12,0,'system','%module module enabled.','a:1:{s:7:\"%module\";s:4:\"help\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835881);
INSERT INTO `watchdog` VALUES (13,0,'system','%module module installed.','a:1:{s:7:\"%module\";s:5:\"image\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835881);
INSERT INTO `watchdog` VALUES (14,0,'system','%module module enabled.','a:1:{s:7:\"%module\";s:5:\"image\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835881);
INSERT INTO `watchdog` VALUES (15,0,'system','%module module installed.','a:1:{s:7:\"%module\";s:4:\"list\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835883);
INSERT INTO `watchdog` VALUES (16,0,'system','%module module enabled.','a:1:{s:7:\"%module\";s:4:\"list\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835883);
INSERT INTO `watchdog` VALUES (17,0,'system','%module module installed.','a:1:{s:7:\"%module\";s:4:\"menu\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835883);
INSERT INTO `watchdog` VALUES (18,0,'system','%module module enabled.','a:1:{s:7:\"%module\";s:4:\"menu\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835883);
INSERT INTO `watchdog` VALUES (19,0,'system','%module module installed.','a:1:{s:7:\"%module\";s:6:\"number\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835889);
INSERT INTO `watchdog` VALUES (20,0,'system','%module module enabled.','a:1:{s:7:\"%module\";s:6:\"number\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835889);
INSERT INTO `watchdog` VALUES (21,0,'system','%module module installed.','a:1:{s:7:\"%module\";s:7:\"overlay\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835891);
INSERT INTO `watchdog` VALUES (22,0,'system','%module module enabled.','a:1:{s:7:\"%module\";s:7:\"overlay\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835891);
INSERT INTO `watchdog` VALUES (23,0,'system','%module module installed.','a:1:{s:7:\"%module\";s:4:\"path\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835891);
INSERT INTO `watchdog` VALUES (24,0,'system','%module module enabled.','a:1:{s:7:\"%module\";s:4:\"path\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835891);
INSERT INTO `watchdog` VALUES (25,0,'system','%module module installed.','a:1:{s:7:\"%module\";s:3:\"rdf\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835894);
INSERT INTO `watchdog` VALUES (26,0,'system','%module module enabled.','a:1:{s:7:\"%module\";s:3:\"rdf\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835894);
INSERT INTO `watchdog` VALUES (27,0,'system','%module module installed.','a:1:{s:7:\"%module\";s:6:\"search\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835894);
INSERT INTO `watchdog` VALUES (28,0,'system','%module module enabled.','a:1:{s:7:\"%module\";s:6:\"search\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835894);
INSERT INTO `watchdog` VALUES (29,0,'system','%module module installed.','a:1:{s:7:\"%module\";s:8:\"shortcut\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835896);
INSERT INTO `watchdog` VALUES (30,0,'system','%module module enabled.','a:1:{s:7:\"%module\";s:8:\"shortcut\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835896);
INSERT INTO `watchdog` VALUES (31,0,'system','%module module installed.','a:1:{s:7:\"%module\";s:7:\"toolbar\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835899);
INSERT INTO `watchdog` VALUES (32,0,'system','%module module enabled.','a:1:{s:7:\"%module\";s:7:\"toolbar\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835899);
INSERT INTO `watchdog` VALUES (33,0,'system','%module module installed.','a:1:{s:7:\"%module\";s:8:\"standard\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835899);
INSERT INTO `watchdog` VALUES (34,0,'system','%module module enabled.','a:1:{s:7:\"%module\";s:8:\"standard\";}',6,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=do','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835899);
INSERT INTO `watchdog` VALUES (35,0,'actions','Action \'%action\' added.','a:1:{s:7:\"%action\";s:15:\"Publish comment\";}',5,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=finished','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835910);
INSERT INTO `watchdog` VALUES (36,0,'actions','Action \'%action\' added.','a:1:{s:7:\"%action\";s:17:\"Unpublish comment\";}',5,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=finished','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835910);
INSERT INTO `watchdog` VALUES (37,0,'actions','Action \'%action\' added.','a:1:{s:7:\"%action\";s:12:\"Save comment\";}',5,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=finished','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835910);
INSERT INTO `watchdog` VALUES (38,0,'actions','Action \'%action\' added.','a:1:{s:7:\"%action\";s:15:\"Publish content\";}',5,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=finished','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835910);
INSERT INTO `watchdog` VALUES (39,0,'actions','Action \'%action\' added.','a:1:{s:7:\"%action\";s:17:\"Unpublish content\";}',5,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=finished','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835910);
INSERT INTO `watchdog` VALUES (40,0,'actions','Action \'%action\' added.','a:1:{s:7:\"%action\";s:19:\"Make content sticky\";}',5,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=finished','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835910);
INSERT INTO `watchdog` VALUES (41,0,'actions','Action \'%action\' added.','a:1:{s:7:\"%action\";s:21:\"Make content unsticky\";}',5,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=finished','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835910);
INSERT INTO `watchdog` VALUES (42,0,'actions','Action \'%action\' added.','a:1:{s:7:\"%action\";s:29:\"Promote content to front page\";}',5,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=finished','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835910);
INSERT INTO `watchdog` VALUES (43,0,'actions','Action \'%action\' added.','a:1:{s:7:\"%action\";s:30:\"Remove content from front page\";}',5,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=finished','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835910);
INSERT INTO `watchdog` VALUES (44,0,'actions','Action \'%action\' added.','a:1:{s:7:\"%action\";s:12:\"Save content\";}',5,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=finished','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835910);
INSERT INTO `watchdog` VALUES (45,0,'actions','Action \'%action\' added.','a:1:{s:7:\"%action\";s:30:\"Ban IP address of current user\";}',5,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=finished','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835910);
INSERT INTO `watchdog` VALUES (46,0,'actions','Action \'%action\' added.','a:1:{s:7:\"%action\";s:18:\"Block current user\";}',5,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&id=1&op=finished','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en&op=start&id=1','127.0.0.1',1340835910);
INSERT INTO `watchdog` VALUES (47,1,'user','Session opened for %name.','a:1:{s:5:\"%name\";s:5:\"admin\";}',5,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en','127.0.0.1',1340835989);
INSERT INTO `watchdog` VALUES (48,0,'cron','Cron run completed.','a:0:{}',5,'','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en','http://sohc-feature-dev.localhost/install.php?profile=standard&locale=en','127.0.0.1',1340835989);
/*!40000 ALTER TABLE `watchdog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

