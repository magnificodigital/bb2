-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 07-Dez-2017 às 23:04
-- Versão do servidor: 5.5.55
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bebe2_com_br_bb2`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Sr. WordPress', '', 'https://wordpress.org/', '', '2014-06-13 21:52:14', '2014-06-13 21:52:14', 'Olá, Isto é um comentário.\nPara excluir um comentário, faça o login e veja os comentários de posts. Lá você terá a opção de editá-los ou excluí-los.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://www.bb2.com.br', 'yes'),
(2, 'blogname', 'Bb2 - Vestindo seu bebê', 'yes'),
(3, 'blogdescription', 'Só mais um site WordPress', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'felipe__rosa@hotmail.com', 'yes'),
(6, 'start_of_week', '0', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '1', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(23, 'time_format', 'H:i', 'yes'),
(24, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(25, 'comment_moderation', '0', 'yes'),
(26, 'moderation_notify', '1', 'yes'),
(27, 'permalink_structure', '/%postname%/', 'yes'),
(28, 'gzipcompression', '0', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:2:{i:0;s:45:\"contact-form-manager/contact-form-manager.php\";i:1;s:24:\"simple-lightbox/main.php\";}', 'yes'),
(33, 'home', 'http://www.bb2.com.br', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:5:{i:0;s:85:\"/var/www/vhosts/bb2.com.br/httpdocs/wp-content/themes/2014 - Outono:Inverno/index.php\";i:2;s:94:\"/var/www/vhosts/bb2.com.br/httpdocs/wp-content/themes/2014 - Outono:Inverno/js copy/header.php\";i:3;s:85:\"/var/www/vhosts/bb2.com.br/httpdocs/wp-content/themes/2014 - Outono:Inverno/style.css\";i:4;s:84:\"/var/www/vhosts/bb2.com.br/httpdocs/wp-content/themes/2014 - Outono:Inverno/page.php\";i:5;s:86:\"/var/www/vhosts/bb2.com.br/httpdocs/wp-content/themes/2014 - Outono:Inverno/header.php\";}', 'no'),
(41, 'template', '2014 - Outono:Inverno', 'yes'),
(42, 'stylesheet', '2014 - Outono:Inverno', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '30135', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:1:{s:45:\"contact-form-manager/contact-form-manager.php\";s:21:\"cfm_network_uninstall\";}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '27916', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:9:\"add_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:18:\"orphaned_widgets_1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(96, 'cron', 'a:5:{i:1446663660;a:1:{s:20:\"wp_maybe_auto_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1446673938;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1446673950;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1446673995;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(125, 'current_theme', '', 'yes'),
(126, 'theme_mods_2014 - Outono:Inverno', 'a:1:{i:0;b:0;}', 'yes'),
(127, 'theme_switched', '', 'yes'),
(137, 'recently_activated', 'a:0:{}', 'yes'),
(139, 'slb_version', '2.3.1', 'yes'),
(140, 'slb_options', 'a:25:{s:7:\"enabled\";b:1;s:12:\"enabled_home\";b:1;s:12:\"enabled_post\";b:1;s:12:\"enabled_page\";b:1;s:15:\"enabled_archive\";b:1;s:14:\"enabled_widget\";b:0;s:11:\"group_links\";b:1;s:10:\"group_post\";b:1;s:13:\"group_gallery\";b:0;s:12:\"group_widget\";b:0;s:10:\"ui_autofit\";b:1;s:10:\"ui_animate\";b:1;s:19:\"slideshow_autostart\";b:1;s:18:\"slideshow_duration\";s:1:\"6\";s:10:\"group_loop\";b:1;s:18:\"ui_overlay_opacity\";s:3:\"0.6\";s:16:\"ui_title_default\";b:1;s:11:\"txt_loading\";s:10:\"Carregando\";s:9:\"txt_close\";s:6:\"Fechar\";s:12:\"txt_nav_next\";s:8:\"Próximo\";s:12:\"txt_nav_prev\";s:8:\"Anterior\";s:19:\"txt_slideshow_start\";s:23:\"Começar apresentação\";s:18:\"txt_slideshow_stop\";s:20:\"Parar apresentação\";s:16:\"txt_group_status\";s:25:\"Item %current% de %total%\";s:13:\"theme_default\";s:11:\"slb_default\";}', 'yes'),
(147, 'xyz_cfm_paging_limit', '20', 'yes'),
(148, 'xyz_cfm_tinymce_filter', '1', 'yes'),
(149, 'xyz_cfm_mandatory_sign', '1', 'yes'),
(150, 'xyz_cfm_DateFormat', '1', 'yes'),
(151, 'xyz_cfm_hidepmAds', '0', 'yes'),
(152, 'xyz_credit_link', '0', 'yes'),
(153, 'xyz_cfm_sendViaSmtp', '0', 'yes'),
(154, 'xyz_cfm_SmtpDebug', '0', 'yes'),
(501, 'xyz_cfm_recaptcha_private_key', '', 'yes'),
(502, 'xyz_cfm_recaptcha_public_key', '', 'yes'),
(3129, 'theme_mods_2014', 'a:1:{i:0;b:0;}', 'yes'),
(3655, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:6:\"manual\";s:5:\"email\";s:24:\"felipe__rosa@hotmail.com\";s:7:\"version\";s:5:\"4.2.2\";s:9:\"timestamp\";i:1431504488;}', 'yes'),
(5429, '_transient_twentyfourteen_category_count', '4', 'yes'),
(5443, 'WPLANG', 'pt_BR', 'yes'),
(5444, 'db_upgraded', '1', 'yes'),
(5448, '_transient_random_seed', 'a28a226776b87d5f02f1e7d5dc8ed4d3', 'yes'),
(5449, 'rewrite_rules', 'a:68:{s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)(/[0-9]+)?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:20:\"([^/]+)(/[0-9]+)?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";}', 'yes'),
(5506, 'theme_mods_twentyfourteen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1422615806;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(5858, 'auto_updater.lock', '1446633098', 'no'),
(6205, 'category_children', 'a:0:{}', 'yes'),
(7033, 'theme_switched_via_customizer', '', 'yes'),
(12675, '_transient_doing_cron', '1512612511.5651669502258300781250', 'yes'),
(13566, 'can_compress_scripts', '0', 'yes'),
(14092, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:10:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-4.9.1.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-4.9.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.1\";s:7:\"version\";s:5:\"4.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.1\";s:7:\"version\";s:5:\"4.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.1\";s:7:\"version\";s:5:\"4.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.8.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.8.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.8.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.8.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.8.4\";s:7:\"version\";s:5:\"4.8.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.7.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.7.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.7.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.7.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.7.8\";s:7:\"version\";s:5:\"4.7.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:5;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.6.9.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.6.9.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.6.9-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.6.9-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.6.9\";s:7:\"version\";s:5:\"4.6.9\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:6;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.5.12.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.5.12.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.5.12-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-4.5.12-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:6:\"4.5.12\";s:7:\"version\";s:6:\"4.5.12\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:7;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.4.13.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.4.13.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.4.13-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-4.4.13-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:6:\"4.4.13\";s:7:\"version\";s:6:\"4.4.13\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:8;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.3.14.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.3.14.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.3.14-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-4.3.14-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:6:\"4.3.14\";s:7:\"version\";s:6:\"4.3.14\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:9;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.2.18.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.2.18.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.2.18-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-4.2.18-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:6:\"4.2.18\";s:7:\"version\";s:6:\"4.2.18\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1512612513;s:15:\"version_checked\";s:6:\"4.1.21\";s:12:\"translations\";a:0:{}}', 'yes'),
(14093, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1512612519;s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:5:\"3.0.4\";s:45:\"contact-form-manager/contact-form-manager.php\";s:5:\"1.4.1\";s:9:\"hello.php\";s:3:\"1.6\";s:24:\"simple-lightbox/main.php\";s:5:\"2.3.1\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.1\";s:13:\"compatibility\";a:0:{}}s:45:\"contact-form-manager/contact-form-manager.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:34:\"w.org/plugins/contact-form-manager\";s:4:\"slug\";s:20:\"contact-form-manager\";s:6:\"plugin\";s:45:\"contact-form-manager/contact-form-manager.php\";s:11:\"new_version\";s:5:\"1.4.5\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/contact-form-manager/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/contact-form-manager.1.4.5.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.7.8\";s:13:\"compatibility\";a:0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"simple-lightbox/main.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:29:\"w.org/plugins/simple-lightbox\";s:4:\"slug\";s:15:\"simple-lightbox\";s:6:\"plugin\";s:24:\"simple-lightbox/main.php\";s:11:\"new_version\";s:5:\"2.6.0\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/simple-lightbox/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/simple-lightbox.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.8.4\";s:13:\"compatibility\";a:0:{}}}}', 'yes'),
(14094, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1512612515;s:7:\"checked\";a:6:{s:21:\"2014 - Outono:Inverno\";s:0:\"\";i:2014;s:0:\"\";s:13:\"twentyfifteen\";s:3:\"1.0\";s:14:\"twentyfourteen\";s:3:\"1.3\";s:14:\"twentythirteen\";s:3:\"1.4\";s:12:\"twentytwelve\";s:3:\"1.6\";}s:8:\"response\";a:4:{s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.1.9.zip\";}s:14:\"twentyfourteen\";a:4:{s:5:\"theme\";s:14:\"twentyfourteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentyfourteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentyfourteen.2.1.zip\";}s:14:\"twentythirteen\";a:4:{s:5:\"theme\";s:14:\"twentythirteen\";s:11:\"new_version\";s:3:\"2.3\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentythirteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentythirteen.2.3.zip\";}s:12:\"twentytwelve\";a:4:{s:5:\"theme\";s:12:\"twentytwelve\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwelve/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwelve.2.4.zip\";}}s:12:\"translations\";a:0:{}}', 'yes'),
(14109, '_site_transient_timeout_theme_roots', '1512614314', 'yes'),
(14110, '_site_transient_theme_roots', 'a:6:{s:21:\"2014 - Outono:Inverno\";s:7:\"/themes\";i:2014;s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:14:\"twentyfourteen\";s:7:\"/themes\";s:14:\"twentythirteen\";s:7:\"/themes\";s:12:\"twentytwelve\";s:7:\"/themes\";}', 'yes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1403632194:1'),
(4, 5, '_wp_attached_file', '2014/06/bebe.jpg'),
(5, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:16:\"2014/06/bebe.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"bebe-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"bebe-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:16:\"bebe-280x210.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:210;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(6, 6, '_wp_attached_file', '2014/06/bebe2.jpg'),
(7, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"file\";s:17:\"2014/06/bebe2.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"bebe2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(8, 7, '_wp_attached_file', '2014/06/bebe3.jpg'),
(9, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:520;s:6:\"height\";i:432;s:4:\"file\";s:17:\"2014/06/bebe3.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"bebe3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"bebe3-300x249.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:17:\"bebe3-280x232.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:232;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(13, 9, '_edit_last', '1'),
(14, 9, '_edit_lock', '1403632037:1'),
(15, 10, '_wp_attached_file', '2014/06/bebe1.jpg'),
(16, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:17:\"2014/06/bebe1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"bebe1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"bebe1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:17:\"bebe1-280x210.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:210;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(17, 11, '_wp_attached_file', '2014/06/bebe21.jpg'),
(18, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"file\";s:18:\"2014/06/bebe21.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe21-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(19, 12, '_wp_attached_file', '2014/06/bebe31.jpg'),
(20, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:520;s:6:\"height\";i:432;s:4:\"file\";s:18:\"2014/06/bebe31.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe31-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"bebe31-300x249.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe31-280x232.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:232;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(24, 14, '_edit_last', '1'),
(25, 14, '_edit_lock', '1403632538:1'),
(26, 15, '_wp_attached_file', '2014/06/bebe32.jpg'),
(27, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:520;s:6:\"height\";i:432;s:4:\"file\";s:18:\"2014/06/bebe32.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe32-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"bebe32-300x249.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe32-280x232.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:232;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(31, 17, '_edit_last', '1'),
(32, 17, '_edit_lock', '1425934709:1'),
(35, 19, '_wp_attached_file', '2014/06/bebe4.jpg'),
(36, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:17:\"2014/06/bebe4.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"bebe4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"bebe4-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:17:\"bebe4-280x210.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:210;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(37, 20, '_wp_attached_file', '2014/06/bebe22.jpg'),
(38, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"file\";s:18:\"2014/06/bebe22.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe22-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(39, 21, '_wp_attached_file', '2014/06/bebe33.jpg'),
(40, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:520;s:6:\"height\";i:432;s:4:\"file\";s:18:\"2014/06/bebe33.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe33-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"bebe33-300x249.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe33-280x232.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:232;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(43, 23, '_wp_attached_file', '2014/06/bebe4.jpeg'),
(44, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:18:\"2014/06/bebe4.jpeg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe4-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(45, 24, '_wp_attached_file', '2014/06/bebe5.jpg'),
(46, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:648;s:4:\"file\";s:17:\"2014/06/bebe5.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"bebe5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"bebe5-300x202.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:202;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:17:\"bebe5-280x189.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:189;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(47, 25, '_wp_attached_file', '2014/06/bebe6.jpg'),
(48, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1440;s:4:\"file\";s:17:\"2014/06/bebe6.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"bebe6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"bebe6-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"bebe6-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:17:\"bebe6-280x210.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:210;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(49, 26, '_wp_attached_file', '2014/06/bebe7.jpg'),
(50, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:460;s:4:\"file\";s:17:\"2014/06/bebe7.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"bebe7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"bebe7-300x276.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:276;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:17:\"bebe7-280x257.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:257;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(51, 27, '_wp_attached_file', '2014/06/bebe8.jpg'),
(52, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:266;s:4:\"file\";s:17:\"2014/06/bebe8.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"bebe8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"bebe8-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:17:\"bebe8-280x186.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(53, 28, '_wp_attached_file', '2014/06/bebe9.jpg'),
(54, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:17:\"2014/06/bebe9.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"bebe9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"bebe9-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:17:\"bebe9-280x210.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:210;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(55, 29, '_wp_attached_file', '2014/06/bebe23.jpg'),
(56, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"file\";s:18:\"2014/06/bebe23.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe23-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(57, 30, '_wp_attached_file', '2014/06/bebe34.jpg'),
(58, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:520;s:6:\"height\";i:432;s:4:\"file\";s:18:\"2014/06/bebe34.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe34-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"bebe34-300x249.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe34-280x232.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:232;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(59, 31, '_wp_attached_file', '2014/06/bebe41.jpeg'),
(60, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:19:\"2014/06/bebe41.jpeg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"bebe41-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(61, 32, '_wp_attached_file', '2014/06/bebe51.jpg'),
(62, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:648;s:4:\"file\";s:18:\"2014/06/bebe51.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe51-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"bebe51-300x202.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:202;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe51-280x189.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:189;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(63, 33, '_wp_attached_file', '2014/06/bebe61.jpg'),
(64, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1440;s:4:\"file\";s:18:\"2014/06/bebe61.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe61-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"bebe61-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"bebe61-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe61-280x210.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:210;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(65, 34, '_wp_attached_file', '2014/06/bebe71.jpg'),
(66, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:460;s:4:\"file\";s:18:\"2014/06/bebe71.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe71-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"bebe71-300x276.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:276;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe71-280x257.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:257;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(67, 35, '_wp_attached_file', '2014/06/bebe81.jpg'),
(68, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:266;s:4:\"file\";s:18:\"2014/06/bebe81.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe81-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"bebe81-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe81-280x186.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(69, 36, '_wp_attached_file', '2014/06/bebe10.jpg'),
(70, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:18:\"2014/06/bebe10.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"bebe10-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe10-280x210.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:210;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(71, 37, '_wp_attached_file', '2014/06/bebe24.jpg'),
(72, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"file\";s:18:\"2014/06/bebe24.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe24-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(73, 38, '_wp_attached_file', '2014/06/bebe35.jpg'),
(74, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:520;s:6:\"height\";i:432;s:4:\"file\";s:18:\"2014/06/bebe35.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe35-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"bebe35-300x249.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe35-280x232.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:232;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(79, 41, '_edit_last', '1'),
(80, 41, '_edit_lock', '1429135060:1'),
(81, 42, '_wp_attached_file', '2014/06/1.jpg'),
(82, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:604;s:6:\"height\";i:380;s:4:\"file\";s:13:\"2014/06/1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:13:\"1-280x176.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:176;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(83, 43, '_wp_attached_file', '2014/06/2.jpeg'),
(84, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:259;s:6:\"height\";i:194;s:4:\"file\";s:14:\"2014/06/2.jpeg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"2-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(87, 45, '_wp_attached_file', '2014/06/4.jpg'),
(88, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:360;s:4:\"file\";s:13:\"2014/06/4.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"4-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:13:\"4-280x210.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:210;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(93, 48, '_wp_attached_file', '2014/06/7.jpg'),
(94, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:337;s:4:\"file\";s:13:\"2014/06/7.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"7-300x288.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:13:\"7-280x269.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:269;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(97, 50, '_wp_attached_file', '2014/06/bebe42.jpeg'),
(98, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:19:\"2014/06/bebe42.jpeg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"bebe42-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(99, 51, '_wp_attached_file', '2014/06/bebe52.jpg'),
(100, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:648;s:4:\"file\";s:18:\"2014/06/bebe52.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe52-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"bebe52-300x202.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:202;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe52-280x189.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:189;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(101, 52, '_wp_attached_file', '2014/06/bebe62.jpg'),
(102, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1440;s:4:\"file\";s:18:\"2014/06/bebe62.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe62-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"bebe62-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"bebe62-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe62-280x210.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:210;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(103, 53, '_wp_attached_file', '2014/06/bebe72.jpg'),
(104, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:460;s:4:\"file\";s:18:\"2014/06/bebe72.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe72-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"bebe72-300x276.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:276;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe72-280x257.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:257;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(105, 54, '_wp_attached_file', '2014/06/bebe82.jpg'),
(106, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:266;s:4:\"file\";s:18:\"2014/06/bebe82.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe82-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"bebe82-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe82-280x186.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(107, 55, '_wp_attached_file', '2014/06/bebe11.jpg'),
(108, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:18:\"2014/06/bebe11.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"bebe11-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe11-280x210.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:210;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(109, 56, '_wp_attached_file', '2014/06/bebe25.jpg'),
(110, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"file\";s:18:\"2014/06/bebe25.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe25-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(111, 57, '_wp_attached_file', '2014/06/bebe36.jpg'),
(112, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:520;s:6:\"height\";i:432;s:4:\"file\";s:18:\"2014/06/bebe36.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe36-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"bebe36-300x249.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"bebe36-280x232.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:232;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(115, 59, '_edit_last', '1'),
(116, 59, '_edit_lock', '1429789210:1'),
(117, 59, '_wp_page_template', 'coleçao.php'),
(118, 61, '_edit_last', '1'),
(119, 61, '_edit_lock', '1429789452:1'),
(120, 61, '_wp_page_template', 'seufilho.php'),
(121, 63, '_edit_last', '1'),
(122, 63, '_edit_lock', '1402701110:1'),
(125, 65, '_edit_last', '1'),
(126, 65, '_edit_lock', '1402704479:1'),
(127, 66, '_edit_last', '1'),
(128, 66, '_edit_lock', '1425935837:1'),
(134, 69, '_wp_attached_file', '2014/06/DSC_0006.jpg'),
(135, 69, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:3072;s:6:\"height\";i:4608;s:4:\"file\";s:20:\"2014/06/DSC_0006.jpg\";s:10:\"image_meta\";a:10:{s:8:\"aperture\";d:5;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D3100\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1392904308;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"34\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";}}'),
(136, 71, '_wp_attached_file', '2014/06/DSC_0044.jpg'),
(137, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3852;s:6:\"height\";i:2586;s:4:\"file\";s:20:\"2014/06/DSC_0044.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"DSC_0044-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"DSC_0044-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"DSC_0044-1024x687.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:687;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"DSC_0044-280x187.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";d:5;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D3100\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1392904716;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"28\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";}}'),
(138, 72, '_wp_attached_file', '2014/06/DSC_0063.jpg'),
(139, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4044;s:6:\"height\";i:2640;s:4:\"file\";s:20:\"2014/06/DSC_0063.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"DSC_0063-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"DSC_0063-300x195.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"DSC_0063-1024x668.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:668;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"DSC_0063-280x182.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";d:5;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D3100\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1392904862;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"20\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";}}'),
(140, 73, '_wp_attached_file', '2014/06/DSC_0067.jpg'),
(141, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4608;s:6:\"height\";i:3072;s:4:\"file\";s:20:\"2014/06/DSC_0067.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"DSC_0067-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"DSC_0067-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"DSC_0067-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"DSC_0067-280x186.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";d:5;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D3100\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1392904888;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"36\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";}}'),
(142, 74, '_wp_attached_file', '2014/06/DSC_0105.jpg'),
(143, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3072;s:6:\"height\";i:4608;s:4:\"file\";s:20:\"2014/06/DSC_0105.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"DSC_0105-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"DSC_0105-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"DSC_0105-682x1024.jpg\";s:5:\"width\";i:682;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"DSC_0105-186x280.jpg\";s:5:\"width\";i:186;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";d:5;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D3100\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1392905493;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"36\";s:3:\"iso\";s:3:\"220\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";}}'),
(144, 75, '_wp_attached_file', '2014/06/DSC_0113.jpg'),
(145, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3072;s:6:\"height\";i:4608;s:4:\"file\";s:20:\"2014/06/DSC_0113.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"DSC_0113-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"DSC_0113-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"DSC_0113-682x1024.jpg\";s:5:\"width\";i:682;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"DSC_0113-186x280.jpg\";s:5:\"width\";i:186;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";d:5;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D3100\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1392905527;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"35\";s:3:\"iso\";s:3:\"160\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";}}'),
(146, 76, '_wp_attached_file', '2014/06/DSC_0979.jpg'),
(147, 76, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:2832;s:6:\"height\";i:4088;s:4:\"file\";s:20:\"2014/06/DSC_0979.jpg\";s:10:\"image_meta\";a:10:{s:8:\"aperture\";d:5.5999999999999996447286321199499070644378662109375;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D3100\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1392903221;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";}}'),
(148, 77, '_wp_attached_file', '2014/06/DSC_1004.jpg'),
(149, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3072;s:6:\"height\";i:4608;s:4:\"file\";s:20:\"2014/06/DSC_1004.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"DSC_1004-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"DSC_1004-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"DSC_1004-682x1024.jpg\";s:5:\"width\";i:682;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"DSC_1004-186x280.jpg\";s:5:\"width\";i:186;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";d:5.29999999999999982236431605997495353221893310546875;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D3100\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1392903868;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"42\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";}}'),
(150, 78, '_wp_attached_file', '2014/06/pag-1.jpg'),
(151, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:841;s:6:\"height\";i:669;s:4:\"file\";s:17:\"2014/06/pag-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"pag-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"pag-1-300x238.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:238;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:17:\"pag-1-280x222.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:222;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(152, 79, '_wp_attached_file', '2014/06/pag-2.jpg'),
(153, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:843;s:6:\"height\";i:679;s:4:\"file\";s:17:\"2014/06/pag-2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"pag-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"pag-2-300x241.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:241;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:17:\"pag-2-280x225.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(154, 80, '_wp_attached_file', '2014/06/pag-3.jpg'),
(155, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:833;s:6:\"height\";i:673;s:4:\"file\";s:17:\"2014/06/pag-3.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"pag-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"pag-3-300x242.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:242;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:17:\"pag-3-280x226.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:226;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(156, 81, '_wp_attached_file', '2014/06/pag-4.jpg'),
(157, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:839;s:6:\"height\";i:670;s:4:\"file\";s:17:\"2014/06/pag-4.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"pag-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"pag-4-300x239.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:239;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:17:\"pag-4-280x223.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:223;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(160, 83, '_edit_last', '1'),
(161, 83, '_edit_lock', '1425931370:1'),
(166, 83, '_thumbnail_id', '77'),
(169, 85, '_wp_attached_file', '2014/06/fabrica1.jpg'),
(170, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:226;s:4:\"file\";s:20:\"2014/06/fabrica1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"fabrica1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"fabrica1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"fabrica1-280x158.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(171, 86, '_wp_attached_file', '2014/06/fabrica2.jpg'),
(172, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:226;s:4:\"file\";s:20:\"2014/06/fabrica2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"fabrica2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"fabrica2-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"fabrica2-280x158.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(173, 87, '_wp_attached_file', '2014/06/fabrica3.jpg'),
(174, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:226;s:4:\"file\";s:20:\"2014/06/fabrica3.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"fabrica3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"fabrica3-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"fabrica3-280x158.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(175, 88, '_wp_attached_file', '2014/06/fabrica4.jpg'),
(176, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:226;s:4:\"file\";s:20:\"2014/06/fabrica4.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"fabrica4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"fabrica4-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"fabrica4-280x158.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(181, 93, '_wp_attached_file', '2014/06/Arthur.jpg'),
(182, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:687;s:6:\"height\";i:883;s:4:\"file\";s:18:\"2014/06/Arthur.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"Arthur-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"Arthur-233x300.jpg\";s:5:\"width\";i:233;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"Arthur-217x280.jpg\";s:5:\"width\";i:217;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(183, 94, '_wp_attached_file', '2014/06/Henrique.jpg'),
(184, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:543;s:6:\"height\";i:752;s:4:\"file\";s:20:\"2014/06/Henrique.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Henrique-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Henrique-216x300.jpg\";s:5:\"width\";i:216;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"Henrique-202x280.jpg\";s:5:\"width\";i:202;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(185, 95, '_wp_attached_file', '2014/06/miguel.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(186, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:960;s:4:\"file\";s:18:\"2014/06/miguel.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"miguel-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"miguel-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"miguel-210x280.jpg\";s:5:\"width\";i:210;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(187, 96, '_wp_attached_file', '2014/06/pietra2.jpg'),
(188, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:960;s:4:\"file\";s:19:\"2014/06/pietra2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"pietra2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"pietra2-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:19:\"pietra2-210x280.jpg\";s:5:\"width\";i:210;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(189, 9, '_thumbnail_id', '94'),
(199, 4, '_thumbnail_id', '93'),
(202, 100, '_wp_attached_file', '2014/06/pietra.jpg'),
(203, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:403;s:6:\"height\";i:537;s:4:\"file\";s:18:\"2014/06/pietra.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"pietra-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"pietra-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"pietra-210x280.jpg\";s:5:\"width\";i:210;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(204, 14, '_thumbnail_id', '100'),
(207, 101, '_edit_last', '1'),
(208, 101, '_edit_lock', '1403722480:1'),
(211, 106, '_edit_last', '1'),
(212, 106, '_edit_lock', '1404306209:1'),
(213, 107, '_wp_attached_file', '2014/07/10351665_871507602863949_5262883375935561930_n.jpg'),
(214, 107, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:549;s:6:\"height\";i:714;s:4:\"file\";s:58:\"2014/07/10351665_871507602863949_5262883375935561930_n.jpg\";s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(215, 106, '_thumbnail_id', '107'),
(220, 110, '_edit_last', '1'),
(221, 110, '_edit_lock', '1405367750:1'),
(222, 111, '_wp_attached_file', '2014/07/Mamae-Regina-com-o-Enzo.jpg'),
(223, 111, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:628;s:6:\"height\";i:812;s:4:\"file\";s:35:\"2014/07/Mamae-Regina-com-o-Enzo.jpg\";s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(224, 110, '_thumbnail_id', '111'),
(229, 95, '_edit_lock', '1404307383:1'),
(230, 95, '_edit_last', '1'),
(231, 96, '_edit_lock', '1404307401:1'),
(232, 96, '_edit_last', '1'),
(233, 113, '_edit_last', '1'),
(234, 113, '_edit_lock', '1404341032:1'),
(235, 117, '_edit_last', '1'),
(236, 117, '_edit_lock', '1425934726:1'),
(237, 118, '_wp_attached_file', '2014/07/Júlia-1-ano.jpg'),
(238, 118, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:540;s:6:\"height\";i:960;s:4:\"file\";s:24:\"2014/07/Júlia-1-ano.jpg\";s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(239, 117, '_thumbnail_id', '118'),
(240, 121, '_edit_last', '1'),
(241, 121, '_edit_lock', '1425935563:1'),
(244, 123, '_wp_attached_file', '2014/10/IMG_0002.jpg'),
(245, 123, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1200;s:6:\"height\";i:1600;s:4:\"file\";s:20:\"2014/10/IMG_0002.jpg\";s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
(453, 238, '_wp_attached_file', '2015/03/140-1.jpg'),
(454, 238, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:17:\"2015/03/140-1.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(455, 239, '_wp_attached_file', '2015/03/140-2.jpg'),
(456, 239, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:17:\"2015/03/140-2.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(457, 240, '_wp_attached_file', '2015/03/140-3.jpg'),
(458, 240, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:17:\"2015/03/140-3.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(459, 241, '_wp_attached_file', '2015/03/1400-1.jpg'),
(460, 241, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2015/03/1400-1.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(461, 242, '_wp_attached_file', '2015/03/14001-1.jpg'),
(462, 242, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2015/03/14001-1.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(463, 243, '_wp_attached_file', '2015/03/14001-2.jpg'),
(464, 243, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2015/03/14001-2.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(465, 244, '_wp_attached_file', '2015/03/14001-3.jpg'),
(466, 244, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2015/03/14001-3.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(467, 245, '_wp_attached_file', '2015/03/14001-4.jpg'),
(468, 245, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2015/03/14001-4.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(469, 246, '_wp_attached_file', '2015/03/14001-5.jpg'),
(470, 246, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2015/03/14001-5.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(471, 247, '_wp_attached_file', '2015/03/14002-1.jpg'),
(472, 247, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2015/03/14002-1.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(473, 248, '_wp_attached_file', '2015/03/14003-1.jpg'),
(474, 248, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2015/03/14003-1.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(475, 249, '_wp_attached_file', '2015/03/14004-1.jpg'),
(476, 249, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2015/03/14004-1.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(477, 250, '_wp_attached_file', '2015/03/14005-1.jpg'),
(478, 250, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2015/03/14005-1.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(479, 251, '_wp_attached_file', '2015/03/14006-1.jpg'),
(480, 251, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2015/03/14006-1.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(481, 252, '_wp_attached_file', '2015/03/14058-1.jpg'),
(482, 252, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2015/03/14058-1.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(483, 253, '_wp_attached_file', '2015/03/14058-2.jpg'),
(484, 253, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2015/03/14058-2.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(485, 254, '_wp_attached_file', '2015/03/14058-3.jpg'),
(486, 254, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2015/03/14058-3.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(487, 255, '_wp_attached_file', '2015/03/14058-4.jpg'),
(488, 255, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2015/03/14058-4.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(489, 256, '_wp_attached_file', '2015/03/14059-1.jpg'),
(490, 256, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2015/03/14059-1.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(491, 257, '_wp_attached_file', '2015/03/toalha-1.jpg'),
(492, 257, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2015/03/toalha-1.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(503, 261, '_wp_attached_file', '2014/06/Gianluigi.jpg'),
(504, 261, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:21:\"2014/06/Gianluigi.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(505, 262, '_wp_attached_file', '2014/06/pequena-da-Cristiane.jpg'),
(506, 262, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:826;s:6:\"height\";i:1200;s:4:\"file\";s:32:\"2014/06/pequena-da-Cristiane.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(516, 269, '_edit_last', '1'),
(517, 269, '_edit_lock', '1425936482:1'),
(518, 269, '_thumbnail_id', '242'),
(521, 273, '_edit_last', '1'),
(522, 273, '_edit_lock', '1425936246:1'),
(523, 273, '_thumbnail_id', '249'),
(529, 282, '_edit_last', '1'),
(530, 282, '_edit_lock', '1425936782:1'),
(531, 282, '_thumbnail_id', '95'),
(534, 285, '_edit_last', '1'),
(535, 285, '_edit_lock', '1425937149:1'),
(536, 286, '_wp_attached_file', '2015/03/Ayla.jpg'),
(537, 286, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:720;s:6:\"height\";i:960;s:4:\"file\";s:16:\"2015/03/Ayla.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(538, 285, '_thumbnail_id', '286'),
(541, 289, '_edit_last', '1'),
(542, 289, '_edit_lock', '1429117219:1'),
(543, 290, '_wp_attached_file', '2015/04/Ayla-2.jpg'),
(544, 290, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2015/04/Ayla-2.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(545, 289, '_thumbnail_id', '290'),
(548, 293, '_edit_last', '1'),
(549, 293, '_edit_lock', '1429117322:1'),
(550, 294, '_wp_attached_file', '2015/04/Gianluigi.jpg'),
(551, 294, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:21:\"2015/04/Gianluigi.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(552, 293, '_thumbnail_id', '294'),
(555, 297, '_edit_last', '1'),
(556, 297, '_edit_lock', '1429117391:1'),
(557, 298, '_wp_attached_file', '2015/04/pequena-da-Cristiane.jpg'),
(558, 298, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:32:\"2015/04/pequena-da-Cristiane.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(559, 297, '_thumbnail_id', '298'),
(562, 300, '_edit_last', '1'),
(563, 300, '_edit_lock', '1429117425:1'),
(564, 301, '_wp_attached_file', '2015/04/Luca.jpg'),
(565, 301, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:16:\"2015/04/Luca.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(566, 300, '_thumbnail_id', '301'),
(569, 303, '_edit_last', '1'),
(570, 303, '_edit_lock', '1429117461:1'),
(571, 304, '_wp_attached_file', '2015/04/Nicoly.jpg'),
(572, 304, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2015/04/Nicoly.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(573, 303, '_thumbnail_id', '304'),
(576, 306, '_edit_last', '1'),
(577, 306, '_edit_lock', '1429117528:1'),
(578, 307, '_wp_attached_file', '2015/04/Luca-2.jpg'),
(579, 307, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2015/04/Luca-2.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(580, 306, '_thumbnail_id', '307'),
(583, 309, '_edit_last', '1'),
(584, 309, '_edit_lock', '1429117582:1'),
(585, 310, '_wp_attached_file', '2015/04/Catarina.jpg'),
(586, 310, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2015/04/Catarina.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(587, 309, '_thumbnail_id', '310'),
(592, 316, '_wp_attached_file', '2014/06/15023.jpg'),
(593, 316, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:17:\"2014/06/15023.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(594, 317, '_wp_attached_file', '2014/06/15023_1.jpg'),
(595, 317, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2014/06/15023_1.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(596, 318, '_wp_attached_file', '2014/06/15023_2.jpg'),
(597, 318, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2014/06/15023_2.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(598, 319, '_wp_attached_file', '2014/06/15023_3.jpg'),
(599, 319, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2014/06/15023_3.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(600, 320, '_wp_attached_file', '2014/06/15023_4.jpg'),
(601, 320, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2014/06/15023_4.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(602, 321, '_wp_attached_file', '2014/06/15026.jpg'),
(603, 321, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:17:\"2014/06/15026.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(604, 322, '_wp_attached_file', '2014/06/15026_1.jpg'),
(605, 322, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2014/06/15026_1.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(606, 323, '_wp_attached_file', '2014/06/15026_2.jpg'),
(607, 323, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2014/06/15026_2.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(608, 324, '_wp_attached_file', '2014/06/15026_3.jpg'),
(609, 324, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2014/06/15026_3.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(610, 325, '_wp_attached_file', '2014/06/15026_4.jpg'),
(611, 325, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2014/06/15026_4.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(612, 326, '_wp_attached_file', '2014/06/15026_5.jpg'),
(613, 326, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2014/06/15026_5.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(614, 327, '_wp_attached_file', '2014/06/15029.jpg'),
(615, 327, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:17:\"2014/06/15029.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(616, 328, '_wp_attached_file', '2014/06/15029_2.jpg'),
(617, 328, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2014/06/15029_2.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(618, 329, '_wp_attached_file', '2014/06/15031.jpg'),
(619, 329, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:17:\"2014/06/15031.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(620, 330, '_wp_attached_file', '2014/06/15031_2.jpg'),
(621, 330, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2014/06/15031_2.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(622, 331, '_wp_attached_file', '2014/06/15031_3.jpg'),
(623, 331, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2014/06/15031_3.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(624, 332, '_wp_attached_file', '2014/06/15031_4.jpg'),
(625, 332, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2014/06/15031_4.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(626, 333, '_wp_attached_file', '2014/06/15055.jpg'),
(627, 333, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:17:\"2014/06/15055.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(628, 334, '_wp_attached_file', '2014/06/15055_1.jpg'),
(629, 334, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2014/06/15055_1.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(630, 335, '_wp_attached_file', '2014/06/15055_2.jpg'),
(631, 335, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2014/06/15055_2.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(632, 336, '_wp_attached_file', '2014/06/15055_4.jpg'),
(633, 336, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2014/06/15055_4.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(634, 337, '_wp_attached_file', '2014/06/15057-E-15026.jpg'),
(635, 337, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:25:\"2014/06/15057-E-15026.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(636, 338, '_wp_attached_file', '2014/06/15057.jpg'),
(637, 338, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:17:\"2014/06/15057.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(638, 339, '_wp_attached_file', '2014/06/15057_2.jpg'),
(639, 339, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2014/06/15057_2.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(640, 340, '_wp_attached_file', '2014/06/15057_3.jpg'),
(641, 340, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2014/06/15057_3.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(642, 341, '_wp_attached_file', '2014/06/15057_4.jpg'),
(643, 341, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2014/06/15057_4.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(644, 342, '_wp_attached_file', '2014/06/15057_5.jpg'),
(645, 342, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2014/06/15057_5.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(646, 343, '_wp_attached_file', '2014/06/15059.jpg'),
(647, 343, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:17:\"2014/06/15059.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(648, 344, '_wp_attached_file', '2014/06/15059_2.jpg'),
(649, 344, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2014/06/15059_2.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(650, 345, '_wp_attached_file', '2014/06/15059_3.jpg'),
(651, 345, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2014/06/15059_3.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(652, 346, '_wp_attached_file', '2014/06/15059_4.jpg'),
(653, 346, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1085;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2014/06/15059_4.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(654, 349, '_menu_item_type', 'custom'),
(655, 349, '_menu_item_menu_item_parent', '0'),
(656, 349, '_menu_item_object_id', '349'),
(657, 349, '_menu_item_object', 'custom'),
(658, 349, '_menu_item_target', ''),
(659, 349, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(660, 349, '_menu_item_xfn', ''),
(661, 349, '_menu_item_url', 'http://www.bb2.com.br/'),
(662, 349, '_menu_item_orphaned', '1429789556'),
(663, 350, '_menu_item_type', 'post_type'),
(664, 350, '_menu_item_menu_item_parent', '0'),
(665, 350, '_menu_item_object_id', '59'),
(666, 350, '_menu_item_object', 'page'),
(667, 350, '_menu_item_target', ''),
(668, 350, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(669, 350, '_menu_item_xfn', ''),
(670, 350, '_menu_item_url', ''),
(671, 350, '_menu_item_orphaned', '1429789556'),
(672, 351, '_menu_item_type', 'post_type'),
(673, 351, '_menu_item_menu_item_parent', '0'),
(674, 351, '_menu_item_object_id', '2'),
(675, 351, '_menu_item_object', 'page'),
(676, 351, '_menu_item_target', ''),
(677, 351, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(678, 351, '_menu_item_xfn', ''),
(679, 351, '_menu_item_url', ''),
(680, 351, '_menu_item_orphaned', '1429789556'),
(681, 352, '_menu_item_type', 'post_type'),
(682, 352, '_menu_item_menu_item_parent', '0'),
(683, 352, '_menu_item_object_id', '61'),
(684, 352, '_menu_item_object', 'page'),
(685, 352, '_menu_item_target', ''),
(686, 352, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(687, 352, '_menu_item_xfn', ''),
(688, 352, '_menu_item_url', ''),
(689, 352, '_menu_item_orphaned', '1429789556');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2014-06-13 21:52:14', '2014-06-13 21:52:14', 'Bem-vindo ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a publicar!', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2014-06-13 21:52:14', '2014-06-13 21:52:14', '', 0, 'http://localhost:8888/Bb2/?p=1', 0, 'post', '', 1),
(2, 1, '2014-06-13 21:52:14', '2014-06-13 21:52:14', 'Esta é uma página de exemplo. É diferente de um post porque ela ficará em um local e será exibida na navegação do seu site (na maioria dos temas). A maioria das pessoas começa com uma página de introdução aos potenciais visitantes do site. Ela pode ser assim:\n\n<blockquote>Olá! Eu sou um bike courrier de dia, ator amador à noite e este é meu blog. Eu moro em São Paulo, tenho um cachorro chamado Tonico e eu gosto de caipirinhas. (E de ser pego pela chuva.)</blockquote>\n\nou assim:\n\n<blockquote>A XYZ foi fundada em 1971 e desde então vem proporcionando produtos de qualidade a seus clientes. Localizada em Valinhos, XYZ emprega mais de 2.000 pessoas e faz várias contribuições para a comunidade local.</blockquote>\nComo um novo usuário do WordPress, você deve ir até o <a href=\"http://localhost:8888/Bb2/wp-admin/\">seu painel</a> para excluir essa página e criar novas páginas com seu próprio conteúdo. Divirta-se!', 'Página de Exemplo', '', 'publish', 'open', 'open', '', 'pagina-exemplo', '', '', '2014-06-13 21:52:14', '2014-06-13 21:52:14', '', 0, 'http://localhost:8888/Bb2/?page_id=2', 0, 'page', '', 0),
(4, 1, '2014-06-13 21:53:46', '2014-06-13 21:53:46', '', 'Arthur', '', 'publish', 'open', 'open', '', 'joao-pedro', '', '', '2014-06-24 17:52:11', '2014-06-24 17:52:11', '', 0, 'http://localhost:8888/Bb2/?p=4', 0, 'post', '', 0),
(5, 1, '2014-06-13 21:53:34', '2014-06-13 21:53:34', '', 'bebe', '', 'inherit', 'open', 'open', '', 'bebe', '', '', '2014-06-13 21:53:34', '2014-06-13 21:53:34', '', 4, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2014-06-13 21:53:35', '2014-06-13 21:53:35', '', 'bebe2', '', 'inherit', 'open', 'open', '', 'bebe2', '', '', '2014-06-13 21:53:35', '2014-06-13 21:53:35', '', 4, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe2.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2014-06-13 21:53:36', '2014-06-13 21:53:36', '', 'bebe3', '', 'inherit', 'open', 'open', '', 'bebe3', '', '', '2014-06-13 21:53:36', '2014-06-13 21:53:36', '', 4, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe3.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2014-06-13 21:53:46', '2014-06-13 21:53:46', '', 'João Pedro', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2014-06-13 21:53:46', '2014-06-13 21:53:46', '', 4, 'http://localhost:8888/Bb2/?p=8', 0, 'revision', '', 0),
(9, 1, '2014-06-13 21:54:39', '2014-06-13 21:54:39', '', 'Henrique ', '', 'publish', 'open', 'open', '', 'henrique-7-meses', '', '', '2014-06-24 17:49:33', '2014-06-24 17:49:33', '', 0, 'http://localhost:8888/Bb2/?p=9', 0, 'post', '', 0),
(10, 1, '2014-06-13 21:54:33', '2014-06-13 21:54:33', '', 'bebe', '', 'inherit', 'open', 'open', '', 'bebe-2', '', '', '2014-06-13 21:54:33', '2014-06-13 21:54:33', '', 9, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe1.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2014-06-13 21:54:34', '2014-06-13 21:54:34', '', 'bebe2', '', 'inherit', 'open', 'open', '', 'bebe2-2', '', '', '2014-06-13 21:54:34', '2014-06-13 21:54:34', '', 9, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe21.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2014-06-13 21:54:35', '2014-06-13 21:54:35', '', 'bebe3', '', 'inherit', 'open', 'open', '', 'bebe3-2', '', '', '2014-06-13 21:54:35', '2014-06-13 21:54:35', '', 9, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe31.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2014-06-13 21:54:39', '2014-06-13 21:54:39', '', 'Henrique - 7 meses', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2014-06-13 21:54:39', '2014-06-13 21:54:39', '', 9, 'http://localhost:8888/Bb2/?p=13', 0, 'revision', '', 0),
(14, 1, '2014-06-13 21:55:11', '2014-06-13 21:55:11', '', 'Pietra', '', 'publish', 'open', 'open', '', 'carlos-eduardo', '', '', '2014-06-24 17:53:08', '2014-06-24 17:53:08', '', 0, 'http://localhost:8888/Bb2/?p=14', 0, 'post', '', 0),
(15, 1, '2014-06-13 21:55:04', '2014-06-13 21:55:04', '', 'bebe3', '', 'inherit', 'open', 'open', '', 'bebe3-3', '', '', '2014-06-13 21:55:04', '2014-06-13 21:55:04', '', 14, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe32.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2014-06-13 21:55:11', '2014-06-13 21:55:11', '', 'Carlos Eduardo', '', 'inherit', 'open', 'open', '', '14-revision-v1', '', '', '2014-06-13 21:55:11', '2014-06-13 21:55:11', '', 14, 'http://localhost:8888/Bb2/?p=16', 0, 'revision', '', 0),
(17, 1, '2014-06-13 21:58:09', '2014-06-13 21:58:09', '<strong><strong><p style=\"color: #808080;\">A Bb2 é uma nova marca que nasceu para acompanhar o seu bebê do primeiro dia até os seus primeiros passinhos… trazendo para ele o melhor conforto sem perder o estilo!</p>\r\n<p style=\"color: #808080;\">\r\nDe olho na tendência e nas necessidades das mamães, montamos nossas coleções com produtos de muito bom gosto. Trazemos uma identidade moderna, através de produtos básicos que são necessários no dia-a-dia, porém podem ser usados em qualquer ocasião. As peças chaves são os bodies e as calças.</p>\r\n<p style=\"color: #808080;\">Esperamos que gostem, pois foram desenvolvidos com muito amor, carinho e delicadeza, assim como seu bebê.\r\n\r\n</p>\r\n[gallery columns=\"4\" link=\"file\" ids=\"85,86,87,88\" orderby=\"rand\"]</strong></strong>', 'Quem Somos', '', 'publish', 'open', 'open', '', 'quem-somos', '', '', '2015-03-09 20:52:19', '2015-03-09 20:52:19', '', 0, 'http://localhost:8888/Bb2/?p=17', 0, 'post', '', 0),
(18, 1, '2014-06-13 21:58:09', '2014-06-13 21:58:09', '<p style=\"color: #808080;\">A Bb2 é uma nova marca que nasceu para acompanhar o seu bebê do primeiro dia até os seus primeiros passinhos… trazendo para ele o melhor conforto sem perder o estilo! De olho na tendência e nas necessidades das mamães, montamos a nossa primeira coleção de Outono/Inverno 2014 com produtos de muito bom gosto.</p>\r\n<p style=\"color: #808080;\">Esperamos que gostem, pois foram desenvolvidos com muito amor, carinho e delicadeza, assim como um bebê. Trazemos uma identidade moderna, através de produtos básicos que são necessários no dia-a-dia, porém podem ser usados em qualquer ocasião. As peças chaves são os bodies e as calças.</p>', 'Quem Somos', '', 'inherit', 'open', 'open', '', '17-revision-v1', '', '', '2014-06-13 21:58:09', '2014-06-13 21:58:09', '', 17, 'http://localhost:8888/Bb2/?p=18', 0, 'revision', '', 0),
(19, 1, '2014-06-13 22:04:45', '2014-06-13 22:04:45', '', 'bebe', '', 'inherit', 'open', 'open', '', 'bebe-3', '', '', '2014-06-13 22:04:45', '2014-06-13 22:04:45', '', 17, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe4.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2014-06-13 22:04:46', '2014-06-13 22:04:46', '', 'bebe2', '', 'inherit', 'open', 'open', '', 'bebe2-3', '', '', '2014-06-13 22:04:46', '2014-06-13 22:04:46', '', 17, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe22.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2014-06-13 22:04:47', '2014-06-13 22:04:47', '', 'bebe3', '', 'inherit', 'open', 'open', '', 'bebe3-4', '', '', '2014-06-13 22:04:47', '2014-06-13 22:04:47', '', 17, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe33.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2014-06-13 22:05:27', '2014-06-13 22:05:27', '<p style=\"color: #808080;\">A Bb2 é uma nova marca que nasceu para acompanhar o seu bebê do primeiro dia até os seus primeiros passinhos… trazendo para ele o melhor conforto sem perder o estilo! De olho na tendência e nas necessidades das mamães, montamos a nossa primeira coleção de Outono/Inverno 2014 com produtos de muito bom gosto.</p>\r\n<p style=\"color: #808080;\">Esperamos que gostem, pois foram desenvolvidos com muito amor, carinho e delicadeza, assim como um bebê. Trazemos uma identidade moderna, através de produtos básicos que são necessários no dia-a-dia, porém podem ser usados em qualquer ocasião. As peças chaves são os bodies e as calças.</p>\r\n\r\n[gallery ids=\"19,20,21\"]', 'Quem Somos', '', 'inherit', 'open', 'open', '', '17-revision-v1', '', '', '2014-06-13 22:05:27', '2014-06-13 22:05:27', '', 17, 'http://localhost:8888/Bb2/?p=22', 0, 'revision', '', 0),
(23, 1, '2014-06-13 22:08:12', '2014-06-13 22:08:12', '', 'bebe4', '', 'inherit', 'open', 'open', '', 'bebe4', '', '', '2014-06-13 22:08:12', '2014-06-13 22:08:12', '', 17, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe4.jpeg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2014-06-13 22:08:13', '2014-06-13 22:08:13', '', 'bebe5', '', 'inherit', 'open', 'open', '', 'bebe5', '', '', '2014-06-13 22:08:13', '2014-06-13 22:08:13', '', 17, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe5.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2014-06-13 22:08:14', '2014-06-13 22:08:14', '', 'bebe6', '', 'inherit', 'open', 'open', '', 'bebe6', '', '', '2014-06-13 22:08:14', '2014-06-13 22:08:14', '', 17, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe6.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2014-06-13 22:08:17', '2014-06-13 22:08:17', '', 'bebe7', '', 'inherit', 'open', 'open', '', 'bebe7', '', '', '2014-06-13 22:08:17', '2014-06-13 22:08:17', '', 17, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe7.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2014-06-13 22:08:18', '2014-06-13 22:08:18', '', 'bebe8', '', 'inherit', 'open', 'open', '', 'bebe8', '', '', '2014-06-13 22:08:18', '2014-06-13 22:08:18', '', 17, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe8.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2014-06-13 22:08:19', '2014-06-13 22:08:19', '', 'bebe', '', 'inherit', 'open', 'open', '', 'bebe-4', '', '', '2014-06-13 22:08:19', '2014-06-13 22:08:19', '', 17, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe9.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2014-06-13 22:08:20', '2014-06-13 22:08:20', '', 'bebe2', '', 'inherit', 'open', 'open', '', 'bebe2-4', '', '', '2014-06-13 22:08:20', '2014-06-13 22:08:20', '', 17, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe23.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2014-06-13 22:08:21', '2014-06-13 22:08:21', '', 'bebe3', '', 'inherit', 'open', 'open', '', 'bebe3-5', '', '', '2014-06-13 22:08:21', '2014-06-13 22:08:21', '', 17, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe34.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2014-06-13 22:08:51', '2014-06-13 22:08:51', '', 'bebe4', '', 'inherit', 'open', 'open', '', 'bebe4-2', '', '', '2014-06-13 22:08:51', '2014-06-13 22:08:51', '', 17, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe41.jpeg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2014-06-13 22:08:51', '2014-06-13 22:08:51', '', 'bebe5', '', 'inherit', 'open', 'open', '', 'bebe5-2', '', '', '2014-06-13 22:08:51', '2014-06-13 22:08:51', '', 17, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe51.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2014-06-13 22:08:53', '2014-06-13 22:08:53', '', 'bebe6', '', 'inherit', 'open', 'open', '', 'bebe6-2', '', '', '2014-06-13 22:08:53', '2014-06-13 22:08:53', '', 17, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe61.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2014-06-13 22:08:56', '2014-06-13 22:08:56', '', 'bebe7', '', 'inherit', 'open', 'open', '', 'bebe7-2', '', '', '2014-06-13 22:08:56', '2014-06-13 22:08:56', '', 17, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe71.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2014-06-13 22:08:57', '2014-06-13 22:08:57', '', 'bebe8', '', 'inherit', 'open', 'open', '', 'bebe8-2', '', '', '2014-06-13 22:08:57', '2014-06-13 22:08:57', '', 17, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe81.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2014-06-13 22:08:58', '2014-06-13 22:08:58', '', 'bebe', '', 'inherit', 'open', 'open', '', 'bebe-5', '', '', '2014-06-13 22:08:58', '2014-06-13 22:08:58', '', 17, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe10.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2014-06-13 22:08:59', '2014-06-13 22:08:59', '', 'bebe2', '', 'inherit', 'open', 'open', '', 'bebe2-5', '', '', '2014-06-13 22:08:59', '2014-06-13 22:08:59', '', 17, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe24.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2014-06-13 22:08:59', '2014-06-13 22:08:59', '', 'bebe3', '', 'inherit', 'open', 'open', '', 'bebe3-6', '', '', '2014-06-13 22:08:59', '2014-06-13 22:08:59', '', 17, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe35.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2014-06-13 22:09:19', '2014-06-13 22:09:19', '<p style=\"color: #808080;\">A Bb2 é uma nova marca que nasceu para acompanhar o seu bebê do primeiro dia até os seus primeiros passinhos… trazendo para ele o melhor conforto sem perder o estilo! De olho na tendência e nas necessidades das mamães, montamos a nossa primeira coleção de Outono/Inverno 2014 com produtos de muito bom gosto.</p>\r\n<p style=\"color: #808080;\">Esperamos que gostem, pois foram desenvolvidos com muito amor, carinho e delicadeza, assim como um bebê. Trazemos uma identidade moderna, através de produtos básicos que são necessários no dia-a-dia, porém podem ser usados em qualquer ocasião. As peças chaves são os bodies e as calças.</p>\r\n[gallery columns=\"5\" link=\"file\" ids=\"31,32,33,34,35,36,37,38\" orderby=\"rand\"]', 'Quem Somos', '', 'inherit', 'open', 'open', '', '17-revision-v1', '', '', '2014-06-13 22:09:19', '2014-06-13 22:09:19', '', 17, 'http://localhost:8888/Bb2/?p=39', 0, 'revision', '', 0),
(40, 1, '2014-06-13 22:10:08', '2014-06-13 22:10:08', '<p style=\"color: #808080;\">A Bb2 é uma nova marca que nasceu para acompanhar o seu bebê do primeiro dia até os seus primeiros passinhos… trazendo para ele o melhor conforto sem perder o estilo!\r\nDe olho na tendência e nas necessidades das mamães, montamos a nossa primeira coleção de Outono/Inverno 2014 com produtos de muito bom gosto.</p>\r\n<p style=\"color: #808080;\">Esperamos que gostem, pois foram desenvolvidos com muito amor, carinho e delicadeza, assim como um bebê.\r\nTrazemos uma identidade moderna, através de produtos básicos que são necessários no dia-a-dia, porém podem ser usados em qualquer ocasião. As peças chaves são os bodies e as calças.</p>\r\n[gallery columns=\"5\" link=\"file\" ids=\"31,32,33,34,35,36,37,38\" orderby=\"rand\"]', 'Quem Somos', '', 'inherit', 'open', 'open', '', '17-revision-v1', '', '', '2014-06-13 22:10:08', '2014-06-13 22:10:08', '', 17, 'http://localhost:8888/Bb2/?p=40', 0, 'revision', '', 0),
(41, 1, '2014-06-13 22:22:19', '2014-06-13 22:22:19', '[gallery columns=\"4\" ids=\"81,80,79,78\"]', 'Coleção Outono Inverno 2014', '', 'publish', 'open', 'open', '', 'colecao-outono-inverno-2014', '', '', '2015-04-15 21:59:46', '2015-04-15 21:59:46', '', 0, 'http://localhost:8888/Bb2/?p=41', 0, 'post', '', 0),
(42, 1, '2014-06-13 22:21:06', '2014-06-13 22:21:06', '', '1', '', 'inherit', 'open', 'open', '', '1', '', '', '2014-06-13 22:21:06', '2014-06-13 22:21:06', '', 41, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2014-06-13 22:21:07', '2014-06-13 22:21:07', '', '2', '', 'inherit', 'open', 'open', '', '2', '', '', '2014-06-13 22:21:07', '2014-06-13 22:21:07', '', 41, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/2.jpeg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2014-06-13 22:21:08', '2014-06-13 22:21:08', '', '4', '', 'inherit', 'open', 'open', '', '4', '', '', '2014-06-13 22:21:08', '2014-06-13 22:21:08', '', 41, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2014-06-13 22:21:11', '2014-06-13 22:21:11', '', '7', '', 'inherit', 'open', 'open', '', '7', '', '', '2014-06-13 22:21:11', '2014-06-13 22:21:11', '', 41, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/7.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2014-06-13 22:21:14', '2014-06-13 22:21:14', '', 'bebe4', '', 'inherit', 'open', 'open', '', 'bebe4-3', '', '', '2014-06-13 22:21:14', '2014-06-13 22:21:14', '', 41, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe42.jpeg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2014-06-13 22:21:14', '2014-06-13 22:21:14', '', 'bebe5', '', 'inherit', 'open', 'open', '', 'bebe5-3', '', '', '2014-06-13 22:21:14', '2014-06-13 22:21:14', '', 41, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe52.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2014-06-13 22:21:15', '2014-06-13 22:21:15', '', 'bebe6', '', 'inherit', 'open', 'open', '', 'bebe6-3', '', '', '2014-06-13 22:21:15', '2014-06-13 22:21:15', '', 41, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe62.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2014-06-13 22:21:19', '2014-06-13 22:21:19', '', 'bebe7', '', 'inherit', 'open', 'open', '', 'bebe7-3', '', '', '2014-06-13 22:21:19', '2014-06-13 22:21:19', '', 41, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe72.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2014-06-13 22:21:20', '2014-06-13 22:21:20', '', 'bebe8', '', 'inherit', 'open', 'open', '', 'bebe8-3', '', '', '2014-06-13 22:21:20', '2014-06-13 22:21:20', '', 41, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe82.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2014-06-13 22:21:20', '2014-06-13 22:21:20', '', 'bebe', '', 'inherit', 'open', 'open', '', 'bebe-6', '', '', '2014-06-13 22:21:20', '2014-06-13 22:21:20', '', 41, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe11.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2014-06-13 22:21:21', '2014-06-13 22:21:21', '', 'bebe2', '', 'inherit', 'open', 'open', '', 'bebe2-6', '', '', '2014-06-13 22:21:21', '2014-06-13 22:21:21', '', 41, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe25.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2014-06-13 22:21:22', '2014-06-13 22:21:22', '', 'bebe3', '', 'inherit', 'open', 'open', '', 'bebe3-7', '', '', '2014-06-13 22:21:22', '2014-06-13 22:21:22', '', 41, 'http://localhost:8888/Bb2/wp-content/uploads/2014/06/bebe36.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2014-06-13 22:22:19', '2014-06-13 22:22:19', '[gallery columns=\"4\" ids=\"57,56,55,54,53,52,51,50,49,48,47,46,45,44,43,42\"]', 'Coleção Outono Inverno 2014', '', 'inherit', 'open', 'open', '', '41-revision-v1', '', '', '2014-06-13 22:22:19', '2014-06-13 22:22:19', '', 41, 'http://localhost:8888/Bb2/?p=58', 0, 'revision', '', 0),
(59, 1, '2014-06-13 22:32:32', '2014-06-13 22:32:32', '[gallery link=\"file\" size=\"medium\" ids=\"316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346\"]', 'Coleção Outono/Inverno 2015', '', 'publish', 'open', 'open', '', 'colecao-outonoinverno-2015', '', '', '2015-04-15 22:22:27', '2015-04-15 22:22:27', '', 0, 'http://localhost:8888/Bb2/?page_id=59', 0, 'page', '', 0),
(60, 1, '2014-06-13 22:32:32', '2014-06-13 22:32:32', '[gallery columns=\"4\" ids=\"57,56,55,54,53,52,51,50,49,48,47,46,45,44,43,42\"]', 'Coleção Outono/Inverno 2014', '', 'inherit', 'open', 'open', '', '59-revision-v1', '', '', '2014-06-13 22:32:32', '2014-06-13 22:32:32', '', 59, 'http://localhost:8888/Bb2/?p=60', 0, 'revision', '', 0),
(61, 1, '2014-06-13 22:43:59', '2014-06-13 22:43:59', '<a href=\"http://www.bb2.com.br/wp-content/uploads/2014/06/Gianluigi.jpg\"><img src=\"http://www.bb2.com.br/wp-content/uploads/2014/06/Gianluigi.jpg\" alt=\"Gianluigi\" width=\"1600\" height=\"1200\" class=\"alignnone size-full wp-image-261\" /></a><a href=\"http://www.bb2.com.br/wp-content/uploads/2014/06/pequena-da-Cristiane.jpg\"><img src=\"http://www.bb2.com.br/wp-content/uploads/2014/06/pequena-da-Cristiane.jpg\" alt=\"a pequena da Cris\" width=\"826\" height=\"1200\" class=\"alignnone size-full wp-image-262\" /></a>', 'Seu Filho na Bb2', '', 'publish', 'open', 'open', '', 'seu-filho-na-bb2', '', '', '2015-03-09 21:04:05', '2015-03-09 21:04:05', '', 0, 'http://localhost:8888/Bb2/?page_id=61', 0, 'page', '', 0),
(62, 1, '2014-06-13 22:43:59', '2014-06-13 22:43:59', '', 'Seu Filho na Bb2', '', 'inherit', 'open', 'open', '', '61-revision-v1', '', '', '2014-06-13 22:43:59', '2014-06-13 22:43:59', '', 61, 'http://localhost:8888/Bb2/?p=62', 0, 'revision', '', 0),
(63, 1, '2014-06-13 23:01:31', '2014-06-13 23:01:31', '<span style=\"color: #555555;\">[xyz-cfm-form id=1]</span>', 'Contato', '', 'publish', 'open', 'open', '', 'contato', '', '', '2014-06-13 23:01:31', '2014-06-13 23:01:31', '', 0, 'http://localhost:8888/Bb2/?p=63', 0, 'post', '', 0),
(64, 1, '2014-06-13 23:01:31', '2014-06-13 23:01:31', '<span style=\"color: #555555;\">[xyz-cfm-form id=1]</span>', 'Contato', '', 'inherit', 'open', 'open', '', '63-revision-v1', '', '', '2014-06-13 23:01:31', '2014-06-13 23:01:31', '', 63, 'http://localhost:8888/Bb2/?p=64', 0, 'revision', '', 0),
(65, 1, '2014-06-14 00:07:59', '0000-00-00 00:00:00', '', 'Envia sua foto', '', 'draft', 'open', 'open', '', '', '', '', '2014-06-14 00:07:59', '2014-06-14 00:07:59', '', 0, 'http://localhost:8888/Bb2/?p=65', 0, 'post', '', 0),
(66, 1, '2014-06-14 00:08:31', '2014-06-14 00:08:31', '[xyz-cfm-form id=2]', 'Seu Bebê', '', 'publish', 'open', 'open', '', 'seu-bebe', '', '', '2014-06-14 00:08:31', '2014-06-14 00:08:31', '', 0, 'http://localhost:8888/Bb2/?p=66', 0, 'post', '', 0),
(67, 1, '2014-06-14 00:08:31', '2014-06-14 00:08:31', '[xyz-cfm-form id=2]', 'Seu Bebê', '', 'inherit', 'open', 'open', '', '66-revision-v1', '', '', '2014-06-14 00:08:31', '2014-06-14 00:08:31', '', 66, 'http://localhost:8888/Bb2/66-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2014-06-23 14:38:21', '2014-06-23 14:38:21', '', '', '', 'inherit', 'open', 'open', '', 'dsc_0006', '', '', '2014-06-23 14:38:21', '2014-06-23 14:38:21', '', 41, 'http://feliperosa.art.br/bb2/wp-content/uploads/2014/06/DSC_0006.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2014-06-23 14:53:14', '2014-06-23 14:53:14', '[gallery columns=\"4\" ids=\"81,80,79,78,77,72,73,74,75,76,71,69\"]', 'Coleção Outono Inverno 2014', '', 'inherit', 'open', 'open', '', '41-autosave-v1', '', '', '2014-06-23 14:53:14', '2014-06-23 14:53:14', '', 41, 'http://feliperosa.art.br/bb2/41-autosave-v1/', 0, 'revision', '', 0),
(71, 1, '2014-06-23 14:38:32', '2014-06-23 14:38:32', '', '', '', 'inherit', 'open', 'open', '', 'dsc_0044', '', '', '2014-06-23 14:38:32', '2014-06-23 14:38:32', '', 41, 'http://feliperosa.art.br/bb2/wp-content/uploads/2014/06/DSC_0044.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2014-06-23 14:38:47', '2014-06-23 14:38:47', '', '', '', 'inherit', 'open', 'open', '', 'dsc_0063', '', '', '2014-06-23 14:38:47', '2014-06-23 14:38:47', '', 41, 'http://feliperosa.art.br/bb2/wp-content/uploads/2014/06/DSC_0063.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2014-06-23 14:39:58', '2014-06-23 14:39:58', '', 'DSC_0067', '', 'inherit', 'open', 'open', '', 'dsc_0067', '', '', '2014-06-23 14:39:58', '2014-06-23 14:39:58', '', 41, 'http://feliperosa.art.br/bb2/wp-content/uploads/2014/06/DSC_0067.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2014-06-23 14:41:03', '2014-06-23 14:41:03', '', '', '', 'inherit', 'open', 'open', '', 'dsc_0105', '', '', '2014-06-23 14:41:03', '2014-06-23 14:41:03', '', 41, 'http://feliperosa.art.br/bb2/wp-content/uploads/2014/06/DSC_0105.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2014-06-23 14:42:13', '2014-06-23 14:42:13', '', '', '', 'inherit', 'open', 'open', '', 'dsc_0113', '', '', '2014-06-23 14:42:13', '2014-06-23 14:42:13', '', 41, 'http://feliperosa.art.br/bb2/wp-content/uploads/2014/06/DSC_0113.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2014-06-23 14:42:30', '2014-06-23 14:42:30', '', '', '', 'inherit', 'open', 'open', '', 'dsc_0979', '', '', '2014-06-23 14:42:30', '2014-06-23 14:42:30', '', 41, 'http://feliperosa.art.br/bb2/wp-content/uploads/2014/06/DSC_0979.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2014-06-23 14:43:48', '2014-06-23 14:43:48', '', '', '', 'inherit', 'open', 'open', '', 'dsc_1004', '', '', '2014-06-23 14:43:48', '2014-06-23 14:43:48', '', 41, 'http://feliperosa.art.br/bb2/wp-content/uploads/2014/06/DSC_1004.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2014-06-23 14:43:54', '2014-06-23 14:43:54', '', '', '', 'inherit', 'open', 'open', '', 'pag-1', '', '', '2014-06-23 14:43:54', '2014-06-23 14:43:54', '', 41, 'http://feliperosa.art.br/bb2/wp-content/uploads/2014/06/pag-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2014-06-23 14:43:58', '2014-06-23 14:43:58', '', '', '', 'inherit', 'open', 'open', '', 'pag-2', '', '', '2014-06-23 14:43:58', '2014-06-23 14:43:58', '', 41, 'http://feliperosa.art.br/bb2/wp-content/uploads/2014/06/pag-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2014-06-23 14:44:01', '2014-06-23 14:44:01', '', '', '', 'inherit', 'open', 'open', '', 'pag-3', '', '', '2014-06-23 14:44:01', '2014-06-23 14:44:01', '', 41, 'http://feliperosa.art.br/bb2/wp-content/uploads/2014/06/pag-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2014-06-23 14:44:05', '2014-06-23 14:44:05', '', '', '', 'inherit', 'open', 'open', '', 'pag-4', '', '', '2014-06-23 14:44:05', '2014-06-23 14:44:05', '', 41, 'http://feliperosa.art.br/bb2/wp-content/uploads/2014/06/pag-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2014-06-23 14:53:16', '2014-06-23 14:53:16', '[gallery columns=\"4\" ids=\"81,80,79,78,77,72,73,74,75,76,71,69\"]', 'Coleção Outono Inverno 2014', '', 'inherit', 'open', 'open', '', '41-revision-v1', '', '', '2014-06-23 14:53:16', '2014-06-23 14:53:16', '', 41, 'http://feliperosa.art.br/bb2/41-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2014-06-23 14:58:04', '2014-06-23 14:58:04', '<a href=\"http://feliperosa.art.br/bb2/wp-content/uploads/2014/06/DSC_1004.jpg\"><img class=\"alignnone size-medium wp-image-77\" src=\"http://feliperosa.art.br/bb2/wp-content/uploads/2014/06/DSC_1004-200x300.jpg\" alt=\"DSC_1004\" width=\"200\" height=\"300\" /></a>', 'Catarina', '', 'publish', 'open', 'open', '', 'catarina', '', '', '2014-06-23 14:59:36', '2014-06-23 14:59:36', '', 0, 'http://feliperosa.art.br/bb2/?p=83', 0, 'post', '', 0),
(84, 1, '2014-06-23 14:58:04', '2014-06-23 14:58:04', '<a href=\"http://feliperosa.art.br/bb2/wp-content/uploads/2014/06/DSC_1004.jpg\"><img class=\"alignnone size-medium wp-image-77\" src=\"http://feliperosa.art.br/bb2/wp-content/uploads/2014/06/DSC_1004-200x300.jpg\" alt=\"DSC_1004\" width=\"200\" height=\"300\" /></a>', 'Catarina', '', 'inherit', 'open', 'open', '', '83-revision-v1', '', '', '2014-06-23 14:58:04', '2014-06-23 14:58:04', '', 83, 'http://feliperosa.art.br/bb2/83-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2014-06-24 17:20:58', '2014-06-24 17:20:58', '', 'fabrica1', '', 'inherit', 'open', 'open', '', 'fabrica1', '', '', '2014-06-24 17:20:58', '2014-06-24 17:20:58', '', 17, 'http://feliperosa.art.br/bb2/wp-content/uploads/2014/06/fabrica1.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2014-06-24 17:21:00', '2014-06-24 17:21:00', '', 'fabrica2', '', 'inherit', 'open', 'open', '', 'fabrica2', '', '', '2014-06-24 17:21:00', '2014-06-24 17:21:00', '', 17, 'http://feliperosa.art.br/bb2/wp-content/uploads/2014/06/fabrica2.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2014-06-24 17:21:02', '2014-06-24 17:21:02', '', 'fabrica3', '', 'inherit', 'open', 'open', '', 'fabrica3', '', '', '2014-06-24 17:21:02', '2014-06-24 17:21:02', '', 17, 'http://feliperosa.art.br/bb2/wp-content/uploads/2014/06/fabrica3.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2014-06-24 17:21:04', '2014-06-24 17:21:04', '', 'fabrica4', '', 'inherit', 'open', 'open', '', 'fabrica4', '', '', '2014-06-24 17:21:04', '2014-06-24 17:21:04', '', 17, 'http://feliperosa.art.br/bb2/wp-content/uploads/2014/06/fabrica4.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2014-11-25 10:18:38', '2014-11-25 10:18:38', '<p style=\"color: #808080;\">A Bb2 é uma nova marca que nasceu para acompanhar o seu bebê do primeiro dia até os seus primeiros passinhos… trazendo para ele o melhor conforto sem perder o estilo!\nDe olho na tendência e nas necessidades das mamães, montamos nossas coleções com produtos de muito bom gosto.</p>\n<p style=\"color: #808080;\">Esperamos que gostem, pois foram desenvolvidos com muito amor, carinho e delicadeza, assim como seu bebê.\nTrazemos uma identidade moderna, através de produtos básicos que são necessários no dia-a-dia, porém podem ser usados em qualquer ocasião. As peças chaves são os bodies e as calças.</p>\n[gallery columns=\"4\" link=\"file\" ids=\"85,86,87,88\" orderby=\"rand\"]', 'Quem Somos', '', 'inherit', 'open', 'open', '', '17-autosave-v1', '', '', '2014-11-25 10:18:38', '2014-11-25 10:18:38', '', 17, 'http://feliperosa.art.br/bb2/17-autosave-v1/', 0, 'revision', '', 0),
(90, 1, '2014-06-24 17:22:03', '2014-06-24 17:22:03', '<p style=\"color: #808080;\">A Bb2 é uma nova marca que nasceu para acompanhar o seu bebê do primeiro dia até os seus primeiros passinhos… trazendo para ele o melhor conforto sem perder o estilo!\r\nDe olho na tendência e nas necessidades das mamães, montamos a nossa primeira coleção de Outono/Inverno 2014 com produtos de muito bom gosto.</p>\r\n<p style=\"color: #808080;\">Esperamos que gostem, pois foram desenvolvidos com muito amor, carinho e delicadeza, assim como um bebê.\r\nTrazemos uma identidade moderna, através de produtos básicos que são necessários no dia-a-dia, porém podem ser usados em qualquer ocasião. As peças chaves são os bodies e as calças.</p>\r\n[gallery columns=\"4\" link=\"file\" ids=\"85,86,87,88\" orderby=\"rand\"]', 'Quem Somos', '', 'inherit', 'open', 'open', '', '17-revision-v1', '', '', '2014-06-24 17:22:03', '2014-06-24 17:22:03', '', 17, 'http://feliperosa.art.br/bb2/17-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2014-06-24 17:25:49', '2014-06-24 17:25:49', '', 'Coleção Outono/Inverno 2014', '', 'inherit', 'open', 'open', '', '59-revision-v1', '', '', '2014-06-24 17:25:49', '2014-06-24 17:25:49', '', 59, 'http://feliperosa.art.br/bb2/59-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2014-06-24 17:27:34', '2014-06-24 17:27:34', '[gallery ids=\"81,80,79,78,77,69,71,72,73,74,75,76\"]', 'Coleção Outono/Inverno 2014', '', 'inherit', 'open', 'open', '', '59-revision-v1', '', '', '2014-06-24 17:27:34', '2014-06-24 17:27:34', '', 59, 'http://feliperosa.art.br/bb2/59-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2014-06-24 17:48:50', '2014-06-24 17:48:50', '', 'Arthur', '', 'inherit', 'open', 'open', '', 'arthur', '', '', '2014-06-24 17:48:50', '2014-06-24 17:48:50', '', 9, 'http://feliperosa.art.br/bb2/wp-content/uploads/2014/06/Arthur.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2014-06-24 17:48:53', '2014-06-24 17:48:53', '', 'Henrique', '', 'inherit', 'open', 'open', '', 'henrique', '', '', '2014-06-24 17:48:53', '2014-06-24 17:48:53', '', 9, 'http://feliperosa.art.br/bb2/wp-content/uploads/2014/06/Henrique.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2014-06-24 17:48:56', '2014-06-24 17:48:56', '', 'Miguel com a Titia Vivi', '', 'inherit', 'open', 'open', '', 'miguel', '', '', '2014-06-24 17:48:56', '2014-06-24 17:48:56', '', 9, 'http://feliperosa.art.br/bb2/wp-content/uploads/2014/06/miguel.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2014-06-24 17:48:59', '2014-06-24 17:48:59', '', 'Pietra', '', 'inherit', 'open', 'open', '', 'pietra2', '', '', '2014-06-24 17:48:59', '2014-06-24 17:48:59', '', 9, 'http://feliperosa.art.br/bb2/wp-content/uploads/2014/06/pietra2.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2014-06-24 17:49:33', '2014-06-24 17:49:33', '', 'Henrique ', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2014-06-24 17:49:33', '2014-06-24 17:49:33', '', 9, 'http://feliperosa.art.br/bb2/9-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2014-06-24 17:50:32', '2014-06-24 17:50:32', '', 'Pietra', '', 'inherit', 'open', 'open', '', '14-revision-v1', '', '', '2014-06-24 17:50:32', '2014-06-24 17:50:32', '', 14, 'http://feliperosa.art.br/bb2/14-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2014-06-24 17:51:02', '2014-06-24 17:51:02', '', 'Arthur', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2014-06-24 17:51:02', '2014-06-24 17:51:02', '', 4, 'http://feliperosa.art.br/bb2/4-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2014-06-24 17:52:56', '2014-06-24 17:52:56', '', 'Pietra', '', 'inherit', 'open', 'open', '', 'pietra', '', '', '2014-06-24 17:52:56', '2014-06-24 17:52:56', '', 14, 'http://feliperosa.art.br/bb2/wp-content/uploads/2014/06/pietra.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2014-06-25 18:56:41', '2014-06-25 18:56:41', 'Nossa equipe agradece o seu contato, responderemos o mais brevemente possivel!\r\n\r\nObrigado!', 'Agradecemos seu contato!!', '', 'publish', 'open', 'open', '', 'agradecemos-seu-contato', '', '', '2014-06-25 18:56:41', '2014-06-25 18:56:41', '', 0, 'http://www.bb2.com.br/?p=101', 0, 'post', '', 0),
(102, 1, '2014-06-25 18:56:41', '2014-06-25 18:56:41', 'Nossa equipe agradece o seu contato, responderemos o mais brevemente possivel!\r\n\r\nObrigado!', 'Agradecemos seu contato!!', '', 'inherit', 'open', 'open', '', '101-revision-v1', '', '', '2014-06-25 18:56:41', '2014-06-25 18:56:41', '', 101, 'http://www.bb2.com.br/101-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2014-07-02 13:04:23', '2014-07-02 13:04:23', '[caption id=\"attachment_107\" align=\"alignnone\" width=\"549\"]<a href=\"http://www.bb2.com.br/wp-content/uploads/2014/07/10351665_871507602863949_5262883375935561930_n.jpg\"><img class=\"size-full wp-image-107\" src=\"http://www.bb2.com.br/wp-content/uploads/2014/07/10351665_871507602863949_5262883375935561930_n.jpg\" alt=\"KIt Brasil - Ref. 14.048\" width=\"549\" height=\"714\" /></a> KIt Brasil - Ref. 14.048[/caption]', 'Giovana', '', 'publish', 'open', 'open', '', 'giovana', '', '', '2014-07-02 13:05:19', '2014-07-02 13:05:19', '', 0, 'http://www.bb2.com.br/?p=106', 0, 'post', '', 0),
(107, 1, '2014-07-02 13:03:13', '2014-07-02 13:03:13', '', 'Giovana', 'KIt Brasil - Ref. 14.048', 'inherit', 'open', 'open', '', '10351665_871507602863949_5262883375935561930_n', '', '', '2014-07-02 13:03:13', '2014-07-02 13:03:13', '', 106, 'http://www.bb2.com.br/wp-content/uploads/2014/07/10351665_871507602863949_5262883375935561930_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2014-07-02 13:03:48', '2014-07-02 13:03:48', '', 'Giovana', '', 'inherit', 'open', 'open', '', '106-revision-v1', '', '', '2014-07-02 13:03:48', '2014-07-02 13:03:48', '', 106, 'http://www.bb2.com.br/106-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2014-07-02 13:04:12', '2014-07-02 13:04:12', '[caption id=\"attachment_107\" align=\"alignnone\" width=\"549\"]<a href=\"http://www.bb2.com.br/wp-content/uploads/2014/07/10351665_871507602863949_5262883375935561930_n.jpg\"><img class=\"size-full wp-image-107\" src=\"http://www.bb2.com.br/wp-content/uploads/2014/07/10351665_871507602863949_5262883375935561930_n.jpg\" alt=\"KIt Brasil - Ref. 14.048\" width=\"549\" height=\"714\" /></a> KIt Brasil - Ref. 14.048[/caption]', 'Giovana', '', 'inherit', 'open', 'open', '', '106-revision-v1', '', '', '2014-07-02 13:04:12', '2014-07-02 13:04:12', '', 106, 'http://www.bb2.com.br/106-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2014-07-02 13:08:45', '2014-07-02 13:08:45', '<a href=\"http://www.bb2.com.br/wp-content/uploads/2014/07/Mamae-Regina-com-o-Enzo.jpg\"><img class=\"alignnone size-full wp-image-111\" src=\"http://www.bb2.com.br/wp-content/uploads/2014/07/Mamae-Regina-com-o-Enzo.jpg\" alt=\"Mamae Regina com o Enzo\" width=\"628\" height=\"812\" /></a>', 'Mamãe Regina com o Enzo', '', 'publish', 'open', 'open', '', 'mamae-regina-com-o-enzo', '', '', '2014-07-02 13:08:58', '2014-07-02 13:08:58', '', 0, 'http://www.bb2.com.br/?p=110', 0, 'post', '', 0),
(111, 1, '2014-07-02 13:07:28', '2014-07-02 13:07:28', '', 'Mamae Regina com o Enzo', 'Kit Brasil - Ref. 14.048', 'inherit', 'open', 'open', '', 'mamae-regina-com-o-enzo', '', '', '2014-07-02 13:07:28', '2014-07-02 13:07:28', '', 110, 'http://www.bb2.com.br/wp-content/uploads/2014/07/Mamae-Regina-com-o-Enzo.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2014-07-02 13:08:45', '2014-07-02 13:08:45', '<a href=\"http://www.bb2.com.br/wp-content/uploads/2014/07/Mamae-Regina-com-o-Enzo.jpg\"><img class=\"alignnone size-full wp-image-111\" src=\"http://www.bb2.com.br/wp-content/uploads/2014/07/Mamae-Regina-com-o-Enzo.jpg\" alt=\"Mamae Regina com o Enzo\" width=\"628\" height=\"812\" /></a>', 'Mamãe Regina com o Enzo', '', 'inherit', 'open', 'open', '', '110-revision-v1', '', '', '2014-07-02 13:08:45', '2014-07-02 13:08:45', '', 110, 'http://www.bb2.com.br/110-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2014-07-02 22:45:07', '2014-07-02 22:45:07', '<span style=\"color: #555555;\">[xyz-cfm-form id=3]</span>', 'inscreva-se', '', 'publish', 'open', 'open', '', 'inscreva-se', '', '', '2014-07-02 22:45:07', '2014-07-02 22:45:07', '', 0, 'http://www.bb2.com.br/?p=113', 0, 'post', '', 0),
(114, 1, '2014-07-02 22:45:07', '2014-07-02 22:45:07', '<span style=\"color: #555555;\">[xyz-cfm-form id=3]</span>', 'inscreva-se', '', 'inherit', 'open', 'open', '', '113-revision-v1', '', '', '2014-07-02 22:45:07', '2014-07-02 22:45:07', '', 113, 'http://www.bb2.com.br/113-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2014-07-14 20:00:30', '2014-07-14 20:00:30', '<a href=\"http://www.bb2.com.br/wp-content/uploads/2014/07/Júlia-1-ano.jpg\"><img class=\"size-full wp-image-118 alignleft\" src=\"http://www.bb2.com.br/wp-content/uploads/2014/07/Júlia-1-ano.jpg\" alt=\"Júlia 1 ano\" width=\"540\" height=\"960\" /></a>', 'Júlia - 1 aninho', '', 'publish', 'open', 'open', '', 'julia-1-aninho', '', '', '2014-07-14 20:00:30', '2014-07-14 20:00:30', '', 0, 'http://www.bb2.com.br/?p=117', 0, 'post', '', 0),
(118, 1, '2014-07-14 19:59:14', '2014-07-14 19:59:14', 'Ref. 14.020', 'Júlia 1 ano', '', 'inherit', 'open', 'open', '', 'julia-1-ano', '', '', '2014-07-14 19:59:14', '2014-07-14 19:59:14', '', 117, 'http://www.bb2.com.br/wp-content/uploads/2014/07/Júlia-1-ano.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2014-07-14 20:00:30', '2014-07-14 20:00:30', '<a href=\"http://www.bb2.com.br/wp-content/uploads/2014/07/Júlia-1-ano.jpg\"><img class=\"size-full wp-image-118 alignleft\" src=\"http://www.bb2.com.br/wp-content/uploads/2014/07/Júlia-1-ano.jpg\" alt=\"Júlia 1 ano\" width=\"540\" height=\"960\" /></a>', 'Júlia - 1 aninho', '', 'inherit', 'open', 'open', '', '117-revision-v1', '', '', '2014-07-14 20:00:30', '2014-07-14 20:00:30', '', 117, 'http://www.bb2.com.br/117-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2014-10-31 13:07:27', '2014-10-31 13:07:27', '[gallery columns=\"4\" link=\"file\" ids=\"256,254,255,253,252,246,245,244,243,242,241,240,239,238,250,247,249,203,248,202,257,251\"][gallery columns=\"4\" link=\"file\" ids=\"231,225,215,212,210,203,195,193,185,182,170,168,169,158,151,144,146,126,127,128,125,157\" orderby=\"rand\"]\r\n\r\n[gallery columns=\"4\" link=\"file\" ids=\"201,197,185\"]', 'Coleção Primavera | Verão - 2014', '', 'publish', 'open', 'open', '', 'colecao-primavera-verao', '', '', '2015-03-09 20:45:37', '2015-03-09 20:45:37', '', 0, 'http://www.bb2.com.br/?p=121', 0, 'post', '', 0),
(123, 1, '2014-10-31 12:47:14', '2014-10-31 12:47:14', '', 'IMG_0002', '', 'inherit', 'open', 'open', '', 'img_0002', '', '', '2014-10-31 12:47:14', '2014-10-31 12:47:14', '', 121, 'http://www.bb2.com.br/wp-content/uploads/2014/10/IMG_0002.jpg', 0, 'attachment', 'image/jpeg', 0),
(216, 1, '2014-10-31 13:07:27', '2014-10-31 13:07:27', '[gallery link=\"file\" ids=\"198,201,203,215,214,212,209,206,197,194,189,187,185,175,182,170,168,165,163,159,155,152,149,146,144,141,139,128,127,123,124\" orderby=\"rand\"]', 'Coleção Primavera | Verão', '', 'inherit', 'open', 'open', '', '121-revision-v1', '', '', '2014-10-31 13:07:27', '2014-10-31 13:07:27', '', 121, 'http://www.bb2.com.br/121-revision-v1/', 0, 'revision', '', 0),
(217, 1, '2015-01-23 18:50:05', '2015-01-23 18:50:05', '[gallery columns=\"4\" link=\"file\" ids=\"231,225,215,212,210,203,195,193,185,182,170,168,169,158,151,144,146,126,127,128,125,157\" orderby=\"rand\"]', 'Coleção Primavera | Verão - 2014', '', 'inherit', 'open', 'open', '', '121-autosave-v1', '', '', '2015-01-23 18:50:05', '2015-01-23 18:50:05', '', 121, 'http://www.bb2.com.br/121-autosave-v1/', 0, 'revision', '', 0),
(218, 1, '2014-10-31 13:10:47', '2014-10-31 13:10:47', '[gallery link=\"file\" ids=\"198,201,203,215,214,212,209,206,197,194,189,187,185,175,182,170,168,165,163,159,155,152,149,146,144,141,139,128,127,123,124\" ]', 'Coleção Primavera | Verão - 2014', '', 'inherit', 'open', 'open', '', '121-revision-v1', '', '', '2014-10-31 13:10:47', '2014-10-31 13:10:47', '', 121, 'http://www.bb2.com.br/121-revision-v1/', 0, 'revision', '', 0),
(219, 1, '2014-10-31 13:16:18', '2014-10-31 13:16:18', '[gallery columns=\"4\" link=\"file\" ids=\"215,214,203,136,212,201,195,175,192,186,144,128,165,158,154,149,151,139,123\"]', 'Coleção Primavera | Verão - 2014', '', 'inherit', 'open', 'open', '', '121-revision-v1', '', '', '2014-10-31 13:16:18', '2014-10-31 13:16:18', '', 121, 'http://www.bb2.com.br/121-revision-v1/', 0, 'revision', '', 0),
(221, 1, '2014-11-25 10:19:37', '2014-11-25 10:19:37', '<p style=\"color: #808080;\">A Bb2 é uma nova marca que nasceu para acompanhar o seu bebê do primeiro dia até os seus primeiros passinhos… trazendo para ele o melhor conforto sem perder o estilo!</p>\r\n<p style=\"color: #808080;\">\r\nDe olho na tendência e nas necessidades das mamães, montamos nossas coleções com produtos de muito bom gosto. Trazemos uma identidade moderna, através de produtos básicos que são necessários no dia-a-dia, porém podem ser usados em qualquer ocasião. As peças chaves são os bodies e as calças.</p>\r\n<p style=\"color: #808080;\">Esperamos que gostem, pois foram desenvolvidos com muito amor, carinho e delicadeza, assim como seu bebê.\r\n\r\n</p>\r\n[gallery columns=\"4\" link=\"file\" ids=\"85,86,87,88\" orderby=\"rand\"]', 'Quem Somos', '', 'inherit', 'open', 'open', '', '17-revision-v1', '', '', '2014-11-25 10:19:37', '2014-11-25 10:19:37', '', 17, 'http://www.bb2.com.br/17-revision-v1/', 0, 'revision', '', 0),
(232, 1, '2015-01-23 18:50:17', '2015-01-23 18:50:17', '[gallery columns=\"4\" link=\"file\" ids=\"231,225,215,212,210,203,195,193,185,182,170,168,169,158,151,144,146,126,127,128,125,157\" orderby=\"rand\"]', 'Coleção Primavera | Verão - 2014', '', 'inherit', 'open', 'open', '', '121-revision-v1', '', '', '2015-01-23 18:50:17', '2015-01-23 18:50:17', '', 121, 'http://www.bb2.com.br/121-revision-v1/', 0, 'revision', '', 0),
(233, 1, '2015-01-23 18:57:01', '2015-01-23 18:57:01', '[gallery columns=\"4\" link=\"file\" ids=\"231,225,215,212,210,203,195,193,185,182,170,168,169,158,151,144,146,126,127,128,125,157\" orderby=\"rand\"]\r\n\r\n[gallery columns=\"4\" link=\"file\" ids=\"201,197,185\"]', 'Coleção Primavera | Verão - 2014', '', 'inherit', 'open', 'open', '', '121-revision-v1', '', '', '2015-01-23 18:57:01', '2015-01-23 18:57:01', '', 121, 'http://www.bb2.com.br/121-revision-v1/', 0, 'revision', '', 0),
(234, 1, '2015-01-23 18:57:42', '2015-01-23 18:57:42', '[gallery columns=\"4\" link=\"file\" ids=\"231,225,215,212,210,203,195,193,185,182,170,168,169,158,151,144,146,126,127,128,125,157\" orderby=\"rand\"]\r\nteste\r\n[gallery columns=\"4\" link=\"file\" ids=\"201,197,185\"]', 'Coleção Primavera | Verão - 2014', '', 'inherit', 'open', 'open', '', '121-revision-v1', '', '', '2015-01-23 18:57:42', '2015-01-23 18:57:42', '', 121, 'http://www.bb2.com.br/121-revision-v1/', 0, 'revision', '', 0),
(236, 1, '2015-01-23 18:59:51', '2015-01-23 18:59:51', '[gallery columns=\"4\" link=\"file\" ids=\"231,225,215,212,210,203,195,193,185,182,170,168,169,158,151,144,146,126,127,128,125,157\" orderby=\"rand\"]\r\n\r\n[gallery columns=\"4\" link=\"file\" ids=\"201,197,185\"]', 'Coleção Primavera | Verão - 2014', '', 'inherit', 'open', 'open', '', '121-revision-v1', '', '', '2015-01-23 18:59:51', '2015-01-23 18:59:51', '', 121, 'http://www.bb2.com.br/121-revision-v1/', 0, 'revision', '', 0),
(238, 1, '2015-03-09 20:34:05', '2015-03-09 20:34:05', '', '', 'Verão 2015', 'inherit', 'open', 'open', '', '140-1', '', '', '2015-03-09 20:43:14', '2015-03-09 20:43:14', '', 0, 'http://www.bb2.com.br/wp-content/uploads/2015/03/140-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(239, 1, '2015-03-09 20:34:09', '2015-03-09 20:34:09', '', '', 'Verão 2015', 'inherit', 'open', 'open', '', '140-2', '', '', '2015-03-09 20:43:16', '2015-03-09 20:43:16', '', 0, 'http://www.bb2.com.br/wp-content/uploads/2015/03/140-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(240, 1, '2015-03-09 20:34:14', '2015-03-09 20:34:14', '', '', 'Verão 2015', 'inherit', 'open', 'open', '', '140-3', '', '', '2015-03-09 20:43:17', '2015-03-09 20:43:17', '', 0, 'http://www.bb2.com.br/wp-content/uploads/2015/03/140-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(241, 1, '2015-03-09 20:34:17', '2015-03-09 20:34:17', '', '', 'Verão 2015', 'inherit', 'open', 'open', '', '1400-1', '', '', '2015-03-09 20:43:19', '2015-03-09 20:43:19', '', 0, 'http://www.bb2.com.br/wp-content/uploads/2015/03/1400-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(242, 1, '2015-03-09 20:34:23', '2015-03-09 20:34:23', '', '', 'Verão 2015', 'inherit', 'open', 'open', '', '14001-1', '', '', '2015-03-09 20:43:18', '2015-03-09 20:43:18', '', 0, 'http://www.bb2.com.br/wp-content/uploads/2015/03/14001-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(243, 1, '2015-03-09 20:34:28', '2015-03-09 20:34:28', '', '', 'Verão 2015', 'inherit', 'open', 'open', '', '14001-2', '', '', '2015-03-09 20:43:20', '2015-03-09 20:43:20', '', 0, 'http://www.bb2.com.br/wp-content/uploads/2015/03/14001-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(244, 1, '2015-03-09 20:34:31', '2015-03-09 20:34:31', '', '', 'Verão 2015', 'inherit', 'open', 'open', '', '14001-3', '', '', '2015-03-09 20:43:22', '2015-03-09 20:43:22', '', 0, 'http://www.bb2.com.br/wp-content/uploads/2015/03/14001-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(245, 1, '2015-03-09 20:34:35', '2015-03-09 20:34:35', '', '', 'Verão 2015', 'inherit', 'open', 'open', '', '14001-4', '', '', '2015-03-09 20:43:23', '2015-03-09 20:43:23', '', 0, 'http://www.bb2.com.br/wp-content/uploads/2015/03/14001-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(246, 1, '2015-03-09 20:34:39', '2015-03-09 20:34:39', '', '', 'Verão 2015', 'inherit', 'open', 'open', '', '14001-5', '', '', '2015-03-09 20:43:25', '2015-03-09 20:43:25', '', 0, 'http://www.bb2.com.br/wp-content/uploads/2015/03/14001-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(247, 1, '2015-03-09 20:34:41', '2015-03-09 20:34:41', '', '', 'Verão 2015', 'inherit', 'open', 'open', '', '14002-1', '', '', '2015-03-09 20:43:26', '2015-03-09 20:43:26', '', 0, 'http://www.bb2.com.br/wp-content/uploads/2015/03/14002-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(248, 1, '2015-03-09 20:34:44', '2015-03-09 20:34:44', '', '', 'Verão 2015', 'inherit', 'open', 'open', '', '14003-1', '', '', '2015-03-09 20:43:28', '2015-03-09 20:43:28', '', 0, 'http://www.bb2.com.br/wp-content/uploads/2015/03/14003-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(249, 1, '2015-03-09 20:34:46', '2015-03-09 20:34:46', '', '', 'Verão 2015', 'inherit', 'open', 'open', '', '14004-1', '', '', '2015-03-09 20:43:29', '2015-03-09 20:43:29', '', 0, 'http://www.bb2.com.br/wp-content/uploads/2015/03/14004-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(250, 1, '2015-03-09 20:34:48', '2015-03-09 20:34:48', '', '', 'Verão 2015', 'inherit', 'open', 'open', '', '14005-1', '', '', '2015-03-09 20:43:30', '2015-03-09 20:43:30', '', 0, 'http://www.bb2.com.br/wp-content/uploads/2015/03/14005-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(251, 1, '2015-03-09 20:34:51', '2015-03-09 20:34:51', '', '', 'Verão 2015', 'inherit', 'open', 'open', '', '14006-1', '', '', '2015-03-09 20:43:31', '2015-03-09 20:43:31', '', 0, 'http://www.bb2.com.br/wp-content/uploads/2015/03/14006-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(252, 1, '2015-03-09 20:34:55', '2015-03-09 20:34:55', '', '', 'Verão 2015', 'inherit', 'open', 'open', '', '14058-1', '', '', '2015-03-09 20:43:33', '2015-03-09 20:43:33', '', 0, 'http://www.bb2.com.br/wp-content/uploads/2015/03/14058-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(253, 1, '2015-03-09 20:34:59', '2015-03-09 20:34:59', '', '', 'Verão 2015', 'inherit', 'open', 'open', '', '14058-2', '', '', '2015-03-09 20:43:34', '2015-03-09 20:43:34', '', 0, 'http://www.bb2.com.br/wp-content/uploads/2015/03/14058-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(254, 1, '2015-03-09 20:35:04', '2015-03-09 20:35:04', '', '', 'Verão 2015', 'inherit', 'open', 'open', '', '14058-3', '', '', '2015-03-09 20:43:35', '2015-03-09 20:43:35', '', 0, 'http://www.bb2.com.br/wp-content/uploads/2015/03/14058-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(255, 1, '2015-03-09 20:35:07', '2015-03-09 20:35:07', '', '', 'Verão 2015', 'inherit', 'open', 'open', '', '14058-4', '', '', '2015-03-09 20:43:37', '2015-03-09 20:43:37', '', 0, 'http://www.bb2.com.br/wp-content/uploads/2015/03/14058-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(256, 1, '2015-03-09 20:35:14', '2015-03-09 20:35:14', '', '', 'Verão 2015', 'inherit', 'open', 'open', '', '14059-1', '', '', '2015-03-09 20:43:38', '2015-03-09 20:43:38', '', 0, 'http://www.bb2.com.br/wp-content/uploads/2015/03/14059-1.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(257, 1, '2015-03-09 20:35:18', '2015-03-09 20:35:18', '', 'Toalha', 'Verão 2015', 'inherit', 'open', 'open', '', 'toalha-1', '', '', '2015-03-09 20:43:40', '2015-03-09 20:43:40', '', 0, 'http://www.bb2.com.br/wp-content/uploads/2015/03/toalha-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(258, 1, '2015-03-09 20:44:55', '2015-03-09 20:44:55', '[gallery columns=\"4\" link=\"file\" ids=\"256,254,255,253,252,246,245,244,243,242,241,240,239,238,250,247,249,203,248,202,257,251\"][gallery columns=\"4\" link=\"file\" ids=\"231,225,215,212,210,203,195,193,185,182,170,168,169,158,151,144,146,126,127,128,125,157\" orderby=\"rand\"]\r\n\r\n[gallery columns=\"4\" link=\"file\" ids=\"201,197,185\"]', 'Coleção Primavera | Verão - 2014', '', 'inherit', 'open', 'open', '', '121-revision-v1', '', '', '2015-03-09 20:44:55', '2015-03-09 20:44:55', '', 121, 'http://www.bb2.com.br/121-revision-v1/', 0, 'revision', '', 0),
(259, 1, '2015-03-09 20:51:56', '2015-03-09 20:51:56', '<strong><p style=\"color: #808080;\">A Bb2 é uma nova marca que nasceu para acompanhar o seu bebê do primeiro dia até os seus primeiros passinhos… trazendo para ele o melhor conforto sem perder o estilo!</p>\r\n<p style=\"color: #808080;\">\r\nDe olho na tendência e nas necessidades das mamães, montamos nossas coleções com produtos de muito bom gosto. Trazemos uma identidade moderna, através de produtos básicos que são necessários no dia-a-dia, porém podem ser usados em qualquer ocasião. As peças chaves são os bodies e as calças.</p>\r\n<p style=\"color: #808080;\">Esperamos que gostem, pois foram desenvolvidos com muito amor, carinho e delicadeza, assim como seu bebê.\r\n\r\n</p>\r\n[gallery columns=\"4\" link=\"file\" ids=\"85,86,87,88\" orderby=\"rand\"]</strong>', 'Quem Somos', '', 'inherit', 'open', 'open', '', '17-revision-v1', '', '', '2015-03-09 20:51:56', '2015-03-09 20:51:56', '', 17, 'http://www.bb2.com.br/17-revision-v1/', 0, 'revision', '', 0),
(260, 1, '2015-03-09 20:52:19', '2015-03-09 20:52:19', '<strong><strong><p style=\"color: #808080;\">A Bb2 é uma nova marca que nasceu para acompanhar o seu bebê do primeiro dia até os seus primeiros passinhos… trazendo para ele o melhor conforto sem perder o estilo!</p>\r\n<p style=\"color: #808080;\">\r\nDe olho na tendência e nas necessidades das mamães, montamos nossas coleções com produtos de muito bom gosto. Trazemos uma identidade moderna, através de produtos básicos que são necessários no dia-a-dia, porém podem ser usados em qualquer ocasião. As peças chaves são os bodies e as calças.</p>\r\n<p style=\"color: #808080;\">Esperamos que gostem, pois foram desenvolvidos com muito amor, carinho e delicadeza, assim como seu bebê.\r\n\r\n</p>\r\n[gallery columns=\"4\" link=\"file\" ids=\"85,86,87,88\" orderby=\"rand\"]</strong></strong>', 'Quem Somos', '', 'inherit', 'open', 'open', '', '17-revision-v1', '', '', '2015-03-09 20:52:19', '2015-03-09 20:52:19', '', 17, 'http://www.bb2.com.br/17-revision-v1/', 0, 'revision', '', 0),
(261, 1, '2015-03-09 21:01:59', '2015-03-09 21:01:59', '', 'Gianluigi', '', 'inherit', 'open', 'open', '', 'gianluigi', '', '', '2015-03-09 21:01:59', '2015-03-09 21:01:59', '', 61, 'http://www.bb2.com.br/wp-content/uploads/2014/06/Gianluigi.jpg', 0, 'attachment', 'image/jpeg', 0),
(262, 1, '2015-03-09 21:02:04', '2015-03-09 21:02:04', '', 'a pequena da Cris', '', 'inherit', 'open', 'open', '', 'pequena-da-cristiane', '', '', '2015-03-09 21:02:21', '2015-03-09 21:02:21', '', 61, 'http://www.bb2.com.br/wp-content/uploads/2014/06/pequena-da-Cristiane.jpg', 0, 'attachment', 'image/jpeg', 0),
(263, 1, '2015-03-09 21:02:32', '2015-03-09 21:02:32', '<a href=\"http://www.bb2.com.br/wp-content/uploads/2014/06/pequena-da-Cristiane.jpg\"><img src=\"http://www.bb2.com.br/wp-content/uploads/2014/06/pequena-da-Cristiane.jpg\" alt=\"a pequena da Cris\" width=\"826\" height=\"1200\" class=\"alignnone size-full wp-image-262\" /></a>', 'Seu Filho na Bb2', '', 'inherit', 'open', 'open', '', '61-revision-v1', '', '', '2015-03-09 21:02:32', '2015-03-09 21:02:32', '', 61, 'http://www.bb2.com.br/61-revision-v1/', 0, 'revision', '', 0),
(264, 1, '2015-03-09 21:04:05', '2015-03-09 21:04:05', '<a href=\"http://www.bb2.com.br/wp-content/uploads/2014/06/Gianluigi.jpg\"><img src=\"http://www.bb2.com.br/wp-content/uploads/2014/06/Gianluigi.jpg\" alt=\"Gianluigi\" width=\"1600\" height=\"1200\" class=\"alignnone size-full wp-image-261\" /></a><a href=\"http://www.bb2.com.br/wp-content/uploads/2014/06/pequena-da-Cristiane.jpg\"><img src=\"http://www.bb2.com.br/wp-content/uploads/2014/06/pequena-da-Cristiane.jpg\" alt=\"a pequena da Cris\" width=\"826\" height=\"1200\" class=\"alignnone size-full wp-image-262\" /></a>', 'Seu Filho na Bb2', '', 'inherit', 'open', 'open', '', '61-revision-v1', '', '', '2015-03-09 21:04:05', '2015-03-09 21:04:05', '', 61, 'http://www.bb2.com.br/61-revision-v1/', 0, 'revision', '', 0),
(269, 1, '2015-03-09 21:23:40', '2015-03-09 21:23:40', '', 'Catarina', '', 'publish', 'open', 'open', '', 'catarina-2', '', '', '2015-03-09 21:23:40', '2015-03-09 21:23:40', '', 0, 'http://www.bb2.com.br/?p=269', 0, 'post', '', 0),
(272, 1, '2015-03-09 21:23:40', '2015-03-09 21:23:40', '', 'Catarina', '', 'inherit', 'open', 'open', '', '269-revision-v1', '', '', '2015-03-09 21:23:40', '2015-03-09 21:23:40', '', 269, 'http://www.bb2.com.br/269-revision-v1/', 0, 'revision', '', 0),
(273, 1, '2015-03-09 21:24:21', '2015-03-09 21:24:21', '', 'Rafael', '', 'publish', 'open', 'open', '', 'rafael', '', '', '2015-03-09 21:24:21', '2015-03-09 21:24:21', '', 0, 'http://www.bb2.com.br/?p=273', 0, 'post', '', 0),
(274, 1, '2015-03-09 21:24:21', '2015-03-09 21:24:21', '', 'Rafael', '', 'inherit', 'open', 'open', '', '273-revision-v1', '', '', '2015-03-09 21:24:21', '2015-03-09 21:24:21', '', 273, 'http://www.bb2.com.br/273-revision-v1/', 0, 'revision', '', 0),
(282, 1, '2015-03-09 21:35:20', '2015-03-09 21:35:20', '', 'Miguel', '', 'publish', 'open', 'open', '', 'miguel', '', '', '2015-03-09 21:35:20', '2015-03-09 21:35:20', '', 0, 'http://www.bb2.com.br/?p=282', 0, 'post', '', 0),
(284, 1, '2015-03-09 21:35:20', '2015-03-09 21:35:20', '', 'Miguel', '', 'inherit', 'open', 'open', '', '282-revision-v1', '', '', '2015-03-09 21:35:20', '2015-03-09 21:35:20', '', 282, 'http://www.bb2.com.br/282-revision-v1/', 0, 'revision', '', 0),
(285, 1, '2015-03-09 21:41:27', '2015-03-09 21:41:27', '', 'Ayla', '', 'publish', 'open', 'open', '', 'ayla', '', '', '2015-03-09 21:41:27', '2015-03-09 21:41:27', '', 0, 'http://www.bb2.com.br/?p=285', 0, 'post', '', 0),
(286, 1, '2015-03-09 21:41:20', '2015-03-09 21:41:20', '', 'Ayla', '', 'inherit', 'open', 'open', '', 'ayla', '', '', '2015-03-09 21:41:20', '2015-03-09 21:41:20', '', 285, 'http://www.bb2.com.br/wp-content/uploads/2015/03/Ayla.jpg', 0, 'attachment', 'image/jpeg', 0),
(287, 1, '2015-03-09 21:41:27', '2015-03-09 21:41:27', '', 'Ayla', '', 'inherit', 'open', 'open', '', '285-revision-v1', '', '', '2015-03-09 21:41:27', '2015-03-09 21:41:27', '', 285, 'http://www.bb2.com.br/285-revision-v1/', 0, 'revision', '', 0),
(289, 1, '2015-04-15 17:02:33', '2015-04-15 17:02:33', '', 'Ayla', '', 'publish', 'open', 'open', '', 'ayla-2', '', '', '2015-04-15 17:02:33', '2015-04-15 17:02:33', '', 0, 'http://www.bb2.com.br/?p=289', 0, 'post', '', 0),
(290, 1, '2015-04-15 17:02:08', '2015-04-15 17:02:08', '', 'Ayla', '', 'inherit', 'open', 'open', '', 'ayla-2', '', '', '2015-04-15 17:02:27', '2015-04-15 17:02:27', '', 289, 'http://www.bb2.com.br/wp-content/uploads/2015/04/Ayla-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(291, 1, '2015-04-15 17:02:33', '2015-04-15 17:02:33', '', 'Ayla', '', 'inherit', 'open', 'open', '', '289-revision-v1', '', '', '2015-04-15 17:02:33', '2015-04-15 17:02:33', '', 289, 'http://www.bb2.com.br/289-revision-v1/', 0, 'revision', '', 0),
(292, 1, '2015-04-15 17:02:43', '2015-04-15 17:02:43', '', 'Ayla', '', 'inherit', 'open', 'open', '', '289-autosave-v1', '', '', '2015-04-15 17:02:43', '2015-04-15 17:02:43', '', 289, 'http://www.bb2.com.br/289-autosave-v1/', 0, 'revision', '', 0),
(293, 1, '2015-04-15 17:03:48', '2015-04-15 17:03:48', '', 'Gianluigi', '', 'publish', 'open', 'open', '', 'gianluigi', '', '', '2015-04-15 17:03:48', '2015-04-15 17:03:48', '', 0, 'http://www.bb2.com.br/?p=293', 0, 'post', '', 0),
(294, 1, '2015-04-15 17:03:44', '2015-04-15 17:03:44', '', 'Gianluigi', '', 'inherit', 'open', 'open', '', 'gianluigi-2', '', '', '2015-04-15 17:03:44', '2015-04-15 17:03:44', '', 293, 'http://www.bb2.com.br/wp-content/uploads/2015/04/Gianluigi.jpg', 0, 'attachment', 'image/jpeg', 0),
(295, 1, '2015-04-15 17:03:48', '2015-04-15 17:03:48', '', 'Gianluigi', '', 'inherit', 'open', 'open', '', '293-revision-v1', '', '', '2015-04-15 17:03:48', '2015-04-15 17:03:48', '', 293, 'http://www.bb2.com.br/293-revision-v1/', 0, 'revision', '', 0),
(297, 1, '2015-04-15 17:05:18', '2015-04-15 17:05:18', '', 'Princesinha da Cristiane', '', 'publish', 'open', 'open', '', 'princesinha-da-cristiane', '', '', '2015-04-15 17:05:18', '2015-04-15 17:05:18', '', 0, 'http://www.bb2.com.br/?p=297', 0, 'post', '', 0),
(298, 1, '2015-04-15 17:05:12', '2015-04-15 17:05:12', '', 'pequena da Cristiane', '', 'inherit', 'open', 'open', '', 'pequena-da-cristiane-2', '', '', '2015-04-15 17:05:12', '2015-04-15 17:05:12', '', 297, 'http://www.bb2.com.br/wp-content/uploads/2015/04/pequena-da-Cristiane.jpg', 0, 'attachment', 'image/jpeg', 0),
(299, 1, '2015-04-15 17:05:18', '2015-04-15 17:05:18', '', 'Princesinha da Cristiane', '', 'inherit', 'open', 'open', '', '297-revision-v1', '', '', '2015-04-15 17:05:18', '2015-04-15 17:05:18', '', 297, 'http://www.bb2.com.br/297-revision-v1/', 0, 'revision', '', 0),
(300, 1, '2015-04-15 17:05:57', '2015-04-15 17:05:57', '', 'Luca', '', 'publish', 'open', 'open', '', 'luca', '', '', '2015-04-15 17:05:57', '2015-04-15 17:05:57', '', 0, 'http://www.bb2.com.br/?p=300', 0, 'post', '', 0),
(301, 1, '2015-04-15 17:05:51', '2015-04-15 17:05:51', '', 'Luca', '', 'inherit', 'open', 'open', '', 'luca', '', '', '2015-04-15 17:05:51', '2015-04-15 17:05:51', '', 300, 'http://www.bb2.com.br/wp-content/uploads/2015/04/Luca.jpg', 0, 'attachment', 'image/jpeg', 0),
(302, 1, '2015-04-15 17:05:57', '2015-04-15 17:05:57', '', 'Luca', '', 'inherit', 'open', 'open', '', '300-revision-v1', '', '', '2015-04-15 17:05:57', '2015-04-15 17:05:57', '', 300, 'http://www.bb2.com.br/300-revision-v1/', 0, 'revision', '', 0),
(303, 1, '2015-04-15 17:06:32', '2015-04-15 17:06:32', '', 'Nicoly', '', 'publish', 'open', 'open', '', 'nicoly', '', '', '2015-04-15 17:06:32', '2015-04-15 17:06:32', '', 0, 'http://www.bb2.com.br/?p=303', 0, 'post', '', 0),
(304, 1, '2015-04-15 17:06:27', '2015-04-15 17:06:27', '', 'Nicoly', '', 'inherit', 'open', 'open', '', 'nicoly', '', '', '2015-04-15 17:06:27', '2015-04-15 17:06:27', '', 303, 'http://www.bb2.com.br/wp-content/uploads/2015/04/Nicoly.jpg', 0, 'attachment', 'image/jpeg', 0),
(305, 1, '2015-04-15 17:06:32', '2015-04-15 17:06:32', '', 'Nicoly', '', 'inherit', 'open', 'open', '', '303-revision-v1', '', '', '2015-04-15 17:06:32', '2015-04-15 17:06:32', '', 303, 'http://www.bb2.com.br/303-revision-v1/', 0, 'revision', '', 0),
(306, 1, '2015-04-15 17:07:07', '2015-04-15 17:07:07', '', 'Luca', '', 'publish', 'open', 'open', '', 'luca-2', '', '', '2015-04-15 17:07:07', '2015-04-15 17:07:07', '', 0, 'http://www.bb2.com.br/?p=306', 0, 'post', '', 0),
(307, 1, '2015-04-15 17:07:04', '2015-04-15 17:07:04', '', 'Luca 2', '', 'inherit', 'open', 'open', '', 'luca-2', '', '', '2015-04-15 17:07:04', '2015-04-15 17:07:04', '', 306, 'http://www.bb2.com.br/wp-content/uploads/2015/04/Luca-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(308, 1, '2015-04-15 17:07:07', '2015-04-15 17:07:07', '', 'Luca', '', 'inherit', 'open', 'open', '', '306-revision-v1', '', '', '2015-04-15 17:07:07', '2015-04-15 17:07:07', '', 306, 'http://www.bb2.com.br/306-revision-v1/', 0, 'revision', '', 0),
(309, 1, '2015-04-15 17:08:16', '2015-04-15 17:08:16', '', 'Catarina', '', 'publish', 'open', 'open', '', 'catarina-3', '', '', '2015-04-15 17:08:16', '2015-04-15 17:08:16', '', 0, 'http://www.bb2.com.br/?p=309', 0, 'post', '', 0),
(310, 1, '2015-04-15 17:08:12', '2015-04-15 17:08:12', '', 'Catarina', '', 'inherit', 'open', 'open', '', 'catarina-3', '', '', '2015-04-15 17:08:12', '2015-04-15 17:08:12', '', 309, 'http://www.bb2.com.br/wp-content/uploads/2015/04/Catarina.jpg', 0, 'attachment', 'image/jpeg', 0),
(311, 1, '2015-04-15 17:08:16', '2015-04-15 17:08:16', '', 'Catarina', '', 'inherit', 'open', 'open', '', '309-revision-v1', '', '', '2015-04-15 17:08:16', '2015-04-15 17:08:16', '', 309, 'http://www.bb2.com.br/309-revision-v1/', 0, 'revision', '', 0),
(312, 1, '2015-04-15 21:52:44', '2015-04-15 21:52:44', '[gallery ids=\"81,80,79,78,77,69,71,72,73,74,75,76\"]', 'Coleção Outono/Inverno 2015', '', 'inherit', 'open', 'open', '', '59-revision-v1', '', '', '2015-04-15 21:52:44', '2015-04-15 21:52:44', '', 59, 'http://www.bb2.com.br/59-revision-v1/', 0, 'revision', '', 0),
(313, 1, '2015-04-15 21:59:46', '2015-04-15 21:59:46', '[gallery columns=\"4\" ids=\"81,80,79,78\"]', 'Coleção Outono Inverno 2014', '', 'inherit', 'open', 'open', '', '41-revision-v1', '', '', '2015-04-15 21:59:46', '2015-04-15 21:59:46', '', 41, 'http://www.bb2.com.br/41-revision-v1/', 0, 'revision', '', 0),
(314, 1, '2015-04-15 22:00:22', '2015-04-15 22:00:22', '[gallery ids=\"81,80,79,78\"]', 'Coleção Outono/Inverno 2015', '', 'inherit', 'open', 'open', '', '59-revision-v1', '', '', '2015-04-15 22:00:22', '2015-04-15 22:00:22', '', 59, 'http://www.bb2.com.br/59-revision-v1/', 0, 'revision', '', 0),
(315, 1, '2015-04-15 22:14:43', '2015-04-15 22:14:43', '', 'Coleção Outono/Inverno 2015', '', 'inherit', 'open', 'open', '', '59-autosave-v1', '', '', '2015-04-15 22:14:43', '2015-04-15 22:14:43', '', 59, 'http://www.bb2.com.br/59-autosave-v1/', 0, 'revision', '', 0),
(316, 1, '2015-04-15 22:15:46', '2015-04-15 22:15:46', '', '15023', '', 'inherit', 'open', 'open', '', '15023', '', '', '2015-04-15 22:15:46', '2015-04-15 22:15:46', '', 59, 'http://www.bb2.com.br/wp-content/uploads/2014/06/15023.jpg', 0, 'attachment', 'image/jpeg', 0),
(317, 1, '2015-04-15 22:15:54', '2015-04-15 22:15:54', '', '15023_1', '', 'inherit', 'open', 'open', '', '15023_1', '', '', '2015-04-15 22:15:54', '2015-04-15 22:15:54', '', 59, 'http://www.bb2.com.br/wp-content/uploads/2014/06/15023_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(318, 1, '2015-04-15 22:16:01', '2015-04-15 22:16:01', '', '15023_2', '', 'inherit', 'open', 'open', '', '15023_2', '', '', '2015-04-15 22:16:01', '2015-04-15 22:16:01', '', 59, 'http://www.bb2.com.br/wp-content/uploads/2014/06/15023_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(319, 1, '2015-04-15 22:16:08', '2015-04-15 22:16:08', '', '15023_3', '', 'inherit', 'open', 'open', '', '15023_3', '', '', '2015-04-15 22:16:08', '2015-04-15 22:16:08', '', 59, 'http://www.bb2.com.br/wp-content/uploads/2014/06/15023_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(320, 1, '2015-04-15 22:16:13', '2015-04-15 22:16:13', '', '15023_4', '', 'inherit', 'open', 'open', '', '15023_4', '', '', '2015-04-15 22:16:13', '2015-04-15 22:16:13', '', 59, 'http://www.bb2.com.br/wp-content/uploads/2014/06/15023_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(321, 1, '2015-04-15 22:16:18', '2015-04-15 22:16:18', '', '15026', '', 'inherit', 'open', 'open', '', '15026', '', '', '2015-04-15 22:16:18', '2015-04-15 22:16:18', '', 59, 'http://www.bb2.com.br/wp-content/uploads/2014/06/15026.jpg', 0, 'attachment', 'image/jpeg', 0),
(322, 1, '2015-04-15 22:16:26', '2015-04-15 22:16:26', '', '15026_1', '', 'inherit', 'open', 'open', '', '15026_1', '', '', '2015-04-15 22:16:26', '2015-04-15 22:16:26', '', 59, 'http://www.bb2.com.br/wp-content/uploads/2014/06/15026_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(323, 1, '2015-04-15 22:16:31', '2015-04-15 22:16:31', '', '15026_2', '', 'inherit', 'open', 'open', '', '15026_2', '', '', '2015-04-15 22:16:31', '2015-04-15 22:16:31', '', 59, 'http://www.bb2.com.br/wp-content/uploads/2014/06/15026_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(324, 1, '2015-04-15 22:16:35', '2015-04-15 22:16:35', '', '15026_3', '', 'inherit', 'open', 'open', '', '15026_3', '', '', '2015-04-15 22:16:35', '2015-04-15 22:16:35', '', 59, 'http://www.bb2.com.br/wp-content/uploads/2014/06/15026_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(325, 1, '2015-04-15 22:16:40', '2015-04-15 22:16:40', '', '15026_4', '', 'inherit', 'open', 'open', '', '15026_4', '', '', '2015-04-15 22:16:40', '2015-04-15 22:16:40', '', 59, 'http://www.bb2.com.br/wp-content/uploads/2014/06/15026_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(326, 1, '2015-04-15 22:16:45', '2015-04-15 22:16:45', '', '15026_5', '', 'inherit', 'open', 'open', '', '15026_5', '', '', '2015-04-15 22:16:45', '2015-04-15 22:16:45', '', 59, 'http://www.bb2.com.br/wp-content/uploads/2014/06/15026_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(327, 1, '2015-04-15 22:16:49', '2015-04-15 22:16:49', '', '15029', '', 'inherit', 'open', 'open', '', '15029', '', '', '2015-04-15 22:16:49', '2015-04-15 22:16:49', '', 59, 'http://www.bb2.com.br/wp-content/uploads/2014/06/15029.jpg', 0, 'attachment', 'image/jpeg', 0),
(328, 1, '2015-04-15 22:16:53', '2015-04-15 22:16:53', '', '15029_2', '', 'inherit', 'open', 'open', '', '15029_2', '', '', '2015-04-15 22:16:53', '2015-04-15 22:16:53', '', 59, 'http://www.bb2.com.br/wp-content/uploads/2014/06/15029_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(329, 1, '2015-04-15 22:16:58', '2015-04-15 22:16:58', '', '15031', '', 'inherit', 'open', 'open', '', '15031', '', '', '2015-04-15 22:16:58', '2015-04-15 22:16:58', '', 59, 'http://www.bb2.com.br/wp-content/uploads/2014/06/15031.jpg', 0, 'attachment', 'image/jpeg', 0),
(330, 1, '2015-04-15 22:17:03', '2015-04-15 22:17:03', '', '15031_2', '', 'inherit', 'open', 'open', '', '15031_2', '', '', '2015-04-15 22:17:03', '2015-04-15 22:17:03', '', 59, 'http://www.bb2.com.br/wp-content/uploads/2014/06/15031_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(331, 1, '2015-04-15 22:17:09', '2015-04-15 22:17:09', '', '15031_3', '', 'inherit', 'open', 'open', '', '15031_3', '', '', '2015-04-15 22:17:09', '2015-04-15 22:17:09', '', 59, 'http://www.bb2.com.br/wp-content/uploads/2014/06/15031_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(332, 1, '2015-04-15 22:17:13', '2015-04-15 22:17:13', '', '15031_4', '', 'inherit', 'open', 'open', '', '15031_4', '', '', '2015-04-15 22:17:13', '2015-04-15 22:17:13', '', 59, 'http://www.bb2.com.br/wp-content/uploads/2014/06/15031_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(333, 1, '2015-04-15 22:17:16', '2015-04-15 22:17:16', '', '15055', '', 'inherit', 'open', 'open', '', '15055', '', '', '2015-04-15 22:17:16', '2015-04-15 22:17:16', '', 59, 'http://www.bb2.com.br/wp-content/uploads/2014/06/15055.jpg', 0, 'attachment', 'image/jpeg', 0),
(334, 1, '2015-04-15 22:17:20', '2015-04-15 22:17:20', '', '15055_1', '', 'inherit', 'open', 'open', '', '15055_1', '', '', '2015-04-15 22:17:20', '2015-04-15 22:17:20', '', 59, 'http://www.bb2.com.br/wp-content/uploads/2014/06/15055_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(335, 1, '2015-04-15 22:17:24', '2015-04-15 22:17:24', '', '15055_2', '', 'inherit', 'open', 'open', '', '15055_2', '', '', '2015-04-15 22:17:24', '2015-04-15 22:17:24', '', 59, 'http://www.bb2.com.br/wp-content/uploads/2014/06/15055_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(336, 1, '2015-04-15 22:17:29', '2015-04-15 22:17:29', '', '15055_4', '', 'inherit', 'open', 'open', '', '15055_4', '', '', '2015-04-15 22:17:29', '2015-04-15 22:17:29', '', 59, 'http://www.bb2.com.br/wp-content/uploads/2014/06/15055_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(337, 1, '2015-04-15 22:17:33', '2015-04-15 22:17:33', '', '15057 E 15026', '', 'inherit', 'open', 'open', '', '15057-e-15026', '', '', '2015-04-15 22:17:33', '2015-04-15 22:17:33', '', 59, 'http://www.bb2.com.br/wp-content/uploads/2014/06/15057-E-15026.jpg', 0, 'attachment', 'image/jpeg', 0),
(338, 1, '2015-04-15 22:17:37', '2015-04-15 22:17:37', '', '15057', '', 'inherit', 'open', 'open', '', '15057', '', '', '2015-04-15 22:17:37', '2015-04-15 22:17:37', '', 59, 'http://www.bb2.com.br/wp-content/uploads/2014/06/15057.jpg', 0, 'attachment', 'image/jpeg', 0),
(339, 1, '2015-04-15 22:17:41', '2015-04-15 22:17:41', '', '15057_2', '', 'inherit', 'open', 'open', '', '15057_2', '', '', '2015-04-15 22:17:41', '2015-04-15 22:17:41', '', 59, 'http://www.bb2.com.br/wp-content/uploads/2014/06/15057_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(340, 1, '2015-04-15 22:17:44', '2015-04-15 22:17:44', '', '15057_3', '', 'inherit', 'open', 'open', '', '15057_3', '', '', '2015-04-15 22:17:44', '2015-04-15 22:17:44', '', 59, 'http://www.bb2.com.br/wp-content/uploads/2014/06/15057_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(341, 1, '2015-04-15 22:17:49', '2015-04-15 22:17:49', '', '15057_4', '', 'inherit', 'open', 'open', '', '15057_4', '', '', '2015-04-15 22:17:49', '2015-04-15 22:17:49', '', 59, 'http://www.bb2.com.br/wp-content/uploads/2014/06/15057_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(342, 1, '2015-04-15 22:17:52', '2015-04-15 22:17:52', '', '15057_5', '', 'inherit', 'open', 'open', '', '15057_5', '', '', '2015-04-15 22:17:52', '2015-04-15 22:17:52', '', 59, 'http://www.bb2.com.br/wp-content/uploads/2014/06/15057_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(343, 1, '2015-04-15 22:17:57', '2015-04-15 22:17:57', '', '15059', '', 'inherit', 'open', 'open', '', '15059', '', '', '2015-04-15 22:17:57', '2015-04-15 22:17:57', '', 59, 'http://www.bb2.com.br/wp-content/uploads/2014/06/15059.jpg', 0, 'attachment', 'image/jpeg', 0),
(344, 1, '2015-04-15 22:18:02', '2015-04-15 22:18:02', '', '15059_2', '', 'inherit', 'open', 'open', '', '15059_2', '', '', '2015-04-15 22:18:02', '2015-04-15 22:18:02', '', 59, 'http://www.bb2.com.br/wp-content/uploads/2014/06/15059_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(345, 1, '2015-04-15 22:18:05', '2015-04-15 22:18:05', '', '15059_3', '', 'inherit', 'open', 'open', '', '15059_3', '', '', '2015-04-15 22:18:05', '2015-04-15 22:18:05', '', 59, 'http://www.bb2.com.br/wp-content/uploads/2014/06/15059_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(346, 1, '2015-04-15 22:18:10', '2015-04-15 22:18:10', '', '15059_4', '', 'inherit', 'open', 'open', '', '15059_4', '', '', '2015-04-15 22:18:10', '2015-04-15 22:18:10', '', 59, 'http://www.bb2.com.br/wp-content/uploads/2014/06/15059_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(347, 1, '2015-04-15 22:22:27', '2015-04-15 22:22:27', '[gallery link=\"file\" size=\"medium\" ids=\"316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346\"]', 'Coleção Outono/Inverno 2015', '', 'inherit', 'open', 'open', '', '59-revision-v1', '', '', '2015-04-15 22:22:27', '2015-04-15 22:22:27', '', 59, 'http://www.bb2.com.br/59-revision-v1/', 0, 'revision', '', 0),
(349, 1, '2015-04-23 11:45:55', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'open', 'open', '', '', '', '', '2015-04-23 11:45:55', '0000-00-00 00:00:00', '', 0, 'http://www.bb2.com.br/?p=349', 1, 'nav_menu_item', '', 0),
(350, 1, '2015-04-23 11:45:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-04-23 11:45:56', '0000-00-00 00:00:00', '', 0, 'http://www.bb2.com.br/?p=350', 1, 'nav_menu_item', '', 0),
(351, 1, '2015-04-23 11:45:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-04-23 11:45:56', '0000-00-00 00:00:00', '', 0, 'http://www.bb2.com.br/?p=351', 1, 'nav_menu_item', '', 0),
(352, 1, '2015-04-23 11:45:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-04-23 11:45:56', '0000-00-00 00:00:00', '', 0, 'http://www.bb2.com.br/?p=352', 1, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'Filho Bb2', 'bebe', 0),
(3, 'seu_bebe', 'seu_bebe', 0),
(4, 'inscricao', 'inscricao', 0),
(5, 'Ref. 14.020', 'ref-14-020', 0),
(6, 'Capa Primavera/Verão', 'capa-primevareverao', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(4, 2, 0),
(9, 2, 0),
(14, 2, 0),
(17, 1, 0),
(41, 1, 0),
(63, 1, 0),
(65, 1, 0),
(66, 3, 0),
(83, 2, 0),
(101, 1, 0),
(106, 2, 0),
(110, 2, 0),
(113, 4, 0),
(117, 2, 0),
(117, 5, 0),
(121, 1, 0),
(269, 6, 0),
(273, 6, 0),
(282, 2, 0),
(285, 2, 0),
(289, 2, 0),
(293, 2, 0),
(297, 2, 0),
(300, 2, 0),
(303, 2, 0),
(306, 2, 0),
(309, 2, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 6),
(2, 2, 'category', '', 0, 16),
(3, 3, 'category', '', 0, 1),
(4, 4, 'category', '', 0, 1),
(5, 5, 'post_tag', '', 0, 1),
(6, 6, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'admin'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets,wp410_dfw'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&mfold=o'),
(15, 1, 'wp_user-settings-time', '1429136542'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '353'),
(17, 1, 'session_tokens', 'a:1:{s:64:\"aa580b699cc4ca51451a905aaa9e941de9645a9aaf01b1fcbfd38f512cd79455\";a:4:{s:10:\"expiration\";i:1436382610;s:2:\"ip\";s:13:\"187.75.249.90\";s:2:\"ua\";s:109:\"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.130 Safari/537.36\";s:5:\"login\";i:1436209810;}}'),
(18, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:8:\"add-post\";i:1;s:12:\"add-post_tag\";}'),
(20, 1, 'default_password_nag', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B.GS/CBGMKgGSYcEhkF8Tcu3y5sA5C/', 'admin', 'alessandra@bb2.com.br', '', '2014-06-13 21:52:14', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_xyz_cfm_form`
--

