
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
DROP TABLE IF EXISTS `role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_permission` (
  `rid` int(10) unsigned NOT NULL COMMENT 'Foreign Key: role.rid.',
  `permission` varchar(128) NOT NULL DEFAULT '' COMMENT 'A single permission granted to the role identified by rid.',
  `module` varchar(255) NOT NULL DEFAULT '' COMMENT 'The module declaring the permission.',
  PRIMARY KEY (`rid`,`permission`),
  KEY `permission` (`permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores the permissions assigned to user roles.';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `role_permission` WRITE;
/*!40000 ALTER TABLE `role_permission` DISABLE KEYS */;
INSERT INTO `role_permission` VALUES (1,'access comments','comment');
INSERT INTO `role_permission` VALUES (1,'access content','node');
INSERT INTO `role_permission` VALUES (1,'use text format filtered_html','filter');
INSERT INTO `role_permission` VALUES (2,'access comments','comment');
INSERT INTO `role_permission` VALUES (2,'access content','node');
INSERT INTO `role_permission` VALUES (2,'post comments','comment');
INSERT INTO `role_permission` VALUES (2,'skip comment approval','comment');
INSERT INTO `role_permission` VALUES (2,'use text format filtered_html','filter');
INSERT INTO `role_permission` VALUES (3,'access administration pages','system');
INSERT INTO `role_permission` VALUES (3,'access comments','comment');
INSERT INTO `role_permission` VALUES (3,'access content','node');
INSERT INTO `role_permission` VALUES (3,'access content overview','node');
INSERT INTO `role_permission` VALUES (3,'access contextual links','contextual');
INSERT INTO `role_permission` VALUES (3,'access dashboard','dashboard');
INSERT INTO `role_permission` VALUES (3,'access overlay','overlay');
INSERT INTO `role_permission` VALUES (3,'access site in maintenance mode','system');
INSERT INTO `role_permission` VALUES (3,'access site reports','system');
INSERT INTO `role_permission` VALUES (3,'access toolbar','toolbar');
INSERT INTO `role_permission` VALUES (3,'access user profiles','user');
INSERT INTO `role_permission` VALUES (3,'administer actions','system');
INSERT INTO `role_permission` VALUES (3,'administer blocks','block');
INSERT INTO `role_permission` VALUES (3,'administer comments','comment');
INSERT INTO `role_permission` VALUES (3,'administer content types','node');
INSERT INTO `role_permission` VALUES (3,'administer filters','filter');
INSERT INTO `role_permission` VALUES (3,'administer image styles','image');
INSERT INTO `role_permission` VALUES (3,'administer menu','menu');
INSERT INTO `role_permission` VALUES (3,'administer modules','system');
INSERT INTO `role_permission` VALUES (3,'administer nodes','node');
INSERT INTO `role_permission` VALUES (3,'administer permissions','user');
INSERT INTO `role_permission` VALUES (3,'administer search','search');
INSERT INTO `role_permission` VALUES (3,'administer shortcuts','shortcut');
INSERT INTO `role_permission` VALUES (3,'administer site configuration','system');
INSERT INTO `role_permission` VALUES (3,'administer software updates','system');
INSERT INTO `role_permission` VALUES (3,'administer taxonomy','taxonomy');
INSERT INTO `role_permission` VALUES (3,'administer themes','system');
INSERT INTO `role_permission` VALUES (3,'administer url aliases','path');
INSERT INTO `role_permission` VALUES (3,'administer users','user');
INSERT INTO `role_permission` VALUES (3,'block IP addresses','system');
INSERT INTO `role_permission` VALUES (3,'bypass node access','node');
INSERT INTO `role_permission` VALUES (3,'cancel account','user');
INSERT INTO `role_permission` VALUES (3,'change own username','user');
INSERT INTO `role_permission` VALUES (3,'create article content','node');
INSERT INTO `role_permission` VALUES (3,'create page content','node');
INSERT INTO `role_permission` VALUES (3,'create url aliases','path');
INSERT INTO `role_permission` VALUES (3,'customize shortcut links','shortcut');
INSERT INTO `role_permission` VALUES (3,'delete any article content','node');
INSERT INTO `role_permission` VALUES (3,'delete any page content','node');
INSERT INTO `role_permission` VALUES (3,'delete own article content','node');
INSERT INTO `role_permission` VALUES (3,'delete own page content','node');
INSERT INTO `role_permission` VALUES (3,'delete revisions','node');
INSERT INTO `role_permission` VALUES (3,'delete terms in 1','taxonomy');
INSERT INTO `role_permission` VALUES (3,'edit any article content','node');
INSERT INTO `role_permission` VALUES (3,'edit any page content','node');
INSERT INTO `role_permission` VALUES (3,'edit own article content','node');
INSERT INTO `role_permission` VALUES (3,'edit own comments','comment');
INSERT INTO `role_permission` VALUES (3,'edit own page content','node');
INSERT INTO `role_permission` VALUES (3,'edit terms in 1','taxonomy');
INSERT INTO `role_permission` VALUES (3,'post comments','comment');
INSERT INTO `role_permission` VALUES (3,'revert revisions','node');
INSERT INTO `role_permission` VALUES (3,'search content','search');
INSERT INTO `role_permission` VALUES (3,'select account cancellation method','user');
INSERT INTO `role_permission` VALUES (3,'skip comment approval','comment');
INSERT INTO `role_permission` VALUES (3,'switch shortcut sets','shortcut');
INSERT INTO `role_permission` VALUES (3,'use advanced search','search');
INSERT INTO `role_permission` VALUES (3,'use text format filtered_html','filter');
INSERT INTO `role_permission` VALUES (3,'use text format full_html','filter');
INSERT INTO `role_permission` VALUES (3,'view own unpublished content','node');
INSERT INTO `role_permission` VALUES (3,'view revisions','node');
INSERT INTO `role_permission` VALUES (3,'view the administration theme','system');
/*!40000 ALTER TABLE `role_permission` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

