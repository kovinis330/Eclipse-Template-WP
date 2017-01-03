# WordPress MySQL database migration
#
# Generated: Tuesday 3. January 2017 07:33 UTC
# Hostname: localhost
# Database: `wp_eclipse-template`
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2016-12-21 13:00:59', '2016-12-21 13:00:59', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=251 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/vcs-project', 'yes'),
(2, 'home', 'http://localhost/vcs-project', 'yes'),
(3, 'blogname', 'Eclipse Template', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'v.jacevicius@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:87:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=2&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'eclipse2', 'yes'),
(41, 'stylesheet', 'eclipse2', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:4:{i:1483435077;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1483448460;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1483448471;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(105, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1482325970;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(118, 'can_compress_scripts', '1', 'no'),
(135, 'current_theme', 'Eclipse starter', 'yes'),
(136, 'theme_mods_eclipse-theme', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1482393421;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:13:"widget-area-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"widget-area-2";a:0:{}}}}', 'yes'),
(137, 'theme_switched', '', 'yes'),
(142, 'recently_activated', 'a:0:{}', 'yes'),
(149, 'acf_version', '4.4.11', 'yes'),
(150, 'theme_mods_eclipse2', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:6:{s:15:"contact__button";i:4;s:14:"contact-button";i:4;s:17:"footer-navigation";i:6;s:18:"primary-navigation";i:3;s:11:"button-menu";i:5;s:11:"footer-menu";i:6;}}', 'yes'),
(173, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=819 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'templates/home.php'),
(2, 2, '_edit_lock', '1483018704:1'),
(3, 2, '_edit_last', '1'),
(40, 10, '_menu_item_type', 'custom'),
(41, 10, '_menu_item_menu_item_parent', '0'),
(42, 10, '_menu_item_object_id', '10'),
(43, 10, '_menu_item_object', 'custom'),
(44, 10, '_menu_item_target', ''),
(45, 10, '_menu_item_classes', 'a:1:{i:0;s:14:"pure-menu-item";}'),
(46, 10, '_menu_item_xfn', ''),
(47, 10, '_menu_item_url', '#about'),
(49, 11, '_menu_item_type', 'custom'),
(50, 11, '_menu_item_menu_item_parent', '0'),
(51, 11, '_menu_item_object_id', '11'),
(52, 11, '_menu_item_object', 'custom'),
(53, 11, '_menu_item_target', ''),
(54, 11, '_menu_item_classes', 'a:1:{i:0;s:14:"pure-menu-item";}'),
(55, 11, '_menu_item_xfn', ''),
(56, 11, '_menu_item_url', '#studio'),
(58, 12, '_menu_item_type', 'custom'),
(59, 12, '_menu_item_menu_item_parent', '0'),
(60, 12, '_menu_item_object_id', '12'),
(61, 12, '_menu_item_object', 'custom'),
(62, 12, '_menu_item_target', ''),
(63, 12, '_menu_item_classes', 'a:1:{i:0;s:14:"pure-menu-item";}'),
(64, 12, '_menu_item_xfn', ''),
(65, 12, '_menu_item_url', '#pricing'),
(67, 13, '_menu_item_type', 'custom'),
(68, 13, '_menu_item_menu_item_parent', '0'),
(69, 13, '_menu_item_object_id', '13'),
(70, 13, '_menu_item_object', 'custom'),
(71, 13, '_menu_item_target', ''),
(72, 13, '_menu_item_classes', 'a:1:{i:0;s:14:"pure-menu-item";}'),
(73, 13, '_menu_item_xfn', ''),
(74, 13, '_menu_item_url', '#blog'),
(76, 14, '_menu_item_type', 'custom'),
(77, 14, '_menu_item_menu_item_parent', '0'),
(78, 14, '_menu_item_object_id', '14'),
(79, 14, '_menu_item_object', 'custom'),
(80, 14, '_menu_item_target', ''),
(81, 14, '_menu_item_classes', 'a:1:{i:0;s:14:"pure-menu-item";}'),
(82, 14, '_menu_item_xfn', ''),
(83, 14, '_menu_item_url', '#join'),
(85, 15, '_menu_item_type', 'custom'),
(86, 15, '_menu_item_menu_item_parent', '0'),
(87, 15, '_menu_item_object_id', '15'),
(88, 15, '_menu_item_object', 'custom'),
(89, 15, '_menu_item_target', ''),
(90, 15, '_menu_item_classes', 'a:1:{i:0;s:13:"contactButton";}'),
(91, 15, '_menu_item_xfn', ''),
(92, 15, '_menu_item_url', '#join'),
(94, 16, '_wp_trash_meta_status', 'auto-draft'),
(95, 16, '_wp_trash_meta_time', '1482485091'),
(96, 16, '_wp_desired_post_slug', ''),
(97, 17, '_edit_last', '1'),
(98, 17, 'field_585ced90d41bc', 'a:14:{s:3:"key";s:19:"field_585ced90d41bc";s:5:"label";s:18:"Footer paragraph 1";s:4:"name";s:20:"e_footer_paragraph_1";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(101, 17, 'position', 'normal'),
(102, 17, 'layout', 'no_box'),
(103, 17, 'hide_on_screen', ''),
(104, 17, '_edit_lock', '1483016561:1'),
(106, 18, '_edit_last', '1'),
(107, 18, '_edit_lock', '1483001638:1'),
(108, 18, '_wp_page_template', 'default'),
(109, 20, '_edit_last', '1'),
(110, 20, 'field_5862193abcc9f', 'a:11:{s:3:"key";s:19:"field_5862193abcc9f";s:5:"label";s:13:"image section";s:4:"name";s:18:"e_fi_image_section";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(112, 20, 'position', 'normal'),
(113, 20, 'layout', 'default'),
(114, 20, 'hide_on_screen', ''),
(115, 20, '_edit_lock', '1482916864:1'),
(116, 21, '_wp_attached_file', '2016/12/iphoneHead.png'),
(117, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:423;s:6:"height";i:238;s:4:"file";s:22:"2016/12/iphoneHead.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"iphoneHead-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"iphoneHead-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(118, 22, 'e_fi_image_section', '21'),
(119, 22, '_e_fi_image_section', 'field_5862193abcc9f'),
(120, 18, 'e_fi_image_section', '21'),
(121, 18, '_e_fi_image_section', 'field_5862193abcc9f'),
(122, 25, '_edit_last', '1'),
(123, 25, '_edit_lock', '1483008882:1'),
(124, 25, '_wp_page_template', 'default'),
(125, 27, '_wp_attached_file', '2016/12/Shape44.png'),
(126, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:55;s:6:"height";i:48;s:4:"file";s:19:"2016/12/Shape44.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(127, 28, '_wp_attached_file', '2016/12/Shape41.png'),
(128, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:42;s:6:"height";i:42;s:4:"file";s:19:"2016/12/Shape41.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(129, 29, '_wp_attached_file', '2016/12/Shape42.png'),
(130, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:38;s:6:"height";i:38;s:4:"file";s:19:"2016/12/Shape42.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(131, 30, '_wp_attached_file', '2016/12/Shape43.png'),
(132, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:50;s:6:"height";i:40;s:4:"file";s:19:"2016/12/Shape43.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(133, 34, '_edit_last', '1'),
(135, 34, 'position', 'normal'),
(136, 34, 'layout', 'default'),
(137, 34, 'hide_on_screen', ''),
(138, 34, '_edit_lock', '1483009991:1'),
(140, 34, 'field_586220ddf1cd8', 'a:11:{s:3:"key";s:19:"field_586220ddf1cd8";s:5:"label";s:7:"image 1";s:4:"name";s:11:"e_f_image_1";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(142, 34, 'field_5862217d82f2d', 'a:14:{s:3:"key";s:19:"field_5862217d82f2d";s:5:"label";s:9:"heading 1";s:4:"name";s:13:"e_f_heading_1";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(145, 34, 'field_586222e429796', 'a:14:{s:3:"key";s:19:"field_586222e429796";s:5:"label";s:11:"paragraph 1";s:4:"name";s:15:"e_f_paragraph_1";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(147, 34, 'field_586224959b6fe', 'a:11:{s:3:"key";s:19:"field_586224959b6fe";s:5:"label";s:7:"image 2";s:4:"name";s:11:"e_f_image_2";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(149, 34, 'field_586224b9090f5', 'a:14:{s:3:"key";s:19:"field_586224b9090f5";s:5:"label";s:9:"heading 2";s:4:"name";s:13:"e_f_heading_2";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(151, 34, 'field_586224ef031f6', 'a:14:{s:3:"key";s:19:"field_586224ef031f6";s:5:"label";s:11:"paragraph 2";s:4:"name";s:15:"e_f_paragraph_2";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(154, 34, 'field_5862251dd052d', 'a:11:{s:3:"key";s:19:"field_5862251dd052d";s:5:"label";s:7:"image 3";s:4:"name";s:11:"e_f_image_3";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}'),
(156, 34, 'field_5862253cb1f42', 'a:14:{s:3:"key";s:19:"field_5862253cb1f42";s:5:"label";s:9:"heading 3";s:4:"name";s:13:"e_f_heading_3";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:7;}'),
(157, 34, 'field_5862254cb1f43', 'a:14:{s:3:"key";s:19:"field_5862254cb1f43";s:5:"label";s:11:"paragraph 3";s:4:"name";s:15:"e_f_paragraph_3";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:8;}') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(158, 34, 'field_58622583b1f44', 'a:11:{s:3:"key";s:19:"field_58622583b1f44";s:5:"label";s:7:"image 4";s:4:"name";s:11:"e_f_image_4";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:9;}'),
(159, 34, 'field_5862259db1f45', 'a:14:{s:3:"key";s:19:"field_5862259db1f45";s:5:"label";s:9:"heading 4";s:4:"name";s:13:"e_f_heading_4";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:10;}'),
(160, 34, 'field_586225b1b1f46', 'a:14:{s:3:"key";s:19:"field_586225b1b1f46";s:5:"label";s:11:"paragraph 4";s:4:"name";s:15:"e_f_paragraph_4";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:11;}'),
(162, 35, 'e_f_image_1', '30'),
(163, 35, '_e_f_image_1', 'field_586220ddf1cd8'),
(164, 35, 'e_f_heading_1', 'Lorem ipsum dolor sit'),
(165, 35, '_e_f_heading_1', 'field_5862217d82f2d'),
(166, 35, 'e_f_paragraph_1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(167, 35, '_e_f_paragraph_1', 'field_586222e429796'),
(168, 35, 'e_f_image_2', ''),
(169, 35, '_e_f_image_2', 'field_586224959b6fe'),
(170, 35, 'e_f_heading_2', ''),
(171, 35, '_e_f_heading_2', 'field_586224b9090f5'),
(172, 35, 'e_f_paragraph_2', ''),
(173, 35, '_e_f_paragraph_2', 'field_586224ef031f6'),
(174, 35, 'e_f_image_3', ''),
(175, 35, '_e_f_image_3', 'field_5862251dd052d'),
(176, 35, 'e_f_heading_3', ''),
(177, 35, '_e_f_heading_3', 'field_5862253cb1f42'),
(178, 35, 'e_f_paragraph_3', ''),
(179, 35, '_e_f_paragraph_3', 'field_5862254cb1f43'),
(180, 35, 'e_f_image_4', ''),
(181, 35, '_e_f_image_4', 'field_58622583b1f44'),
(182, 35, 'e_f_heading_4', ''),
(183, 35, '_e_f_heading_4', 'field_5862259db1f45'),
(184, 35, 'e_f_paragraph_4', ''),
(185, 35, '_e_f_paragraph_4', 'field_586225b1b1f46'),
(186, 25, 'e_f_image_1', '30'),
(187, 25, '_e_f_image_1', 'field_586220ddf1cd8'),
(188, 25, 'e_f_heading_1', 'Lorem ipsum dolor sit'),
(189, 25, '_e_f_heading_1', 'field_5862217d82f2d'),
(190, 25, 'e_f_paragraph_1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(191, 25, '_e_f_paragraph_1', 'field_586222e429796'),
(192, 25, 'e_f_image_2', '29'),
(193, 25, '_e_f_image_2', 'field_586224959b6fe'),
(194, 25, 'e_f_heading_2', 'Lorem ipsum dolor sit'),
(195, 25, '_e_f_heading_2', 'field_586224b9090f5'),
(196, 25, 'e_f_paragraph_2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(197, 25, '_e_f_paragraph_2', 'field_586224ef031f6'),
(198, 25, 'e_f_image_3', '28'),
(199, 25, '_e_f_image_3', 'field_5862251dd052d'),
(200, 25, 'e_f_heading_3', 'Lorem ipsum dolor sit'),
(201, 25, '_e_f_heading_3', 'field_5862253cb1f42'),
(202, 25, 'e_f_paragraph_3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(203, 25, '_e_f_paragraph_3', 'field_5862254cb1f43'),
(204, 25, 'e_f_image_4', '27'),
(205, 25, '_e_f_image_4', 'field_58622583b1f44'),
(206, 25, 'e_f_heading_4', 'Lorem ipsum dolor sit'),
(207, 25, '_e_f_heading_4', 'field_5862259db1f45'),
(208, 25, 'e_f_paragraph_4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(209, 25, '_e_f_paragraph_4', 'field_586225b1b1f46'),
(210, 36, 'e_f_image_1', '30'),
(211, 36, '_e_f_image_1', 'field_586220ddf1cd8'),
(212, 36, 'e_f_heading_1', 'Lorem ipsum dolor sit'),
(213, 36, '_e_f_heading_1', 'field_5862217d82f2d'),
(214, 36, 'e_f_paragraph_1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(215, 36, '_e_f_paragraph_1', 'field_586222e429796'),
(216, 36, 'e_f_image_2', '29'),
(217, 36, '_e_f_image_2', 'field_586224959b6fe'),
(218, 36, 'e_f_heading_2', 'Lorem ipsum dolor sit'),
(219, 36, '_e_f_heading_2', 'field_586224b9090f5'),
(220, 36, 'e_f_paragraph_2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(221, 36, '_e_f_paragraph_2', 'field_586224ef031f6'),
(222, 36, 'e_f_image_3', '28'),
(223, 36, '_e_f_image_3', 'field_5862251dd052d'),
(224, 36, 'e_f_heading_3', 'Lorem ipsum dolor sit'),
(225, 36, '_e_f_heading_3', 'field_5862253cb1f42'),
(226, 36, 'e_f_paragraph_3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(227, 36, '_e_f_paragraph_3', 'field_5862254cb1f43'),
(228, 36, 'e_f_image_4', '27'),
(229, 36, '_e_f_image_4', 'field_58622583b1f44'),
(230, 36, 'e_f_heading_4', 'Lorem ipsum dolor sit'),
(231, 36, '_e_f_heading_4', 'field_5862259db1f45'),
(232, 36, 'e_f_paragraph_4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(233, 36, '_e_f_paragraph_4', 'field_586225b1b1f46'),
(234, 37, '_edit_last', '1'),
(235, 37, '_edit_lock', '1483082679:1'),
(236, 37, '_wp_page_template', 'default'),
(239, 41, '_menu_item_type', 'post_type'),
(240, 41, '_menu_item_menu_item_parent', '0'),
(241, 41, '_menu_item_object_id', '37'),
(242, 41, '_menu_item_object', 'page'),
(243, 41, '_menu_item_target', ''),
(244, 41, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(245, 41, '_menu_item_xfn', ''),
(246, 41, '_menu_item_url', ''),
(247, 41, '_menu_item_orphaned', '1482837909'),
(248, 43, '_edit_last', '1'),
(250, 43, 'position', 'normal'),
(251, 43, 'layout', 'default'),
(252, 43, 'hide_on_screen', ''),
(253, 43, '_edit_lock', '1483010948:1'),
(256, 43, 'field_586250e0e81b9', 'a:11:{s:3:"key";s:19:"field_586250e0e81b9";s:5:"label";s:7:"image 1";s:4:"name";s:11:"e_o_image_1";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(257, 43, 'field_58625113e81ba', 'a:14:{s:3:"key";s:19:"field_58625113e81ba";s:5:"label";s:11:"paragraph 1";s:4:"name";s:15:"e_o_paragraph_1";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(258, 43, 'field_58625161e81bb', 'a:11:{s:3:"key";s:19:"field_58625161e81bb";s:5:"label";s:6:"link 1";s:4:"name";s:10:"e_o_link_1";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(260, 44, '_wp_attached_file', '2016/12/Layer-3.jpg'),
(261, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:380;s:6:"height";i:204;s:4:"file";s:19:"2016/12/Layer-3.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"Layer-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"Layer-3-300x161.jpg";s:5:"width";i:300;s:6:"height";i:161;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(262, 45, 'e_o_image_1', '44'),
(263, 45, '_e_o_image_1', 'field_586250e0e81b9'),
(264, 45, 'e_o_paragraph_1', 'Design listing one') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(265, 45, '_e_o_paragraph_1', 'field_58625113e81ba'),
(266, 45, 'e_o_link_1', '37'),
(267, 45, '_e_o_link_1', 'field_58625161e81bb'),
(268, 37, 'e_o_image_1', '44'),
(269, 37, '_e_o_image_1', 'field_586250e0e81b9'),
(270, 37, 'e_o_paragraph_1', 'Design listing one'),
(271, 37, '_e_o_paragraph_1', 'field_58625113e81ba'),
(272, 37, 'e_o_link_1', '72'),
(273, 37, '_e_o_link_1', 'field_58625161e81bb'),
(274, 43, 'field_5862538ef0c59', 'a:11:{s:3:"key";s:19:"field_5862538ef0c59";s:5:"label";s:7:"image 2";s:4:"name";s:11:"e_o_image_2";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(275, 43, 'field_586253fdf0c5a', 'a:14:{s:3:"key";s:19:"field_586253fdf0c5a";s:5:"label";s:11:"paragraph 2";s:4:"name";s:15:"e_o_paragraph_2";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(276, 43, 'field_5862540cf0c5b', 'a:11:{s:3:"key";s:19:"field_5862540cf0c5b";s:5:"label";s:6:"link 2";s:4:"name";s:10:"e_o_link_2";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(277, 43, 'field_58625446f0c5c', 'a:11:{s:3:"key";s:19:"field_58625446f0c5c";s:5:"label";s:7:"image 3";s:4:"name";s:11:"e_o_image_3";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}'),
(278, 43, 'field_5862545bf0c5d', 'a:14:{s:3:"key";s:19:"field_5862545bf0c5d";s:5:"label";s:11:"paragraph 3";s:4:"name";s:15:"e_o_paragraph_3";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:7;}'),
(279, 43, 'field_5862548af0c5e', 'a:11:{s:3:"key";s:19:"field_5862548af0c5e";s:5:"label";s:6:"link 3";s:4:"name";s:10:"e_o_link_3";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:8;}'),
(282, 46, 'e_o_image_1', '44'),
(283, 46, '_e_o_image_1', 'field_586250e0e81b9'),
(284, 46, 'e_o_paragraph_1', 'Design listing one'),
(285, 46, '_e_o_paragraph_1', 'field_58625113e81ba'),
(286, 46, 'e_o_link_1', '37'),
(287, 46, '_e_o_link_1', 'field_58625161e81bb'),
(288, 46, 'e_o_image_2', '44'),
(289, 46, '_e_o_image_2', 'field_5862538ef0c59'),
(290, 46, 'e_o_paragraph_2', 'Design listing one'),
(291, 46, '_e_o_paragraph_2', 'field_586253fdf0c5a'),
(292, 46, 'e_o_link_2', '37'),
(293, 46, '_e_o_link_2', 'field_5862540cf0c5b'),
(294, 46, 'e_o_image_3', '44'),
(295, 46, '_e_o_image_3', 'field_58625446f0c5c'),
(296, 46, 'e_o_paragraph_3', 'Design listing one'),
(297, 46, '_e_o_paragraph_3', 'field_5862545bf0c5d'),
(298, 46, 'e_o_link_3', '37'),
(299, 46, '_e_o_link_3', 'field_5862548af0c5e'),
(300, 37, 'e_o_image_2', '44'),
(301, 37, '_e_o_image_2', 'field_5862538ef0c59'),
(302, 37, 'e_o_paragraph_2', 'Design listing one'),
(303, 37, '_e_o_paragraph_2', 'field_586253fdf0c5a'),
(304, 37, 'e_o_link_2', '72'),
(305, 37, '_e_o_link_2', 'field_5862540cf0c5b'),
(306, 37, 'e_o_image_3', '44'),
(307, 37, '_e_o_image_3', 'field_58625446f0c5c'),
(308, 37, 'e_o_paragraph_3', 'Design listing one'),
(309, 37, '_e_o_paragraph_3', 'field_5862545bf0c5d'),
(310, 37, 'e_o_link_3', '72'),
(311, 37, '_e_o_link_3', 'field_5862548af0c5e'),
(312, 47, '_edit_last', '1'),
(313, 47, '_edit_lock', '1483012380:1'),
(314, 47, '_wp_page_template', 'default'),
(315, 49, '_edit_last', '1'),
(316, 49, 'field_58625fc16cae4', 'a:11:{s:3:"key";s:19:"field_58625fc16cae4";s:5:"label";s:4:"logo";s:4:"name";s:8:"e_p_logo";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(318, 49, 'position', 'normal'),
(319, 49, 'layout', 'no_box'),
(320, 49, 'hide_on_screen', ''),
(321, 49, '_edit_lock', '1482923381:1'),
(323, 50, '_wp_attached_file', '2016/12/logo1.png'),
(324, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:177;s:6:"height";i:177;s:4:"file";s:17:"2016/12/logo1.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"logo1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(325, 51, 'e_p_logo', '50'),
(326, 51, '_e_p_logo', 'field_58625fc16cae4'),
(327, 47, 'e_p_logo', '50'),
(328, 47, '_e_p_logo', 'field_58625fc16cae4'),
(329, 49, 'field_586260509bc93', 'a:11:{s:3:"key";s:19:"field_586260509bc93";s:5:"label";s:6:"laptop";s:4:"name";s:10:"e_p_laptop";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(331, 52, '_wp_attached_file', '2016/12/laptop.png'),
(332, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1010;s:6:"height";i:1179;s:4:"file";s:18:"2016/12/laptop.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"laptop-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:18:"laptop-257x300.png";s:5:"width";i:257;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:18:"laptop-768x897.png";s:5:"width";i:768;s:6:"height";i:897;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:19:"laptop-877x1024.png";s:5:"width";i:877;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(333, 53, 'e_p_logo', '50'),
(334, 53, '_e_p_logo', 'field_58625fc16cae4'),
(335, 53, 'e_p_laptop', '52'),
(336, 53, '_e_p_laptop', 'field_586260509bc93'),
(337, 47, 'e_p_laptop', '52'),
(338, 47, '_e_p_laptop', 'field_586260509bc93'),
(339, 54, '_edit_last', '1'),
(340, 54, 'field_586265c5e0211', 'a:14:{s:3:"key";s:19:"field_586265c5e0211";s:5:"label";s:9:"Section 1";s:4:"name";s:13:"e_h_section_1";s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"return_format";s:2:"id";s:9:"post_type";a:1:{i:0;s:3:"all";}s:8:"taxonomy";a:1:{i:0;s:3:"all";}s:7:"filters";a:1:{i:0;s:6:"search";}s:15:"result_elements";a:1:{i:0;s:9:"post_type";}s:3:"max";s:1:"1";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(342, 54, 'position', 'normal'),
(343, 54, 'layout', 'no_box'),
(344, 54, 'hide_on_screen', ''),
(345, 54, '_edit_lock', '1482908835:1'),
(346, 55, 'e_h_section_1', 'a:1:{i:0;s:2:"18";}'),
(347, 55, '_e_h_section_1', 'field_586265c5e0211'),
(348, 2, 'e_h_section_1', 'a:1:{i:0;s:2:"18";}'),
(349, 2, '_e_h_section_1', 'field_586265c5e0211'),
(351, 54, 'field_58626fea7223c', 'a:14:{s:3:"key";s:19:"field_58626fea7223c";s:5:"label";s:9:"Section 2";s:4:"name";s:13:"e_h_section_2";s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"return_format";s:2:"id";s:9:"post_type";a:1:{i:0;s:3:"all";}s:8:"taxonomy";a:1:{i:0;s:3:"all";}s:7:"filters";a:1:{i:0;s:6:"search";}s:15:"result_elements";a:1:{i:0;s:9:"post_type";}s:3:"max";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(352, 54, 'field_586270077223d', 'a:14:{s:3:"key";s:19:"field_586270077223d";s:5:"label";s:9:"Section 3";s:4:"name";s:13:"e_h_section_3";s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"return_format";s:2:"id";s:9:"post_type";a:1:{i:0;s:3:"all";}s:8:"taxonomy";a:1:{i:0;s:3:"all";}s:7:"filters";a:1:{i:0;s:6:"search";}s:15:"result_elements";a:1:{i:0;s:9:"post_type";}s:3:"max";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(353, 54, 'field_586270207223f', 'a:14:{s:3:"key";s:19:"field_586270207223f";s:5:"label";s:9:"Section 4";s:4:"name";s:13:"e_h_section_4";s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"return_format";s:2:"id";s:9:"post_type";a:1:{i:0;s:3:"all";}s:8:"taxonomy";a:1:{i:0;s:3:"all";}s:7:"filters";a:1:{i:0;s:6:"search";}s:15:"result_elements";a:1:{i:0;s:9:"post_type";}s:3:"max";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(356, 56, 'e_h_section_1', 'a:1:{i:0;s:2:"18";}'),
(357, 56, '_e_h_section_1', 'field_586265c5e0211'),
(358, 56, 'e_h_section_2', 'a:1:{i:0;s:2:"25";}'),
(359, 56, '_e_h_section_2', 'field_58626fea7223c'),
(360, 56, 'e_h_section_3', 'a:1:{i:0;s:2:"37";}'),
(361, 56, '_e_h_section_3', 'field_586270077223d'),
(362, 56, 'e_h_section_4', 'a:1:{i:0;s:2:"47";}'),
(363, 56, '_e_h_section_4', 'field_586270207223f'),
(364, 56, 'e_h_section_5', ''),
(365, 56, '_e_h_section_5', 'field_5862704072240'),
(366, 2, 'e_h_section_2', 'a:1:{i:0;s:2:"25";}'),
(367, 2, '_e_h_section_2', 'field_58626fea7223c'),
(368, 2, 'e_h_section_3', 'a:1:{i:0;s:2:"37";}'),
(369, 2, '_e_h_section_3', 'field_586270077223d'),
(370, 2, 'e_h_section_4', 'a:1:{i:0;s:2:"47";}'),
(371, 2, '_e_h_section_4', 'field_586270207223f'),
(372, 2, 'e_h_section_5', ''),
(373, 2, '_e_h_section_5', 'field_5862704072240') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(374, 54, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"2";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(375, 57, '_menu_item_type', 'custom'),
(376, 57, '_menu_item_menu_item_parent', '0'),
(377, 57, '_menu_item_object_id', '57'),
(378, 57, '_menu_item_object', 'custom'),
(379, 57, '_menu_item_target', ''),
(380, 57, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(381, 57, '_menu_item_xfn', ''),
(382, 57, '_menu_item_url', '#'),
(384, 58, '_edit_last', '1'),
(385, 58, 'field_58636759994fe', 'a:11:{s:3:"key";s:19:"field_58636759994fe";s:5:"label";s:17:"header background";s:4:"name";s:21:"e_h_header_background";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(387, 58, 'position', 'normal'),
(388, 58, 'layout', 'no_box'),
(389, 58, 'hide_on_screen', ''),
(390, 58, '_edit_lock', '1482916344:1'),
(391, 59, '_edit_last', '1'),
(392, 59, 'field_586367c35b88f', 'a:11:{s:3:"key";s:19:"field_586367c35b88f";s:5:"label";s:11:"Header logo";s:4:"name";s:15:"e_h_header_logo";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(394, 59, 'position', 'normal'),
(395, 59, 'layout', 'no_box'),
(396, 59, 'hide_on_screen', ''),
(397, 59, '_edit_lock', '1482915190:1'),
(400, 60, '_wp_attached_file', '2016/12/layer1.jpg'),
(401, 60, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:915;s:4:"file";s:18:"2016/12/layer1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"layer1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"layer1-300x172.jpg";s:5:"width";i:300;s:6:"height";i:172;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"layer1-768x439.jpg";s:5:"width";i:768;s:6:"height";i:439;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"layer1-1024x586.jpg";s:5:"width";i:1024;s:6:"height";i:586;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(402, 61, 'e_h_header_background', '60'),
(403, 61, '_e_h_header_background', 'field_58636759994fe'),
(404, 61, 'e_h_header_logo', '50'),
(405, 61, '_e_h_header_logo', 'field_586367c35b88f'),
(406, 61, 'e_h_section_1', 'a:1:{i:0;s:2:"18";}'),
(407, 61, '_e_h_section_1', 'field_586265c5e0211'),
(408, 61, 'e_h_section_2', 'a:1:{i:0;s:2:"25";}'),
(409, 61, '_e_h_section_2', 'field_58626fea7223c'),
(410, 61, 'e_h_section_3', 'a:1:{i:0;s:2:"37";}'),
(411, 61, '_e_h_section_3', 'field_586270077223d'),
(412, 61, 'e_h_section_4', 'a:1:{i:0;s:2:"47";}'),
(413, 61, '_e_h_section_4', 'field_586270207223f'),
(414, 2, 'e_h_header_background', '60'),
(415, 2, '_e_h_header_background', 'field_58636759994fe'),
(416, 2, 'e_h_header_logo', '50'),
(417, 2, '_e_h_header_logo', 'field_586367c35b88f'),
(418, 62, '_menu_item_type', 'custom'),
(419, 62, '_menu_item_menu_item_parent', '0'),
(420, 62, '_menu_item_object_id', '62'),
(421, 62, '_menu_item_object', 'custom'),
(422, 62, '_menu_item_target', ''),
(423, 62, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(424, 62, '_menu_item_xfn', ''),
(425, 62, '_menu_item_url', '#'),
(427, 63, '_menu_item_type', 'custom'),
(428, 63, '_menu_item_menu_item_parent', '0'),
(429, 63, '_menu_item_object_id', '63'),
(430, 63, '_menu_item_object', 'custom'),
(431, 63, '_menu_item_target', ''),
(432, 63, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(433, 63, '_menu_item_xfn', ''),
(434, 63, '_menu_item_url', '#'),
(436, 64, '_menu_item_type', 'custom'),
(437, 64, '_menu_item_menu_item_parent', '0'),
(438, 64, '_menu_item_object_id', '64'),
(439, 64, '_menu_item_object', 'custom'),
(440, 64, '_menu_item_target', ''),
(441, 64, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(442, 64, '_menu_item_xfn', ''),
(443, 64, '_menu_item_url', '#'),
(445, 65, '_edit_last', '1'),
(446, 65, 'field_58636b87b07a1', 'a:11:{s:3:"key";s:19:"field_58636b87b07a1";s:5:"label";s:13:"LD background";s:4:"name";s:15:"e_ld_background";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(448, 65, 'position', 'normal'),
(449, 65, 'layout', 'no_box'),
(450, 65, 'hide_on_screen', ''),
(451, 65, '_edit_lock', '1483001156:1'),
(452, 66, '_wp_attached_file', '2016/12/dots.jpg'),
(453, 66, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:540;s:4:"file";s:16:"2016/12/dots.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"dots-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"dots-300x101.jpg";s:5:"width";i:300;s:6:"height";i:101;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"dots-768x259.jpg";s:5:"width";i:768;s:6:"height";i:259;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"dots-1024x346.jpg";s:5:"width";i:1024;s:6:"height";i:346;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(454, 67, 'e_fi_image_section', '21'),
(455, 67, '_e_fi_image_section', 'field_5862193abcc9f'),
(456, 67, 'e_ld_background', '66'),
(457, 67, '_e_ld_background', 'field_58636b87b07a1'),
(458, 18, 'e_ld_background', '66'),
(459, 18, '_e_ld_background', 'field_58636b87b07a1'),
(460, 68, '_edit_last', '1'),
(461, 68, 'field_58636c6f8f7ff', 'a:11:{s:3:"key";s:19:"field_58636c6f8f7ff";s:5:"label";s:13:"PY background";s:4:"name";s:15:"E_py_background";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(463, 68, 'position', 'normal'),
(464, 68, 'layout', 'no_box'),
(465, 68, 'hide_on_screen', ''),
(466, 68, '_edit_lock', '1482922796:1'),
(469, 69, '_edit_last', '1'),
(470, 69, 'field_58636cf53f35f', 'a:11:{s:3:"key";s:19:"field_58636cf53f35f";s:5:"label";s:8:"PY image";s:4:"name";s:10:"e_py_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(472, 69, 'position', 'normal'),
(473, 69, 'layout', 'no_box'),
(474, 69, 'hide_on_screen', ''),
(475, 69, '_edit_lock', '1482922810:1'),
(476, 69, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"47";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(477, 70, '_wp_attached_file', '2016/12/layer2.jpg'),
(478, 70, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:890;s:4:"file";s:18:"2016/12/layer2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"layer2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"layer2-300x167.jpg";s:5:"width";i:300;s:6:"height";i:167;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"layer2-768x427.jpg";s:5:"width";i:768;s:6:"height";i:427;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"layer2-1024x570.jpg";s:5:"width";i:1024;s:6:"height";i:570;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(479, 71, 'e_p_logo', '50'),
(480, 71, '_e_p_logo', 'field_58625fc16cae4'),
(481, 71, 'e_p_laptop', '52'),
(482, 71, '_e_p_laptop', 'field_586260509bc93'),
(483, 71, 'E_py_background', '70'),
(484, 71, '_E_py_background', 'field_58636c6f8f7ff'),
(485, 71, 'e_py_image', ''),
(486, 71, '_e_py_image', 'field_58636cf53f35f') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(487, 47, 'E_py_background', '70'),
(488, 47, '_E_py_background', 'field_58636c6f8f7ff'),
(489, 47, 'e_py_image', ''),
(490, 47, '_e_py_image', 'field_58636cf53f35f'),
(491, 58, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"2";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(492, 59, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"2";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(493, 20, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"18";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(494, 65, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"18";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(500, 72, '_wp_attached_file', '2016/12/Shape45.png'),
(501, 72, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:8;s:6:"height";i:14;s:4:"file";s:19:"2016/12/Shape45.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(502, 73, 'e_o_image_1', '44'),
(503, 73, '_e_o_image_1', 'field_586250e0e81b9'),
(504, 73, 'e_o_paragraph_1', 'Design listing one'),
(505, 73, '_e_o_paragraph_1', 'field_58625113e81ba'),
(506, 73, 'e_o_link_1', '72'),
(507, 73, '_e_o_link_1', 'field_58625161e81bb'),
(508, 73, 'e_o_image_2', '44'),
(509, 73, '_e_o_image_2', 'field_5862538ef0c59'),
(510, 73, 'e_o_paragraph_2', 'Design listing one'),
(511, 73, '_e_o_paragraph_2', 'field_586253fdf0c5a'),
(512, 73, 'e_o_link_2', '37'),
(513, 73, '_e_o_link_2', 'field_5862540cf0c5b'),
(514, 73, 'e_o_image_3', '44'),
(515, 73, '_e_o_image_3', 'field_58625446f0c5c'),
(516, 73, 'e_o_paragraph_3', 'Design listing one'),
(517, 73, '_e_o_paragraph_3', 'field_5862545bf0c5d'),
(518, 73, 'e_o_link_3', '37'),
(519, 73, '_e_o_link_3', 'field_5862548af0c5e'),
(520, 43, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"37";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(521, 74, 'e_o_image_1', '44'),
(522, 74, '_e_o_image_1', 'field_586250e0e81b9'),
(523, 74, 'e_o_paragraph_1', 'Design listing one'),
(524, 74, '_e_o_paragraph_1', 'field_58625113e81ba'),
(525, 74, 'e_o_link_1', '72'),
(526, 74, '_e_o_link_1', 'field_58625161e81bb'),
(527, 74, 'e_o_image_2', '44'),
(528, 74, '_e_o_image_2', 'field_5862538ef0c59'),
(529, 74, 'e_o_paragraph_2', 'Design listing one'),
(530, 74, '_e_o_paragraph_2', 'field_586253fdf0c5a'),
(531, 74, 'e_o_link_2', '72'),
(532, 74, '_e_o_link_2', 'field_5862540cf0c5b'),
(533, 74, 'e_o_image_3', '44'),
(534, 74, '_e_o_image_3', 'field_58625446f0c5c'),
(535, 74, 'e_o_paragraph_3', 'Design listing one'),
(536, 74, '_e_o_paragraph_3', 'field_5862545bf0c5d'),
(537, 74, 'e_o_link_3', '72'),
(538, 74, '_e_o_link_3', 'field_5862548af0c5e'),
(539, 68, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"47";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(540, 69, '_wp_trash_meta_status', 'publish'),
(541, 69, '_wp_trash_meta_time', '1482922985'),
(542, 69, '_wp_desired_post_slug', 'acf_push-yourself-image'),
(544, 49, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"47";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(545, 34, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"25";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(548, 76, 'e_f_image_1', '75'),
(549, 76, '_e_f_image_1', 'field_586220ddf1cd8'),
(550, 76, 'e_f_heading_1', 'Lorem ipsum dolor sit'),
(551, 76, '_e_f_heading_1', 'field_5862217d82f2d'),
(552, 76, 'e_f_paragraph_1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(553, 76, '_e_f_paragraph_1', 'field_586222e429796'),
(554, 76, 'e_f_image_2', '29'),
(555, 76, '_e_f_image_2', 'field_586224959b6fe'),
(556, 76, 'e_f_heading_2', 'Lorem ipsum dolor sit'),
(557, 76, '_e_f_heading_2', 'field_586224b9090f5'),
(558, 76, 'e_f_paragraph_2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(559, 76, '_e_f_paragraph_2', 'field_586224ef031f6'),
(560, 76, 'e_f_image_3', '28'),
(561, 76, '_e_f_image_3', 'field_5862251dd052d'),
(562, 76, 'e_f_heading_3', 'Lorem ipsum dolor sit'),
(563, 76, '_e_f_heading_3', 'field_5862253cb1f42'),
(564, 76, 'e_f_paragraph_3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(565, 76, '_e_f_paragraph_3', 'field_5862254cb1f43'),
(566, 76, 'e_f_image_4', '27'),
(567, 76, '_e_f_image_4', 'field_58622583b1f44'),
(568, 76, 'e_f_heading_4', 'Lorem ipsum dolor sit'),
(569, 76, '_e_f_heading_4', 'field_5862259db1f45'),
(570, 76, 'e_f_paragraph_4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(571, 76, '_e_f_paragraph_4', 'field_586225b1b1f46'),
(572, 77, 'e_f_image_1', '30'),
(573, 77, '_e_f_image_1', 'field_586220ddf1cd8'),
(574, 77, 'e_f_heading_1', 'Lorem ipsum dolor sit'),
(575, 77, '_e_f_heading_1', 'field_5862217d82f2d'),
(576, 77, 'e_f_paragraph_1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(577, 77, '_e_f_paragraph_1', 'field_586222e429796'),
(578, 77, 'e_f_image_2', '29'),
(579, 77, '_e_f_image_2', 'field_586224959b6fe'),
(580, 77, 'e_f_heading_2', 'Lorem ipsum dolor sit'),
(581, 77, '_e_f_heading_2', 'field_586224b9090f5'),
(582, 77, 'e_f_paragraph_2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(583, 77, '_e_f_paragraph_2', 'field_586224ef031f6'),
(584, 77, 'e_f_image_3', '28'),
(585, 77, '_e_f_image_3', 'field_5862251dd052d'),
(586, 77, 'e_f_heading_3', 'Lorem ipsum dolor sit'),
(587, 77, '_e_f_heading_3', 'field_5862253cb1f42'),
(588, 77, 'e_f_paragraph_3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(589, 77, '_e_f_paragraph_3', 'field_5862254cb1f43'),
(590, 77, 'e_f_image_4', '27'),
(591, 77, '_e_f_image_4', 'field_58622583b1f44'),
(592, 77, 'e_f_heading_4', 'Lorem ipsum dolor sit'),
(593, 77, '_e_f_heading_4', 'field_5862259db1f45'),
(594, 77, 'e_f_paragraph_4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(595, 77, '_e_f_paragraph_4', 'field_586225b1b1f46'),
(596, 78, 'e_f_image_1', '50'),
(597, 78, '_e_f_image_1', 'field_586220ddf1cd8'),
(598, 78, 'e_f_heading_1', 'Lorem ipsum dolor sit'),
(599, 78, '_e_f_heading_1', 'field_5862217d82f2d'),
(600, 78, 'e_f_paragraph_1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(601, 78, '_e_f_paragraph_1', 'field_586222e429796'),
(602, 78, 'e_f_image_2', '29'),
(603, 78, '_e_f_image_2', 'field_586224959b6fe'),
(604, 78, 'e_f_heading_2', 'Lorem ipsum dolor sit'),
(605, 78, '_e_f_heading_2', 'field_586224b9090f5'),
(606, 78, 'e_f_paragraph_2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(607, 78, '_e_f_paragraph_2', 'field_586224ef031f6'),
(608, 78, 'e_f_image_3', '28'),
(609, 78, '_e_f_image_3', 'field_5862251dd052d'),
(610, 78, 'e_f_heading_3', 'Lorem ipsum dolor sit'),
(611, 78, '_e_f_heading_3', 'field_5862253cb1f42'),
(612, 78, 'e_f_paragraph_3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(613, 78, '_e_f_paragraph_3', 'field_5862254cb1f43'),
(614, 78, 'e_f_image_4', '27'),
(615, 78, '_e_f_image_4', 'field_58622583b1f44'),
(616, 78, 'e_f_heading_4', 'Lorem ipsum dolor sit'),
(617, 78, '_e_f_heading_4', 'field_5862259db1f45'),
(618, 78, 'e_f_paragraph_4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(619, 78, '_e_f_paragraph_4', 'field_586225b1b1f46'),
(620, 79, 'e_f_image_1', '30'),
(621, 79, '_e_f_image_1', 'field_586220ddf1cd8'),
(622, 79, 'e_f_heading_1', 'Lorem ipsum dolor sit'),
(623, 79, '_e_f_heading_1', 'field_5862217d82f2d'),
(624, 79, 'e_f_paragraph_1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(625, 79, '_e_f_paragraph_1', 'field_586222e429796'),
(626, 79, 'e_f_image_2', '29'),
(627, 79, '_e_f_image_2', 'field_586224959b6fe'),
(628, 79, 'e_f_heading_2', 'Lorem ipsum dolor sit'),
(629, 79, '_e_f_heading_2', 'field_586224b9090f5'),
(630, 79, 'e_f_paragraph_2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(631, 79, '_e_f_paragraph_2', 'field_586224ef031f6'),
(632, 79, 'e_f_image_3', '28'),
(633, 79, '_e_f_image_3', 'field_5862251dd052d'),
(634, 79, 'e_f_heading_3', 'Lorem ipsum dolor sit'),
(635, 79, '_e_f_heading_3', 'field_5862253cb1f42'),
(636, 79, 'e_f_paragraph_3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(637, 79, '_e_f_paragraph_3', 'field_5862254cb1f43'),
(638, 79, 'e_f_image_4', '27'),
(639, 79, '_e_f_image_4', 'field_58622583b1f44'),
(640, 79, 'e_f_heading_4', 'Lorem ipsum dolor sit'),
(641, 79, '_e_f_heading_4', 'field_5862259db1f45'),
(642, 79, 'e_f_paragraph_4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(643, 79, '_e_f_paragraph_4', 'field_586225b1b1f46'),
(644, 80, '_menu_item_type', 'custom'),
(645, 80, '_menu_item_menu_item_parent', '0'),
(646, 80, '_menu_item_object_id', '80'),
(647, 80, '_menu_item_object', 'custom'),
(648, 80, '_menu_item_target', ''),
(649, 80, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(650, 80, '_menu_item_xfn', ''),
(651, 80, '_menu_item_url', '#About%20Us'),
(652, 80, '_menu_item_orphaned', '1482931510'),
(653, 81, '_menu_item_type', 'custom'),
(654, 81, '_menu_item_menu_item_parent', '0'),
(655, 81, '_menu_item_object_id', '81'),
(656, 81, '_menu_item_object', 'custom'),
(657, 81, '_menu_item_target', ''),
(658, 81, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(659, 81, '_menu_item_xfn', ''),
(660, 81, '_menu_item_url', '#'),
(662, 82, '_menu_item_type', 'custom'),
(663, 82, '_menu_item_menu_item_parent', '0'),
(664, 82, '_menu_item_object_id', '82'),
(665, 82, '_menu_item_object', 'custom'),
(666, 82, '_menu_item_target', ''),
(667, 82, '_menu_item_classes', 'a:1:{i:0;s:5:"break";}'),
(668, 82, '_menu_item_xfn', ''),
(669, 82, '_menu_item_url', '#'),
(671, 83, '_menu_item_type', 'custom'),
(672, 83, '_menu_item_menu_item_parent', '0'),
(673, 83, '_menu_item_object_id', '83'),
(674, 83, '_menu_item_object', 'custom'),
(675, 83, '_menu_item_target', ''),
(676, 83, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(677, 83, '_menu_item_xfn', ''),
(678, 83, '_menu_item_url', '#'),
(680, 84, '_menu_item_type', 'custom'),
(681, 84, '_menu_item_menu_item_parent', '0'),
(682, 84, '_menu_item_object_id', '84'),
(683, 84, '_menu_item_object', 'custom'),
(684, 84, '_menu_item_target', ''),
(685, 84, '_menu_item_classes', 'a:1:{i:0;s:5:"break";}'),
(686, 84, '_menu_item_xfn', ''),
(687, 84, '_menu_item_url', '#'),
(689, 85, '_menu_item_type', 'custom'),
(690, 85, '_menu_item_menu_item_parent', '0'),
(691, 85, '_menu_item_object_id', '85'),
(692, 85, '_menu_item_object', 'custom'),
(693, 85, '_menu_item_target', ''),
(694, 85, '_menu_item_classes', 'a:1:{i:0;s:5:"break";}'),
(695, 85, '_menu_item_xfn', ''),
(696, 85, '_menu_item_url', '#'),
(698, 86, '_menu_item_type', 'custom'),
(699, 86, '_menu_item_menu_item_parent', '0') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(700, 86, '_menu_item_object_id', '86'),
(701, 86, '_menu_item_object', 'custom'),
(702, 86, '_menu_item_target', ''),
(703, 86, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(704, 86, '_menu_item_xfn', ''),
(705, 86, '_menu_item_url', '#'),
(707, 87, '_edit_last', '1'),
(708, 87, 'field_5864cde659303', 'a:14:{s:3:"key";s:19:"field_5864cde659303";s:5:"label";s:21:"Latest design heading";s:4:"name";s:23:"e_latest_design_heading";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(709, 87, 'field_5864ce1359304', 'a:14:{s:3:"key";s:19:"field_5864ce1359304";s:5:"label";s:23:"Latest design paragraph";s:4:"name";s:25:"e_latest_design_paragraph";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(711, 87, 'position', 'normal'),
(712, 87, 'layout', 'no_box'),
(713, 87, 'hide_on_screen', ''),
(714, 87, '_edit_lock', '1483001341:1'),
(715, 87, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"18";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(716, 87, '_wp_trash_meta_status', 'publish'),
(717, 87, '_wp_trash_meta_time', '1483001791'),
(718, 87, '_wp_desired_post_slug', 'acf_latest-design-section-text'),
(719, 17, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"2";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(720, 88, 'e_footer_paragraph_1', 'Lorem ipsum dolor sit amet, consectur adipisicing'),
(721, 88, '_e_footer_paragraph_1', 'field_585ced90d41bc'),
(722, 88, 'e_h_header_background', '60'),
(723, 88, '_e_h_header_background', 'field_58636759994fe'),
(724, 88, 'e_h_header_logo', '50'),
(725, 88, '_e_h_header_logo', 'field_586367c35b88f'),
(726, 88, 'e_h_section_1', 'a:1:{i:0;s:2:"18";}'),
(727, 88, '_e_h_section_1', 'field_586265c5e0211'),
(728, 88, 'e_h_section_2', 'a:1:{i:0;s:2:"25";}'),
(729, 88, '_e_h_section_2', 'field_58626fea7223c'),
(730, 88, 'e_h_section_3', 'a:1:{i:0;s:2:"37";}'),
(731, 88, '_e_h_section_3', 'field_586270077223d'),
(732, 88, 'e_h_section_4', 'a:1:{i:0;s:2:"47";}'),
(733, 88, '_e_h_section_4', 'field_586270207223f'),
(734, 2, 'e_footer_paragraph_1', 'Lorem ipsum dolor sit amet, consectur adipisicing'),
(735, 2, '_e_footer_paragraph_1', 'field_585ced90d41bc'),
(736, 89, 'e_footer_paragraph_1', 'Lorem ipsum dolor sit amet, consectur adipisicing'),
(737, 89, '_e_footer_paragraph_1', 'field_585ced90d41bc'),
(738, 89, 'e_h_header_background', '60'),
(739, 89, '_e_h_header_background', 'field_58636759994fe'),
(740, 89, 'e_h_header_logo', '50'),
(741, 89, '_e_h_header_logo', 'field_586367c35b88f'),
(742, 89, 'e_h_section_1', 'a:1:{i:0;s:2:"18";}'),
(743, 89, '_e_h_section_1', 'field_586265c5e0211'),
(744, 89, 'e_h_section_2', 'a:1:{i:0;s:2:"25";}'),
(745, 89, '_e_h_section_2', 'field_58626fea7223c'),
(746, 89, 'e_h_section_3', 'a:1:{i:0;s:2:"37";}'),
(747, 89, '_e_h_section_3', 'field_586270077223d'),
(748, 89, 'e_h_section_4', 'a:1:{i:0;s:2:"47";}'),
(749, 89, '_e_h_section_4', 'field_586270207223f'),
(750, 90, 'e_footer_paragraph_1', 'Lorem ipsum dolor sit amet, consectur adipisicing'),
(751, 90, '_e_footer_paragraph_1', 'field_585ced90d41bc'),
(752, 90, 'e_h_header_background', '60'),
(753, 90, '_e_h_header_background', 'field_58636759994fe'),
(754, 90, 'e_h_header_logo', '50'),
(755, 90, '_e_h_header_logo', 'field_586367c35b88f'),
(756, 90, 'e_h_section_1', 'a:1:{i:0;s:2:"18";}'),
(757, 90, '_e_h_section_1', 'field_586265c5e0211'),
(758, 90, 'e_h_section_2', 'a:1:{i:0;s:2:"25";}'),
(759, 90, '_e_h_section_2', 'field_58626fea7223c'),
(760, 90, 'e_h_section_3', 'a:1:{i:0;s:2:"37";}'),
(761, 90, '_e_h_section_3', 'field_586270077223d'),
(762, 90, 'e_h_section_4', 'a:1:{i:0;s:2:"47";}'),
(763, 90, '_e_h_section_4', 'field_586270207223f'),
(764, 92, 'e_footer_paragraph_1', 'Lorem ipsum dolor sit amet, consectur adipisicing'),
(765, 92, '_e_footer_paragraph_1', 'field_585ced90d41bc'),
(766, 92, 'e_h_header_background', '60'),
(767, 92, '_e_h_header_background', 'field_58636759994fe'),
(768, 92, 'e_h_header_logo', '50'),
(769, 92, '_e_h_header_logo', 'field_586367c35b88f'),
(770, 92, 'e_h_section_1', 'a:1:{i:0;s:2:"18";}'),
(771, 92, '_e_h_section_1', 'field_586265c5e0211'),
(772, 92, 'e_h_section_2', 'a:1:{i:0;s:2:"25";}'),
(773, 92, '_e_h_section_2', 'field_58626fea7223c'),
(774, 92, 'e_h_section_3', 'a:1:{i:0;s:2:"37";}'),
(775, 92, '_e_h_section_3', 'field_586270077223d'),
(776, 92, 'e_h_section_4', 'a:1:{i:0;s:2:"47";}'),
(777, 92, '_e_h_section_4', 'field_586270207223f'),
(778, 93, '_edit_last', '1'),
(780, 93, 'position', 'normal'),
(781, 93, 'layout', 'no_box'),
(782, 93, 'hide_on_screen', ''),
(783, 93, '_edit_lock', '1483018834:1'),
(784, 93, 'field_5865128d9ac51', 'a:14:{s:3:"key";s:19:"field_5865128d9ac51";s:5:"label";s:22:"our design paragraph 1";s:4:"name";s:24:"e_our_design_paragraph_1";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(785, 93, 'field_586512a99ac52', 'a:14:{s:3:"key";s:19:"field_586512a99ac52";s:5:"label";s:22:"our design paragraph 2";s:4:"name";s:24:"e_our_design_paragraph_2";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(786, 93, 'field_586512b49ac53', 'a:14:{s:3:"key";s:19:"field_586512b49ac53";s:5:"label";s:22:"our design paragraph 3";s:4:"name";s:24:"e_our_design_paragraph_3";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(788, 93, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"37";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(789, 94, 'e_our_design_paragraph_1', 'Design Listing One'),
(790, 94, '_e_our_design_paragraph_1', 'field_5865128d9ac51'),
(791, 94, 'e_our_design_paragraph_2', 'Design Listing One'),
(792, 94, '_e_our_design_paragraph_2', 'field_586512a99ac52'),
(793, 94, 'e_our_design_paragraph_3', 'Design Listing One'),
(794, 94, '_e_our_design_paragraph_3', 'field_586512b49ac53'),
(795, 94, 'e_o_image_1', '44'),
(796, 94, '_e_o_image_1', 'field_586250e0e81b9'),
(797, 94, 'e_o_paragraph_1', 'Design listing one'),
(798, 94, '_e_o_paragraph_1', 'field_58625113e81ba'),
(799, 94, 'e_o_link_1', '72'),
(800, 94, '_e_o_link_1', 'field_58625161e81bb'),
(801, 94, 'e_o_image_2', '44'),
(802, 94, '_e_o_image_2', 'field_5862538ef0c59'),
(803, 94, 'e_o_paragraph_2', 'Design listing one') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(804, 94, '_e_o_paragraph_2', 'field_586253fdf0c5a'),
(805, 94, 'e_o_link_2', '72'),
(806, 94, '_e_o_link_2', 'field_5862540cf0c5b'),
(807, 94, 'e_o_image_3', '44'),
(808, 94, '_e_o_image_3', 'field_58625446f0c5c'),
(809, 94, 'e_o_paragraph_3', 'Design listing one'),
(810, 94, '_e_o_paragraph_3', 'field_5862545bf0c5d'),
(811, 94, 'e_o_link_3', '72'),
(812, 94, '_e_o_link_3', 'field_5862548af0c5e'),
(813, 37, 'e_our_design_paragraph_1', 'Design Listing One'),
(814, 37, '_e_our_design_paragraph_1', 'field_5865128d9ac51'),
(815, 37, 'e_our_design_paragraph_2', 'Design Listing One'),
(816, 37, '_e_our_design_paragraph_2', 'field_586512a99ac52'),
(817, 37, 'e_our_design_paragraph_3', 'Design Listing One'),
(818, 37, '_e_our_design_paragraph_3', 'field_586512b49ac53') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-12-21 13:00:59', '2016-12-21 13:00:59', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-12-21 13:00:59', '2016-12-21 13:00:59', '', 0, 'http://localhost/vcs-project/?p=1', 0, 'post', '', 1),
(2, 1, '2016-12-21 13:00:59', '2016-12-21 13:00:59', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Push Yourself & Your Designs', '', 'publish', 'closed', 'closed', '', 'eclipse', '', '', '2016-12-29 13:37:27', '2016-12-29 13:37:27', '', 0, 'http://localhost/vcs-project/?page_id=2', 0, 'page', '', 0),
(4, 1, '2016-12-22 07:58:05', '2016-12-22 07:58:05', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost/vcs-project/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-12-22 07:58:05', '2016-12-22 07:58:05', '', 2, 'http://localhost/vcs-project/2016/12/22/2-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2016-12-22 13:58:26', '2016-12-22 13:58:26', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost/vcs-project/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Eclipse', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-12-22 13:58:26', '2016-12-22 13:58:26', '', 2, 'http://localhost/vcs-project/2-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2016-12-23 07:32:10', '2016-12-23 07:32:10', '', 'About', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2016-12-29 08:30:37', '2016-12-29 08:30:37', '', 0, 'http://localhost/vcs-project/?p=10', 1, 'nav_menu_item', '', 0),
(11, 1, '2016-12-23 07:32:10', '2016-12-23 07:32:10', '', 'Studio', '', 'publish', 'closed', 'closed', '', 'studio', '', '', '2016-12-29 08:30:37', '2016-12-29 08:30:37', '', 0, 'http://localhost/vcs-project/?p=11', 2, 'nav_menu_item', '', 0),
(12, 1, '2016-12-23 07:32:10', '2016-12-23 07:32:10', '', 'Pricing', '', 'publish', 'closed', 'closed', '', 'pricing', '', '', '2016-12-29 08:30:37', '2016-12-29 08:30:37', '', 0, 'http://localhost/vcs-project/?p=12', 3, 'nav_menu_item', '', 0),
(13, 1, '2016-12-23 07:32:10', '2016-12-23 07:32:10', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2016-12-29 08:30:37', '2016-12-29 08:30:37', '', 0, 'http://localhost/vcs-project/?p=13', 4, 'nav_menu_item', '', 0),
(14, 1, '2016-12-23 07:32:10', '2016-12-23 07:32:10', '', 'Join', '', 'publish', 'closed', 'closed', '', 'join', '', '', '2016-12-29 08:30:37', '2016-12-29 08:30:37', '', 0, 'http://localhost/vcs-project/?p=14', 5, 'nav_menu_item', '', 0),
(15, 1, '2016-12-23 07:44:27', '2016-12-23 07:44:27', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'join-2', '', '', '2016-12-23 08:36:01', '2016-12-23 08:36:01', '', 0, 'http://localhost/vcs-project/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2016-12-23 09:17:57', '2016-12-23 09:17:57', '', 'Auto Draft', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2016-12-23 09:24:51', '2016-12-23 09:24:51', '', 0, 'http://localhost/vcs-project/?post_type=acf&#038;p=16', 0, 'acf', '', 0),
(17, 1, '2016-12-23 09:26:02', '2016-12-23 09:26:02', '', 'Footer', '', 'publish', 'closed', 'closed', '', 'acf_footer', '', '', '2016-12-29 13:05:02', '2016-12-29 13:05:02', '', 0, 'http://localhost/vcs-project/?post_type=acf&#038;p=17', 0, 'acf', '', 0),
(18, 1, '2016-12-27 07:31:51', '2016-12-27 07:31:51', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<p>', 'Latest design style', '', 'publish', 'closed', 'closed', '', 'latest-design-style', '', '', '2016-12-28 07:37:54', '2016-12-28 07:37:54', '', 0, 'http://localhost/vcs-project/?page_id=18', 0, 'page', '', 0),
(19, 1, '2016-12-27 07:31:51', '2016-12-27 07:31:51', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<p>', 'Latest design style', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2016-12-27 07:31:51', '2016-12-27 07:31:51', '', 18, 'http://localhost/vcs-project/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2016-12-27 07:35:53', '2016-12-27 07:35:53', '', 'Featured Image', '', 'publish', 'closed', 'closed', '', 'acf_featured-image', '', '', '2016-12-28 08:55:54', '2016-12-28 08:55:54', '', 0, 'http://localhost/vcs-project/?post_type=acf&#038;p=20', 0, 'acf', '', 0),
(21, 1, '2016-12-27 07:36:33', '2016-12-27 07:36:33', '', 'iphoneHead', '', 'inherit', 'open', 'closed', '', 'iphonehead', '', '', '2016-12-27 07:36:33', '2016-12-27 07:36:33', '', 18, 'http://localhost/vcs-project/wp-content/uploads/2016/12/iphoneHead.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2016-12-27 07:36:39', '2016-12-27 07:36:39', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<p>', 'Latest design style', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2016-12-27 07:36:39', '2016-12-27 07:36:39', '', 18, 'http://localhost/vcs-project/18-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2016-12-27 07:43:29', '2016-12-27 07:43:29', '', 'Eclipse', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-12-27 07:43:29', '2016-12-27 07:43:29', '', 2, 'http://localhost/vcs-project/2-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2016-12-27 07:43:41', '2016-12-27 07:43:41', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-12-27 07:43:41', '2016-12-27 07:43:41', '', 2, 'http://localhost/vcs-project/2-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2016-12-27 07:53:02', '2016-12-27 07:53:02', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 'Features of app', '', 'publish', 'closed', 'closed', '', 'features-of-app', '', '', '2016-12-28 12:38:45', '2016-12-28 12:38:45', '', 0, 'http://localhost/vcs-project/?page_id=25', 0, 'page', '', 0),
(26, 1, '2016-12-27 07:53:02', '2016-12-27 07:53:02', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<h3>Lorem ipsum dolor sit</h3>\r\n              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<h3>Lorem ipsum dolor sit</h3>\r\n              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<h3>Lorem ipsum dolor sit</h3>\r\n              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<h3>Lorem ipsum dolor sit</h3>\r\n              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 'Features of app', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2016-12-27 07:53:02', '2016-12-27 07:53:02', '', 25, 'http://localhost/vcs-project/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2016-12-27 07:53:55', '2016-12-27 07:53:55', '', 'Shape44', '', 'inherit', 'open', 'closed', '', 'shape44', '', '', '2016-12-27 07:53:55', '2016-12-27 07:53:55', '', 25, 'http://localhost/vcs-project/wp-content/uploads/2016/12/Shape44.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2016-12-27 07:53:56', '2016-12-27 07:53:56', '', 'Shape41', '', 'inherit', 'open', 'closed', '', 'shape41', '', '', '2016-12-27 07:53:56', '2016-12-27 07:53:56', '', 25, 'http://localhost/vcs-project/wp-content/uploads/2016/12/Shape41.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2016-12-27 07:53:57', '2016-12-27 07:53:57', '', 'Shape42', '', 'inherit', 'open', 'closed', '', 'shape42', '', '', '2016-12-27 07:53:57', '2016-12-27 07:53:57', '', 25, 'http://localhost/vcs-project/wp-content/uploads/2016/12/Shape42.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2016-12-27 07:53:57', '2016-12-27 07:53:57', '', 'Shape43', '', 'inherit', 'open', 'closed', '', 'shape43', '', '', '2016-12-27 07:53:57', '2016-12-27 07:53:57', '', 25, 'http://localhost/vcs-project/wp-content/uploads/2016/12/Shape43.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2016-12-27 07:59:23', '2016-12-27 07:59:23', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Features of app', '', 'inherit', 'closed', 'closed', '', '25-autosave-v1', '', '', '2016-12-27 07:59:23', '2016-12-27 07:59:23', '', 25, 'http://localhost/vcs-project/25-autosave-v1/', 0, 'revision', '', 0),
(32, 1, '2016-12-27 07:56:45', '2016-12-27 07:56:45', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<img src="http://localhost/vcs-project/wp-content/uploads/2016/12/Shape44.png" alt="" width="55" height="48" class="alignnone size-full wp-image-27" />\r\n<h3>Lorem ipsum dolor sit</h3>\r\n              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<img src="http://localhost/vcs-project/wp-content/uploads/2016/12/Shape43.png" alt="" width="50" height="40" class="alignnone size-medium wp-image-30" />\r\n<h3>Lorem ipsum dolor sit</h3>\r\n              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<img src="http://localhost/vcs-project/wp-content/uploads/2016/12/Shape41.png" alt="" width="42" height="42" class="alignnone size-medium wp-image-28" />\r\n<h3>Lorem ipsum dolor sit</h3>\r\n              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<img src="http://localhost/vcs-project/wp-content/uploads/2016/12/Shape42.png" alt="" width="38" height="38" class="alignnone size-medium wp-image-29" />\r\n<h3>Lorem ipsum dolor sit</h3>\r\n              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 'Features of app', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2016-12-27 07:56:45', '2016-12-27 07:56:45', '', 25, 'http://localhost/vcs-project/25-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2016-12-27 07:59:29', '2016-12-27 07:59:29', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 'Features of app', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2016-12-27 07:59:29', '2016-12-27 07:59:29', '', 25, 'http://localhost/vcs-project/25-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2016-12-27 08:03:31', '2016-12-27 08:03:31', '', 'features image sections', '', 'publish', 'closed', 'closed', '', 'acf_features-image-sections', '', '', '2016-12-28 11:22:00', '2016-12-28 11:22:00', '', 0, 'http://localhost/vcs-project/?post_type=acf&#038;p=34', 0, 'acf', '', 0),
(35, 1, '2016-12-27 10:01:38', '2016-12-27 10:01:38', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 'Features of app', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2016-12-27 10:01:38', '2016-12-27 10:01:38', '', 25, 'http://localhost/vcs-project/25-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2016-12-27 10:02:58', '2016-12-27 10:02:58', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 'Features of app', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2016-12-27 10:02:58', '2016-12-27 10:02:58', '', 25, 'http://localhost/vcs-project/25-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2016-12-27 10:51:02', '2016-12-27 10:51:02', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>', 'Our design guidelines', '', 'publish', 'closed', 'closed', '', 'our-design-guidelines', '', '', '2016-12-29 13:43:40', '2016-12-29 13:43:40', '', 0, 'http://localhost/vcs-project/?page_id=37', 0, 'page', '', 0),
(38, 1, '2016-12-27 10:51:02', '2016-12-27 10:51:02', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>', 'Our design guidelines', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2016-12-27 10:51:02', '2016-12-27 10:51:02', '', 37, 'http://localhost/vcs-project/37-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2016-12-27 10:53:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-12-27 10:53:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-project/?post_type=acf&p=39', 0, 'acf', '', 0),
(40, 1, '2016-12-27 10:53:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-12-27 10:53:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-project/?post_type=acf&p=40', 0, 'acf', '', 0),
(41, 1, '2016-12-27 11:25:09', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-27 11:25:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-project/?p=41', 1, 'nav_menu_item', '', 0),
(42, 1, '2016-12-27 11:26:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-12-27 11:26:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-project/?post_type=acf&p=42', 0, 'acf', '', 0),
(43, 1, '2016-12-27 11:28:08', '2016-12-27 11:28:08', '', 'Our design three images', '', 'publish', 'closed', 'closed', '', 'acf_our-design-three-images', '', '', '2016-12-28 10:44:36', '2016-12-28 10:44:36', '', 0, 'http://localhost/vcs-project/?post_type=acf&#038;p=43', 0, 'acf', '', 0),
(44, 1, '2016-12-27 11:34:36', '2016-12-27 11:34:36', '', 'Layer-3', '', 'inherit', 'open', 'closed', '', 'layer-3', '', '', '2016-12-27 11:34:36', '2016-12-27 11:34:36', '', 37, 'http://localhost/vcs-project/wp-content/uploads/2016/12/Layer-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2016-12-27 11:34:56', '2016-12-27 11:34:56', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>', 'Our design guidelines', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2016-12-27 11:34:56', '2016-12-27 11:34:56', '', 37, 'http://localhost/vcs-project/37-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2016-12-27 12:06:18', '2016-12-27 12:06:18', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>', 'Our design guidelines', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2016-12-27 12:06:18', '2016-12-27 12:06:18', '', 37, 'http://localhost/vcs-project/37-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2016-12-27 12:33:11', '2016-12-27 12:33:11', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Push yourself & your designs', '', 'publish', 'closed', 'closed', '', 'push-yourself-your-designs', '', '', '2016-12-28 07:43:48', '2016-12-28 07:43:48', '', 0, 'http://localhost/vcs-project/?page_id=47', 0, 'page', '', 0),
(48, 1, '2016-12-27 12:33:11', '2016-12-27 12:33:11', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Push yourself & your designs', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2016-12-27 12:33:11', '2016-12-27 12:33:11', '', 47, 'http://localhost/vcs-project/47-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2016-12-27 12:34:35', '2016-12-27 12:34:35', '', 'Push Yourself', '', 'publish', 'closed', 'closed', '', 'acf_push-yourself', '', '', '2016-12-28 11:04:46', '2016-12-28 11:04:46', '', 0, 'http://localhost/vcs-project/?post_type=acf&#038;p=49', 0, 'acf', '', 0),
(50, 1, '2016-12-27 12:36:09', '2016-12-27 12:36:09', '', 'logo1', '', 'inherit', 'open', 'closed', '', 'logo1', '', '', '2016-12-27 12:36:09', '2016-12-27 12:36:09', '', 47, 'http://localhost/vcs-project/wp-content/uploads/2016/12/logo1.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2016-12-27 12:36:14', '2016-12-27 12:36:14', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Push yourself & your designs', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2016-12-27 12:36:14', '2016-12-27 12:36:14', '', 47, 'http://localhost/vcs-project/47-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2016-12-27 12:37:14', '2016-12-27 12:37:14', '', 'laptop', '', 'inherit', 'open', 'closed', '', 'laptop', '', '', '2016-12-27 12:37:14', '2016-12-27 12:37:14', '', 47, 'http://localhost/vcs-project/wp-content/uploads/2016/12/laptop.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2016-12-27 12:37:20', '2016-12-27 12:37:20', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Push yourself & your designs', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2016-12-27 12:37:20', '2016-12-27 12:37:20', '', 47, 'http://localhost/vcs-project/47-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2016-12-27 13:01:31', '2016-12-27 13:01:31', '', 'Page sections', '', 'publish', 'closed', 'closed', '', 'acf_page-sections', '', '', '2016-12-27 13:46:42', '2016-12-27 13:46:42', '', 0, 'http://localhost/vcs-project/?post_type=acf&#038;p=54', 0, 'acf', '', 0),
(55, 1, '2016-12-27 13:03:30', '2016-12-27 13:03:30', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-12-27 13:03:30', '2016-12-27 13:03:30', '', 2, 'http://localhost/vcs-project/2-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2016-12-27 13:45:46', '2016-12-27 13:45:46', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-12-27 13:45:46', '2016-12-27 13:45:46', '', 2, 'http://localhost/vcs-project/2-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2016-12-28 07:29:51', '2016-12-28 07:29:51', '', 'Development', '', 'publish', 'closed', 'closed', '', 'development', '', '', '2016-12-28 13:20:26', '2016-12-28 13:20:26', '', 0, 'http://localhost/vcs-project/?p=57', 1, 'nav_menu_item', '', 0),
(58, 1, '2016-12-28 07:19:58', '2016-12-28 07:19:58', '', 'Header background', '', 'publish', 'closed', 'closed', '', 'acf_header-background', '', '', '2016-12-28 08:25:22', '2016-12-28 08:25:22', '', 0, 'http://localhost/vcs-project/?post_type=acf&#038;p=58', 0, 'acf', '', 0),
(59, 1, '2016-12-28 07:20:58', '2016-12-28 07:20:58', '', 'Header logo', '', 'publish', 'closed', 'closed', '', 'acf_header-logo', '', '', '2016-12-28 08:41:04', '2016-12-28 08:41:04', '', 0, 'http://localhost/vcs-project/?post_type=acf&#038;p=59', 0, 'acf', '', 0),
(60, 1, '2016-12-28 07:23:33', '2016-12-28 07:23:33', '', 'layer1', '', 'inherit', 'open', 'closed', '', 'layer1', '', '', '2016-12-28 07:23:33', '2016-12-28 07:23:33', '', 2, 'http://localhost/vcs-project/wp-content/uploads/2016/12/layer1.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2016-12-28 07:23:39', '2016-12-28 07:23:39', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-12-28 07:23:39', '2016-12-28 07:23:39', '', 2, 'http://localhost/vcs-project/2-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2016-12-28 07:30:57', '2016-12-28 07:30:57', '', 'Design', '', 'publish', 'closed', 'closed', '', 'design', '', '', '2016-12-28 13:20:26', '2016-12-28 13:20:26', '', 0, 'http://localhost/vcs-project/?p=62', 2, 'nav_menu_item', '', 0),
(63, 1, '2016-12-28 07:30:57', '2016-12-28 07:30:57', '', 'Business', '', 'publish', 'closed', 'closed', '', 'business', '', '', '2016-12-28 13:20:26', '2016-12-28 13:20:26', '', 0, 'http://localhost/vcs-project/?p=63', 3, 'nav_menu_item', '', 0),
(64, 1, '2016-12-28 07:30:57', '2016-12-28 07:30:57', '', 'Art', '', 'publish', 'closed', 'closed', '', 'art', '', '', '2016-12-28 13:20:26', '2016-12-28 13:20:26', '', 0, 'http://localhost/vcs-project/?p=64', 4, 'nav_menu_item', '', 0),
(65, 1, '2016-12-28 07:37:24', '2016-12-28 07:37:24', '', 'Latest design background', '', 'publish', 'closed', 'closed', '', 'acf_latest-design-background', '', '', '2016-12-28 08:59:37', '2016-12-28 08:59:37', '', 0, 'http://localhost/vcs-project/?post_type=acf&#038;p=65', 0, 'acf', '', 0),
(66, 1, '2016-12-28 07:37:45', '2016-12-28 07:37:45', '', 'dots', '', 'inherit', 'open', 'closed', '', 'dots', '', '', '2016-12-28 07:37:45', '2016-12-28 07:37:45', '', 18, 'http://localhost/vcs-project/wp-content/uploads/2016/12/dots.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2016-12-28 07:37:54', '2016-12-28 07:37:54', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<p>', 'Latest design style', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2016-12-28 07:37:54', '2016-12-28 07:37:54', '', 18, 'http://localhost/vcs-project/18-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2016-12-28 07:41:31', '2016-12-28 07:41:31', '', 'Push yourself background', '', 'publish', 'closed', 'closed', '', 'acf_push-yourself-background', '', '', '2016-12-28 11:00:17', '2016-12-28 11:00:17', '', 0, 'http://localhost/vcs-project/?post_type=acf&#038;p=68', 0, 'acf', '', 0),
(69, 1, '2016-12-28 07:43:03', '2016-12-28 07:43:03', '', 'Push yourself image', '', 'trash', 'closed', 'closed', '', 'acf_push-yourself-image__trashed', '', '', '2016-12-28 11:03:05', '2016-12-28 11:03:05', '', 0, 'http://localhost/vcs-project/?post_type=acf&#038;p=69', 0, 'acf', '', 0),
(70, 1, '2016-12-28 07:43:41', '2016-12-28 07:43:41', '', 'layer2', '', 'inherit', 'open', 'closed', '', 'layer2', '', '', '2016-12-28 07:43:41', '2016-12-28 07:43:41', '', 47, 'http://localhost/vcs-project/wp-content/uploads/2016/12/layer2.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2016-12-28 07:43:48', '2016-12-28 07:43:48', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Push yourself & your designs', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2016-12-28 07:43:48', '2016-12-28 07:43:48', '', 47, 'http://localhost/vcs-project/47-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2016-12-28 10:41:18', '2016-12-28 10:41:18', '', 'Shape45', '', 'inherit', 'open', 'closed', '', 'shape45', '', '', '2016-12-28 10:41:18', '2016-12-28 10:41:18', '', 37, 'http://localhost/vcs-project/wp-content/uploads/2016/12/Shape45.png', 0, 'attachment', 'image/png', 0),
(73, 1, '2016-12-28 10:41:30', '2016-12-28 10:41:30', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>', 'Our design guidelines', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2016-12-28 10:41:30', '2016-12-28 10:41:30', '', 37, 'http://localhost/vcs-project/37-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2016-12-28 10:45:05', '2016-12-28 10:45:05', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>', 'Our design guidelines', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2016-12-28 10:45:05', '2016-12-28 10:45:05', '', 37, 'http://localhost/vcs-project/37-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2016-12-28 11:25:42', '2016-12-28 11:25:42', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 'Features of app', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2016-12-28 11:25:42', '2016-12-28 11:25:42', '', 25, 'http://localhost/vcs-project/25-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2016-12-28 11:26:07', '2016-12-28 11:26:07', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 'Features of app', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2016-12-28 11:26:07', '2016-12-28 11:26:07', '', 25, 'http://localhost/vcs-project/25-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2016-12-28 12:33:58', '2016-12-28 12:33:58', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 'Features of app', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2016-12-28 12:33:58', '2016-12-28 12:33:58', '', 25, 'http://localhost/vcs-project/25-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2016-12-28 12:38:45', '2016-12-28 12:38:45', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 'Features of app', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2016-12-28 12:38:45', '2016-12-28 12:38:45', '', 25, 'http://localhost/vcs-project/25-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2016-12-28 13:25:10', '0000-00-00 00:00:00', '', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-28 13:25:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-project/?p=80', 1, 'nav_menu_item', '', 0),
(81, 1, '2016-12-28 13:28:03', '2016-12-28 13:28:03', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us-2', '', '', '2016-12-28 13:49:02', '2016-12-28 13:49:02', '', 0, 'http://localhost/vcs-project/?p=81', 1, 'nav_menu_item', '', 0),
(82, 1, '2016-12-28 13:38:57', '2016-12-28 13:38:57', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2016-12-28 13:49:02', '2016-12-28 13:49:02', '', 0, 'http://localhost/vcs-project/?p=82', 2, 'nav_menu_item', '', 0),
(83, 1, '2016-12-28 13:38:57', '2016-12-28 13:38:57', '', 'Support', '', 'publish', 'closed', 'closed', '', 'suppport', '', '', '2016-12-28 13:49:02', '2016-12-28 13:49:02', '', 0, 'http://localhost/vcs-project/?p=83', 3, 'nav_menu_item', '', 0),
(84, 1, '2016-12-28 13:38:57', '2016-12-28 13:38:57', '', 'Returns', '', 'publish', 'closed', 'closed', '', 'returns', '', '', '2016-12-28 13:49:02', '2016-12-28 13:49:02', '', 0, 'http://localhost/vcs-project/?p=84', 4, 'nav_menu_item', '', 0),
(85, 1, '2016-12-28 13:38:57', '2016-12-28 13:38:57', '', 'Why Buy', '', 'publish', 'closed', 'closed', '', 'why-buy', '', '', '2016-12-28 13:49:02', '2016-12-28 13:49:02', '', 0, 'http://localhost/vcs-project/?p=85', 5, 'nav_menu_item', '', 0),
(86, 1, '2016-12-28 13:38:57', '2016-12-28 13:38:57', '', 'Affiliates', '', 'publish', 'closed', 'closed', '', 'affiliates', '', '', '2016-12-28 13:49:02', '2016-12-28 13:49:02', '', 0, 'http://localhost/vcs-project/?p=86', 6, 'nav_menu_item', '', 0),
(87, 1, '2016-12-29 08:50:02', '2016-12-29 08:50:02', '', 'Latest design section text', '', 'trash', 'closed', 'closed', '', 'acf_latest-design-section-text__trashed', '', '', '2016-12-29 08:56:31', '2016-12-29 08:56:31', '', 0, 'http://localhost/vcs-project/?post_type=acf&#038;p=87', 0, 'acf', '', 0),
(88, 1, '2016-12-29 13:06:08', '2016-12-29 13:06:08', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-12-29 13:06:08', '2016-12-29 13:06:08', '', 2, 'http://localhost/vcs-project/2-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2016-12-29 13:23:58', '2016-12-29 13:23:58', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-12-29 13:23:58', '2016-12-29 13:23:58', '', 2, 'http://localhost/vcs-project/2-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2016-12-29 13:25:37', '2016-12-29 13:25:37', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-12-29 13:25:37', '2016-12-29 13:25:37', '', 2, 'http://localhost/vcs-project/2-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2016-12-29 13:37:21', '2016-12-29 13:37:21', '', 'Push Yourself & Your Designs', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2016-12-29 13:37:21', '2016-12-29 13:37:21', '', 2, 'http://localhost/vcs-project/2-autosave-v1/', 0, 'revision', '', 0),
(92, 1, '2016-12-29 13:37:27', '2016-12-29 13:37:27', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Push Yourself & Your Designs', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-12-29 13:37:27', '2016-12-29 13:37:27', '', 2, 'http://localhost/vcs-project/2-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2016-12-29 13:41:31', '2016-12-29 13:41:31', '', 'Our design paragraphs', '', 'publish', 'closed', 'closed', '', 'acf_our-design-paragraphs', '', '', '2016-12-29 13:42:31', '2016-12-29 13:42:31', '', 0, 'http://localhost/vcs-project/?post_type=acf&#038;p=93', 0, 'acf', '', 0),
(94, 1, '2016-12-29 13:43:40', '2016-12-29 13:43:40', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>', 'Our design guidelines', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2016-12-29 13:43:40', '2016-12-29 13:43:40', '', 37, 'http://localhost/vcs-project/37-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2016-12-30 07:27:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-12-30 07:27:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-project/?p=95', 0, 'post', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(10, 3, 0),
(11, 3, 0),
(12, 3, 0),
(13, 3, 0),
(14, 3, 0),
(15, 4, 0),
(57, 5, 0),
(62, 5, 0),
(63, 5, 0),
(64, 5, 0),
(81, 6, 0),
(82, 6, 0),
(83, 6, 0),
(84, 6, 0),
(85, 6, 0),
(86, 6, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 5),
(4, 4, 'nav_menu', '', 0, 1),
(5, 5, 'nav_menu', '', 0, 4),
(6, 6, 'nav_menu', '', 0, 6) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(3, 'Main menu', 'main-menu', 0),
(4, 'Contact button', 'contact-button', 0),
(5, 'Button menu', 'button-menu', 0),
(6, 'Footer Menu', 'footer-menu', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'false'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:3:{s:64:"afb16a97791eb0d7b80c2f4b8fff73a7def4d01b416cde93994b1cf613d8a48d";a:4:{s:10:"expiration";i:1483534861;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36";s:5:"login";i:1482325261;}s:64:"21f8c18946550bfa21b259dabc42a69702f8afbc41cb45080dfb34c193d44542";a:4:{s:10:"expiration";i:1483534870;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36";s:5:"login";i:1482325270;}s:64:"8c598bd60e0ada81859d6b14ad560bec0eaaeb3715ade5bc36cea19b9a8138fc";a:4:{s:10:"expiration";i:1483535120;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36";s:5:"login";i:1482325520;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '95'),
(17, 1, 'managenav-menuscolumnshidden', 'a:3:{i:0;s:15:"title-attribute";i:1;s:3:"xfn";i:2;s:11:"description";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(19, 1, 'nav_menu_recently_edited', '3'),
(20, 1, 'wp_user-settings', 'editor=html&libraryContent=browse'),
(21, 1, 'wp_user-settings-time', '1482824194') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BzHMd1/SSurv5PLCrkjkkX0DnwQ3E81', 'admin', 'v.jacevicius@gmail.com', '', '2016-12-21 13:00:59', '', 0, 'admin') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