CREATE TABLE `wp_xyz_cfm_form` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `form_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `submit_mode` int(11) NOT NULL,
  `to_email` text COLLATE utf8_unicode_ci NOT NULL,
  `from_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sender_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reply_sender_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reply_sender_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cc_email` text COLLATE utf8_unicode_ci NOT NULL,
  `mail_type` int(11) NOT NULL,
  `mail_subject` text COLLATE utf8_unicode_ci NOT NULL,
  `mail_body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `to_email_reply` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reply_subject` text COLLATE utf8_unicode_ci NOT NULL,
  `reply_body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `reply_mail_type` int(11) NOT NULL,
  `enable_reply` int(11) NOT NULL,
  `redirection_link` text COLLATE utf8_unicode_ci NOT NULL,
  `from_email_id` int(11) NOT NULL DEFAULT '0',
  `reply_sender_email_id` int(11) NOT NULL DEFAULT '0',
  `redisplay_option` int(11) NOT NULL DEFAULT '2',
  `newsletter_email_shortcode` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `newsletter_email_list` text COLLATE utf8_unicode_ci NOT NULL,
  `newsletter_custom_fields` text COLLATE utf8_unicode_ci NOT NULL,
  `newsletter_optin_mode` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `newsletter_subscription_status` int(11) NOT NULL,
  `bcc_email` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `wp_xyz_cfm_form`
