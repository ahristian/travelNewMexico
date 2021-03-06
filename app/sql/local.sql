-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-09-29 04:48:19','2020-09-29 04:48:19','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=466 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://foodabq.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://foodabq.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Food Abq','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','The best food website in Albuquerque!','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','hristian.andrei@gmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:166:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:9:\"events/?$\";s:26:\"index.php?post_type=events\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=events&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=events&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=events&paged=$matches[1]\";s:15:\"destinations/?$\";s:31:\"index.php?post_type=destination\";s:45:\"destinations/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=destination&feed=$matches[1]\";s:40:\"destinations/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=destination&feed=$matches[1]\";s:32:\"destinations/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=destination&paged=$matches[1]\";s:9:\"things/?$\";s:25:\"index.php?post_type=thing\";s:39:\"things/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=thing&feed=$matches[1]\";s:34:\"things/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=thing&feed=$matches[1]\";s:26:\"things/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=thing&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:39:\"index.php?events=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:33:\"index.php?events=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?events=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?events=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?events=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?events=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?events=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"destinations/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"destinations/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"destinations/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"destinations/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"destinations/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"destinations/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"destinations/([^/]+)/embed/?$\";s:44:\"index.php?destination=$matches[1]&embed=true\";s:33:\"destinations/([^/]+)/trackback/?$\";s:38:\"index.php?destination=$matches[1]&tb=1\";s:53:\"destinations/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?destination=$matches[1]&feed=$matches[2]\";s:48:\"destinations/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?destination=$matches[1]&feed=$matches[2]\";s:41:\"destinations/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?destination=$matches[1]&paged=$matches[2]\";s:48:\"destinations/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?destination=$matches[1]&cpage=$matches[2]\";s:37:\"destinations/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?destination=$matches[1]&page=$matches[2]\";s:29:\"destinations/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"destinations/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"destinations/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"destinations/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"destinations/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"destinations/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"things/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"things/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"things/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"things/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"things/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"things/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"things/([^/]+)/embed/?$\";s:38:\"index.php?thing=$matches[1]&embed=true\";s:27:\"things/([^/]+)/trackback/?$\";s:32:\"index.php?thing=$matches[1]&tb=1\";s:47:\"things/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?thing=$matches[1]&feed=$matches[2]\";s:42:\"things/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?thing=$matches[1]&feed=$matches[2]\";s:35:\"things/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?thing=$matches[1]&paged=$matches[2]\";s:42:\"things/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?thing=$matches[1]&cpage=$matches[2]\";s:31:\"things/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?thing=$matches[1]&page=$matches[2]\";s:23:\"things/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"things/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"things/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"things/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"things/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"things/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=40&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','a:2:{i:0;s:94:\"C:\\Users\\User\\Local Sites\\foodabq\\app\\public/wp-content/plugins/advanced-custom-fields/acf.php\";i:1;s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (40,'template','foodAbq','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','foodAbq','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','48748','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','42','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','40','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1616906898','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'initial_db_version','48748','yes');
INSERT INTO `wp_options` VALUES (96,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (97,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (98,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (104,'cron','a:5:{i:1604447300;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1604455940;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1604455941;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1604465300;a:5:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'nonce_key','/>Wy~(&bT4O4UcM#}34lh<ru!-4<c3zk&06WuE5PD0bg JhI%,dHz)*g+a<w2MN`','no');
INSERT INTO `wp_options` VALUES (112,'nonce_salt','yw{]>COg%dgxVd|ahak24TCK41KCM<W) 8~kf!4n3F32Xu!1Vdeqrb@#N4P0iPi>','no');
INSERT INTO `wp_options` VALUES (113,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (118,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.5.3-partial-1.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.3\";s:7:\"version\";s:5:\"5.5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:5:\"5.5.1\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.5.3-partial-1.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.3-rollback-1.zip\";}s:7:\"current\";s:5:\"5.5.3\";s:7:\"version\";s:5:\"5.5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:5:\"5.5.1\";s:9:\"new_files\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.5.2-partial-1.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.2-rollback-1.zip\";}s:7:\"current\";s:5:\"5.5.2\";s:7:\"version\";s:5:\"5.5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:5:\"5.5.1\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1604444562;s:15:\"version_checked\";s:5:\"5.5.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (123,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1604444567;s:7:\"checked\";a:1:{s:7:\"foodAbq\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (124,'theme_mods_twentytwenty','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1601955197;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (141,'_transient_health-check-site-status-result','{\"good\":\"11\",\"recommended\":\"8\",\"critical\":\"1\"}','yes');
INSERT INTO `wp_options` VALUES (149,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (160,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (164,'current_theme','Food Abq','yes');
INSERT INTO `wp_options` VALUES (165,'theme_mods_foodAbq','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:10:\"headerMenu\";i:2;s:10:\"footerMenu\";i:3;s:11:\"footerMenu2\";i:4;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (166,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (169,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (170,'new_admin_email','hristian.andrei@gmail.com','yes');
INSERT INTO `wp_options` VALUES (206,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (238,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (253,'recovery_mode_email_last_sent','1602273310','yes');
INSERT INTO `wp_options` VALUES (350,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (357,'acf_version','5.9.1','yes');
INSERT INTO `wp_options` VALUES (419,'_site_transient_timeout_browser_3a39a1d66137823f367d0482940bd7b8','1604456160','no');
INSERT INTO `wp_options` VALUES (420,'_site_transient_browser_3a39a1d66137823f367d0482940bd7b8','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"86.0.4240.111\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (442,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1604444567;s:7:\"checked\";a:2:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.1\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.1\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.4\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.4.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (464,'_site_transient_timeout_theme_roots','1604446366','no');
INSERT INTO `wp_options` VALUES (465,'_site_transient_theme_roots','a:1:{s:7:\"foodAbq\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_lock','1601956702:1');
INSERT INTO `wp_postmeta` VALUES (6,7,'_edit_lock','1602863563:1');
INSERT INTO `wp_postmeta` VALUES (11,10,'_edit_lock','1601957739:1');
INSERT INTO `wp_postmeta` VALUES (12,12,'_edit_lock','1602000062:1');
INSERT INTO `wp_postmeta` VALUES (13,14,'_edit_lock','1602000008:1');
INSERT INTO `wp_postmeta` VALUES (14,3,'_edit_lock','1602003083:1');
INSERT INTO `wp_postmeta` VALUES (15,17,'_edit_lock','1602085780:1');
INSERT INTO `wp_postmeta` VALUES (16,19,'_edit_lock','1602040609:1');
INSERT INTO `wp_postmeta` VALUES (17,21,'_edit_lock','1602040589:1');
INSERT INTO `wp_postmeta` VALUES (18,24,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (19,24,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (20,24,'_menu_item_object_id','24');
INSERT INTO `wp_postmeta` VALUES (21,24,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (22,24,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (23,24,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (24,24,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (25,24,'_menu_item_url','http://foodabq.local/');
INSERT INTO `wp_postmeta` VALUES (26,24,'_menu_item_orphaned','1602041618');
INSERT INTO `wp_postmeta` VALUES (36,26,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (37,26,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (38,26,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (39,26,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (40,26,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (41,26,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (42,26,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (43,26,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (44,26,'_menu_item_orphaned','1602041619');
INSERT INTO `wp_postmeta` VALUES (45,27,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (46,27,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (47,27,'_menu_item_object_id','14');
INSERT INTO `wp_postmeta` VALUES (48,27,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (49,27,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (50,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (51,27,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (52,27,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (54,28,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (55,28,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (56,28,'_menu_item_object_id','17');
INSERT INTO `wp_postmeta` VALUES (57,28,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (58,28,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (59,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (60,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (61,28,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (62,28,'_menu_item_orphaned','1602041619');
INSERT INTO `wp_postmeta` VALUES (63,29,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (64,29,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (65,29,'_menu_item_object_id','19');
INSERT INTO `wp_postmeta` VALUES (66,29,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (67,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (68,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (69,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (70,29,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (71,29,'_menu_item_orphaned','1602041619');
INSERT INTO `wp_postmeta` VALUES (72,30,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (73,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (74,30,'_menu_item_object_id','10');
INSERT INTO `wp_postmeta` VALUES (75,30,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (76,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (77,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (78,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (79,30,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (80,30,'_menu_item_orphaned','1602041619');
INSERT INTO `wp_postmeta` VALUES (81,31,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (82,31,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (83,31,'_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES (84,31,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (85,31,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (86,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (87,31,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (88,31,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (89,31,'_menu_item_orphaned','1602041619');
INSERT INTO `wp_postmeta` VALUES (90,32,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (91,32,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (92,32,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (93,32,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (94,32,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (95,32,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (96,32,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (97,32,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (98,32,'_menu_item_orphaned','1602041619');
INSERT INTO `wp_postmeta` VALUES (99,33,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (100,33,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (101,33,'_menu_item_object_id','33');
INSERT INTO `wp_postmeta` VALUES (102,33,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (103,33,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (104,33,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (105,33,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (106,33,'_menu_item_url','https://google.com');
INSERT INTO `wp_postmeta` VALUES (108,34,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (109,34,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (110,34,'_menu_item_object_id','34');
INSERT INTO `wp_postmeta` VALUES (111,34,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (112,34,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (113,34,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (114,34,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (115,34,'_menu_item_url','http://foodabq.local/');
INSERT INTO `wp_postmeta` VALUES (117,35,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (118,35,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (119,35,'_menu_item_object_id','14');
INSERT INTO `wp_postmeta` VALUES (120,35,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (121,35,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (122,35,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (123,35,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (124,35,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (144,38,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (145,38,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (146,38,'_menu_item_object_id','3');
INSERT INTO `wp_postmeta` VALUES (147,38,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (148,38,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (149,38,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (150,38,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (151,38,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (153,39,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (154,39,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (155,39,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (156,39,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (157,39,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (158,39,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (159,39,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (160,39,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (162,40,'_edit_lock','1602085800:1');
INSERT INTO `wp_postmeta` VALUES (163,42,'_edit_lock','1602085809:1');
INSERT INTO `wp_postmeta` VALUES (164,44,'_edit_lock','1602863201:1');
INSERT INTO `wp_postmeta` VALUES (171,46,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (172,46,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (173,46,'_menu_item_object_id','42');
INSERT INTO `wp_postmeta` VALUES (174,46,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (175,46,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (176,46,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (177,46,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (178,46,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (179,46,'_menu_item_orphaned','1602091400');
INSERT INTO `wp_postmeta` VALUES (180,47,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (181,47,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (182,47,'_menu_item_object_id','42');
INSERT INTO `wp_postmeta` VALUES (183,47,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (184,47,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (185,47,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (186,47,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (187,47,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (189,48,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (190,48,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (191,48,'_menu_item_object_id','42');
INSERT INTO `wp_postmeta` VALUES (192,48,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (193,48,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (194,48,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (195,48,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (196,48,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (198,49,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (199,49,'_edit_lock','1602519272:1');
INSERT INTO `wp_postmeta` VALUES (200,52,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (201,52,'_edit_lock','1603646382:1');
INSERT INTO `wp_postmeta` VALUES (202,53,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (203,53,'_edit_lock','1603647205:1');
INSERT INTO `wp_postmeta` VALUES (204,53,'_wp_old_date','2020-10-12');
INSERT INTO `wp_postmeta` VALUES (209,7,'_pingme','1');
INSERT INTO `wp_postmeta` VALUES (210,7,'_encloseme','1');
INSERT INTO `wp_postmeta` VALUES (211,56,'_menu_item_type','post_type_archive');
INSERT INTO `wp_postmeta` VALUES (212,56,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (213,56,'_menu_item_object_id','-28');
INSERT INTO `wp_postmeta` VALUES (214,56,'_menu_item_object','events');
INSERT INTO `wp_postmeta` VALUES (215,56,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (216,56,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (217,56,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (218,56,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (220,57,'_menu_item_type','post_type_archive');
INSERT INTO `wp_postmeta` VALUES (221,57,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (222,57,'_menu_item_object_id','-28');
INSERT INTO `wp_postmeta` VALUES (223,57,'_menu_item_object','events');
INSERT INTO `wp_postmeta` VALUES (224,57,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (225,57,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (226,57,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (227,57,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (229,52,'Event Day','October 10');
INSERT INTO `wp_postmeta` VALUES (230,60,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (231,60,'_edit_lock','1603171974:1');
INSERT INTO `wp_postmeta` VALUES (232,52,'event_date','20200813');
INSERT INTO `wp_postmeta` VALUES (233,52,'_event_date','field_5f8e72af72642');
INSERT INTO `wp_postmeta` VALUES (234,53,'event_date','20201031');
INSERT INTO `wp_postmeta` VALUES (235,53,'_event_date','field_5f8e72af72642');
INSERT INTO `wp_postmeta` VALUES (236,63,'_edit_lock','1603857171:1');
INSERT INTO `wp_postmeta` VALUES (237,63,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (238,63,'event_date','20211003');
INSERT INTO `wp_postmeta` VALUES (239,63,'_event_date','field_5f8e72af72642');
INSERT INTO `wp_postmeta` VALUES (240,64,'_edit_lock','1603852544:1');
INSERT INTO `wp_postmeta` VALUES (241,64,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (242,64,'event_date','20201101');
INSERT INTO `wp_postmeta` VALUES (243,64,'_event_date','field_5f8e72af72642');
INSERT INTO `wp_postmeta` VALUES (244,65,'_edit_lock','1603648865:1');
INSERT INTO `wp_postmeta` VALUES (246,68,'_edit_lock','1603857863:1');
INSERT INTO `wp_postmeta` VALUES (247,69,'_edit_lock','1603857806:1');
INSERT INTO `wp_postmeta` VALUES (248,70,'_menu_item_type','post_type_archive');
INSERT INTO `wp_postmeta` VALUES (249,70,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (250,70,'_menu_item_object_id','-40');
INSERT INTO `wp_postmeta` VALUES (251,70,'_menu_item_object','destination');
INSERT INTO `wp_postmeta` VALUES (252,70,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (253,70,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (254,70,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (255,70,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (257,71,'_menu_item_type','post_type_archive');
INSERT INTO `wp_postmeta` VALUES (258,71,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (259,71,'_menu_item_object_id','-40');
INSERT INTO `wp_postmeta` VALUES (260,71,'_menu_item_object','destination');
INSERT INTO `wp_postmeta` VALUES (261,71,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (262,71,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (263,71,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (264,71,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (266,72,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (267,72,'_edit_lock','1603856975:1');
INSERT INTO `wp_postmeta` VALUES (268,64,'related_destination','a:1:{i:0;s:2:\"69\";}');
INSERT INTO `wp_postmeta` VALUES (269,64,'_related_destination','field_5f964dfdf0491');
INSERT INTO `wp_postmeta` VALUES (270,74,'_edit_lock','1603856658:1');
INSERT INTO `wp_postmeta` VALUES (271,64,'related_thing','a:1:{i:0;s:2:\"74\";}');
INSERT INTO `wp_postmeta` VALUES (272,64,'_related_thing','field_5f964dfdf0491');
INSERT INTO `wp_postmeta` VALUES (273,76,'_edit_lock','1603855992:1');
INSERT INTO `wp_postmeta` VALUES (274,77,'_menu_item_type','post_type_archive');
INSERT INTO `wp_postmeta` VALUES (275,77,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (276,77,'_menu_item_object_id','-46');
INSERT INTO `wp_postmeta` VALUES (277,77,'_menu_item_object','thing');
INSERT INTO `wp_postmeta` VALUES (278,77,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (279,77,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (280,77,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (281,77,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (283,78,'_menu_item_type','post_type_archive');
INSERT INTO `wp_postmeta` VALUES (284,78,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (285,78,'_menu_item_object_id','-46');
INSERT INTO `wp_postmeta` VALUES (286,78,'_menu_item_object','thing');
INSERT INTO `wp_postmeta` VALUES (287,78,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (288,78,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (289,78,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (290,78,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (292,69,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (293,69,'related_destination','a:3:{i:0;s:2:\"76\";i:1;s:2:\"64\";i:2;s:2:\"63\";}');
INSERT INTO `wp_postmeta` VALUES (294,69,'_related_destination','field_5f964dfdf0491');
INSERT INTO `wp_postmeta` VALUES (295,76,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (296,76,'related_destination','a:1:{i:0;s:2:\"69\";}');
INSERT INTO `wp_postmeta` VALUES (297,76,'_related_destination','field_5f964dfdf0491');
INSERT INTO `wp_postmeta` VALUES (298,74,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (299,74,'related_destination','a:1:{i:0;s:2:\"68\";}');
INSERT INTO `wp_postmeta` VALUES (300,74,'_related_destination','field_5f964dfdf0491');
INSERT INTO `wp_postmeta` VALUES (301,68,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (302,68,'related_destination','a:5:{i:0;s:2:\"63\";i:1;s:2:\"74\";i:2;s:2:\"52\";i:3;s:2:\"53\";i:4;s:2:\"64\";}');
INSERT INTO `wp_postmeta` VALUES (303,68,'_related_destination','field_5f964dfdf0491');
INSERT INTO `wp_postmeta` VALUES (304,63,'related_destination','a:1:{i:0;s:2:\"68\";}');
INSERT INTO `wp_postmeta` VALUES (305,63,'_related_destination','field_5f964dfdf0491');
INSERT INTO `wp_postmeta` VALUES (306,79,'_wp_attached_file','2020/10/sand.jpg');
INSERT INTO `wp_postmeta` VALUES (307,79,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:668;s:6:\"height\";i:445;s:4:\"file\";s:16:\"2020/10/sand.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"sand-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"sand-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"destinationLandscape\";a:4:{s:4:\"file\";s:16:\"sand-390x260.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"destinationSinglePage\";a:4:{s:4:\"file\";s:16:\"sand-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (308,69,'_thumbnail_id','80');
INSERT INTO `wp_postmeta` VALUES (309,68,'_thumbnail_id','79');
INSERT INTO `wp_postmeta` VALUES (310,80,'_wp_attached_file','2020/10/cavern.jpg');
INSERT INTO `wp_postmeta` VALUES (311,80,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1053;s:4:\"file\";s:18:\"2020/10/cavern.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"cavern-300x158.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"cavern-1024x539.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:539;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"cavern-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"cavern-768x404.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:404;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"cavern-1536x809.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:809;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"destinationLandscape\";a:4:{s:4:\"file\";s:18:\"cavern-400x211.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:211;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"destinationSinglePage\";a:4:{s:4:\"file\";s:18:\"cavern-600x316.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:316;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (312,79,'_edit_lock','1603859996:1');
INSERT INTO `wp_postmeta` VALUES (313,79,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (314,80,'_edit_lock','1603860019:1');
INSERT INTO `wp_postmeta` VALUES (315,80,'_edit_last','1');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2020-09-29 04:48:19','2020-09-29 04:48:19','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2020-09-29 04:48:19','2020-09-29 04:48:19','',0,'http://foodabq.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2020-09-29 04:48:19','2020-09-29 04:48:19','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://foodabq.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2020-09-29 04:48:19','2020-09-29 04:48:19','',0,'http://foodabq.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2020-09-29 04:48:19','2020-09-29 04:48:19','<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our website address is: http://foodabq.local.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What personal data we collect and why we collect it</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Comments</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Media</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Contact forms</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Cookies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Embedded content from other websites</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Analytics</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where we send your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Your contact information</h2>\n<!-- /wp:heading -->','Privacy Policy','','publish','closed','open','','privacy-policy','','','2020-10-06 16:53:46','2020-10-06 16:53:46','',0,'http://foodabq.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2020-10-06 04:00:40','2020-10-06 04:00:40','<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->','Test Post','','publish','open','open','','test-post','','','2020-10-06 04:00:40','2020-10-06 04:00:40','',0,'http://foodabq.local/?p=5',0,'post','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2020-10-06 04:00:40','2020-10-06 04:00:40','<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->','Test Post','','inherit','closed','closed','','5-revision-v1','','','2020-10-06 04:00:40','2020-10-06 04:00:40','',5,'http://foodabq.local/5-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2020-10-06 04:01:25','2020-10-06 04:01:25','<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here\'.</p>\n<!-- /wp:paragraph -->','Gestapo`s experience','','publish','open','open','','second-post','','','2020-10-16 15:51:47','2020-10-16 15:51:47','',0,'http://foodabq.local/?p=7',0,'post','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2020-10-06 04:01:25','2020-10-06 04:01:25','<!-- wp:paragraph -->\n<p>t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here\'.</p>\n<!-- /wp:paragraph -->','Second Post','','inherit','closed','closed','','7-revision-v1','','','2020-10-06 04:01:25','2020-10-06 04:01:25','',7,'http://foodabq.local/7-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2020-10-06 04:13:06','2020-10-06 04:13:06','<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here\'.</p>\n<!-- /wp:paragraph -->','Second Post','','inherit','closed','closed','','7-revision-v1','','','2020-10-06 04:13:06','2020-10-06 04:13:06','',7,'http://foodabq.local/7-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2020-10-06 04:17:58','2020-10-06 04:17:58','<!-- wp:heading -->\n<h2>Where can I get some?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour.</p>\n<!-- /wp:paragraph -->','Page 1','','publish','closed','closed','','page-1','','','2020-10-06 04:17:58','2020-10-06 04:17:58','',0,'http://foodabq.local/?page_id=10',0,'page','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2020-10-06 04:17:58','2020-10-06 04:17:58','<!-- wp:heading -->\n<h2>Where can I get some?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour.</p>\n<!-- /wp:paragraph -->','Page 1','','inherit','closed','closed','','10-revision-v1','','','2020-10-06 04:17:58','2020-10-06 04:17:58','',10,'http://foodabq.local/10-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2020-10-06 04:18:41','2020-10-06 04:18:41','<!-- wp:heading -->\n<h2>Why do we use it?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.&nbsp;</p>\n<!-- /wp:paragraph -->','Page 2','','publish','closed','closed','','page-2','','','2020-10-06 04:18:41','2020-10-06 04:18:41','',0,'http://foodabq.local/?page_id=12',0,'page','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2020-10-06 04:18:41','2020-10-06 04:18:41','<!-- wp:heading -->\n<h2>Why do we use it?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.&nbsp;</p>\n<!-- /wp:paragraph -->','Page 2','','inherit','closed','closed','','12-revision-v1','','','2020-10-06 04:18:41','2020-10-06 04:18:41','',12,'http://foodabq.local/12-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2020-10-06 16:02:11','2020-10-06 16:02:11','<!-- wp:paragraph -->\n<p>Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster collaborative thinking to further the overall value proposition. Organically grow the holistic world view of disruptive innovation via workplace diversity and empowerment.</p>\n<!-- /wp:paragraph -->','About Us','','publish','closed','closed','','about-us','','','2020-10-06 16:02:11','2020-10-06 16:02:11','',0,'http://foodabq.local/?page_id=14',0,'page','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2020-10-06 16:02:11','2020-10-06 16:02:11','<!-- wp:paragraph -->\n<p>Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster collaborative thinking to further the overall value proposition. Organically grow the holistic world view of disruptive innovation via workplace diversity and empowerment.</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','14-revision-v1','','','2020-10-06 16:02:11','2020-10-06 16:02:11','',14,'http://foodabq.local/14-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2020-10-06 16:02:43','2020-10-06 16:02:43','<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our website address is: http://foodabq.local.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What personal data we collect and why we collect it</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Comments</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Media</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Contact forms</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Cookies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Embedded content from other websites</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Analytics</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where we send your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Your contact information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Additional information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>How we protect your data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What data breach procedures we have in place</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What third parties we receive data from</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What automated decision making and/or profiling we do with user data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Industry regulatory disclosure requirements</h3>\n<!-- /wp:heading -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2020-10-06 16:02:43','2020-10-06 16:02:43','',3,'http://foodabq.local/3-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2020-10-06 16:27:33','2020-10-06 16:27:33','<!-- wp:paragraph -->\n<p>Bring to the table win-win survival strategies to ensure proactive domination. At the end of the day, going forward, a new normal that has evolved from generation X is on the runway heading towards a streamlined cloud solution. User generated content in real-time will have multiple touchpoints for offshoring.</p>\n<!-- /wp:paragraph -->','Our History','','publish','closed','closed','','our-history','','','2020-10-07 03:19:22','2020-10-07 03:19:22','',14,'http://foodabq.local/?page_id=17',1,'page','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2020-10-06 16:27:34','2020-10-06 16:27:34','<!-- wp:paragraph -->\n<p>Bring to the table win-win survival strategies to ensure proactive domination. At the end of the day, going forward, a new normal that has evolved from generation X is on the runway heading towards a streamlined cloud solution. User generated content in real-time will have multiple touchpoints for offshoring.</p>\n<!-- /wp:paragraph -->','Our History','','inherit','closed','closed','','17-revision-v1','','','2020-10-06 16:27:34','2020-10-06 16:27:34','',17,'http://foodabq.local/17-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2020-10-06 16:29:38','2020-10-06 16:29:38','<!-- wp:paragraph -->\n<p>Capitalize on low hanging fruit to identify a ballpark value added activity to beta test. Override the digital divide with additional clickthroughs from DevOps. Nanotechnology immersion along the information highway will close the loop on focusing solely on the bottom line.</p>\n<!-- /wp:paragraph -->','Our Goals','','publish','closed','closed','','our-goals','','','2020-10-07 03:19:12','2020-10-07 03:19:12','',14,'http://foodabq.local/?page_id=19',2,'page','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2020-10-06 16:29:38','2020-10-06 16:29:38','<!-- wp:paragraph -->\n<p>Capitalize on low hanging fruit to identify a ballpark value added activity to beta test. Override the digital divide with additional clickthroughs from DevOps. Nanotechnology immersion along the information highway will close the loop on focusing solely on the bottom line.</p>\n<!-- /wp:paragraph -->','Our Goals','','inherit','closed','closed','','19-revision-v1','','','2020-10-06 16:29:38','2020-10-06 16:29:38','',19,'http://foodabq.local/19-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2020-10-06 16:45:54','2020-10-06 16:45:54','<!-- wp:paragraph -->\n<p>Capitalize on low hanging fruit to identify a ballpark value added activity to beta test. Override the digital divide with additional clickthroughs from DevOps. Nanotechnology immersion along the information highway will close the loop on focusing solely on the bottom line.</p>\n<!-- /wp:paragraph -->','Cookie Page','','publish','closed','closed','','cookie-page','','','2020-10-06 16:45:54','2020-10-06 16:45:54','',3,'http://foodabq.local/?page_id=21',0,'page','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2020-10-06 16:45:54','2020-10-06 16:45:54','<!-- wp:paragraph -->\n<p>Capitalize on low hanging fruit to identify a ballpark value added activity to beta test. Override the digital divide with additional clickthroughs from DevOps. Nanotechnology immersion along the information highway will close the loop on focusing solely on the bottom line.</p>\n<!-- /wp:paragraph -->','Cookie Page','','inherit','closed','closed','','21-revision-v1','','','2020-10-06 16:45:54','2020-10-06 16:45:54','',21,'http://foodabq.local/21-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2020-10-06 16:53:46','2020-10-06 16:53:46','<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our website address is: http://foodabq.local.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What personal data we collect and why we collect it</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Comments</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Media</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Contact forms</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Cookies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Embedded content from other websites</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Analytics</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where we send your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Your contact information</h2>\n<!-- /wp:heading -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2020-10-06 16:53:46','2020-10-06 16:53:46','',3,'http://foodabq.local/3-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2020-10-07 03:33:38','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2020-10-07 03:33:38','0000-00-00 00:00:00','',0,'http://foodabq.local/?p=24',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2020-10-07 03:33:38','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-10-07 03:33:38','0000-00-00 00:00:00','',3,'http://foodabq.local/?p=26',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2020-10-07 03:34:46','2020-10-07 03:34:46',' ','','','publish','closed','closed','','27','','','2020-10-28 02:27:21','2020-10-28 02:27:21','',0,'http://foodabq.local/?p=27',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2020-10-07 03:33:39','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-10-07 03:33:39','0000-00-00 00:00:00','',14,'http://foodabq.local/?p=28',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2020-10-07 03:33:39','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-10-07 03:33:39','0000-00-00 00:00:00','',14,'http://foodabq.local/?p=29',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2020-10-07 03:33:39','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-10-07 03:33:39','0000-00-00 00:00:00','',0,'http://foodabq.local/?p=30',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2020-10-07 03:33:39','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-10-07 03:33:39','0000-00-00 00:00:00','',0,'http://foodabq.local/?p=31',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2020-10-07 03:33:39','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-10-07 03:33:39','0000-00-00 00:00:00','',0,'http://foodabq.local/?p=32',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2020-10-07 04:24:35','2020-10-07 04:24:35','','Google','','publish','closed','closed','','google','','','2020-10-28 02:26:50','2020-10-28 02:26:50','',0,'http://foodabq.local/?p=33',7,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2020-10-07 04:30:11','2020-10-07 04:30:11','','Home','','publish','closed','closed','','home','','','2020-10-28 02:26:49','2020-10-28 02:26:49','',0,'http://foodabq.local/?p=34',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2020-10-07 04:30:11','2020-10-07 04:30:11',' ','','','publish','closed','closed','','35','','','2020-10-28 02:26:50','2020-10-28 02:26:50','',0,'http://foodabq.local/?p=35',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2020-10-07 04:30:39','2020-10-07 04:30:39',' ','','','publish','closed','closed','','38','','','2020-10-07 04:30:39','2020-10-07 04:30:39','',0,'http://foodabq.local/?p=38',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2020-10-07 04:30:39','2020-10-07 04:30:39',' ','','','publish','closed','closed','','39','','','2020-10-07 04:30:39','2020-10-07 04:30:39','',3,'http://foodabq.local/?p=39',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2020-10-07 15:52:21','2020-10-07 15:52:21','','Home','','publish','closed','closed','','home','','','2020-10-07 15:52:21','2020-10-07 15:52:21','',0,'http://foodabq.local/?page_id=40',0,'page','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2020-10-07 15:52:21','2020-10-07 15:52:21','','Home','','inherit','closed','closed','','40-revision-v1','','','2020-10-07 15:52:21','2020-10-07 15:52:21','',40,'http://foodabq.local/40-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2020-10-07 15:52:32','2020-10-07 15:52:32','','Blog','','publish','closed','closed','','blog','','','2020-10-07 15:52:32','2020-10-07 15:52:32','',0,'http://foodabq.local/?page_id=42',0,'page','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2020-10-07 15:52:32','2020-10-07 15:52:32','','Blog','','inherit','closed','closed','','42-revision-v1','','','2020-10-07 15:52:32','2020-10-07 15:52:32','',42,'http://foodabq.local/42-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2020-10-07 16:26:29','2020-10-07 16:26:29','<!-- wp:paragraph -->\n<p>Hands down the best place we ate at in Albuquerque! The charcuterie tray was so unique and so delicious! My husbands steak bernaise melted in your mouth incredible. We ordered 4 amazing wine flights and all of the desserts and I honestly cannot say enough about how phenomenal they were. The service was also the best that we had in Albuquerque. Our waitress was so kind and made the best suggestions!</p>\n<!-- /wp:paragraph -->','The best place I have ever eaten!','Las Conchas has won','publish','open','open','','the-best-place-i-have-ever-eaten','','','2020-10-16 15:44:35','2020-10-16 15:44:35','',0,'http://foodabq.local/?p=44',0,'post','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2020-10-07 16:26:29','2020-10-07 16:26:29','<!-- wp:paragraph -->\n<p>Hands down the best place we ate at in Albuquerque! The charcuterie tray was so unique and so delicious! My husbands steak bernaise melted in your mouth incredible. We ordered 4 amazing wine flights and all of the desserts and I honestly cannot say enough about how phenomenal they were. The service was also the best that we had in Albuquerque. Our waitress was so kind and made the best suggestions!</p>\n<!-- /wp:paragraph -->','The best place I have ever eaten!','','inherit','closed','closed','','44-revision-v1','','','2020-10-07 16:26:29','2020-10-07 16:26:29','',44,'http://foodabq.local/44-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2020-10-07 17:23:20','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-10-07 17:23:20','0000-00-00 00:00:00','',0,'http://foodabq.local/?p=46',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2020-10-07 17:24:13','2020-10-07 17:24:13',' ','','','publish','closed','closed','','47','','','2020-10-28 02:27:21','2020-10-28 02:27:21','',0,'http://foodabq.local/?p=47',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2020-10-07 17:24:38','2020-10-07 17:24:38',' ','','','publish','closed','closed','','48','','','2020-10-28 02:26:50','2020-10-28 02:26:50','',0,'http://foodabq.local/?p=48',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2020-10-09 19:57:06','2020-10-09 19:57:06','<b>Oktoberfest</b> starts in <b>September</b> because its final day has a fixed spot on the calendar. The last day of the festival is always on the first Sunday of October. ... In October 1810, the Bavarian Crown Prince Ludwig married Princess Therese of Saxony-Hildburghausen, and locals celebrated in Munich.','October Fest','','publish','closed','closed','','october-fest','','','2020-10-09 19:57:06','2020-10-09 19:57:06','',0,'http://foodabq.local/?post_type=event&#038;p=49',0,'event','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2020-10-12 15:37:50','2020-10-12 15:37:50','The&nbsp;<em>Oktoberfest</em>&nbsp;is an important part of Bavarian culture, having been held since the year 1810. Other cities across the world also hold&nbsp;<em>Oktoberfest</em>&nbsp;celebrations that are modeled after the original Munich event.','Oktoberfest ','The best day taste amazing beer!','publish','closed','closed','','october-fest','','','2020-10-20 05:43:53','2020-10-20 05:43:53','',0,'http://foodabq.local/?post_type=events&#038;p=52',0,'events','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2020-10-02 15:59:19','2020-10-02 15:59:19','National Pumpkin Day is a nonofficial holiday which falls on&nbsp;<b>October 26th</b>&nbsp;and is celebrated annually. The purpose of this holiday is to celebrate and give thanks for that squash cultivator that is such an integral part of American culture.','Pumpkin Day','','publish','closed','closed','','pumpkin-day','','','2020-10-25 17:33:24','2020-10-25 17:33:24','',0,'http://foodabq.local/?post_type=events&#038;p=53',0,'events','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2020-10-16 15:44:35','2020-10-16 15:44:35','<!-- wp:paragraph -->\n<p>Hands down the best place we ate at in Albuquerque! The charcuterie tray was so unique and so delicious! My husbands steak bernaise melted in your mouth incredible. We ordered 4 amazing wine flights and all of the desserts and I honestly cannot say enough about how phenomenal they were. The service was also the best that we had in Albuquerque. Our waitress was so kind and made the best suggestions!</p>\n<!-- /wp:paragraph -->','The best place I have ever eaten!','Las Conchas has won','inherit','closed','closed','','44-revision-v1','','','2020-10-16 15:44:35','2020-10-16 15:44:35','',44,'http://foodabq.local/2020/10/16/44-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2020-10-16 15:51:47','2020-10-16 15:51:47','<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here\'.</p>\n<!-- /wp:paragraph -->','Gestapo`s experience','','inherit','closed','closed','','7-revision-v1','','','2020-10-16 15:51:47','2020-10-16 15:51:47','',7,'http://foodabq.local/2020/10/16/7-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2020-10-16 16:04:39','2020-10-16 16:04:39',' ','','','publish','closed','closed','','56','','','2020-10-28 02:26:50','2020-10-28 02:26:50','',0,'http://foodabq.local/?p=56',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2020-10-16 16:05:09','2020-10-16 16:05:09',' ','','','publish','closed','closed','','57','','','2020-10-28 02:27:21','2020-10-28 02:27:21','',0,'http://foodabq.local/?p=57',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2020-10-20 05:24:16','2020-10-20 05:24:16','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"events\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Event Date','event-date','publish','closed','closed','','group_5f8e720273b1d','','','2020-10-20 05:24:16','2020-10-20 05:24:16','',0,'http://foodabq.local/?post_type=acf-field-group&#038;p=60',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2020-10-20 05:24:16','2020-10-20 05:24:16','a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"m/d/Y\";s:13:\"return_format\";s:3:\"Ymd\";s:9:\"first_day\";i:1;}','Event Date','event_date','publish','closed','closed','','field_5f8e72af72642','','','2020-10-20 05:24:16','2020-10-20 05:24:16','',60,'http://foodabq.local/?post_type=acf-field&p=61',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2020-10-25 17:03:59','2020-10-25 17:03:59','<p>The&nbsp;<em>Oktoberfest</em>&nbsp;is an important part of Bavarian culture, having been held since the year 1810. Other cities across the world also hold&nbsp;<em>Oktoberfest</em>&nbsp;celebrations that are modeled after the original Munich event.</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Oktoberfest ','The best day taste amazing beer!','inherit','closed','closed','','52-autosave-v1','','','2020-10-25 17:03:59','2020-10-25 17:03:59','',52,'http://foodabq.local/2020/10/25/52-autosave-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2020-10-25 17:23:36','2020-10-25 17:23:36','<!-- wp:paragraph -->\n<p>New Mexico offers plenty of reasons to celebrate,&nbsp;from a chile fest to an alien bash to a duck race. The most unique events&nbsp;involve New Mexico\'s unique cultural heritage, such as SWAIA\'s Indian Market and The Traditional and Contemporary Spanish Markets held on Santa Fe\'s historic plaza, There are Native American dances at the pueblos. And fiestas held on town plazas throughout the state. Of course, the region\'s most picturesque event, the Albuquerque International Balloon Fiesta, fills the sky with unforgettable beauty.</p>\n<!-- /wp:paragraph -->','Albuquerque International Balloon Fiesta','','publish','closed','closed','','albuquerque-international-balloon-fiesta','','','2020-10-28 03:52:50','2020-10-28 03:52:50','',0,'http://foodabq.local/?post_type=events&#038;p=63',0,'events','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2020-10-25 17:34:27','2020-10-25 17:34:27','<!-- wp:paragraph -->\n<p>Las Flores del Valle&nbsp;of Albuquerque. The event will take place on&nbsp;<a rel=\"noreferrer noopener\" href=\"https://www.facebook.com/InternationalFolkArt/\" target=\"_blank\">MOIFA’s Facebook&nbsp;Page</a>&nbsp;at 7 p.m. MDT&nbsp;on Sunday, November 1, 2020.&nbsp;This&nbsp;concert is in&nbsp;conjunction with the exhibition “Música&nbsp;Buena: Hispano Folk Music of New Mexico,” funded by the International Folk Art Foundation.&nbsp;</p>\n<!-- /wp:paragraph -->','Día de los Muertos','','publish','closed','closed','','dia-de-los-muertos','','','2020-10-27 04:18:24','2020-10-27 04:18:24','',0,'http://foodabq.local/?post_type=events&#038;p=64',0,'events','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2020-10-25 18:03:26','2020-10-25 18:03:26','','Past Events','','publish','closed','closed','','past-events','','','2020-10-25 18:03:26','2020-10-25 18:03:26','',0,'http://foodabq.local/?page_id=65',0,'page','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2020-10-25 18:03:26','2020-10-25 18:03:26','','Past Events','','inherit','closed','closed','','65-revision-v1','','','2020-10-25 18:03:26','2020-10-25 18:03:26','',65,'http://foodabq.local/2020/10/25/65-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2020-10-26 03:52:47','2020-10-26 03:52:47','<!-- wp:paragraph -->\n<p>Rising from the heart of the Tularosa Basin is one of the world\'s great natural wonders - the glistening white sands of New Mexico. Great wave-like dunes of gypsum sand have engulfed 275 square miles of desert, creating the world\'s largest gypsum dunefield. White Sands National Park preserves a major portion of this unique dunefield, along with the plants and animals that live here.</p>\n<!-- /wp:paragraph -->','White Sands','','publish','closed','closed','','white-sands','','','2020-10-28 04:04:22','2020-10-28 04:04:22','',0,'http://foodabq.local/?post_type=destination&#038;p=68',0,'destination','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2020-10-26 03:53:58','2020-10-26 03:53:58','<!-- wp:paragraph -->\n<p>High ancient sea ledges, deep rocky canyons, flowering cactus, and desert wildlife—treasures above the ground in the Chihuahuan Desert. Hidden beneath the surface are more than 119 caves—formed when sulfuric acid dissolved limestone leaving behind caverns of all sizes.</p>\n<!-- /wp:paragraph -->','Carlsbad Caverns','','publish','closed','closed','','carlsbad-caverns','','','2020-10-28 04:03:25','2020-10-28 04:03:25','',0,'http://foodabq.local/?post_type=destination&#038;p=69',0,'destination','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2020-10-26 04:03:16','2020-10-26 04:03:16',' ','','','publish','closed','closed','','70','','','2020-10-28 02:27:21','2020-10-28 02:27:21','',0,'http://foodabq.local/?p=70',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2020-10-26 04:03:55','2020-10-26 04:03:55',' ','','','publish','closed','closed','','71','','','2020-10-28 02:26:49','2020-10-28 02:26:49','',0,'http://foodabq.local/?p=71',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2020-10-26 04:20:07','2020-10-26 04:20:07','a:7:{s:8:\"location\";a:3:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"events\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"destination\";}}i:2;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"thing\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Related Destination','related-destination','publish','closed','closed','','group_5f964df0bd044','','','2020-10-28 03:20:09','2020-10-28 03:20:09','',0,'http://foodabq.local/?post_type=acf-field-group&#038;p=72',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2020-10-26 04:20:07','2020-10-26 04:20:07','a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}','Related Destination(s)','related_destination','publish','closed','closed','','field_5f964dfdf0491','','','2020-10-28 02:35:29','2020-10-28 02:35:29','',72,'http://foodabq.local/?post_type=acf-field&#038;p=73',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2020-10-27 04:14:17','2020-10-27 04:14:17','<!-- wp:paragraph -->\n<p>White sands great place to have fun in sand</p>\n<!-- /wp:paragraph -->','Slide in sand','','publish','closed','closed','','slide-in-sand','','','2020-10-28 03:44:18','2020-10-28 03:44:18','',0,'http://foodabq.local/?post_type=thing&#038;p=74',0,'thing','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2020-10-28 02:16:00','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-10-28 02:16:00','0000-00-00 00:00:00','',0,'http://foodabq.local/?p=75',0,'post','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2020-10-28 02:24:36','2020-10-28 02:24:36','<!-- wp:paragraph -->\n<p><strong>Halloween</strong>&nbsp;or&nbsp;<strong>Hallowe\'en</strong>&nbsp;(a contraction of&nbsp;<strong>Hallows\' Even</strong>&nbsp;or&nbsp;<strong>Hallows\' Evening</strong>),<sup><a href=\"https://en.wikipedia.org/wiki/Halloween#cite_note-Contraction-5\">[5]</a></sup>&nbsp;also known as&nbsp;<strong>Allhalloween</strong>,<sup><a href=\"https://en.wikipedia.org/wiki/Halloween#cite_note-Palmer1882-6\">[6]</a></sup>&nbsp;<strong>All Hallows\' Eve</strong>,<sup><a href=\"https://en.wikipedia.org/wiki/Halloween#cite_note-Elwell2001-7\">[7]</a></sup>&nbsp;or&nbsp;<strong>All Saints\' Eve</strong>,<sup><a href=\"https://en.wikipedia.org/wiki/Halloween#cite_note-8\">[8]</a></sup>&nbsp;is a celebration&nbsp;<a href=\"https://en.wikipedia.org/wiki/Geography_of_Halloween\">observed in many countries</a>&nbsp;on 31 October, the eve of the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Western_Christian\">Western Christian</a>&nbsp;feast of&nbsp;<a href=\"https://en.wikipedia.org/wiki/All_Saints%27_Day\">All Hallows\' Day</a>. It begins the observance of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Allhallowtide\">Allhallowtide</a>,<sup><a href=\"https://en.wikipedia.org/wiki/Halloween#cite_note-9\">[9]</a></sup>&nbsp;the time in the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Liturgical_year\">liturgical year</a>&nbsp;dedicated to remembering the dead, including&nbsp;<a href=\"https://en.wikipedia.org/wiki/Saint\">saints</a>&nbsp;(hallows),&nbsp;<a href=\"https://en.wikipedia.org/wiki/Christian_martyr\">martyrs</a>, and all the faithful departed.<sup><a href=\"https://en.wikipedia.org/wiki/Halloween#cite_note-10\">[10]</a><a href=\"https://en.wikipedia.org/wiki/Halloween#cite_note-Davis2009-11\">[11]</a></sup></p>\n<!-- /wp:paragraph -->','Dress up in Halloween costumes','','publish','closed','closed','','dress-up-in-halloween-costumes','','','2020-10-28 03:33:12','2020-10-28 03:33:12','',0,'http://foodabq.local/?post_type=thing&#038;p=76',0,'thing','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2020-10-28 02:26:03','2020-10-28 02:26:03',' ','','','publish','closed','closed','','77','','','2020-10-28 02:26:50','2020-10-28 02:26:50','',0,'http://foodabq.local/?p=77',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2020-10-28 02:27:21','2020-10-28 02:27:21',' ','','','publish','closed','closed','','78','','','2020-10-28 02:27:21','2020-10-28 02:27:21','',0,'http://foodabq.local/?p=78',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2020-10-28 03:59:22','2020-10-28 03:59:22','','sand','','inherit','open','closed','','sand','','','2020-10-28 04:37:10','2020-10-28 04:37:10','',69,'http://foodabq.local/wp-content/uploads/2020/10/sand.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (80,1,'2020-10-28 04:02:37','2020-10-28 04:02:37','','cavern','','inherit','open','closed','','cavern','','','2020-10-28 04:38:21','2020-10-28 04:38:21','',69,'http://foodabq.local/wp-content/uploads/2020/10/cavern.jpg',0,'attachment','image/jpeg',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (5,1,0);
INSERT INTO `wp_term_relationships` VALUES (7,6,0);
INSERT INTO `wp_term_relationships` VALUES (27,2,0);
INSERT INTO `wp_term_relationships` VALUES (33,4,0);
INSERT INTO `wp_term_relationships` VALUES (34,4,0);
INSERT INTO `wp_term_relationships` VALUES (35,4,0);
INSERT INTO `wp_term_relationships` VALUES (38,3,0);
INSERT INTO `wp_term_relationships` VALUES (39,3,0);
INSERT INTO `wp_term_relationships` VALUES (44,6,0);
INSERT INTO `wp_term_relationships` VALUES (47,2,0);
INSERT INTO `wp_term_relationships` VALUES (48,4,0);
INSERT INTO `wp_term_relationships` VALUES (56,4,0);
INSERT INTO `wp_term_relationships` VALUES (57,2,0);
INSERT INTO `wp_term_relationships` VALUES (70,2,0);
INSERT INTO `wp_term_relationships` VALUES (71,4,0);
INSERT INTO `wp_term_relationships` VALUES (77,4,0);
INSERT INTO `wp_term_relationships` VALUES (78,2,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'nav_menu','',0,7);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'category','Reviews from our users.',0,2);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'My Menu Header','my-menu-header',0);
INSERT INTO `wp_terms` VALUES (3,'My footer Menu','my-footer-menu',0);
INSERT INTO `wp_terms` VALUES (4,'My footer Menu 2','my-footer-menu-2',0);
INSERT INTO `wp_terms` VALUES (5,'General','general',0);
INSERT INTO `wp_terms` VALUES (6,'Reviews','reviews',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Ahristian');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','About me web developer');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:2:{s:64:\"9d156a07f174732a17bcfcc2e492ba3200566e6c6ee949be1787417cb36e98f5\";a:4:{s:10:\"expiration\";i:1604853840;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\";s:5:\"login\";i:1603644240;}s:64:\"3975fb1149e51321f1b9c6ade0b52f359e72f2a091469210b5ecbc2d5a1d4224\";a:4:{s:10:\"expiration\";i:1604887955;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\";s:5:\"login\";i:1603678355;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','75');
INSERT INTO `wp_usermeta` VALUES (18,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'nav_menu_recently_edited','2');
INSERT INTO `wp_usermeta` VALUES (21,1,'enable_custom_fields','1');
INSERT INTO `wp_usermeta` VALUES (22,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (23,1,'wp_user-settings-time','1603857599');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'ahristian','$P$BbF8wT4wbOHX/Dm5YLA2yfwojH8BoJ/','ahristian','hristian.andrei@gmail.com','http://foodabq.local','2020-09-29 04:48:19','',0,'Ahristian');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-03 21:17:33