--

INSERT INTO `wp_xyz_cfm_form` (`id`, `name`, `status`, `form_content`, `submit_mode`, `to_email`, `from_email`, `sender_name`, `reply_sender_name`, `reply_sender_email`, `cc_email`, `mail_type`, `mail_subject`, `mail_body`, `to_email_reply`, `reply_subject`, `reply_body`, `reply_mail_type`, `enable_reply`, `redirection_link`, `from_email_id`, `reply_sender_email_id`, `redisplay_option`, `newsletter_email_shortcode`, `newsletter_email_list`, `newsletter_custom_fields`, `newsletter_optin_mode`, `newsletter_subscription_status`, `bcc_email`) VALUES
(1, 'form1', 1, '<h3>Preencha o formulário, e entraremos em contato com você o mais breve possível! </h3><table style=\"width: 650px;\"><tbody><tr><td>Nome:</td><td><span style=\"color: #555555;\">[text-1]</span></td></tr><tr><td>E-mail:</td><td><span style=\"color: #555555;\">[email-2]</span></td></tr><tr><td>Telefone:</td><td><span style=\"color: #444444;\">[text-6]</span></td></tr><tr><td>Onde nos conheceu?</td><td><span style=\"color: #444444;\">[dropdown-7]</span></td></tr><tr><td>Assunto:</td><td><span style=\"color: #555555;\">[text-3]</span></td></tr><tr><td>Mensagem:</td><td><span style=\"color: #555555;\">[textarea-4]</span></td></tr><tr><td> </td><td><strong>[submit-5]</strong></td></tr></tbody></table><h3>Se preferir ligue para:</h3><p> Telefones: <strong><span style=\"color: #000000;\">(11) 4653-1721 / </span><span style=\"color: #000000;\">(11) 4651-2092</span></strong><span style=\"font-weight: bold;\"><span style=\"color: #ffffff;\"><strong>2</strong> 323272-2768</span></span></p><h3> Ou venha nos visitar:</h3><p><strong>Endereço: </strong>Rua Espanha, 91A<strong> </strong><br /><strong>Bairro</strong> Jd. Rincão /Arujá -SP<br /><strong>CEP:</strong> 07400-410</p><p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3661.6308372208982!2d-46.319610100000006!3d-23.401568599999997!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce7d80b51caff3%3A0x88de32074a226409!2sRua+Espanha%2C+91+-+Jardim+Rinc%C3%A3o!5e0!3m2!1sen!2s!4v1402700370514\" width=\"600\" height=\"450\" frameborder=\"0\"></iframe></p>', 2, 'contato@bb2.com.br', '[email-2]', '', 'Administrativo', 'contato@bb2.com.br', '', 1, '[text-3]', '<p>Hi,</p><p>Você recebeu um novo contato através do site!</p><p>From : [email-2]</p><table style=\"width: 650px;\"><tbody><tr><td>Nome:</td><td><span style=\"color: #555555;\">[text-1]</span></td></tr><tr><td>E-mail:</td><td><span style=\"color: #555555;\">[email-2]</span></td></tr><tr><td>Telefone:</td><td><span style=\"color: #444444;\">[text-6]</span></td></tr><tr><td>Onde nos conheceu?</td><td><span style=\"color: #444444;\">[dropdown-7]</span></td></tr><tr><td>Assunto:</td><td><span style=\"color: #555555;\">[text-3]</span></td></tr><tr><td>Mensagem:</td><td><span style=\"color: #555555;\">[textarea-4]</span></td></tr><tr><td> </td><td><strong>[</strong></td></tr></tbody></table>', '[email-2]', 'Re:[text-3]', '<p>Olá [text-1],</p><p>Obrigado por entrar em contato conosco, responderemos seu e-mail o mais rapidamente possivel!</p><p>Atenciosamente,</p><p>Bb2 - Vestindo seu bebê</p>', 1, 2, 'http://www.bb2.com.br/agradecemos-seu-contato/', 0, 0, 2, '', '', '', '', 0, ''),
(2, 'Envie sua foto', 1, '<table style=\"width: 100%;\"><tbody><tr><td>Seu nome</td><td> : </td><td>[text-8]</td></tr><tr><td>Seu E-mail</td><td> : </td><td>[email-9]</td></tr><tr><td>Nome do Bebê</td><td> : </td><td>[text-10]</td></tr><tr><td>Data de Nascimento do Bebê</td><td> : </td><td><span style=\"color: #444444;\">[date-15]</span></td></tr><tr><td>Foto do Bebê</td><td> : </td><td> <span style=\"color: #444444;\">[file-13]</span></td></tr><tr><td colspan=\"2\"> </td><td>[submit-12]</td></tr></tbody></table>', 2, 'contato@bb2.com.br', '[email-9]', '', 'Administrativo', 'contato@bb2.com.br', '', 1, '[text-10]', '<p>Olá,</p><p>Você tem um novo contato!</p><table style=\"width: 100%;\"><tbody><tr><td>Seu nome</td><td>:</td><td>[text-8]</td></tr><tr><td>Seu E-mail</td><td>:</td><td>[email-9]</td></tr><tr><td>Nome do Bebê</td><td>:</td><td>[text-10]</td></tr><tr><td>Data de Nascimento do Bebê</td><td>:</td><td><span style=\"color: #444444;\">[date-15]</span></td></tr><tr><td>Foto do Bebê</td><td>:</td><td> </td></tr><tr><td colspan=\"2\"> </td><td> </td></tr></tbody></table><p>Foto do Bebe</p><p>[file-13]</p>', '[email-9]', 'Re:[text-10]', '<p>Olá [text-8],</p><p>Obrigado pelo contato, responderemos o mais breve possivel!</p><p>Atenciosamente,</p><p>Bb2 - Vestindo seu bebê</p>', 1, 2, 'http://www.bb2.com.br/agradecemos-seu-contato/', 0, 0, 2, '', '', '', '', 0, ''),
(3, 'form3', 1, '<p><span style=\"color: #555555;\">[email-17] [submit-20]</span></p>', 2, 'contato@bb2.com.br', '[email-17]', '', '', '', '', 1, '[text-18]', '<p>Olá vocês tem um cadastro de e-mail:</p><p>De : [email-17]</p><p>Obrigado<br />Bb2 - Vestindo seu bebê</p>', '[email-17]', 'Re:[text-18]', '<p>Hi [text-16],</p><p>Thank you for contacting us. Your mail has been received and shall be processed shortly.</p><p>Regards<br />Bb2 - Vestindo seu bebê</p>', 1, 1, 'http://www.bb2.com.br/agradecemos-seu-contato/', 0, 0, 2, '', '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_xyz_cfm_form_elements`
--

CREATE TABLE `wp_xyz_cfm_form_elements` (
  `id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `element_diplay_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `element_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `element_type` int(11) NOT NULL,
  `element_required` int(11) NOT NULL,
  `css_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `max_length` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `default_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cols` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `rows` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `options` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file_size` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `file_type` text COLLATE utf8_unicode_ci NOT NULL,
  `re_captcha` int(11) NOT NULL,
  `client_view_check_radio_line_break_count` int(11) NOT NULL DEFAULT '0',
  `client_view_multi_select_drop_down` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `wp_xyz_cfm_form_elements`
--

INSERT INTO `wp_xyz_cfm_form_elements` (`id`, `form_id`, `element_diplay_name`, `element_name`, `element_type`, `element_required`, `css_class`, `max_length`, `default_value`, `cols`, `rows`, `options`, `file_size`, `file_type`, `re_captcha`, `client_view_check_radio_line_break_count`, `client_view_multi_select_drop_down`) VALUES
(1, 1, '', 'yourName', 1, 1, '', '', '', '', '', '', '', '', 0, 0, 0),
(2, 1, '', 'yourEmail', 2, 1, '', '', '', '', '', '', '', '', 0, 0, 0),
(3, 1, '', 'subject', 1, 1, '', '', '', '', '', '', '', '', 0, 0, 0),
(4, 1, '', 'message', 3, 1, '', '', '', '45', '6', '', '', '', 0, 0, 0),
(5, 1, 'Enviar Mensagem', 'submit', 9, 1, '', '', '', '', '', '', '', '', 0, 0, 0),
(6, 1, '', 'Telefone', 1, 0, '', '', '', '', '', '', '', '', 0, 0, 0),
(7, 1, '', 'onde', 4, 0, '', '', '', '', '', 'Google,Jornais,Revistas,Representantes,Outros', '', '', 0, 0, 0),
(8, 2, '', 'yourName', 1, 1, '', '', '', '', '', '', '', '', 0, 0, 0),
(9, 2, '', 'yourEmail', 2, 1, '', '', '', '', '', '', '', '', 0, 0, 0),
(10, 2, '', 'subject', 1, 1, '', '', '', '', '', '', '', '', 0, 0, 0),
(11, 2, '', 'message', 3, 1, '', '', '', '45', '6', '', '', '', 0, 0, 0),
(12, 2, 'Enviar Foto', 'submit', 9, 1, '', '', '', '', '', '', '', '', 0, 0, 0),
(13, 2, '', 'foto', 8, 0, '', '', '', '', '', '', '', '', 0, 0, 0),
(14, 2, '', 'idade', 1, 0, '', '', '', '', '', '', '', '', 0, 0, 0),
(15, 2, '', 'data', 5, 0, '', '', '', '', '', '', '', '', 0, 0, 0),
(16, 3, '', 'yourName', 1, 1, '', '', '', '', '', '', '', '', 0, 0, 0),
(17, 3, '', 'yourEmail', 2, 1, '', '', '', '', '', '', '', '', 0, 0, 0),
(18, 3, '', 'subject', 1, 1, '', '', '', '', '', '', '', '', 0, 0, 0),
(19, 3, '', 'message', 3, 1, '', '', '', '45', '6', '', '', '', 0, 0, 0),
(20, 3, 'Ok', 'submit', 9, 1, '', '', '', '', '', '', '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_xyz_cfm_sender_email_address`
--

CREATE TABLE `wp_xyz_cfm_sender_email_address` (
  `id` int(11) NOT NULL,
  `authentication` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `port` int(11) NOT NULL,
  `security` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `set_default` int(1) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `name` (`name`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`);

--
-- Indexes for table `wp_xyz_cfm_form`
--
ALTER TABLE `wp_xyz_cfm_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_xyz_cfm_form_elements`
--
ALTER TABLE `wp_xyz_cfm_form_elements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_xyz_cfm_sender_email_address`
--
ALTER TABLE `wp_xyz_cfm_sender_email_address`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14111;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=690;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_xyz_cfm_form`
--
ALTER TABLE `wp_xyz_cfm_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_xyz_cfm_form_elements`
--
ALTER TABLE `wp_xyz_cfm_form_elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `wp_xyz_cfm_sender_email_address`
--
ALTER TABLE `wp_xyz_cfm_sender_email_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
