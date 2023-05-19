-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 19, 2023 at 04:08 PM
-- Server version: 10.6.12-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gmloiluz_gmloil`
--

-- --------------------------------------------------------

--
-- Table structure for table `dle_admin_logs`
--

CREATE TABLE `dle_admin_logs` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL DEFAULT '',
  `date` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(46) NOT NULL DEFAULT '',
  `action` int(11) NOT NULL DEFAULT 0,
  `extras` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dle_admin_logs`
--

INSERT INTO `dle_admin_logs` (`id`, `name`, `date`, `ip`, `action`, `extras`) VALUES
(1175, 'GML', 1671031351, '92.38.115.189', 82, ''),
(1176, 'GML', 1671031406, '92.38.115.189', 63, 'GMLOIL'),
(1177, 'GML', 1672037317, '62.209.154.114', 89, ''),
(1178, 'GML', 1672037526, '62.209.154.114', 82, ''),
(1179, 'GML', 1672037788, '62.209.154.114', 82, ''),
(1180, 'GML', 1672038062, '62.209.154.114', 60, 'kontakty'),
(1181, 'GML', 1672038186, '62.209.154.114', 60, 'kontakty'),
(1182, 'GML', 1672043857, '62.209.154.114', 86, 'https://gmloil.uz/gmladm.php?mod=static&amp;action=doedit&amp;page=rules'),
(1183, 'GML', 1672043894, '62.209.154.114', 49, ''),
(1184, 'GML', 1672044251, '62.209.154.114', 70, 'gmloil/modules/footer.tpl'),
(1185, 'GML', 1673536391, '92.38.112.230', 92, ''),
(1186, 'GMLOIL', 1673605322, '62.209.154.114', 89, ''),
(1187, 'GML', 1673605330, '62.209.154.114', 82, ''),
(1188, 'GML', 1673606126, '62.209.154.114', 70, 'gmloil/modules/desc-website.tpl'),
(1189, 'GML', 1673606223, '62.209.154.114', 70, 'gmloil/modules/desc-website.tpl'),
(1190, 'GML', 1673606396, '62.209.154.114', 70, 'gmloil/modules/header.tpl'),
(1191, 'GML', 1673606595, '62.209.154.114', 70, 'gmloil/modules/header.tpl'),
(1192, 'GML', 1673607534, '62.209.154.114', 70, 'gmloil/modules/footer.tpl'),
(1193, 'GML', 1673607845, '62.209.154.114', 70, 'gmloil/modules/benefit.tpl'),
(1194, 'GML', 1673610576, '62.209.154.114', 49, '');

-- --------------------------------------------------------

--
-- Table structure for table `dle_admin_sections`
--

CREATE TABLE `dle_admin_sections` (
  `id` mediumint(8) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `descr` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `allow_groups` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_banned`
--

CREATE TABLE `dle_banned` (
  `id` smallint(5) NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT 0,
  `descr` text NOT NULL,
  `date` varchar(15) NOT NULL DEFAULT '',
  `days` smallint(4) NOT NULL DEFAULT 0,
  `ip` varchar(46) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_banners`
--

CREATE TABLE `dle_banners` (
  `id` smallint(5) NOT NULL,
  `banner_tag` varchar(40) NOT NULL DEFAULT '',
  `descr` varchar(200) NOT NULL DEFAULT '',
  `code` text NOT NULL,
  `approve` tinyint(1) NOT NULL DEFAULT 0,
  `short_place` tinyint(1) NOT NULL DEFAULT 0,
  `bstick` tinyint(1) NOT NULL DEFAULT 0,
  `main` tinyint(1) NOT NULL DEFAULT 0,
  `category` varchar(255) NOT NULL DEFAULT '',
  `grouplevel` varchar(100) NOT NULL DEFAULT 'all',
  `start` varchar(15) NOT NULL DEFAULT '',
  `end` varchar(15) NOT NULL DEFAULT '',
  `fpage` tinyint(1) NOT NULL DEFAULT 0,
  `innews` tinyint(1) NOT NULL DEFAULT 0,
  `devicelevel` varchar(10) NOT NULL DEFAULT '',
  `allow_views` tinyint(1) NOT NULL DEFAULT 0,
  `max_views` int(11) NOT NULL DEFAULT 0,
  `allow_counts` tinyint(1) NOT NULL DEFAULT 0,
  `max_counts` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `clicks` int(11) NOT NULL DEFAULT 0,
  `rubric` mediumint(8) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dle_banners`
--

INSERT INTO `dle_banners` (`id`, `banner_tag`, `descr`, `code`, `approve`, `short_place`, `bstick`, `main`, `category`, `grouplevel`, `start`, `end`, `fpage`, `innews`, `devicelevel`, `allow_views`, `max_views`, `allow_counts`, `max_counts`, `views`, `clicks`, `rubric`) VALUES
(1, 'header', 'Верхний баннер', '<div style=\"text-align:center;\"><a href=\"/\" target=\"_blank\"><img src=\"http://gmloil.uz/templates/Default/images/_banner_.gif\" style=\"border: none;\" alt=\"\" /></a></div>', 1, 0, 0, 0, '0', 'all', '', '', 0, 0, 'all', 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dle_banners_logs`
--

CREATE TABLE `dle_banners_logs` (
  `id` int(11) UNSIGNED NOT NULL,
  `bid` int(11) NOT NULL DEFAULT 0,
  `click` tinyint(1) NOT NULL DEFAULT 0,
  `ip` varchar(46) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_banners_rubrics`
--

CREATE TABLE `dle_banners_rubrics` (
  `id` mediumint(8) NOT NULL,
  `parentid` mediumint(8) NOT NULL DEFAULT 0,
  `title` varchar(70) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_category`
--

CREATE TABLE `dle_category` (
  `id` mediumint(8) NOT NULL,
  `parentid` mediumint(8) NOT NULL DEFAULT 0,
  `posi` mediumint(8) NOT NULL DEFAULT 1,
  `name` varchar(50) NOT NULL DEFAULT '',
  `alt_name` varchar(50) NOT NULL DEFAULT '',
  `icon` varchar(200) NOT NULL DEFAULT '',
  `skin` varchar(50) NOT NULL DEFAULT '',
  `descr` varchar(300) NOT NULL DEFAULT '',
  `keywords` text NOT NULL,
  `news_sort` varchar(10) NOT NULL DEFAULT '',
  `news_msort` varchar(4) NOT NULL DEFAULT '',
  `news_number` smallint(5) NOT NULL DEFAULT 0,
  `short_tpl` varchar(40) NOT NULL DEFAULT '',
  `full_tpl` varchar(40) NOT NULL DEFAULT '',
  `metatitle` varchar(255) NOT NULL DEFAULT '',
  `show_sub` tinyint(1) NOT NULL DEFAULT 0,
  `allow_rss` tinyint(1) NOT NULL DEFAULT 1,
  `fulldescr` text NOT NULL,
  `disable_search` tinyint(1) NOT NULL DEFAULT 0,
  `disable_main` tinyint(1) NOT NULL DEFAULT 0,
  `disable_rating` tinyint(1) NOT NULL DEFAULT 0,
  `disable_comments` tinyint(1) NOT NULL DEFAULT 0,
  `enable_dzen` tinyint(1) NOT NULL DEFAULT 1,
  `enable_turbo` tinyint(1) NOT NULL DEFAULT 1,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `rating_type` tinyint(1) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dle_category`
--

INSERT INTO `dle_category` (`id`, `parentid`, `posi`, `name`, `alt_name`, `icon`, `skin`, `descr`, `keywords`, `news_sort`, `news_msort`, `news_number`, `short_tpl`, `full_tpl`, `metatitle`, `show_sub`, `allow_rss`, `fulldescr`, `disable_search`, `disable_main`, `disable_rating`, `disable_comments`, `enable_dzen`, `enable_turbo`, `active`, `rating_type`) VALUES
(1, 0, 4, 'Моторные масла', 'motornye-masla', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1, -1),
(2, 0, 5, 'Дизельные масла', 'dizelnye-masla', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1, -1),
(3, 0, 6, 'Гидравлические масла', 'gidravlicheskie-masla', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1, -1),
(4, 0, 7, 'Компрессорные масла', 'kompressornye-masla', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1, -1),
(5, 0, 8, 'Редукторные масла', 'reduktornye-masla', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1, -1),
(6, 0, 9, 'Трансмиссионные масла', 'transmissionnye-masla', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1, -1),
(7, 0, 10, 'Турбинные масла', 'turbinnye-masla', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1, -1),
(8, 0, 11, 'Промышленные масла', 'promyshlennye-masla', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1, -1),
(9, 0, 12, 'Охлаждающие жидкости', 'ohlazhdajuschie-zhidkosti', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1, -1),
(10, 0, 13, 'Холодильные масла', 'holodilnye-masla', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1, -1),
(11, 0, 14, 'Масла теплоносители', 'masla-teplonositeli', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1, -1),
(12, 0, 17, 'Смазки', 'smazki', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1, -1),
(13, 0, 18, 'Антифриз', 'antifriz', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1, -1),
(15, 0, 16, 'Вакуумные масла', 'vakuumnye-masla', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1, -1),
(16, 0, 15, 'Трансформаторные масла', 'transformatornye-masla', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1, -1),
(17, 0, 3, 'Масла', 'masla', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1, -1),
(18, 0, 2, 'Информация', 'newscount', '', '', '', '', '', '', 0, 'shortstory-news', '', '', 0, 1, '', 0, 1, 1, 1, 1, 1, 1, -1),
(19, 0, 1, 'Новости', 'novosti', '', '', '', '', '', '', 0, 'shortstory-news', 'fullstory-news', '', 0, 1, '', 0, 1, 1, 1, 1, 1, 1, -1);

-- --------------------------------------------------------

--
-- Table structure for table `dle_comments`
--

CREATE TABLE `dle_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `date` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `autor` varchar(40) NOT NULL DEFAULT '',
  `email` varchar(40) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `ip` varchar(46) NOT NULL DEFAULT '',
  `is_register` tinyint(1) NOT NULL DEFAULT 0,
  `approve` tinyint(1) NOT NULL DEFAULT 1,
  `rating` int(11) NOT NULL DEFAULT 0,
  `vote_num` int(11) NOT NULL DEFAULT 0,
  `parent` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_comments_files`
--

CREATE TABLE `dle_comments_files` (
  `id` int(10) NOT NULL,
  `c_id` int(10) NOT NULL DEFAULT 0,
  `author` varchar(40) NOT NULL DEFAULT '',
  `date` varchar(15) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `driver` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_comment_rating_log`
--

CREATE TABLE `dle_comment_rating_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `c_id` int(11) NOT NULL DEFAULT 0,
  `member` varchar(40) NOT NULL DEFAULT '',
  `ip` varchar(46) NOT NULL DEFAULT '',
  `rating` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_complaint`
--

CREATE TABLE `dle_complaint` (
  `id` int(11) UNSIGNED NOT NULL,
  `p_id` int(11) NOT NULL DEFAULT 0,
  `c_id` int(11) NOT NULL DEFAULT 0,
  `n_id` int(11) NOT NULL DEFAULT 0,
  `text` text NOT NULL,
  `from` varchar(40) NOT NULL DEFAULT '',
  `to` varchar(255) NOT NULL DEFAULT '',
  `date` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `email` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_email`
--

CREATE TABLE `dle_email` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(10) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `use_html` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dle_email`
--

INSERT INTO `dle_email` (`id`, `name`, `template`, `use_html`) VALUES
(1, 'reg_mail', '{%username%},\r\n\r\nЭто письмо отправлено с сайта http://gmloil.uz/\r\n\r\nВы получили это письмо, так как этот e-mail адрес был использован при регистрации на сайте. Если Вы не регистрировались на этом сайте, просто проигнорируйте это письмо и удалите его. Вы больше не получите такого письма.\r\n\r\n------------------------------------------------\r\nВаш логин и пароль на сайте:\r\n------------------------------------------------\r\n\r\nЛогин: {%username%}\r\nПароль: {%password%}\r\n\r\n------------------------------------------------\r\nИнструкция по активации\r\n------------------------------------------------\r\n\r\nБлагодарим Вас за регистрацию.\r\nМы требуем от Вас подтверждения Вашей регистрации, для проверки того, что введённый Вами e-mail адрес - реальный. Это требуется для защиты от нежелательных злоупотреблений и спама.\r\n\r\nДля активации Вашего аккаунта, зайдите по следующей ссылке:\r\n\r\n{%validationlink%}\r\n\r\nЕсли и при этих действиях ничего не получилось, возможно Ваш аккаунт удалён. В этом случае, обратитесь к Администратору, для разрешения проблемы.\r\n\r\nС уважением,\r\n\r\nАдминистрация http://gmloil.uz/.', 0),
(2, 'feed_mail', '{%username_to%},\r\n\r\nДанное письмо вам отправил {%username_from%} с сайта http://gmloil.uz/\r\n\r\n------------------------------------------------\r\nТекст сообщения\r\n------------------------------------------------\r\n\r\n{%text%}\r\n\r\nIP адрес отправителя: {%ip%}\r\nГруппа: {%group%}\r\n\r\n------------------------------------------------\r\nПомните, что администрация сайта не несет ответственности за содержание данного письма\r\n\r\nС уважением,\r\n\r\nАдминистрация http://gmloil.uz/', 0),
(3, 'lost_mail', 'Уважаемый {%username%},\r\n\r\nВы сделали запрос на получение забытого пароля на сайте http://gmloil.uz/ Однако в целях безопасности все пароли хранятся в зашифрованном виде, поэтому мы не можем сообщить вам ваш старый пароль, поэтому если вы хотите сгенерировать новый пароль, зайдите по следующей ссылке: \r\n\r\n{%lostlink%}\r\n\r\nЕсли вы не делали запроса для получения пароля, то просто удалите данное письмо, ваш пароль храниться в надежном месте, и недоступен посторонним лицам.\r\n\r\nIP адрес отправителя: {%ip%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://gmloil.uz/', 0),
(4, 'new_news', 'Уважаемый администратор,\r\n\r\nуведомляем вас о том, что на сайт  http://gmloil.uz/ была добавлена новость, которая в данный момент ожидает модерации.\r\n\r\n------------------------------------------------\r\nКраткая информация о новости\r\n------------------------------------------------\r\n\r\nАвтор: {%username%}\r\nЗаголовок новости: {%title%}\r\nКатегория: {%category%}\r\nДата добавления: {%date%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://gmloil.uz/', 0),
(5, 'comments', 'Уважаемый {%username_to%},\r\n\r\nуведомляем вас о том, что на сайт  http://gmloil.uz/ был добавлен комментарий к новости, на которую вы были подписаны.\r\n\r\n------------------------------------------------\r\nКраткая информация о комментарии\r\n------------------------------------------------\r\n\r\nАвтор: {%username%}\r\nДата добавления: {%date%}\r\nСсылка на новость: {%link%}\r\n\r\n------------------------------------------------\r\nТекст комментария\r\n------------------------------------------------\r\n\r\n{%text%}\r\n\r\n------------------------------------------------\r\n\r\nЕсли вы не хотите больше получать уведомлений о новых комментариях к данной новости, то проследуйте по данной ссылке: {%unsubscribe%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://gmloil.uz/', 0),
(6, 'pm', 'Уважаемый {%username%},\r\n\r\nуведомляем вас о том, что на сайте  http://gmloil.uz/ вам было отправлено персональное сообщение.\r\n\r\n------------------------------------------------\r\nКраткая информация о сообщении\r\n------------------------------------------------\r\n\r\nОтправитель: {%fromusername%}\r\nДата  получения: {%date%}\r\nЗаголовок: {%title%}\r\n\r\n------------------------------------------------\r\nТекст сообщения\r\n------------------------------------------------\r\n\r\n{%text%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://gmloil.uz/', 0),
(7, 'wait_mail', 'Уважаемый {%username%},\r\n\r\nВы сделали запрос на обьединение  вашего аккаунта на сайте http://gmloil.uz/ с аккаунтом в социальной сети {%network%}.  Однако в целях безопасности вам необходимо подтвердить данное действие по следующей ссылке: \r\n\r\n------------------------------------------------\r\n{%link%}\r\n------------------------------------------------\r\n\r\nЕсли вы не делали данного запроса, то просто удалите это письмо, данные вашего аккаунта хранятся в надежном месте, и недоступны посторонним лицам.\r\n\r\nIP адрес отправителя: {%ip%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://gmloil.uz/', 0),
(8, 'newsletter', '<html>\r\n<head>\r\n<title>{%title%}</title>\r\n<meta content=\"text/html; charset={%charset%}\" http-equiv=Content-Type>\r\n<style type=\"text/css\">\r\nhtml,body{\r\n    font-family: Verdana;\r\n    word-spacing: 0.1em;\r\n    letter-spacing: 0;\r\n    line-height: 1.5em;\r\n    font-size: 11px;\r\n}\r\n\r\np {\r\n	margin:0px;\r\n	padding: 0px;\r\n}\r\n\r\na:active,\r\na:visited,\r\na:link {\r\n	color: #4b719e;\r\n	text-decoration:none;\r\n}\r\n\r\na:hover {\r\n	color: #4b719e;\r\n	text-decoration: underline;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n{%content%}\r\n</body>\r\n</html>', 0),
(9, 'twofactor', '{%username%},\r\n\r\nЭто письмо отправлено с сайта http://gmloil.uz/\r\n\r\nВы получили это письмо, так как для вашего аккаунта включена двухфакторная авторизация. Для авторизации на сайте вам необходимо ввести полученный вами пин-код.\r\n\r\n------------------------------------------------\r\nПин-код:\r\n------------------------------------------------\r\n\r\n{%pin%}\r\n\r\n------------------------------------------------\r\nЕсли Вы не авторизовывались на нашем сайте, то ваш пароль известен посторонним лицам. Вам нужно незамедлительно зайти на сайт под своим логином и паролем, и в своем профиле изменить свой пароль.\r\n\r\nIP пользователя который ввел пароль: {%ip%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://gmloil.uz/', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dle_files`
--

CREATE TABLE `dle_files` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(250) NOT NULL DEFAULT '',
  `onserver` varchar(250) NOT NULL DEFAULT '',
  `author` varchar(40) NOT NULL DEFAULT '',
  `date` varchar(15) NOT NULL DEFAULT '',
  `dcount` int(11) NOT NULL DEFAULT 0,
  `size` bigint(20) NOT NULL DEFAULT 0,
  `checksum` char(32) NOT NULL DEFAULT '',
  `driver` tinyint(1) NOT NULL DEFAULT 0,
  `is_public` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dle_files`
--

INSERT INTO `dle_files` (`id`, `news_id`, `name`, `onserver`, `author`, `date`, `dcount`, `size`, `checksum`, `driver`, `is_public`) VALUES
(1, 4, 'pasport-gml-amt-300-2022.png', '2022-05/1651579166_pasport-gml-amt-300-2022.png', 'GML', '1651579166', 6, 916773, '26bcfb5f54edd1f8c3d2f200587eda9f', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dle_flood`
--

CREATE TABLE `dle_flood` (
  `f_id` int(11) UNSIGNED NOT NULL,
  `ip` varchar(46) NOT NULL DEFAULT '',
  `id` varchar(20) NOT NULL DEFAULT '',
  `flag` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_ignore_list`
--

CREATE TABLE `dle_ignore_list` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL DEFAULT 0,
  `user_from` varchar(40) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_images`
--

CREATE TABLE `dle_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `images` text NOT NULL,
  `news_id` int(10) NOT NULL DEFAULT 0,
  `author` varchar(40) NOT NULL DEFAULT '',
  `date` varchar(15) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dle_images`
--

INSERT INTO `dle_images` (`id`, `images`, `news_id`, `author`, `date`) VALUES
(2, '2022-05/barell-gml-variant-2-kopija.png|1|1|1000x666|101.88 Kb|||2022-05/gml-bochka2.jpg|1|0|1000x666|40.93 Kb', 4, 'GML', '1650426405'),
(5, '2022-05/porshe-gml-kopija.png|1|1|688x468|116.54 Kb|||2022-05/offline-kopija-2.png|1|1|800x615|8.31 Kb|||2022-05/111112222.png|1|1|760x800|18.03 Kb', 5, 'GML', '1651500336'),
(8, '2022-05/offline2111-kopija.jpg|1|1|800x770|21.44 Kb', 9, 'GML', '1651669697'),
(9, '2022-05/3449245.png|1|1|800x640|131.28 Kb', 8, 'GML', '1651670479'),
(10, '2022-05/1651670554_111112222.png|1|1|760x800|18.03 Kb|||2022-05/bezymjannyj-1.png|1|1|800x469|58.94 Kb', 10, 'GML', '1651670561'),
(11, '2022-05/image.png|1|1|757x446|35.22 Kb|||2022-05/1652685059_image.png|1|1|757x446|35.22 Kb|||2022-05/1652686113_photo1649229232.jpg|1|0|960x1280|92.43 Kb', 13, 'GML', '1652685042'),
(12, '2022-05/photo1649229232.jpg|1|0|960x1280|92.43 Kb', 14, 'GML', '1652686044'),
(13, '2022-05/1652712841_photo1649229232.jpg|1|0|960x1280|92.43 Kb', 16, 'GML', '1652712843'),
(14, '2022-05/1652714402_photo1649229232.jpg|1|0|960x1280|92.43 Kb', 17, 'GML', '1652714404'),
(15, '2022-05/1652715166_photo1649229232.jpg|1|0|960x1280|92.43 Kb', 18, 'GML', '1652715170'),
(16, '2022-05/1652852398_photo1649229232.jpg|1|0|960x1280|92.43 Kb', 12, 'GML', '1652852401');

-- --------------------------------------------------------

--
-- Table structure for table `dle_links`
--

CREATE TABLE `dle_links` (
  `id` int(11) UNSIGNED NOT NULL,
  `word` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `only_one` tinyint(1) NOT NULL DEFAULT 0,
  `replacearea` tinyint(1) NOT NULL DEFAULT 1,
  `rcount` tinyint(3) NOT NULL DEFAULT 0,
  `targetblank` tinyint(1) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_login_log`
--

CREATE TABLE `dle_login_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip` varchar(46) NOT NULL DEFAULT '',
  `count` smallint(6) NOT NULL DEFAULT 0,
  `date` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_logs`
--

CREATE TABLE `dle_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) NOT NULL DEFAULT 0,
  `member` varchar(40) NOT NULL DEFAULT '',
  `ip` varchar(46) NOT NULL DEFAULT '',
  `rating` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_lostdb`
--

CREATE TABLE `dle_lostdb` (
  `id` mediumint(8) NOT NULL,
  `lostname` mediumint(8) NOT NULL DEFAULT 0,
  `lostid` varchar(40) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_mail_log`
--

CREATE TABLE `dle_mail_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `mail` varchar(50) NOT NULL DEFAULT '',
  `hash` varchar(40) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_metatags`
--

CREATE TABLE `dle_metatags` (
  `id` int(11) UNSIGNED NOT NULL,
  `url` varchar(250) NOT NULL DEFAULT '',
  `title` varchar(200) NOT NULL DEFAULT '',
  `description` varchar(300) NOT NULL DEFAULT '',
  `keywords` text NOT NULL,
  `page_title` varchar(255) NOT NULL DEFAULT '',
  `page_description` text NOT NULL,
  `robots` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_notice`
--

CREATE TABLE `dle_notice` (
  `id` mediumint(8) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `notice` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_plugins`
--

CREATE TABLE `dle_plugins` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `version` varchar(10) NOT NULL DEFAULT '',
  `dleversion` varchar(10) NOT NULL DEFAULT '',
  `versioncompare` char(2) NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `mysqlinstall` text NOT NULL,
  `mysqlupgrade` text NOT NULL,
  `mysqlenable` text NOT NULL,
  `mysqldisable` text NOT NULL,
  `mysqldelete` text NOT NULL,
  `filedelete` tinyint(1) NOT NULL DEFAULT 0,
  `filelist` text NOT NULL,
  `upgradeurl` varchar(255) NOT NULL DEFAULT '',
  `needplugin` varchar(100) NOT NULL DEFAULT '',
  `phpinstall` text NOT NULL,
  `phpupgrade` text NOT NULL,
  `phpenable` text NOT NULL,
  `phpdisable` text NOT NULL,
  `phpdelete` text NOT NULL,
  `notice` text NOT NULL,
  `mnotice` tinyint(1) NOT NULL DEFAULT 0,
  `posi` mediumint(8) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_plugins_files`
--

CREATE TABLE `dle_plugins_files` (
  `id` int(11) NOT NULL,
  `plugin_id` int(11) NOT NULL DEFAULT 0,
  `file` varchar(255) NOT NULL DEFAULT '',
  `action` varchar(10) NOT NULL DEFAULT '',
  `searchcode` text NOT NULL,
  `replacecode` mediumtext NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `searchcount` smallint(6) NOT NULL DEFAULT 0,
  `replacecount` smallint(6) NOT NULL DEFAULT 0,
  `filedisable` tinyint(1) NOT NULL DEFAULT 1,
  `filedleversion` varchar(10) NOT NULL DEFAULT '',
  `fileversioncompare` char(2) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_plugins_logs`
--

CREATE TABLE `dle_plugins_logs` (
  `id` int(11) NOT NULL,
  `plugin_id` int(11) NOT NULL DEFAULT 0,
  `area` text NOT NULL,
  `error` text NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT '',
  `action_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_pm`
--

CREATE TABLE `dle_pm` (
  `id` int(11) UNSIGNED NOT NULL,
  `subj` varchar(255) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `user` mediumint(8) NOT NULL DEFAULT 0,
  `user_from` varchar(40) NOT NULL DEFAULT '',
  `date` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pm_read` tinyint(1) NOT NULL DEFAULT 0,
  `folder` varchar(10) NOT NULL DEFAULT '',
  `reply` tinyint(1) NOT NULL DEFAULT 0,
  `sendid` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_poll`
--

CREATE TABLE `dle_poll` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(200) NOT NULL DEFAULT '',
  `frage` varchar(200) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `votes` mediumint(8) NOT NULL DEFAULT 0,
  `multiple` tinyint(1) NOT NULL DEFAULT 0,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_poll_log`
--

CREATE TABLE `dle_poll_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `member` varchar(40) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_post`
--

CREATE TABLE `dle_post` (
  `id` int(11) NOT NULL,
  `autor` varchar(40) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `short_story` mediumtext NOT NULL,
  `full_story` mediumtext NOT NULL,
  `xfields` mediumtext NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `descr` varchar(300) NOT NULL DEFAULT '',
  `keywords` text NOT NULL,
  `category` varchar(190) NOT NULL DEFAULT '0',
  `alt_name` varchar(190) NOT NULL DEFAULT '',
  `comm_num` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `allow_comm` tinyint(1) NOT NULL DEFAULT 1,
  `allow_main` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `approve` tinyint(1) NOT NULL DEFAULT 0,
  `fixed` tinyint(1) NOT NULL DEFAULT 0,
  `allow_br` tinyint(1) NOT NULL DEFAULT 1,
  `symbol` varchar(3) NOT NULL DEFAULT '',
  `tags` varchar(255) NOT NULL DEFAULT '',
  `metatitle` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dle_post`
--

INSERT INTO `dle_post` (`id`, `autor`, `date`, `short_story`, `full_story`, `xfields`, `title`, `descr`, `keywords`, `category`, `alt_name`, `comm_num`, `allow_comm`, `allow_main`, `approve`, `fixed`, `allow_br`, `symbol`, `tags`, `metatitle`) VALUES
(4, 'GML', '2022-05-18 10:52:06', '<p><a href=\\\"https://gmloil.uz/uploads/posts/2022-05/barell-gml-variant-2-kopija.png\\\" class=\\\"highslide\\\" target=\\\"_blank\\\"><img src=\\\"https://gmloil.uz/uploads/posts/2022-05/barell-gml-variant-2-kopija.png\\\" alt=\\\"\\\" style=\\\"display:block;margin-left:auto;margin-right:auto;\\\"> </a><a href=\\\"https://gmloil.uz/uploads/posts/2022-05/barell-gml-variant-2-kopija.png\\\" class=\\\"highslide\\\" target=\\\"_blank\\\"> </a><a href=\\\"https://gmloil.uz/uploads/posts/2022-04/1650426401_barell-gml-variant-2-kopija.png\\\" class=\\\"highslide\\\" target=\\\"_blank\\\">   <img src=\\\"https://gmloil.uz/uploads/posts/2022-04/thumbs/1650426401_barell-gml-variant-2-kopija.png\\\" alt=\\\"\\\" style=\\\"display:block;margin-left:auto;margin-right:auto;\\\"></a></p>', '<h3>Масло теплоноситель АМТ-300 GML</h3>\n<p><span>Масло-теплоноситель GML АМТ 300 разработано на основе экстрактов фенольной очистки дистиллятов сернистых нефтей путём их последующей депарафинизации и гидрокаталитической доочистки.</span></p>\n<h3>Применение</h3>\n<ul>\n<li>Масло GML АМТ-300 рекомендуется для применения в качестве теплоносителя в закрытых системах, исключающих контакт горячего масла с воздухом, а также оборудованных принудительной циркуляцией при температуре не выше 300 °С.</li>\n<li>При использовании масла АМТ300 необходимо соблюдать меры пожарной безопасности: установки и системы высокотемпературного обогрева маслом и помещения, в которых они размещены, должны быть выполнены в соответствии с ПЭУ-76.</li>\n<li>Масло обеспечивает быстрый и эффективный отвод тепла от оборудования.</li>\n</ul>\n<h3>Преимущества</h3>\n<ul>\n<li>Высокая теплоёмкость и теплопроводность обеспечивают высокую скорость передачи тепла и как следствие повышение производительности оборудования.</li>\n<li>Высокая стабильность против термического разложения предотвращает образование коксовых отложений на стенках теплообменника, что увеличивает срок службы оборудования.</li>\n<li>Оптимальная вязкость обеспечивает высокую скорость передачи тепла при разных температурах, что даёт возможность работать в широком температурном диапазоне.</li>\n<li>Оптимальный состав масла предотвращает негативное воздействие на конструкционные материалы, что увеличивает максимальный ресурс работы теплообменников.</li>\n</ul>', 'postavka|<p><b> Информация -</b></p>\n<ul>\n<li>\n<pre><b>Бочка: </b>Металлическая</pre>\n</li>\n<li>\n<pre><b>Фасовка: </b>180 кг / 205 литров</pre>\n</li>\n</ul>||info|<p><b>Производитель:</b>\\\"GML OIL\\\"</p>\n<p><b>Страна изготовления:</b> Россия</p>\n<p><b>Импортер/Продавец:</b> OOO \\\"IMPERIAL OIL GROUP\\\"</p>\n<p><b>Срок годности:</b> смотрите на упаковке</p>\n<p><b>Сертификат:</b> по запросу</p>\n<p><br></p>||specifications|<table width=\\\"0\\\">\n<tbody>\n<tr>\n<td width=\\\"29\\\">\n<p><strong>№ </strong></p>\n</td>\n<td width=\\\"330\\\">\n<p><strong>Наименование показателей </strong></p>\n</td>\n<td width=\\\"151\\\">\n<p><strong>НД на метод испытаний </strong></p>\n</td>\n<td width=\\\"85\\\">\n<p><strong>Норма </strong></p>\n</td>\n<td width=\\\"95\\\">\n<p><strong> </strong></p>\n<p><strong>Результат испытаний </strong></p>\n</td>\n</tr>\n<tr>\n<td width=\\\"29\\\">\n<p>1</p>\n</td>\n<td width=\\\"330\\\">\n<p>Вязкость кинематическая при 100⁰С, мм<sup>2</sup>/с, не более</p>\n</td>\n<td width=\\\"151\\\">\n<p>ISO 3104 (ГОСТ 33)</p>\n</td>\n<td width=\\\"85\\\">\n<p>-</p>\n</td>\n<td width=\\\"95\\\">\n<p>5,55</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"29\\\">\n<p>2</p>\n</td>\n<td width=\\\"330\\\">\n<p>Вязкость кинематическая при 50⁰С, мм<sup>2</sup>/с, не более</p>\n</td>\n<td width=\\\"151\\\">\n<p> ISO 3104 (ГОСТ 33)</p>\n</td>\n<td width=\\\"85\\\">\n<p>-</p>\n</td>\n<td width=\\\"95\\\">\n<p>25,39</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"29\\\">\n<p>3</p>\n</td>\n<td width=\\\"330\\\">\n<p>Показатель преломления при 50⁰С, не менее</p>\n</td>\n<td width=\\\"151\\\">\n<p>По ГОСТ 18995.2-73</p>\n</td>\n<td width=\\\"85\\\">\n<p>1,50</p>\n</td>\n<td width=\\\"95\\\">\n<p>1,54</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"29\\\">\n<p>4</p>\n</td>\n<td width=\\\"330\\\">\n<p>Температура вспышки в отрытом тигле, ⁰С, не ниже</p>\n</td>\n<td width=\\\"151\\\">\n<p>ГОСТ 4333</p>\n</td>\n<td width=\\\"85\\\">\n<p>220-230</p>\n</td>\n<td width=\\\"95\\\">\n<p>230</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"29\\\">\n<p>5</p>\n</td>\n<td width=\\\"330\\\">\n<p>Температура застывания, ⁰С, не выше</p>\n</td>\n<td width=\\\"151\\\">\n<p>ГОСТ 20287</p>\n</td>\n<td width=\\\"85\\\">\n<p>-10-15</p>\n</td>\n<td width=\\\"95\\\">\n<p>-13</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"29\\\">\n<p>6</p>\n</td>\n<td width=\\\"330\\\">\n<p>Индекс омыления, мг КОН</p>\n</td>\n<td width=\\\"151\\\">\n<p>ISO 6293-1  (ГОСТ 17362)</p>\n</td>\n<td width=\\\"85\\\">\n<p>-</p>\n</td>\n<td width=\\\"95\\\">\n<p>0,5</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"29\\\">\n<p>7</p>\n</td>\n<td width=\\\"330\\\">\n<p>Плотность при 20⁰С, кг/м3, не более</p>\n</td>\n<td width=\\\"151\\\">\n<p>ГОСТ Р 51069</p>\n</td>\n<td width=\\\"85\\\">\n<p>0,96-1,01</p>\n</td>\n<td width=\\\"95\\\">\n<p>1,087</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"29\\\">\n<p>8</p>\n</td>\n<td width=\\\"330\\\">\n<p>Содержание воды, %, не более</p>\n</td>\n<td width=\\\"151\\\">\n<p> ГОСТ 2477-2014</p>\n</td>\n<td width=\\\"85\\\">\n<p>Отсутствие</p>\n</td>\n<td width=\\\"95\\\">\n<p>Отсутствие</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"29\\\">\n<p>9</p>\n</td>\n<td width=\\\"330\\\">\n<p>Содержание механических примесей, %, не более</p>\n</td>\n<td width=\\\"151\\\">\n<p>ГОСТ 6370</p>\n</td>\n<td width=\\\"85\\\">\n<p>-</p>\n</td>\n<td width=\\\"95\\\">\n<p>0,003</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"29\\\">\n<p>10</p>\n</td>\n<td width=\\\"330\\\">\n<p>Кислотное число, мг КОН/г, не более</p>\n</td>\n<td width=\\\"151\\\">\n<p>ГОСТ 5985-79</p>\n</td>\n<td width=\\\"85\\\">\n<p>0,3</p>\n</td>\n<td width=\\\"95\\\">\n<p>0,3</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"29\\\">\n<p>11</p>\n</td>\n<td width=\\\"330\\\">\n<p>Цвет, ед. ЦНТ, не более (с разбавлением 1:100)</p>\n</td>\n<td width=\\\"151\\\">\n<p>ATM D1500</p>\n</td>\n<td width=\\\"85\\\">\n<p>-</p>\n</td>\n<td width=\\\"95\\\">\n<p>L 1,5</p>\n</td>\n</tr>\n<tr>\n<td rowspan=\\\"2\\\" width=\\\"29\\\">\n<p> </p>\n<p> </p>\n<p>12</p>\n</td>\n<td width=\\\"330\\\">\n<p>Фракционный состав, ⁰С:</p>\n</td>\n<td rowspan=\\\"2\\\" width=\\\"151\\\">\n<p>ISO 3405</p>\n<p>(эквивалентный ASTM D86)*</p>\n<p>ГОСТ Р 57036-2016</p>\n</td>\n<td rowspan=\\\"2\\\" width=\\\"85\\\">\n<p> </p>\n<p> </p>\n<p>-</p>\n</td>\n<td rowspan=\\\"2\\\" width=\\\"95\\\">\n<p> </p>\n<p>Не может быть</p>\n<p>определено**</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"330\\\">\n<p>Отгон при температуре 250 <sup>0</sup>С,%</p>\n<p>Отгон при температуре 300 <sup>0</sup>С,%</p>\n<p>Отгон при температуре 350 <sup>0</sup>С, %</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"29\\\">\n<p> </p>\n<p>13</p>\n</td>\n<td width=\\\"330\\\">\n<p> </p>\n<p>Содержание сульфатной золы, %</p>\n</td>\n<td width=\\\"151\\\">\n<p>ISO 3987</p>\n<p>(эквивалентный ГОСТ 12417)</p>\n</td>\n<td width=\\\"85\\\">\n<p> </p>\n<p>-</p>\n</td>\n<td width=\\\"95\\\">\n<p> </p>\n<p>0,01</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"29\\\">\n<p> </p>\n<p>14</p>\n</td>\n<td width=\\\"330\\\">\n<p> </p>\n<p>Температура потери текучести, <sup>0</sup>С</p>\n</td>\n<td width=\\\"151\\\">\n<p>ISO 3016  (ГОСТ20287 метод А)</p>\n</td>\n<td width=\\\"85\\\">\n<p> </p>\n<p>-</p>\n</td>\n<td width=\\\"95\\\">\n<p> </p>\n<p>-11</p>\n</td>\n</tr>\n</tbody>\n</table>||galery_photo|2022-05/gml-bochka2.jpg&#124;1&#124;0&#124;1000x666&#124;40.93 Kb||tds|GML_AMT300||article|GML-AMT||barcode|7930110380477||cena|0||nalichie|1||type|Минеральное||bar|216,5 л||akcija|0||novinka|0', 'Масло теплоноситель АМТ-300 GML', 'Масло-теплоноситель GML АМТ 300 разработано на основе экстрактов фенольной очистки дистиллятов сернистых нефтей путём их последующей депарафинизации и гидрокаталитической доочистки. Применение Масло GML АМТ-300 рекомендуется для применения в качестве теплоносителя в закрытых системах, исключающих', 'масла, тепла, оборудования, Температура, Масло, АМТ300, обеспечивает, Высокая, высокую, скорость, передачи, предотвращает, увеличивает, вязкость, состав, Типовые, объема, выкипает, Маслотеплоноситель, разработано', '17,11', 'maslo-teplonositel-amt-300-gml', 0, 1, 1, 1, 1, 0, '', '', ''),
(5, 'GML', '2022-05-02 19:03:25', '<p> <img src=\\\"https://gmloil.uz/uploads/posts/2022-05/111112222.png\\\" alt=\\\"\\\" style=\\\"display:block;margin-left:auto;margin-right:auto;\\\">  </p>', '<p style=\\\"text-align:center;\\\"><img src=\\\"https://gmloil.uz/uploads/posts/2022-05/porshe-gml-kopija.png\\\" alt=\\\"\\\" width=\\\"498\\\" height=\\\"344\\\" style=\\\"display:block;margin-left:auto;margin-right:auto;\\\"> <br><br><span style=\\\"font-size:12pt;\\\">Бренд GML OIL - реализует ассортимент нефти-продукции на территории Узбекистана с 2022 года, качественный продукт по приятной стоимости отвечающий всем последним требованиям в мире смазочных материалов. \\\"</span><span style=\\\"font-size:12pt;\\\">General Machinery Lubricants - и этим все сказано!\\\" Продажа масел и смазочных материалов, а также охлаждающей жидкостей - СОЖ и антифризов на всей территории Узбекистана.\\\" </span><span style=\\\"font-size:12pt;\\\">OOO \\\"IMPERAIL OIL GROUP\\\" - \\\"Представитель бренда GML UZBEKISTAN.</span></p>', 'article|По запросу||nalichie|0||akcija|0||novinka|0', 'О Бренде GML OIL', '1 1', 'территории, Узбекистана, смазочных, материалов, Бренд, реализует, ассортимент, нефтипродукции, качественный, продукт, приятной, стоимости, отвечающий, последним, требованиям, General, Machinery, Lubricants, сказано, Продажа', '14,18', '1', 0, 1, 0, 1, 0, 0, '', '', ''),
(8, 'GML', '2022-05-04 18:04:08', '<p><img src=\\\"http://gmloil.uz/uploads/posts/2022-05/3449245.png\\\" alt=\\\"\\\" style=\\\"display:block;margin-left:auto;margin-right:auto;\\\"> </p>', '<p>Ассортимент масел GML</p>', 'postavka|<p><b> Информация -</b></p>\n<ul>\n<li>\n<pre><b>Бочка: </b>Металлическая</pre>\n</li>\n<li>\n<pre><b>Фасовка: </b>180 кг / 205 литров</pre>\n</li>\n</ul>||info|<p><b>Производитель:</b>\\\"GML OIL\\\"</p>\n<p><b>Страна изготовления:</b> Россия</p>\n<p><b>Импортер/Продавец:</b> OOO \\\"IMPERIAL OIL GROUP\\\"</p>\n<p><b>Срок годности:</b> смотрите на упаковке</p>\n<p><b>Сертификат:</b> по запросу</p>||specifications|<p><br></p>\n<p><br></p>\n<table width=\\\"97%\\\" style=\\\"height:285.391px;\\\">\n<tbody>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\">\n<p><strong>Наименование показателей</strong></p>\n</td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\">\n<p><strong>Методы испытания</strong></p>\n</td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\">\n<p><strong>Значения</strong></p>\n</td>\n</tr>\n<tr style=\\\"height:20.125px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:20.125px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:20.125px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:20.125px;\\\"></td>\n</tr>\n<tr style=\\\"height:20.125px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:20.125px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:20.125px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:20.125px;\\\"></td>\n</tr>\n<tr style=\\\"height:20.125px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:20.125px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:20.125px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:20.125px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:10.516px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:10.516px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:10.516px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:10.516px;\\\"></td>\n</tr>\n</tbody>\n</table>||article|По запросу||barcode|7930110380477||nalichie|0||type|Минеральное||bar|216,5 л||akcija|0||novinka|0', 'Ассортимент масел GML', 'Ассортимент масел GML Ассортимент масел GML', 'Ассортимент, масел', '14,18', 'assortiment-masel-gml', 0, 0, 0, 1, 0, 0, '', '', ''),
(9, 'GML', '2022-05-04 18:05:58', '<p><img src=\\\"http://gmloil.uz/uploads/posts/2022-05/offline2111-kopija.jpg\\\" alt=\\\"\\\" style=\\\"display:block;margin-left:auto;margin-right:auto;\\\"> </p>', '<p><img src=\\\"http://gmloil.uz/uploads/posts/2022-05/offline2111-kopija.jpg\\\" alt=\\\"\\\" width=\\\"208\\\" height=\\\"201\\\" style=\\\"display:block;margin-left:auto;margin-right:auto;\\\"></p>\n<p>OOO \\\"IMPERIAL OIL GROUP\\\" - Официальный дилер нефтяной торговой марки: 《\\\"GENERAL MACHINERY LUBRICANTS\\\" GML - и этим все сказано!》</p>\n<p>Мы являемся специализированной компанией по продаже нефте-продукции и смазочных материалов с 2018 года и в этой области мы можем профессионально предложить решения, которые будут максимально соответствовать вашим запросам на любом уровне. </p>', 'postavka|<p><b> Информация -</b></p>\n<ul>\n<li>\n<pre><b>Бочка: </b>Металлическая</pre>\n</li>\n<li>\n<pre><b>Фасовка: </b>180 кг / 205 литров</pre>\n</li>\n</ul>||info|<p><b>Производитель:</b>\\\"GML OIL\\\"</p>\n<p><b>Страна изготовления:</b> Россия</p>\n<p><b>Импортер/Продавец:</b> OOO \\\"IMPERIAL OIL GROUP\\\"</p>\n<p><b>Срок годности:</b> смотрите на упаковке</p>\n<p><b>Сертификат:</b> по запросу</p>||specifications|<p><br></p>\n<p><br></p>\n<table width=\\\"97%\\\" style=\\\"height:285.391px;\\\">\n<tbody>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\">\n<p><strong>Наименование показателей</strong></p>\n</td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\">\n<p><strong>Методы испытания</strong></p>\n</td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\">\n<p><strong>Значения</strong></p>\n</td>\n</tr>\n<tr style=\\\"height:20.125px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:20.125px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:20.125px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:20.125px;\\\"></td>\n</tr>\n<tr style=\\\"height:20.125px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:20.125px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:20.125px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:20.125px;\\\"></td>\n</tr>\n<tr style=\\\"height:20.125px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:20.125px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:20.125px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:20.125px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:10.516px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:10.516px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:10.516px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:10.516px;\\\"></td>\n</tr>\n</tbody>\n</table>||article|По запросу||barcode|7930110380477||nalichie|0||type|Минеральное||bar|216,5 л||akcija|0||novinka|0', 'О представители компании GML - OOO \\\"IMPERIAL OIL GROUP\\\"', 'О представители компании GML на территории Узбекистан - OOO &quot;IMPERIAL OIL GROUP&quot; О представители компании GML на территории Узбекистан - OOO &quot;IMPERIAL OIL GROUP&quot;', 'представители, компании, территории, Узбекистан, IMPERIAL, GROUP', '14,18', 'o-predstaviteli-kompanii-gml-ooo-imperial-oil-group', 0, 0, 0, 1, 0, 0, '', '', ''),
(10, 'GML', '2022-05-04 18:23:16', '<p> <img src=\\\"https://gmloil.uz/uploads/posts/2022-05/bezymjannyj-1.png\\\" alt=\\\"\\\" style=\\\"display:block;margin-left:auto;margin-right:auto;\\\"> </p>', '<p style=\\\"text-align:center;\\\"><img src=\\\"https://gmloil.uz/uploads/posts/2022-05/111112222.png\\\" alt=\\\"\\\" width=\\\"228\\\" height=\\\"239\\\" style=\\\"font-size:22px;font-weight:bold;letter-spacing:-0.22px;word-spacing:2.2px;\\\"><span style=\\\"font-size:22px;font-weight:bold;letter-spacing:-0.01em;word-spacing:0.1em;\\\">  </span><span style=\\\"font-size:22px;font-weight:bold;letter-spacing:-0.01em;word-spacing:0.1em;\\\"><img src=\\\"http://gmloil.uz/uploads/posts/2022-05/offline2111-kopija.jpg\\\" alt=\\\"\\\" width=\\\"239\\\" height=\\\"232\\\" style=\\\"font-size:13px;font-weight:400;letter-spacing:normal;word-spacing:1.3px;\\\"><br></span></p>\n<div class=\\\"static-page__text\\\">\n<p style=\\\"text-align:left;\\\">Приветствуем вас на сайте<span> </span><b>GMLOIL.UZ</b>. Мы являемся специализированной компанией по продаже нефте-продукции и смазочных материалов с 2018 года и в этой области мы можем профессионально предложить решения, которые будут максимально соответствовать вашим запросам на любом уровне. Бренд GML OIL - реализует ассортимент нефти-продукции на территории Узбекистана с 2022 года, качественный продукт по приятной стоимости отвечающий всем последним требованиям в мире смазочных материалов. \\\"General Machinery Lubricants - и этим все сказано!\\\" Продажа масел и смазочных материалов, а также охлаждающей жидкостей - СОЖ и антифризов на всей территории Узбекистана.\\\"    OOO \\\"IMPERAIL OIL GROUP\\\" - \\\"Представитель бренда GML UZBEKISTAN.  </p>\n<p style=\\\"text-align:left;\\\"><b>   Вы можете приобрести у нас и много других товаров: </b></p>\n<ul style=\\\"text-align:left;\\\">\n<li style=\\\"text-align:left;\\\">Моторные масла;</li>\n<li style=\\\"text-align:left;\\\">Редукторные масла;</li>\n<li style=\\\"text-align:left;\\\">Смазки высокотемпературные;</li>\n<li style=\\\"text-align:left;\\\">Антифризы;</li>\n<li style=\\\"text-align:left;\\\">Смазочно-охлаждающие жидкости;</li>\n<li style=\\\"text-align:left;\\\">Гидравлические масла;</li>\n<li style=\\\"text-align:left;\\\">Масляные насосы для бочек;</li>\n<li style=\\\"text-align:left;\\\">Дизельное топливо. </li>\n</ul>\n<p>Несомненным преимуществом работы с нами является максимально полный ассортимент по нашей специфике. Вы сможете приобрести все виды комплектующих, расходных материалов, выбрать удобные для себя условия доставки и оплаты.</p>\n<p>Наши специалисты помогут сделать правильный выбор и принять наиболее оптимальное решение с финансовой точки зрения. Решений много, ориентированных как на профессиональное использование, так и на применение в частных целях.<br><br>С уважением, коллектив<b> предприятия «OOO IMPERIAL OIL GROUP»</b></p>\n</div>', 'postavka|<p><b> Информация -</b></p>\n<ul>\n<li>\n<pre><b>Бочка: </b>Металлическая</pre>\n</li>\n<li>\n<pre><b>Фасовка: </b>180 кг / 205 литров</pre>\n</li>\n</ul>||info|<p><b>Производитель:</b>\\\"GML OIL\\\"</p>\n<p><b>Страна изготовления:</b> Россия</p>\n<p><b>Импортер/Продавец:</b> OOO \\\"IMPERIAL OIL GROUP\\\"</p>\n<p><b>Срок годности:</b> смотрите на упаковке</p>\n<p><b>Сертификат:</b> по запросу</p>||specifications|<p><br></p>\n<p><br></p>\n<table width=\\\"97%\\\" style=\\\"height:285.391px;\\\">\n<tbody>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\">\n<p><strong>Наименование показателей</strong></p>\n</td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\">\n<p><strong>Методы испытания</strong></p>\n</td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\">\n<p><strong>Значения</strong></p>\n</td>\n</tr>\n<tr style=\\\"height:20.125px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:20.125px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:20.125px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:20.125px;\\\"></td>\n</tr>\n<tr style=\\\"height:20.125px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:20.125px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:20.125px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:20.125px;\\\"></td>\n</tr>\n<tr style=\\\"height:20.125px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:20.125px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:20.125px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:20.125px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:10.516px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:10.516px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:10.516px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:10.516px;\\\"></td>\n</tr>\n</tbody>\n</table>||article|По запросу||barcode|7930110380477||nalichie|0||type|Минеральное||bar|216,5 л||akcija|0||novinka|0', 'О магазине', '1', 'магазине', '14,18', '1', 0, 0, 0, 1, 0, 0, '', '', ''),
(11, 'GML', '2022-05-04 18:23:35', '<p><img src=\\\"https://gmloil.uz/uploads/posts/2022-05/111112323.png\\\" alt=\\\"\\\" width=\\\"554\\\" height=\\\"335\\\" style=\\\"display:block;margin-left:auto;margin-right:auto;\\\"></p>', '<p><img src=\\\"https://gmloil.uz/uploads/posts/2022-05/111112323.png\\\" alt=\\\"\\\" width=\\\"574\\\" height=\\\"350\\\" style=\\\"display:block;margin-left:auto;margin-right:auto;\\\"><br>Уважаемые клиенты, мы постоянно работаем над оптимизацией сроков доставки и ищем машины по приемлемой стоимости. В некоторых случаях стоимость доставки может быть меньше чем может быть предварительный расчёт — это зависит от количества и специфики приобретаемого вами товара, от вашего желания сроков доставки, от тарифов транспортно-экспедиционных компаний. При каждом заказе наши сотрудники будут связываться с вами и уточнять детали доставки.</p>\n<h3><b>Самовывоз из города Ташкента</b></h3>\n<ul>\n<li><b>адрес: </b>Рисовый базар, офис 1 </li>\n<li><b>телефон:</b><span> </span>+998 (90) 177-27-37, +998<span> </span><span>(97) 440-55-00</span></li>\n<li><b>график работы: </b>с9:00 - 17:00; суббота, воскресенье и праздничные дни - выходной</li>\n</ul>\n<h3>Доставка по городу Ташкенту:</h3>\n<ul>\n<li>при покупке товаров от<span> </span><b>200</b><span> литров</span>, по возможности - доставка осуществляется бесплатно с 10:00-17:00 (в зависимости от загруженности водителя); суббота, воскресенье и праздничные дни – выходной.</li>\n<li>при покупке товаров до<b>200</b><span> литров</span>,<span> </span>самовывоз с нашего склада.</li>\n</ul>\n<h3>Доставка по области Ташкента:</h3>\n<ul>\n<li>При доставке через транспортные компании, стоимость и сроки доставки обсуждаются с менеджерами компании.</li>\n</ul>\n<h3>Доставка по городам и областям Узбекистана:</h3>\n<ul>\n<li>Сроки и стоимость доставки по всем населённым пунктам Республики Узбекистан согласно тарифам и графику транспортно-экспедиционных компаний обсуждаются с менеджерами компании.</li>\n</ul>', 'postavka|<p><b> Информация -</b></p>\n<ul>\n<li>\n<pre><b>Бочка: </b>Металлическая</pre>\n</li>\n<li>\n<pre><b>Фасовка: </b>180 кг / 205 литров</pre>\n</li>\n</ul>||info|<p><b>Производитель:</b>\\\"GML OIL\\\"</p>\n<p><b>Страна изготовления:</b> Россия</p>\n<p><b>Импортер/Продавец:</b> OOO \\\"IMPERIAL OIL GROUP\\\"</p>\n<p><b>Срок годности:</b> смотрите на упаковке</p>\n<p><b>Сертификат:</b> по запросу</p>||specifications|<p><br></p>\n<p><br></p>\n<table width=\\\"97%\\\" style=\\\"height:285.391px;\\\">\n<tbody>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\">\n<p><strong>Наименование показателей</strong></p>\n</td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\">\n<p><strong>Методы испытания</strong></p>\n</td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\">\n<p><strong>Значения</strong></p>\n</td>\n</tr>\n<tr style=\\\"height:20.125px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:20.125px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:20.125px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:20.125px;\\\"></td>\n</tr>\n<tr style=\\\"height:20.125px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:20.125px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:20.125px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:20.125px;\\\"></td>\n</tr>\n<tr style=\\\"height:20.125px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:20.125px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:20.125px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:20.125px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:16.5px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:16.5px;\\\"></td>\n</tr>\n<tr style=\\\"height:10.516px;\\\">\n<td width=\\\"59%\\\" style=\\\"height:10.516px;\\\"></td>\n<td width=\\\"24%\\\" style=\\\"height:10.516px;\\\"></td>\n<td width=\\\"16%\\\" style=\\\"height:10.516px;\\\"></td>\n</tr>\n</tbody>\n</table>||article|По запросу||barcode|7930110380477||nalichie|0||type|Минеральное||bar|216,5 л||akcija|0||novinka|0', 'О доставке', '2', 'доставки, стоимость, Доставка, компании, сроков, может, транспортноэкспедиционных, компаний, Ташкента, суббота, воскресенье, праздничные, выходной, покупке, товаров, литров, обсуждаются, менеджерами, Уважаемые, клиенты', '14,18', '2', 0, 0, 0, 1, 0, 0, '', '', ''),
(12, 'GML', '2022-05-10 19:04:28', '<p><a href=\\\"https://gmloil.uz/uploads/posts/2022-05/barell-gml-variant-2-kopija.png\\\" class=\\\"highslide\\\" target=\\\"_blank\\\"><img src=\\\"https://gmloil.uz/uploads/posts/2022-05/barell-gml-variant-2-kopija.png\\\" alt=\\\"\\\" style=\\\"display:block;margin-left:auto;margin-right:auto;\\\"></a></p>', '<h3>Гидравлическое масло GML Hydro HLP 46</h3>\n<p>Гидравлическое масло, разработанное для стационарных гидравлических систем, где требуются хорошие  <br>противоизносные свойства, эффективная защита от коррозии, отличная фильтруемость и минимизация  <br>отложений. Масла серии GML Hydro HLP имеют широкий спектр одобрений различных производителей  <br>гидравлического оборудования и соответствуют требованиям большинства гидравлических систем. <br><br></p>\n<h3>Применение:</h3>\n<p>Как рабочая жидкость для промышленных гидравлических систем. Гидравлические системы  <br>станков (термопластавтоматы, прессы, тяжелые манипуляторы, станки. Роботы, формовочные машины  <br>для пластмасс и т. д. Для поршневых, шестеренчатых, пластинчатых и аксиально-поршневых насосов в  <br>соответствии с требованиями производителей. В гидравлических насосах различных производителей,  <br>включая Denison, Cincinnati Machine, Eaton <br><br></p>\n<h3>Спецификации:</h3>\n<p>DIN 51524 PART 2, HLP <br><br></p>\n<h3>Преимущества:</h3>\n<p>Высокая защита от износа, улучшенные моюще-диспергирующие характеристики,  <br>высокая термическая и окислительная стабильность, хорошее диспергирование сажи, отвечает  <br>требованиям спецификаций ключевых производителей</p>', 'postavka|<p><b> Информация -</b></p>\n<ul>\n<li>\n<pre><b>Бочка: </b>Металлическая</pre>\n</li>\n<li>\n<pre><b>Фасовка: </b>180 кг / 205 литров</pre>\n</li>\n</ul>||info|<p><b>Производитель:</b>\\\"GML OIL\\\"</p>\n<p><b>Страна изготовления:</b> Россия</p>\n<p><b>Импортер/Продавец:</b> OOO \\\"IMPERIAL OIL GROUP\\\"</p>\n<p><b>Срок годности:</b> смотрите на упаковке</p>\n<p><b>Сертификат:</b> по запросу</p>||specifications|<h3>Технические характеристики</h3>\n<table width=\\\"97%\\\">\n<tbody>\n<tr>\n<td width=\\\"59%\\\">\n<p><strong>Наименование показателей</strong></p>\n</td>\n<td width=\\\"24%\\\">\n<p><strong>Методы испытания</strong></p>\n</td>\n<td width=\\\"16%\\\">\n<p><strong>Значения</strong></p>\n</td>\n</tr>\n<tr>\n<td width=\\\"59%\\\">\n<p>Плотность при 20 °С, г/см<sup>3 </sup>не менее</p>\n</td>\n<td width=\\\"24%\\\">\n<p>ASTM D 1298</p>\n</td>\n<td width=\\\"16%\\\">\n<p>0,865</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"59%\\\">\n<p>Вязкость кинематическая при 50°С,  мм<sup>2</sup>/с</p>\n</td>\n<td width=\\\"24%\\\">\n<p>ISO 3104 / ASTM D 445</p>\n</td>\n<td width=\\\"16%\\\">\n<p>28,8</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"59%\\\">\n<p>Вязкость кинематическая при 40°С,  мм<sup>2</sup>/с</p>\n</td>\n<td width=\\\"24%\\\">\n<p>ISO 3104 / ASTM D 445</p>\n</td>\n<td width=\\\"16%\\\">\n<p>46</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"59%\\\">\n<p>Цвет, ед. ЦНТ, не более (с разбавлением 1:100)</p>\n</td>\n<td width=\\\"24%\\\">\n<p>ASTM D 1500</p>\n</td>\n<td width=\\\"16%\\\">\n<p>L 0.5</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"59%\\\">\n<p>Индекс вязкости, не менее</p>\n</td>\n<td width=\\\"24%\\\">\n<p>ASTM D 2270</p>\n</td>\n<td width=\\\"16%\\\">\n<p>108</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"59%\\\">\n<p>Температура вспышки в открытом тигле, °С</p>\n</td>\n<td width=\\\"24%\\\">\n<p>ASTM D 92</p>\n</td>\n<td width=\\\"16%\\\">\n<p>224</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"59%\\\">\n<p>Температура застывания, °С</p>\n</td>\n<td width=\\\"24%\\\">\n<p>ASTM D 97</p>\n</td>\n<td width=\\\"16%\\\">\n<p>-28</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"59%\\\">\n<p>Класс чистоты</p>\n</td>\n<td width=\\\"24%\\\">\n<p>ISO 4406</p>\n</td>\n<td width=\\\"16%\\\">\n<p>-/15/13</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"59%\\\">\n<p>Кислотное число, мг КОН/1г масла</p>\n</td>\n<td width=\\\"24%\\\">\n<p>ASTM D 2896</p>\n</td>\n<td width=\\\"16%\\\">\n<p>0,20</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"59%\\\">\n<p>Коррозия медной пластинки</p>\n</td>\n<td width=\\\"24%\\\">\n<p>ASTM D 130</p>\n</td>\n<td width=\\\"16%\\\">\n<p>1в</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"59%\\\">\n<p>Массовая доля воды, %</p>\n</td>\n<td width=\\\"24%\\\">\n<p>ГОСТ 2477</p>\n</td>\n<td width=\\\"16%\\\">\n<p>Отсутствует</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"59%\\\">\n<p>Массовая доля механических примесей, %, не более</p>\n</td>\n<td width=\\\"24%\\\">\n<p>ГОСТ 6370</p>\n</td>\n<td width=\\\"16%\\\">\n<p>0,005</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"59%\\\">\n<p>Массовая доля сульфатной золы, %</p>\n</td>\n<td width=\\\"24%\\\">\n<p>ASTM D 874</p>\n</td>\n<td width=\\\"16%\\\">\n<p>0,41</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"59%\\\">\n<p>Испаряемость по NOAK, % масс., не более</p>\n</td>\n<td width=\\\"24%\\\">\n<p>ASTM D 5800</p>\n</td>\n<td width=\\\"16%\\\">\n<p>13,2</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"59%\\\">\n<p>Склонность к пенообразованию</p>\n<p>- при 24°С</p>\n<p>- при 94°С</p>\n<p>- при 24°С после испытания при 94°С</p>\n</td>\n<td width=\\\"24%\\\">\n<p>ASTM D 892</p>\n</td>\n<td width=\\\"16%\\\">\n<p> </p>\n<p>10</p>\n<p>30</p>\n<p>10</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"59%\\\">\n<p>Фракционный состав, ⁰С:</p>\n<p>Отгон при температуре 250 <sup>0</sup>С,%</p>\n<p>Отгон при температуре 300 <sup>0</sup>С,%</p>\n<p>Отгон при температуре 350 <sup>0</sup>С, %</p>\n</td>\n<td width=\\\"24%\\\">\n<p>ISO 3405 (эквивалентный ASTM D86)*</p>\n<p>ГОСТ Р 57036-2016</p>\n</td>\n<td width=\\\"16%\\\">\n<p> </p>\n<p>Не может быть определено**</p>\n</td>\n</tr>\n</tbody>\n</table>||galery_photo|2022-05/1652852398_photo1649229232.jpg&#124;1&#124;0&#124;960x1280&#124;92.43 Kb||tds|GML_HLP46||article|GML-HLP||barcode|7930110380477||nalichie|1||type|Минеральное||bar|216,5 л||akcija|0||novinka|0', 'Гидравлическое масло GML HYDRO HLP 46', 'Гидравлическое масло GML Hydro HLP 46 Гидравлическое масло, разработанное для стационарных гидравлических систем, где требуются хорошие противоизносные свойства, эффективная защита от коррозии, отличная фильтруемость и минимизация отложений. Масла серии GML Hydro HLP имеют широкий спектр одобрений', 'гидравлических, производителей, систем, Гидравлическое, масло, Hydro, защита, различных, требованиям, разработанное, стационарных, требуются, хорошие, противоизносные, свойства, эффективная, коррозии, отличная, фильтруемость, минимизация', '17,3', 'gidravlicheskoe-maslo-gml-hydro-hlp-46', 0, 1, 1, 1, 0, 0, '', '', ''),
(13, 'GML', '2022-05-16 12:06:44', '<p><a href=\\\"https://gmloil.uz/uploads/posts/2022-05/barell-gml-variant-2-kopija.png\\\" class=\\\"highslide\\\" target=\\\"_blank\\\"><img src=\\\"https://gmloil.uz/uploads/posts/2022-05/barell-gml-variant-2-kopija.png\\\" alt=\\\"\\\" style=\\\"display:block;margin-left:auto;margin-right:auto;\\\"></a></p>', '<h3>Редукторное масло GML ИТД 220</h3>\n<p>Редукторное масло GML ИТД 220 - вырабатывается в основном, из сернистых нефтей <br>с добавлением присадок, улучшающих смазывающие, антикислотные, антикоррозийные, <br>противоизносные и противозадирные свойства.<br><br><span style=\\\"font-size:14pt;\\\"><b>Применение: </b></span></p>\n<p>Редукторное масло GML ИТД 220 предназначено для применения в редукторах, <br>смазывания зубчатых передач и других элементов промышленного оборудования, в <br>которых высокие нагрузки не позволяют применять масла без присадок. Редукторное <br>масло ИТД относится к легированным маслам общего назначения.</p>\n<h3>Преимущества: </h3>\n<p>Высокие деэмульгирующие свойства, быстрое отделение воды;<br>предотвращение коррозии; эффективное сохранение смазывающих свойств в течение всего периода<br>эксплуатации; отличные термоокислительные и антипенные свойства; стабильные вязкостнотемпературные параметры и стойкость к механической деструкции.<br><br></p>', 'postavka|<p><b> Информация -</b></p>\n<ul>\n<li>\n<pre><b>Бочка: </b>Металлическая</pre>\n</li>\n<li>\n<pre><b>Фасовка: </b>180 кг / 205 литров</pre>\n</li>\n</ul>||info|<p><b>Производитель:</b>\\\"GML OIL\\\"</p>\n<p><b>Страна изготовления:</b> Россия</p>\n<p><b>Импортер/Продавец:</b> OOO \\\"IMPERIAL OIL GROUP\\\"</p>\n<p><b>Срок годности:</b> смотрите на упаковке</p>\n<p><b>Сертификат:</b> по запросу</p>||specifications|<h3>Технические характеристики</h3>\n<p><br></p>\n<table width=\\\"0\\\">\n<tbody>\n<tr>\n<td width=\\\"36\\\">\n<p><strong>№ </strong></p>\n<p><strong>п/п </strong></p>\n</td>\n<td width=\\\"350\\\">\n<p><strong>Наименование  показателей </strong></p>\n</td>\n<td width=\\\"142\\\">\n<p><strong>Метод испытания </strong></p>\n</td>\n<td width=\\\"104\\\">\n<p><strong>Норма </strong></p>\n</td>\n<td width=\\\"85\\\">\n<p><strong>Значение </strong></p>\n</td>\n</tr>\n<tr>\n<td width=\\\"36\\\">\n<p>1</p>\n</td>\n<td width=\\\"350\\\">\n<p>Вязкость кинематическая при 100 <sup>0</sup>С, мм<sup>2</sup>/с, не менее</p>\n</td>\n<td width=\\\"142\\\">\n<p>ГОСТ 33/ASTM D 445</p>\n</td>\n<td width=\\\"104\\\">\n<p>11,4</p>\n</td>\n<td width=\\\"85\\\">\n<p>18,4</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"36\\\">\n<p>2</p>\n</td>\n<td width=\\\"350\\\">\n<p>Вязкость кинематическая при 50 <sup>0</sup>С, мм<sup>2</sup>/с, не менее</p>\n</td>\n<td width=\\\"142\\\">\n<p>ГОСТ 33/ASTM D 445</p>\n</td>\n<td width=\\\"104\\\">\n<p>130,0</p>\n</td>\n<td width=\\\"85\\\">\n<p>138,48</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"36\\\">\n<p>3</p>\n</td>\n<td width=\\\"350\\\">\n<p>Вязкость кинематическая при 40 <sup>0</sup>С, мм<sup>2</sup>/с, не менее</p>\n</td>\n<td width=\\\"142\\\">\n<p>ГОСТ 33/ASTM D 445</p>\n</td>\n<td width=\\\"104\\\">\n<p>220,0</p>\n</td>\n<td width=\\\"85\\\">\n<p>227,47</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"36\\\">\n<p>4</p>\n</td>\n<td width=\\\"350\\\">\n<p>Индекс вязкости, не менее </p>\n</td>\n<td width=\\\"142\\\">\n<p>ASTM D 2270</p>\n</td>\n<td width=\\\"104\\\">\n<p>Не менее 90</p>\n</td>\n<td width=\\\"85\\\">\n<p>92</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"36\\\">\n<p>5</p>\n</td>\n<td width=\\\"350\\\">\n<p>Массовая доля механических примесей, %, не более</p>\n</td>\n<td width=\\\"142\\\">\n<p>ГОСТ 6370 с дополнением</p>\n<p>п.4.2 ГОСТ 8581</p>\n</td>\n<td width=\\\"104\\\">\n<p>Не более 0,025</p>\n</td>\n<td width=\\\"85\\\">\n<p>0,02</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"36\\\">\n<p>6</p>\n</td>\n<td width=\\\"350\\\">\n<p>Массовая доля воды, не более</p>\n</td>\n<td width=\\\"142\\\">\n<p>ГОСТ 2477</p>\n</td>\n<td width=\\\"104\\\">\n<p>следы</p>\n</td>\n<td width=\\\"85\\\">\n<p>следы</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"36\\\">\n<p>7</p>\n</td>\n<td width=\\\"350\\\">\n<p>Температура вспышки в открытом тигле, <sup>0</sup>С, не ниже</p>\n</td>\n<td width=\\\"142\\\">\n<p>ГОСТ 4333</p>\n</td>\n<td width=\\\"104\\\">\n<p>220</p>\n</td>\n<td width=\\\"85\\\">\n<p>246</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"36\\\">\n<p>8</p>\n</td>\n<td width=\\\"350\\\">\n<p>Температура застывания, <sup>0</sup>С, не выше</p>\n</td>\n<td width=\\\"142\\\">\n<p>ГОСТ 20287</p>\n</td>\n<td width=\\\"104\\\">\n<p>Минус 18</p>\n</td>\n<td width=\\\"85\\\">\n<p>-22</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"36\\\">\n<p>9</p>\n</td>\n<td width=\\\"350\\\">\n<p>Коррозионность на пластинках из свинца, г/м<sup>2 </sup>, не более</p>\n</td>\n<td width=\\\"142\\\">\n<p>ГОСТ 20502, метод 2</p>\n</td>\n<td width=\\\"104\\\">\n<p>отсутствует</p>\n</td>\n<td width=\\\"85\\\">\n<p>отсутствует</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"36\\\">\n<p>10</p>\n</td>\n<td width=\\\"350\\\">\n<p>Кислотное  число, мг КОН на 1 г масла, не более</p>\n</td>\n<td width=\\\"142\\\">\n<p>ГОСТ 5985</p>\n</td>\n<td width=\\\"104\\\">\n<p>1,5</p>\n</td>\n<td width=\\\"85\\\">\n<p>1,5</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"36\\\">\n<p>11</p>\n</td>\n<td width=\\\"350\\\">\n<p>Зольность сульфатная, %, не более</p>\n</td>\n<td width=\\\"142\\\">\n<p>ГОСТ 11362</p>\n</td>\n<td width=\\\"104\\\">\n<p>Не более 1,5</p>\n</td>\n<td width=\\\"85\\\">\n<p>1,3</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"36\\\">\n<p>12</p>\n</td>\n<td width=\\\"350\\\">\n<p>Стабильность по индукционному периоду садкообразования (ИПО) в течение 60 ч. </p>\n</td>\n<td width=\\\"142\\\">\n<p>ГОСТ 11063</p>\n</td>\n<td width=\\\"104\\\">\n<p>выдерживает</p>\n</td>\n<td width=\\\"85\\\">\n<p>выдерживае т</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"36\\\">\n<p>13</p>\n</td>\n<td width=\\\"350\\\">\n<p>Цвет разбавлением 1:100 в растворе четырёххлористого углерода (калориметрическая характеристика)</p>\n</td>\n<td width=\\\"142\\\">\n<p>ASTM D 1500</p>\n</td>\n<td width=\\\"104\\\">\n<p>Не более 2</p>\n</td>\n<td width=\\\"85\\\">\n<p>L 1,0 </p>\n</td>\n</tr>\n<tr>\n<td width=\\\"36\\\">\n<p>14</p>\n</td>\n<td width=\\\"350\\\">\n<p>Плотность при 20<sup>0</sup>С, г/см<sup>3</sup>, не более</p>\n</td>\n<td width=\\\"142\\\">\n<p>ASTM D 1298</p>\n</td>\n<td width=\\\"104\\\">\n<p>0,9</p>\n</td>\n<td width=\\\"85\\\">\n<p>0,888</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"36\\\">\n<p>15</p>\n</td>\n<td width=\\\"350\\\">\n<p>Массовая доля  активных элементов, %, не менее:</p>\n<p>-   кальция</p>\n<p>-   цинка</p>\n</td>\n<td width=\\\"142\\\">\n<p>ГОСТ 13538</p>\n<p> </p>\n<p> </p>\n</td>\n<td width=\\\"104\\\">\n<p> </p>\n<p>0,3</p>\n<p>0,09</p>\n</td>\n<td width=\\\"85\\\">\n<p> </p>\n<p>0,35</p>\n<p>0,1</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"36\\\">\n<p>16</p>\n</td>\n<td width=\\\"350\\\">\n<p>Объём перегонки при температуре 250<sup> о</sup>С, об. %, не более</p>\n<p>Объём перегонки при температуре 300<sup> о</sup>С, об. %, не более</p>\n<p>Объём перегонки при температуре 350<sup> о</sup>С, об. %, не более</p>\n</td>\n<td width=\\\"142\\\">\n<p> </p>\n<p>ISO 3405/ASTM D86*</p>\n<p> </p>\n</td>\n<td width=\\\"104\\\">\n<p>невозможно определить*</p>\n</td>\n<td width=\\\"85\\\">\n<p> </p>\n<p>невозможно определить*</p>\n</td>\n</tr>\n</tbody>\n</table>\n<p> </p>||galery_photo|2022-05/1652686113_photo1649229232.jpg&#124;1&#124;0&#124;960x1280&#124;92.43 Kb||tds|GML_ITD220||article|GML-ИТД||barcode|7930110380477||nalichie|1||type|Минеральное||bar|216,5 л||akcija|0||novinka|0', 'Масло редукторное GML ИТД 220', 'Редукторное масло GML ИТД 220 Редукторное масло GML ИТД 220 - вырабатывается в основном, из сернистых нефтей с добавлением присадок, улучшающих смазывающие, антикислотные, антикоррозийные, противоизносные и противозадирные свойства. Применение: Редукторное масло GML ИТД 220 предназначено для', 'Редукторное, масло, свойства, присадок, вырабатывается, основном, сернистых, нефтей, добавлением, улучшающих, смазывающие, антикислотные, антикоррозийные, противоизносные, противозадирные, Применение, предназначено, применения, редукторах, смазывания', '17,5', 'maslo-reduktornoe-gml-itd-220', 0, 1, 1, 1, 0, 0, '', '', '');
INSERT INTO `dle_post` (`id`, `autor`, `date`, `short_story`, `full_story`, `xfields`, `title`, `descr`, `keywords`, `category`, `alt_name`, `comm_num`, `allow_comm`, `allow_main`, `approve`, `fixed`, `allow_br`, `symbol`, `tags`, `metatitle`) VALUES
(14, 'GML', '2022-05-16 12:14:36', '<p><a href=\\\"https://gmloil.uz/uploads/posts/2022-05/barell-gml-variant-2-kopija.png\\\" class=\\\"highslide\\\" target=\\\"_blank\\\"><img src=\\\"https://gmloil.uz/uploads/posts/2022-05/barell-gml-variant-2-kopija.png\\\" alt=\\\"\\\" style=\\\"display:block;margin-left:auto;margin-right:auto;\\\"></a></p>', '<h3>Редукторное масло GML ИТД 320</h3>\n<p>Редукторное масло GML ИТД 320 - вырабатывается в основном, из сернистых нефтей <br>с добавлением присадок, улучшающих смазывающие, антикислотные, антикоррозийные, <br>противоизносные и противозадирные свойства.<br><br><span style=\\\"font-size:14pt;\\\"><b>Применение: </b></span></p>\n<p>Редукторное масло GML ИТД 320 предназначено для применения в редукторах, <br>смазывания зубчатых передач и других элементов промышленного оборудования, в <br>которых высокие нагрузки не позволяют применять масла без присадок. Редукторное <br>масло ИТД относится к легированным маслам общего назначения.</p>\n<h3>Преимущества: </h3>\n<p>Высокие деэмульгирующие свойства, быстрое отделение воды;<br>предотвращение коррозии; эффективное сохранение смазывающих свойств в течение всего периода<br>эксплуатации; отличные термоокислительные и антипенные свойства; стабильные вязкостнотемпературные параметры и стойкость к механической деструкции.</p>', 'postavka|<p><b> Информация -</b></p>\n<ul>\n<li>\n<pre><b>Бочка: </b>Металлическая</pre>\n</li>\n<li>\n<pre><b>Фасовка: </b>180 кг / 205 литров</pre>\n</li>\n</ul>||info|<p><b>Производитель:</b>\\\"GML OIL\\\"</p>\n<p><b>Страна изготовления:</b> Россия</p>\n<p><b>Импортер/Продавец:</b> OOO \\\"IMPERIAL OIL GROUP\\\"</p>\n<p><b>Срок годности:</b> смотрите на упаковке</p>\n<p><b>Сертификат:</b> по запросу</p>||specifications|<h3>Технические характеристики</h3>\n<table width=\\\"0\\\">\n<tbody>\n<tr>\n<td width=\\\"35\\\">\n<p><strong>№ </strong></p>\n<p><strong>п/п </strong></p>\n</td>\n<td width=\\\"369\\\">\n<p><strong>Наименование  показателей </strong></p>\n</td>\n<td width=\\\"151\\\">\n<p><strong>Метод испытания </strong></p>\n</td>\n<td width=\\\"95\\\">\n<p><strong>Значение </strong></p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p>1</p>\n</td>\n<td width=\\\"369\\\">\n<p>Вязкость кинематическая при 100 <sup>0</sup>С, мм<sup>2</sup>/с, не менее</p>\n</td>\n<td width=\\\"151\\\">\n<p>ГОСТ 33/ASTM D 445</p>\n</td>\n<td width=\\\"95\\\">\n<p>25,37</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p>2</p>\n</td>\n<td width=\\\"369\\\">\n<p>Вязкость кинематическая при 50 <sup>0</sup>С, мм<sup>2</sup>/с, не менее</p>\n</td>\n<td width=\\\"151\\\">\n<p>ГОСТ 33/ASTM D 445</p>\n</td>\n<td width=\\\"95\\\">\n<p>195,2</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p>3</p>\n</td>\n<td width=\\\"369\\\">\n<p>Вязкость кинематическая при 40 <sup>0</sup>С, мм<sup>2</sup>/с, не менее</p>\n</td>\n<td width=\\\"151\\\">\n<p>ГОСТ 33/ASTM D 445</p>\n</td>\n<td width=\\\"95\\\">\n<p>320,4</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p>4</p>\n</td>\n<td width=\\\"369\\\">\n<p>Индекс вязкости, не менее </p>\n</td>\n<td width=\\\"151\\\">\n<p>ASTM D 2270</p>\n</td>\n<td width=\\\"95\\\">\n<p>90</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p>5</p>\n</td>\n<td width=\\\"369\\\">\n<p>Массовая доля механических примесей, %, не более</p>\n</td>\n<td width=\\\"151\\\">\n<p>ГОСТ 6370 с дополнением</p>\n<p>п.4.2 ГОСТ 8581</p>\n</td>\n<td width=\\\"95\\\">\n<p>0,02</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p>6</p>\n</td>\n<td width=\\\"369\\\">\n<p>Массовая доля воды, не более</p>\n</td>\n<td width=\\\"151\\\">\n<p>ГОСТ 2477</p>\n</td>\n<td width=\\\"95\\\">\n<p>следы</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p>7</p>\n</td>\n<td width=\\\"369\\\">\n<p>Температура вспышки в открытом тигле, <sup>0</sup>С, не ниже</p>\n</td>\n<td width=\\\"151\\\">\n<p>ГОСТ 4333</p>\n</td>\n<td width=\\\"95\\\">\n<p>202</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p>8</p>\n</td>\n<td width=\\\"369\\\">\n<p>Температура застывания, <sup>0</sup>С, не выше</p>\n</td>\n<td width=\\\"151\\\">\n<p>ГОСТ 20287</p>\n</td>\n<td width=\\\"95\\\">\n<p>-15</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p> </p>\n<p>9</p>\n</td>\n<td width=\\\"369\\\">\n<p> </p>\n<p>Температура потери текучести,  <sup>о</sup>С, не выше</p>\n</td>\n<td width=\\\"151\\\">\n<p>ASTM D97 (эквивалент ISO 3016)</p>\n</td>\n<td width=\\\"95\\\">\n<p>-12</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p>10</p>\n</td>\n<td width=\\\"369\\\">\n<p>Коррозионность на пластинках из свинца, г/м<sup>2 </sup>, не более</p>\n</td>\n<td width=\\\"151\\\">\n<p>ГОСТ 20502, метод 2</p>\n</td>\n<td width=\\\"95\\\">\n<p>отсутствует</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p>11</p>\n</td>\n<td width=\\\"369\\\">\n<p>Кислотное  число, мг КОН на 1 г масла, не более</p>\n</td>\n<td width=\\\"151\\\">\n<p>ГОСТ 5985</p>\n</td>\n<td width=\\\"95\\\">\n<p>1,5</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p>12</p>\n</td>\n<td width=\\\"369\\\">\n<p>Зольность сульфатная, %, не более</p>\n</td>\n<td width=\\\"151\\\">\n<p>ГОСТ 11362</p>\n</td>\n<td width=\\\"95\\\">\n<p>0,3</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p>13</p>\n</td>\n<td width=\\\"369\\\">\n<p>Стабильность по индукционному периоду садкообразования (ИПО) в течение 60 ч. </p>\n</td>\n<td width=\\\"151\\\">\n<p>ГОСТ 11063</p>\n</td>\n<td width=\\\"95\\\">\n<p>выдерживает</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p>14</p>\n</td>\n<td width=\\\"369\\\">\n<p>Цвет разбавлением 1:100 в растворе четырёххлористого углерода (калориметрическая характеристика)</p>\n</td>\n<td width=\\\"151\\\">\n<p>ASTM D 1500</p>\n</td>\n<td width=\\\"95\\\">\n<p>L 1.0</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p>15</p>\n</td>\n<td width=\\\"369\\\">\n<p>Плотность при 20<sup>0</sup>С, г/см<sup>3</sup>, не более</p>\n</td>\n<td width=\\\"151\\\">\n<p>ASTM D 1298</p>\n</td>\n<td width=\\\"95\\\">\n<p>0,898</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p>16</p>\n</td>\n<td width=\\\"369\\\">\n<p>Массовая доля  активных элементов, %, не менее:</p>\n<p>-  кальция</p>\n<p>-  цинка</p>\n</td>\n<td width=\\\"151\\\">\n<p>ГОСТ 13538</p>\n<p> </p>\n<p> </p>\n</td>\n<td width=\\\"95\\\">\n<p> </p>\n<p>0.35</p>\n<p>0.1</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p>17</p>\n</td>\n<td width=\\\"369\\\">\n<p>Объём перегонки при температуре 250<sup> о</sup>С, об. %, не более</p>\n<p>Объём перегонки при температуре 300<sup> о</sup>С, об. %, не более</p>\n<p>Объём перегонки при температуре 350<sup> о</sup>С, об. %, не более</p>\n</td>\n<td width=\\\"151\\\">\n<p> </p>\n<p>ISO 3405/ASTM D86*</p>\n<p> </p>\n</td>\n<td width=\\\"95\\\">\n<p> </p>\n<p>невозможно определить*</p>\n</td>\n</tr>\n</tbody>\n</table>||galery_photo|2022-05/photo1649229232.jpg&#124;1&#124;0&#124;960x1280&#124;92.43 Kb||tds|GML_ITD320||article|GML-ИТД||barcode|7930110380477||nalichie|1||type|Минеральное||bar|216,5 л||akcija|0||novinka|0', 'Масло редукторное GML ИТД 320', 'Редукторное масло GML ИТД 320 предназначено для применения в редукторах, смазывания зубчатых передач и других элементов промышленного оборудования, в которых высокие нагрузки не позволяют применять масла без присадок. Редукторное масло ИТД относится к легированным маслам общего назначения.', 'Редукторное, масло, свойства, высокие, присадок, предназначено, применения, редукторах, смазывания, зубчатых, передач, других, элементов, промышленного, оборудования, которых, нагрузки, позволяют, применять, масла', '17,5', 'maslo-reduktornoe-gml-itd-320', 0, 1, 1, 1, 0, 0, '', '', ''),
(15, 'GML', '2022-05-16 12:34:18', '<p><a href=\\\"https://gmloil.uz/uploads/posts/2022-05/barell-gml-variant-2-kopija.png\\\" class=\\\"highslide\\\" target=\\\"_blank\\\"><img src=\\\"https://gmloil.uz/uploads/posts/2022-05/barell-gml-variant-2-kopija.png\\\" alt=\\\"\\\" style=\\\"display:block;margin-left:auto;margin-right:auto;\\\"></a></p>', '<h1>Моторное масло GML МС-20</h1>\n<p>Высококачественное моторное масло, предназначенное для дизельных двигателей различных моделей, работающих на топливах с небольшим содержанием серы. Масло GML Diesel MC 20 NT - имеет специальную очистку, высокую вязкость, высокую смазочную способность, не агрессивно к металлам и сплавам.</p>\n<h2>Применение</h2>\n<p>GML Diesel МС 20 NT предназначен для турбированных, тепловозных и судовых дизельных двигателей, работающие на малосернистом топливе. Судовые механизмы и агрегаты, где необходимы масла соответствующей вязкости; <br><br><span style=\\\"font-size:14pt;\\\"><strong>Преимущества </strong></span></p>\n<ul>\n<li>Высокая защита от износа</li>\n<li>Улучшенные моюще-диспергирующие характеристики</li>\n<li>Высокая термическая и окислительная стабильность</li>\n<li>Хорошее диспергирование сажи</li>\n<li>Отвечает требованиям спецификаций ключевых производителей</li>\n</ul>\n<p><strong> </strong></p>', 'postavka|<p><b> Информация -</b></p>\n<ul>\n<li>\n<pre><b>Бочка: </b>Металлическая</pre>\n</li>\n<li>\n<pre><b>Фасовка: </b>180 кг / 205 литров</pre>\n</li>\n</ul>||info|<p><b>Производитель:</b>\\\"GML OIL\\\"</p>\n<p><b>Страна изготовления:</b> Россия</p>\n<p><b>Импортер/Продавец:</b> OOO \\\"IMPERIAL OIL GROUP\\\"</p>\n<p><b>Срок годности:</b> смотрите на упаковке</p>\n<p><b>Сертификат:</b> по запросу</p>||specifications|<h3>Технические характеристики</h3>\n<table width=\\\"0\\\">\n<tbody>\n<tr>\n<td width=\\\"41\\\">\n<p><strong>№ </strong></p>\n<p><strong>п/п </strong></p>\n</td>\n<td width=\\\"346\\\">\n<p><strong>Наименование  </strong></p>\n</td>\n<td width=\\\"161\\\">\n<p><strong>Метод испытаний </strong></p>\n</td>\n<td width=\\\"104\\\">\n<p><strong>Значение</strong></p>\n</td>\n</tr>\n<tr>\n<td width=\\\"41\\\">\n<p>1</p>\n</td>\n<td width=\\\"346\\\">\n<p>Вязкость кинематическая при 100 <sup>0</sup>С, мм<sup>2</sup>/с, не менее</p>\n</td>\n<td width=\\\"161\\\">\n<p>ГОСТ 33/ASTM D445 (EN ISO 3104)</p>\n</td>\n<td width=\\\"104\\\">\n<p>20,5</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"41\\\">\n<p>2</p>\n</td>\n<td width=\\\"346\\\">\n<p>Вязкость кинематическая при 50 <sup>0</sup>С, мм<sup>2</sup>/с, не менее</p>\n</td>\n<td width=\\\"161\\\">\n<p>ГОСТ 33/ASTM D445 (EN ISO 3104)</p>\n</td>\n<td width=\\\"104\\\">\n<p>164.4</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"41\\\">\n<p>3</p>\n</td>\n<td width=\\\"346\\\">\n<p>Вязкость кинематическая при 40 <sup>0</sup>С, мм<sup>2</sup>/с, не менее</p>\n</td>\n<td width=\\\"161\\\">\n<p>ГОСТ 33/ASTM D445 (EN ISO 3104)</p>\n</td>\n<td width=\\\"104\\\">\n<p>270.3</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"41\\\">\n<p>4</p>\n</td>\n<td width=\\\"346\\\">\n<p>Индекс вязкости, не менее</p>\n</td>\n<td width=\\\"161\\\">\n<p>ASTM D2270</p>\n</td>\n<td width=\\\"104\\\">\n<p>85</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"41\\\">\n<p>5</p>\n</td>\n<td width=\\\"346\\\">\n<p>Кислотное число, мг КОН/г</p>\n</td>\n<td width=\\\"161\\\">\n<p>ASTM D2896</p>\n</td>\n<td width=\\\"104\\\">\n<p>0,03</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"41\\\">\n<p>6</p>\n</td>\n<td width=\\\"346\\\">\n<p>Коксуемость, %</p>\n</td>\n<td width=\\\"161\\\">\n<p>ГОСТ 19932-99</p>\n</td>\n<td width=\\\"104\\\">\n<p>0,25</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"41\\\">\n<p>7</p>\n</td>\n<td width=\\\"346\\\">\n<p>Содержание сульфатной золы, масс.%, не более</p>\n</td>\n<td width=\\\"161\\\">\n<p>ISO 3987</p>\n</td>\n<td width=\\\"104\\\">\n<p>0,01</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"41\\\">\n<p>8</p>\n<p> </p>\n<p> </p>\n</td>\n<td width=\\\"346\\\">\n<p>Объём перегонки при температуре 250<sup> о</sup>С, об. %, не более</p>\n<p>Объём перегонки при температуре 300<sup> о</sup>С, об. %, не более</p>\n<p>Объём перегонки при температуре 350<sup> о</sup>С, об. %, не более</p>\n</td>\n<td width=\\\"161\\\">\n<p> </p>\n<p>ISO 3405/ASTM D86*</p>\n<p> </p>\n</td>\n<td width=\\\"104\\\">\n<p> </p>\n<p>невозможно</p>\n<p>определить</p>\n<p> </p>\n</td>\n</tr>\n<tr>\n<td width=\\\"41\\\">\n<p>9</p>\n</td>\n<td width=\\\"346\\\">\n<p>Температура вспышки в открытом тигле, <sup>о</sup>С</p>\n</td>\n<td width=\\\"161\\\">\n<p>ГОСТ 4333</p>\n</td>\n<td width=\\\"104\\\">\n<p>270</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"41\\\">\n<p>10</p>\n</td>\n<td width=\\\"346\\\">\n<p>Температура потери текучести,  <sup>о</sup>С, не выше</p>\n</td>\n<td width=\\\"161\\\">\n<p>ASTM D97 (эквивалент ISO 3016)</p>\n</td>\n<td width=\\\"104\\\">\n<p>-15</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"41\\\">\n<p>11</p>\n</td>\n<td width=\\\"346\\\">\n<p>Температура застывания, <sup>о</sup>С</p>\n</td>\n<td width=\\\"161\\\">\n<p>ГОСТ 20287-91 (метод Б)</p>\n</td>\n<td width=\\\"104\\\">\n<p>-18</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"41\\\">\n<p>12</p>\n</td>\n<td width=\\\"346\\\">\n<p>Плотность при 20 <sup>0</sup>С, кг/м<sup>3</sup></p>\n</td>\n<td width=\\\"161\\\">\n<p>ASTM D1298</p>\n</td>\n<td width=\\\"104\\\">\n<p>0,897</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"41\\\">\n<p>13</p>\n</td>\n<td width=\\\"346\\\">\n<p>Цвет на колориметре ЦНТ, единицы ЦНТ</p>\n</td>\n<td width=\\\"161\\\">\n<p>ASTM D1500</p>\n</td>\n<td width=\\\"104\\\">\n<p>5,0</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"41\\\">\n<p>14</p>\n</td>\n<td width=\\\"346\\\">\n<p>Число омыления, мг КОН/г</p>\n</td>\n<td width=\\\"161\\\">\n<p>ISO 6293-2**</p>\n</td>\n<td width=\\\"104\\\">\n<p>невозможно</p>\n<p>определить</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"41\\\">\n<p>15</p>\n</td>\n<td width=\\\"346\\\">\n<p>Содержание селективных растворителей</p>\n</td>\n<td width=\\\"161\\\">\n<p>ГОСТ 33093-2014</p>\n</td>\n<td width=\\\"104\\\">\n<p>отсутствие</p>\n</td>\n</tr>\n</tbody>\n</table>||tds|GML_MC20||article|GML-МС20||barcode|7930110380477||nalichie|1||type|Минеральное||bar|216,5 л||akcija|0||novinka|0', 'Моторное масло GML МС-20', 'Моторное масло GML МС-20 Высококачественное моторное масло, предназначенное для дизельных двигателей различных моделей, работающих на топливах с небольшим содержанием серы. Масло GML Diesel MC 20 NT - имеет специальную очистку, высокую вязкость, высокую смазочную способность, не агрессивно к', 'масло, дизельных, двигателей, Diesel, высокую, Высокая, Моторное, Высококачественное, моторное, предназначенное, различных, моделей, работающих, топливах, небольшим, содержанием, Масло, имеет, специальную, очистку', '17,2', 'motornoe-maslo-gml-ms-20', 0, 1, 1, 1, 0, 0, '', '', ''),
(16, 'GML', '2022-05-16 19:53:48', '<p><a href=\\\"https://gmloil.uz/uploads/posts/2022-05/barell-gml-variant-2-kopija.png\\\" class=\\\"highslide\\\" target=\\\"_blank\\\"><img src=\\\"https://gmloil.uz/uploads/posts/2022-05/barell-gml-variant-2-kopija.png\\\" alt=\\\"\\\" style=\\\"display:block;margin-left:auto;margin-right:auto;\\\"></a></p>', '<p><span><span style=\\\"font-size:14pt;\\\"><strong>Компрессорное масло </strong><strong>GML</strong><strong>  КС-19</strong></span> <br><br>Компрессорное масло GML КС-19 <strong>- </strong>производится на основе гидроочищенного остаточного базового масла оптимальной вязкости и композиции функциональных присадок. Применение высококачественных компонентов при производстве масла обеспечивает надежную и безопасную эксплуатацию поршневых компрессоров высокого и среднего давления.<br><b><br><span style=\\\"font-size:14pt;\\\">Применение: </span></b></span></p>\n<p><span>Компрессорное масло GML КС-19 </span>- предназначено для одноступенчатых и многоступенчатых поршневых компрессоров среднего и высокого давления, ротационных компрессоров и воздуходувок, компримирующих воздух и/или другие нерастворимые в масле газы. В ряде случаев КС-19 можно использовать взамен масла МС-20 в соответствии с рекомендациями производителя компрессора.<strong><br></strong></p>\n<p><span style=\\\"font-size:14pt;\\\"><strong>Преимущества:</strong></span></p>\n<ul>\n<li>высокие деэмульгирующие свойства, быстрое отделение воды;</li>\n<li>предотвращение коррозии;</li>\n<li>эффективное сохранение смазывающих свойств в течение всего периода эксплуатации;</li>\n<li>отличные термоокислительные и антипенные свойства;</li>\n<li>стабильные вязкостно-температурные параметры и стойкость к механической деструкции.</li>\n</ul>', 'postavka|<p><b> Информация -</b></p>\n<ul>\n<li>\n<pre><b>Бочка: </b>Металлическая</pre>\n</li>\n<li>\n<pre><b>Фасовка: </b>180 кг / 205 литров</pre>\n</li>\n</ul>||info|<p><b>Производитель:</b>\\\"GML OIL\\\"</p>\n<p><b>Страна изготовления:</b> Россия</p>\n<p><b>Импортер/Продавец:</b> OOO \\\"IMPERIAL OIL GROUP\\\"</p>\n<p><b>Срок годности:</b> смотрите на упаковке</p>\n<p><b>Сертификат:</b> по запросу</p>||specifications|<h3>Технические характеристики</h3>\n<table>\n<tbody>\n<tr>\n<td width=\\\"338\\\">\n<p><strong>Наименование показателя</strong></p>\n</td>\n<td width=\\\"180\\\">\n<p><strong>Метод испытания</strong></p>\n</td>\n<td width=\\\"149\\\">\n<p><strong>Значение</strong></p>\n</td>\n</tr>\n<tr>\n<td width=\\\"338\\\">\n<p>Плотность при 20°C, г/см3</p>\n</td>\n<td width=\\\"180\\\">\n<p>ASTM D 4052</p>\n</td>\n<td width=\\\"149\\\">\n<p>0,920</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"338\\\">\n<p>Кинематическая вязкость при 100°С, мм2/с</p>\n</td>\n<td width=\\\"180\\\">\n<p>ISO 3104 / ASTM D 445</p>\n</td>\n<td width=\\\"149\\\">\n<p>18,72</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"338\\\">\n<p>Кинематическая вязкость при 40°С, мм2/с</p>\n</td>\n<td width=\\\"180\\\">\n<p>ISO 3104 / ASTM D 445</p>\n</td>\n<td width=\\\"149\\\">\n<p>220</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"338\\\">\n<p>Индекс вязкости, не менее</p>\n</td>\n<td width=\\\"180\\\">\n<p>ГОСТ 25371</p>\n</td>\n<td width=\\\"149\\\">\n<p>95</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"338\\\">\n<p>Температура вспышки в открытом тигле, °C</p>\n</td>\n<td width=\\\"180\\\">\n<p>ГОСТ 4333</p>\n</td>\n<td width=\\\"149\\\">\n<p>232</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"338\\\">\n<p>Температура застывания, °C</p>\n</td>\n<td width=\\\"180\\\">\n<p>ASTM D 97</p>\n</td>\n<td width=\\\"149\\\">\n<p>-15</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"338\\\">\n<p>Кислотное число, мг КОН/кг</p>\n</td>\n<td width=\\\"180\\\">\n<p>ГОСТ 1431</p>\n</td>\n<td width=\\\"149\\\">\n<p>0,3</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"338\\\">\n<p>Зольность, %, не более</p>\n</td>\n<td width=\\\"180\\\">\n<p>ГОСТ 13538</p>\n</td>\n<td width=\\\"149\\\">\n<p>2</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"338\\\">\n<p>Коксуемость, %, не более</p>\n</td>\n<td width=\\\"180\\\">\n<p>ГОСТ 19932</p>\n</td>\n<td width=\\\"149\\\">\n<p>0,5</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"338\\\">\n<table>\n<tbody>\n<tr>\n<td>\n<p>Деэмульгирующие свойства:</p>\n<p>- время расслоения эмульсии, мин.</p>\n<p>- объем слоев (масло-вода-эмульсия), см3</p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td width=\\\"180\\\">\n<p> </p>\n<p>ГОСТ 12068</p>\n</td>\n<td width=\\\"149\\\">\n<p> </p>\n<p>20</p>\n<p>40-37-3</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"338\\\">\n<p>Склонность к пенообразованию:</p>\n<p>при 24 °C</p>\n<p>при 94 °C</p>\n<p>при 24 °C после испытания при 94 °C</p>\n</td>\n<td width=\\\"180\\\">\n<p> </p>\n<p>ГОСТ 32344</p>\n</td>\n<td width=\\\"149\\\">\n<p> </p>\n<p>0</p>\n<p>30</p>\n<p>0</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"338\\\">\n<p>Цвет, ед. ЦНТ, не более (с разбавлением 1:100)</p>\n</td>\n<td width=\\\"180\\\">\n<p>ASTM D 1500</p>\n</td>\n<td width=\\\"149\\\">\n<p>L 1,0</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"338\\\">\n<p>Фракционный состав, ⁰С:</p>\n<p>Отгон при температуре 250 <sup>0</sup>С,%</p>\n<p>Отгон при температуре 300 <sup>0</sup>С,%</p>\n<p>Отгон при температуре 350 <sup>0</sup>С, %</p>\n</td>\n<td width=\\\"180\\\">\n<p>ISO 3405 (эквивалентный ASTM D86)*</p>\n<p>ГОСТ Р 57036-2016</p>\n</td>\n<td width=\\\"149\\\">\n<p> </p>\n<p>Не может быть определено**</p>\n</td>\n</tr>\n</tbody>\n</table>||galery_photo|2022-05/1652712841_photo1649229232.jpg&#124;1&#124;0&#124;960x1280&#124;92.43 Kb||tds|GML_KC19||article|GML-KC19||barcode|7930110380477||nalichie|1||type|Минеральное||bar|216,5 л||akcija|0||novinka|0', 'Компрессорное масло GML КС-19', 'Компрессорное масло GML КС-19 Компрессорное масло GML КС-19 -производится на основе гидроочищенного остаточного базового масла оптимальной вязкости и композиции функциональных присадок. Применение высококачественных компонентов при производстве масла обеспечивает надежную и безопасную эксплуатацию', 'Компрессорное, масло, масла, компрессоров, Применение, поршневых, высокого, среднего, давления, свойства, производится, основе, гидроочищенного, остаточного, базового, оптимальной, вязкости, композиции, функциональных, присадок', '17,4', 'kompressornoe-maslo-gml-ks-19', 0, 1, 1, 1, 0, 0, '', '', ''),
(17, 'GML', '2022-05-16 20:21:35', '<p><a href=\\\"https://gmloil.uz/uploads/posts/2022-05/barell-gml-variant-2-kopija.png\\\" class=\\\"highslide\\\" target=\\\"_blank\\\"><img src=\\\"https://gmloil.uz/uploads/posts/2022-05/barell-gml-variant-2-kopija.png\\\" alt=\\\"\\\" style=\\\"display:block;margin-left:auto;margin-right:auto;\\\"></a></p>', '<h1><span style=\\\"font-size:14pt;\\\">Дизельное масло GML Supreme 15W-40 CF-4/SG</span></h1>\n<p>Всесезонное универсальное полусинтетическое моторное масло. Производится на основе базовых масел с высокой степенью очистки, с добавлением высококачественных присадок от ведущих производителей. Продукт произведен с соответствием требований большинства производителей техники, обеспечивает высокую защиту деталей от износа. Обеспечивает легкий холодный пуск и исключительную чистоту деталей двигателя. Обладает оптимальной вязкостью в широком диапазоне температур. Благодаря высокой термоокислительной стабильности способствует продлению срока между заменами масла.</p>\n<p><strong><span style=\\\"font-size:14pt;\\\">Применение:</span> <br></strong><br>Дизельное масло GML Supreme 15W-40 CF-4/SG рекомендуется для высоконагруженных 4-тактных дизельных и бензиновых двигателей коммерческих, магистральных автомобилей и внедорожной техники, применяемых в таких отраслях, как коммерческий транспорт, горнорудная промышленность, строительство и сельское хозяйство. Отличные вязкостно-температурные характеристики масла обеспечивают легкий запуск двигателя при температурах до -40 °С.</p>\n<p><span style=\\\"font-size:14pt;\\\"><strong>Соответствия по требованиям: </strong></span></p>\n<p>ACEA E2-04; API CF-4/SG; MAN 271; MB 228.1; Volvo VDS; Камаз; ЯМЗ.</p>\n<p> </p>\n<h2>Преимущества:</h2>\n<ul>\n<li>Высокая защита от износа</li>\n<li>Улучшенные моюще-диспергирующие характеристики</li>\n<li>Высокая термическая и окислительная стабильность</li>\n<li>Хорошее диспергирование сажи</li>\n<li>Отвечает требованиям спецификаций ключевых производителей</li>\n</ul>', 'postavka|<p><b> Информация -</b></p>\n<ul>\n<li>\n<pre><b>Бочка: </b>Металлическая</pre>\n</li>\n<li>\n<pre><b>Фасовка: </b>180 кг / 205 литров</pre>\n</li>\n</ul>||info|<p><b>Производитель:</b>\\\"GML OIL\\\"</p>\n<p><b>Страна изготовления:</b> Россия</p>\n<p><b>Импортер/Продавец:</b> OOO \\\"IMPERIAL OIL GROUP\\\"</p>\n<p><b>Срок годности:</b> смотрите на упаковке</p>\n<p><b>Сертификат:</b> по запросу</p>||specifications|<h3>Технические характеристики</h3>\n<table width=\\\"0\\\">\n<tbody>\n<tr>\n<td width=\\\"38\\\">\n<p><strong>№ </strong></p>\n<p><strong>п/п </strong></p>\n</td>\n<td width=\\\"388\\\">\n<p><strong>Наименование показателей </strong></p>\n</td>\n<td width=\\\"142\\\">\n<p><strong>Метод испытаний </strong></p>\n</td>\n<td width=\\\"95\\\">\n<p><strong>Норма </strong></p>\n</td>\n<td width=\\\"84\\\">\n<p><strong>Значение</strong></p>\n</td>\n</tr>\n<tr>\n<td width=\\\"38\\\">\n<p>1</p>\n</td>\n<td width=\\\"388\\\">\n<p>Вязкость кинематическая при 100 <sup>0</sup>С, мм<sup>2</sup>/с</p>\n</td>\n<td width=\\\"142\\\">\n<p>ГОСТ 33/ASTM D445</p>\n</td>\n<td width=\\\"95\\\">\n<p>12,5-16,3</p>\n</td>\n<td width=\\\"84\\\">\n<p>14,8</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"38\\\">\n<p>2</p>\n</td>\n<td width=\\\"388\\\">\n<p>Вязкость кинематическая при 40 <sup>0</sup>С, мм<sup>2</sup>/с</p>\n</td>\n<td width=\\\"142\\\">\n<p>ГОСТ 33/ASTM D445</p>\n</td>\n<td width=\\\"95\\\">\n<p>110-150</p>\n</td>\n<td width=\\\"84\\\">\n<p>117</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"38\\\">\n<p>3</p>\n</td>\n<td width=\\\"388\\\">\n<p>Вязкость кинематическая при 50 <sup>0</sup>С, мм<sup>2</sup>/с</p>\n</td>\n<td width=\\\"142\\\">\n<p>ГОСТ 33/ASTM D445</p>\n</td>\n<td width=\\\"95\\\">\n<p>90-120</p>\n</td>\n<td width=\\\"84\\\">\n<p>88</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"38\\\">\n<p>4</p>\n</td>\n<td width=\\\"388\\\">\n<p>Вязкость динамическая при -25 <sup> о</sup>С, мПа*с (CCS)</p>\n</td>\n<td width=\\\"142\\\">\n<p>ASTM D 5293/ ГОСТ Р 52559</p>\n</td>\n<td width=\\\"95\\\">\n<p>не более 7000</p>\n</td>\n<td width=\\\"84\\\">\n<p>6900</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"38\\\">\n<p>5</p>\n</td>\n<td width=\\\"388\\\">\n<p>Вязкость динамическая при -30 <sup> о</sup>С, мПа*с (MRV)</p>\n</td>\n<td width=\\\"142\\\">\n<p>ASTM D 4684/ ГОСТ Р 52557</p>\n</td>\n<td width=\\\"95\\\">\n<p>не более 60000</p>\n</td>\n<td width=\\\"84\\\">\n<p>39800</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"38\\\">\n<p>6</p>\n</td>\n<td width=\\\"388\\\">\n<p>Индекс вязкости, не менее</p>\n</td>\n<td width=\\\"142\\\">\n<p>ASTM D 2270</p>\n</td>\n<td width=\\\"95\\\">\n<p>90</p>\n</td>\n<td width=\\\"84\\\">\n<p>130</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"38\\\">\n<p>7</p>\n</td>\n<td width=\\\"388\\\">\n<p>Температура вспышки в открытом тигле, <sup>о</sup>С, не ниже</p>\n</td>\n<td width=\\\"142\\\">\n<p>ГОСТ 4333</p>\n</td>\n<td width=\\\"95\\\">\n<p>215</p>\n</td>\n<td width=\\\"84\\\">\n<p>230</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"38\\\">\n<p>8</p>\n</td>\n<td width=\\\"388\\\">\n<p>Температура застывания, <sup>о</sup>С, не выше</p>\n</td>\n<td width=\\\"142\\\">\n<p>ГОСТ 20287</p>\n</td>\n<td width=\\\"95\\\">\n<p>минус 30</p>\n</td>\n<td width=\\\"84\\\">\n<p>минус 41</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"38\\\">\n<p>9</p>\n</td>\n<td width=\\\"388\\\">\n<p>Щелочное число, мг КОН/г, не менее</p>\n</td>\n<td width=\\\"142\\\">\n<p>ГОСТ 11362</p>\n</td>\n<td width=\\\"95\\\">\n<p>8</p>\n</td>\n<td width=\\\"84\\\">\n<p>10</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"38\\\">\n<p>10</p>\n</td>\n<td width=\\\"388\\\">\n<p>Плотность при 20<sup>о</sup><sub>С. </sub>кг/м<sup>3</sup>, не более</p>\n</td>\n<td width=\\\"142\\\">\n<p>ASTM D 4052-09</p>\n</td>\n<td width=\\\"95\\\">\n<p>900</p>\n</td>\n<td width=\\\"84\\\">\n<p>0,888</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"38\\\">\n<p>11</p>\n</td>\n<td width=\\\"388\\\">\n<p>Массовая доля потерь на испарение методом HOAKA, %, не более</p>\n</td>\n<td width=\\\"142\\\">\n<p>ASTM D 5800</p>\n</td>\n<td width=\\\"95\\\">\n<p>13,5</p>\n</td>\n<td width=\\\"84\\\">\n<p>13</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"38\\\">\n<p>12</p>\n</td>\n<td width=\\\"388\\\">\n<p>Объём перегонки при температуре 250<sup> о</sup>С, об. %, не более</p>\n<p>Объём перегонки при температуре 300<sup> о</sup>С, об. %, не более</p>\n<p>Объём перегонки при температуре 350<sup> о</sup>С, об. %, не более</p>\n</td>\n<td width=\\\"142\\\">\n<p>ISO 3405/ASTM D86*</p>\n</td>\n<td width=\\\"95\\\">\n<p>невозможно</p>\n<p>определить</p>\n</td>\n<td width=\\\"84\\\">\n<p>невозможно</p>\n<p>определить</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"38\\\">\n<p>13</p>\n</td>\n<td width=\\\"388\\\">\n<p>Температура потери текучести,  <sup>о</sup>С, не выше</p>\n</td>\n<td width=\\\"142\\\">\n<p>ASTM D97</p>\n<p>(эквивалент ISO 3016)</p>\n</td>\n<td width=\\\"95\\\">\n<p>минус 24</p>\n</td>\n<td width=\\\"84\\\">\n<p>минус 31</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"38\\\">\n<p>14</p>\n</td>\n<td width=\\\"388\\\">\n<p>Цвет разбавлением 1:100 в растворе четырёххлористого углерода (калориметрическая характеристика), единиц ASTM</p>\n</td>\n<td width=\\\"142\\\">\n<p>ASTM D1500</p>\n</td>\n<td width=\\\"95\\\">\n<p>не более 3</p>\n</td>\n<td width=\\\"84\\\">\n<p>2</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"38\\\">\n<p>15</p>\n</td>\n<td width=\\\"388\\\">\n<p>Содержание сульфатной золы, масс.%, не более</p>\n</td>\n<td width=\\\"142\\\">\n<p>ISO 3987</p>\n</td>\n<td width=\\\"95\\\">\n<p>1,5</p>\n</td>\n<td width=\\\"84\\\">\n<p>1,3</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"38\\\">\n<p>16</p>\n</td>\n<td width=\\\"388\\\">\n<p>Число омыления, мг КОН/г</p>\n</td>\n<td width=\\\"142\\\">\n<p>ISO 6293-2**</p>\n</td>\n<td width=\\\"95\\\">\n<p>невозможно</p>\n<p>определить</p>\n</td>\n<td width=\\\"84\\\">\n<p>невозможно</p>\n<p>определить</p>\n</td>\n</tr>\n</tbody>\n</table>||galery_photo|2022-05/1652714402_photo1649229232.jpg&#124;1&#124;0&#124;960x1280&#124;92.43 Kb||tds|GML_15W40CF||article|GML-||barcode|7930110380477||nalichie|1||type|Минеральное||bar|216,5 л||akcija|0||novinka|0', 'Дизельное масло GML Supreme 15W-40 CF-4/SG', 'Дизельное масло GML Supreme 15W-40 CF-4/SG Всесезонное универсальное полусинтетическое моторное масло. Производится на основе базовых масел с высокой степенью очистки, с добавлением высококачественных присадок от ведущих производителей. Продукт произведен с соответствием требований большинства', 'масло, CF4SG, производителей, Дизельное, Supreme, 15W40, высокой, техники, деталей, износа, легкий, двигателя, масла, характеристики, требованиям, Высокая, Всесезонное, универсальное, полусинтетическое, моторное', '17,2', 'dizelnoe-maslo-gml-supreme-15w-40-cf-4-sg', 0, 1, 1, 1, 0, 0, '', '', ''),
(18, 'GML', '2022-05-16 20:35:59', '<p><a href=\\\"https://gmloil.uz/uploads/posts/2022-05/barell-gml-variant-2-kopija.png\\\" class=\\\"highslide\\\" target=\\\"_blank\\\"><img src=\\\"https://gmloil.uz/uploads/posts/2022-05/barell-gml-variant-2-kopija.png\\\" alt=\\\"\\\" style=\\\"display:block;margin-left:auto;margin-right:auto;\\\"></a></p>', '<p><span style=\\\"font-size:14pt;\\\"><strong>Турбинное масло GML Turbine Oil 22 (ТП-22)</strong></span></p>\n<p><span>Турбинное масло, разработанное на основе гидроочищенных минеральных базовых масел и современных присадок, которые содержат ингибиторы коррозии и пассиваторы металлов, что увеличивает срок службы смазочного материала и сохраняет ресурс оборудования</span></p>\n<p><span style=\\\"font-size:14pt;\\\"><strong>Применение:</strong></span></p>\n<p>Турбинное масло GML Turbine Oil 22 предназначено для смазывания подшипников и вспомогательных механизмов паровых турбин, а также применяется в системах уплотнения и регулирования в качестве гидравлической жидкости и уплотняющей среды. Масло также может применяться в газовых турбинах, где это масло разрешено к применению изготовителем оборудования, и в центробежных и аксиальных турбокомпрессорах в тех случаях, когда вязкость и смазывающие свойства данного масла обеспечивают достаточную защиту оборудования от износа.</p>\n<p><strong><span style=\\\"font-size:14pt;\\\">Преимущества:</span> <br><br></strong>Повышенная стабильность против окисления продлевает срок службы масла и технологического оборудования, позволяет эксплуатировать масло в турбинах и турбокомпрессорах, имеющих зоны высокого нагрева масла в нормальных рабочих режимах; Превосходные деэмульгирующие свойства позволяют эксплуатировать масло даже в условиях повышенного обводнения, что характерно для паровых турбин предыдущих поколений или турбин с большим износом.</p>', 'postavka|<p><b> Информация -</b></p>\n<ul>\n<li>\n<pre><b>Бочка: </b>Металлическая</pre>\n</li>\n<li>\n<pre><b>Фасовка: </b>180 кг / 205 литров</pre>\n</li>\n</ul>||info|<p><b>Производитель:</b>\\\"GML OIL\\\"</p>\n<p><b>Страна изготовления:</b> Россия</p>\n<p><b>Импортер/Продавец:</b> OOO \\\"IMPERIAL OIL GROUP\\\"</p>\n<p><b>Срок годности:</b> смотрите на упаковке</p>\n<p><b>Сертификат:</b> по запросу</p>||specifications|<h3>Технические характеристики</h3>\n<table width=\\\"0\\\">\n<tbody>\n<tr>\n<td width=\\\"36\\\">\n<p><strong>№ </strong></p>\n<p><strong>п/п </strong></p>\n</td>\n<td width=\\\"361\\\">\n<p><strong>Наименование  показателей </strong></p>\n</td>\n<td width=\\\"151\\\">\n<p><strong>Метод испытания </strong></p>\n</td>\n<td width=\\\"114\\\">\n<p><strong>Значение </strong></p>\n</td>\n</tr>\n<tr>\n<td width=\\\"36\\\">\n<p>1</p>\n</td>\n<td width=\\\"361\\\">\n<p>Вязкость кинематическая при 100 <sup>0</sup>С, мм<sup>2</sup>/с, не менее</p>\n</td>\n<td width=\\\"151\\\">\n<p>ГОСТ 33/ASTM D 445</p>\n</td>\n<td width=\\\"114\\\">\n<p>5.41</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"36\\\">\n<p>2</p>\n</td>\n<td width=\\\"361\\\">\n<p>Вязкость кинематическая при 50 <sup>0</sup>С, мм<sup>2</sup>/с, не менее</p>\n</td>\n<td width=\\\"151\\\">\n<p>ГОСТ 33/ASTM D 445</p>\n</td>\n<td width=\\\"114\\\">\n<p>22</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"36\\\">\n<p>3</p>\n</td>\n<td width=\\\"361\\\">\n<p>Вязкость кинематическая при 40 <sup>0</sup>С, мм<sup>2</sup>/с, не менее</p>\n</td>\n<td width=\\\"151\\\">\n<p>ГОСТ 33/ASTM D 445</p>\n</td>\n<td width=\\\"114\\\">\n<p>29,1</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"36\\\">\n<p>4</p>\n</td>\n<td width=\\\"361\\\">\n<p>Индекс вязкости, не менее </p>\n</td>\n<td width=\\\"151\\\">\n<p>ASTM D 2270</p>\n</td>\n<td width=\\\"114\\\">\n<p>103</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"36\\\">\n<p>5</p>\n</td>\n<td width=\\\"361\\\">\n<p>Массовая доля механических примесей, %, не более</p>\n</td>\n<td width=\\\"151\\\">\n<p>ГОСТ 6370 с дополнением</p>\n<p>п.4.2 ГОСТ 8581</p>\n</td>\n<td width=\\\"114\\\">\n<p>отсутствие</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"36\\\">\n<p>6</p>\n</td>\n<td width=\\\"361\\\">\n<p>Массовая доля воды, не более</p>\n</td>\n<td width=\\\"151\\\">\n<p>ГОСТ 2477</p>\n</td>\n<td width=\\\"114\\\">\n<p>отсутствие</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"36\\\">\n<p>7</p>\n</td>\n<td width=\\\"361\\\">\n<p>Температура вспышки в открытом тигле, <sup>0</sup>С, не ниже</p>\n</td>\n<td width=\\\"151\\\">\n<p>ГОСТ 4333</p>\n</td>\n<td width=\\\"114\\\">\n<p>208</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"36\\\">\n<p>8</p>\n</td>\n<td width=\\\"361\\\">\n<p>Температура застывания, <sup>0</sup>С, не выше</p>\n</td>\n<td width=\\\"151\\\">\n<p>ГОСТ 20287</p>\n</td>\n<td width=\\\"114\\\">\n<p>Минус 15</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"36\\\">\n<p> </p>\n<p>9</p>\n</td>\n<td width=\\\"361\\\">\n<p> </p>\n<p>Температура потери текучести,  <sup>о</sup>С, не выше</p>\n</td>\n<td width=\\\"151\\\">\n<p>ASTM D97 (эквивалент ISO 3016)</p>\n</td>\n<td width=\\\"114\\\">\n<p>Минус 13</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"36\\\">\n<p>10</p>\n</td>\n<td width=\\\"361\\\">\n<p>Коррозионность на пластинках из свинца, г/м<sup>2 </sup>, не более</p>\n</td>\n<td width=\\\"151\\\">\n<p>ГОСТ 20502, метод 2</p>\n</td>\n<td width=\\\"114\\\">\n<p>отсутствует</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"36\\\">\n<p>11</p>\n</td>\n<td width=\\\"361\\\">\n<p>Кислотное  число, мг КОН на 1 г масла, не более</p>\n</td>\n<td width=\\\"151\\\">\n<p>ГОСТ 5985</p>\n</td>\n<td width=\\\"114\\\">\n<p>0,04</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"36\\\">\n<p>12</p>\n</td>\n<td width=\\\"361\\\">\n<p>Зольность сульфатная, %, не более</p>\n</td>\n<td width=\\\"151\\\">\n<p>ГОСТ 11362</p>\n</td>\n<td width=\\\"114\\\">\n<p>1.3</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"36\\\">\n<p>13</p>\n</td>\n<td width=\\\"361\\\">\n<p>Стабильность по индукционному периоду садкообразования (ИПО) в течение 60 ч. </p>\n</td>\n<td width=\\\"151\\\">\n<p>ГОСТ 11063</p>\n</td>\n<td width=\\\"114\\\">\n<p>выдерживает</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"36\\\">\n<p>14</p>\n</td>\n<td width=\\\"361\\\">\n<p>Цвет разбавлением 1:100 в растворе четырёххлористого углерода (калориметрическая характеристика)</p>\n</td>\n<td width=\\\"151\\\">\n<p>ASTM D 1500</p>\n</td>\n<td width=\\\"114\\\">\n<p>L 0,5</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"36\\\">\n<p>15</p>\n</td>\n<td width=\\\"361\\\">\n<p>Плотность при 20<sup>0</sup>С, г/см<sup>3</sup>, не более</p>\n</td>\n<td width=\\\"151\\\">\n<p>ASTM D 1298</p>\n</td>\n<td width=\\\"114\\\">\n<p>0,882</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"36\\\">\n<p>16</p>\n</td>\n<td width=\\\"361\\\">\n<p>Массовая доля  активных элементов, %, не менее:</p>\n<p>-  кальция</p>\n<p>-  цинка</p>\n</td>\n<td width=\\\"151\\\">\n<p>ГОСТ 13538</p>\n<p> </p>\n<p> </p>\n</td>\n<td width=\\\"114\\\">\n<p> </p>\n<p>0.35</p>\n<p>0.14</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"36\\\">\n<p>17</p>\n</td>\n<td width=\\\"361\\\">\n<p>Объём перегонки при температуре 250<sup> о</sup>С, об. %, не более</p>\n<p>Объём перегонки при температуре 300<sup> о</sup>С, об. %, не более</p>\n<p>Объём перегонки при температуре 350<sup> о</sup>С, об. %, не более</p>\n</td>\n<td width=\\\"151\\\">\n<p> </p>\n<p>ISO 3405/ASTM D86*</p>\n<p> </p>\n</td>\n<td width=\\\"114\\\">\n<p> </p>\n<p>невозможно определить*</p>\n</td>\n</tr>\n</tbody>\n</table>||galery_photo|2022-05/1652715166_photo1649229232.jpg&#124;1&#124;0&#124;960x1280&#124;92.43 Kb||tds|GML_TP22||article|GML-TP22||barcode|7930110380477||nalichie|1||type|Минеральное||bar|216,5 л||akcija|0||novinka|0', 'Турбинное масло GML Turbine Oil 22', 'Турбинное масло GML Turbine Oil 22 (ТП-22) Турбинное масло, разработанное на основе гидроочищенных минеральных базовых масел и современных присадок, которые содержат ингибиторы коррозии и пассиваторы металлов, что увеличивает срок службы смазочного материала и сохраняет ресурс оборудования', 'масло, оборудования, Турбинное, турбин, масла, Turbine, службы, паровых, также, турбинах, турбокомпрессорах, свойства, эксплуатировать, разработанное, основе, гидроочищенных, минеральных, базовых, масел, современных', '17,7', 'turbinnoe-maslo-gml-turbine-oil-22', 0, 1, 1, 1, 0, 0, '', '', ''),
(19, 'GML', '2022-05-18 10:49:05', '<p><a href=\\\"https://gmloil.uz/uploads/posts/2022-05/barell-gml-variant-2-kopija.png\\\" class=\\\"highslide\\\" target=\\\"_blank\\\"><img src=\\\"https://gmloil.uz/uploads/posts/2022-05/barell-gml-variant-2-kopija.png\\\" alt=\\\"\\\" style=\\\"display:block;margin-left:auto;margin-right:auto;\\\"></a></p>', '<p><span style=\\\"font-size:14pt;\\\"><strong>Компрессорное масло GML КП-8С </strong></span></p>\n<p>Компрессорное масло GML КП-8С – компрессорное масло с повышенной стабильностью, получаемое методом селективной очистки из сернистых или из смеси сернистых и малосернистых нефтей. Масло содержит присадки, повышающие антиокислительные и антикоррозионные свойства. </p>\n<p><span style=\\\"font-size:14pt;\\\"><strong>Применение:</strong></span></p>\n<p>Компрессорное масло GML КП-8С применяется в системах смазки подшипников, зубчатых муфт, турбоагрегатов, высоконагруженных приводных редукторов, а также в гидравлических системах управления и герметизации центробежных, осевых и винтовых компрессоров отечественного производства. </p>\n<p><strong><span style=\\\"font-size:14pt;\\\">Преимущества:<br></span> <br></strong>Антикоррозионные свойства масла обеспечивают защиту оборудования от коррозионного воздействия. Антиокислительные свойства масла препятствуют образованию отложений, в том числе в зонах высоких температур (до 150 °C).</p>', 'postavka|<p><b> Информация -</b></p>\n<ul>\n<li>\n<pre><b>Бочка: </b>Металлическая</pre>\n</li>\n<li>\n<pre><b>Фасовка: </b>180 кг / 205 литров</pre>\n</li>\n</ul>||info|<p><b>Производитель:</b>\\\"GML OIL\\\"</p>\n<p><b>Страна изготовления:</b> Россия</p>\n<p><b>Импортер/Продавец:</b> OOO \\\"IMPERIAL OIL GROUP\\\"</p>\n<p><b>Срок годности:</b> смотрите на упаковке</p>\n<p><b>Сертификат:</b> по запросу</p>||specifications|<h3>Технические характеристики</h3>\n<table width=\\\"0\\\">\n<tbody>\n<tr>\n<td width=\\\"35\\\">\n<p><strong>№ </strong></p>\n<p><strong>п/п </strong></p>\n</td>\n<td width=\\\"350\\\">\n<p><strong>Наименование  показателей </strong></p>\n</td>\n<td width=\\\"172\\\">\n<p><strong>Метод испытания </strong></p>\n</td>\n<td width=\\\"95\\\">\n<p><strong>Значение </strong></p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p>1</p>\n</td>\n<td width=\\\"350\\\">\n<p>Вязкость кинематическая при 100 <sup>0</sup>С, мм<sup>2</sup>/с, не менее</p>\n</td>\n<td width=\\\"172\\\">\n<p>ГОСТ 33/ASTM D 445</p>\n</td>\n<td width=\\\"95\\\">\n<p>7</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p>2</p>\n</td>\n<td width=\\\"350\\\">\n<p>Вязкость кинематическая при 50 <sup>0</sup>С, мм<sup>2</sup>/с, не менее</p>\n</td>\n<td width=\\\"172\\\">\n<p>ГОСТ 33/ASTM D 445</p>\n</td>\n<td width=\\\"95\\\">\n<p>30,5</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p>3</p>\n</td>\n<td width=\\\"350\\\">\n<p>Вязкость кинематическая при 40 <sup>0</sup>С, мм<sup>2</sup>/с, не менее</p>\n</td>\n<td width=\\\"172\\\">\n<p>ГОСТ 33/ASTM D 445</p>\n</td>\n<td width=\\\"95\\\">\n<p>50</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p>4</p>\n</td>\n<td width=\\\"350\\\">\n<p>Индекс вязкости, не менее </p>\n</td>\n<td width=\\\"172\\\">\n<p>ASTM D 2270</p>\n</td>\n<td width=\\\"95\\\">\n<p>95</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p>5</p>\n</td>\n<td width=\\\"350\\\">\n<p>Массовая доля механических примесей, %, не более</p>\n</td>\n<td width=\\\"172\\\">\n<p>ГОСТ 6370 с дополнением п.4.2</p>\n<p>ГОСТ 8581</p>\n</td>\n<td width=\\\"95\\\">\n<p>отсутствие</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p>6</p>\n</td>\n<td width=\\\"350\\\">\n<p>Массовая доля воды, не более</p>\n</td>\n<td width=\\\"172\\\">\n<p>ГОСТ 2477</p>\n</td>\n<td width=\\\"95\\\">\n<p>отсутствие</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p>7</p>\n</td>\n<td width=\\\"350\\\">\n<p>Температура вспышки в открытом тигле, <sup>0</sup>С, не ниже</p>\n</td>\n<td width=\\\"172\\\">\n<p>ГОСТ 4333</p>\n</td>\n<td width=\\\"95\\\">\n<p>220</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p>8</p>\n</td>\n<td width=\\\"350\\\">\n<p>Температура застывания, <sup>0</sup>С, не выше</p>\n</td>\n<td width=\\\"172\\\">\n<p>ГОСТ 20287</p>\n</td>\n<td width=\\\"95\\\">\n<p>-15</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p> </p>\n<p>9</p>\n</td>\n<td width=\\\"350\\\">\n<p> </p>\n<p>Температура потери текучести,  <sup>о</sup>С, не выше</p>\n</td>\n<td width=\\\"172\\\">\n<p>ASTM D97 (эквивалент ISO</p>\n<p>3016)</p>\n</td>\n<td width=\\\"95\\\">\n<p>-13</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p>10</p>\n</td>\n<td width=\\\"350\\\">\n<p>Массовая доля серы, %</p>\n</td>\n<td width=\\\"172\\\">\n<p>ГОСТ Р 51947-2002</p>\n</td>\n<td width=\\\"95\\\">\n<p>0,2</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p>11</p>\n</td>\n<td width=\\\"350\\\">\n<p>Кислотное  число, мг КОН на 1 г масла, не более</p>\n</td>\n<td width=\\\"172\\\">\n<p>ГОСТ 5985</p>\n</td>\n<td width=\\\"95\\\">\n<p>0,05</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p>12</p>\n</td>\n<td width=\\\"350\\\">\n<p>Зольность сульфатная, %, не более</p>\n</td>\n<td width=\\\"172\\\">\n<p>ГОСТ 11362</p>\n</td>\n<td width=\\\"95\\\">\n<p>0,005</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p>13</p>\n</td>\n<td width=\\\"350\\\">\n<p>Коксуемость, %</p>\n</td>\n<td width=\\\"172\\\">\n<p>ГОСТ 19932-99</p>\n</td>\n<td width=\\\"95\\\">\n<p>0,05</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p>14</p>\n</td>\n<td width=\\\"350\\\">\n<p>Цвет разбавлением 1:100 в растворе четырёххлористого углерода (калориметрическая характеристика)</p>\n</td>\n<td width=\\\"172\\\">\n<p>ASTM D 1500</p>\n</td>\n<td width=\\\"95\\\">\n<p>2,5</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p>15</p>\n</td>\n<td width=\\\"350\\\">\n<p>Плотность при 20<sup>0</sup>С, г/см<sup>3</sup>, не более</p>\n</td>\n<td width=\\\"172\\\">\n<p>ASTM D 1298</p>\n</td>\n<td width=\\\"95\\\">\n<p>0,885</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p>16</p>\n</td>\n<td width=\\\"350\\\">\n<p>Массовая доля  активных элементов, %, не менее:</p>\n<p>-  кальция</p>\n<p>-  цинка</p>\n</td>\n<td width=\\\"172\\\">\n<p>ГОСТ 13538</p>\n<p> </p>\n<p> </p>\n</td>\n<td width=\\\"95\\\">\n<p> </p>\n<p>0.35</p>\n<p>0.1</p>\n</td>\n</tr>\n<tr>\n<td width=\\\"35\\\">\n<p>17</p>\n</td>\n<td width=\\\"350\\\">\n<p>Объём перегонки при температуре 250<sup> о</sup>С, об. %, не более</p>\n<p>Объём перегонки при температуре 300<sup> о</sup>С, об. %, не более</p>\n<p>Объём перегонки при температуре 350<sup> о</sup>С, об. %, не более</p>\n</td>\n<td width=\\\"172\\\">\n<p> </p>\n<p>ISO 3405/ASTM D86*</p>\n<p> </p>\n</td>\n<td width=\\\"95\\\">\n<p> </p>\n<p>невозможно определить*</p>\n</td>\n</tr>\n</tbody>\n</table>||tds|GML_KP8C||article|GML-KP8C||barcode|7930110380477||nalichie|1||type|Минеральное||bar|216,5 л||akcija|0||novinka|0', 'Компрессорное масло GML КП-8С', 'Компрессорное масло GML КП-8С Компрессорное масло GML КП-8С – компрессорное масло с повышенной стабильностью, получаемое методом селективной очистки из сернистых или из смеси сернистых и малосернистых нефтей. Масло содержит присадки, повышающие антиокислительные и антикоррозионные свойства.', 'масло, Компрессорное, свойства, сернистых, системах, масла, компрессорное, повышенной, стабильностью, получаемое, методом, селективной, очистки, смеси, малосернистых, нефтей, Масло, содержит, присадки, повышающие', '17,4', 'maslo', 0, 1, 1, 1, 0, 0, '', '', '');
INSERT INTO `dle_post` (`id`, `autor`, `date`, `short_story`, `full_story`, `xfields`, `title`, `descr`, `keywords`, `category`, `alt_name`, `comm_num`, `allow_comm`, `allow_main`, `approve`, `fixed`, `allow_br`, `symbol`, `tags`, `metatitle`) VALUES
(20, 'GML', '2022-08-22 17:38:59', '<p><a href=\\\"https://gmloil.uz/uploads/posts/2022-05/barell-gml-variant-2-kopija.png\\\" class=\\\"highslide\\\" target=\\\"_blank\\\"><img src=\\\"https://gmloil.uz/uploads/posts/2022-05/barell-gml-variant-2-kopija.png\\\" alt=\\\"\\\" style=\\\"display:block;margin-left:auto;margin-right:auto;\\\"></a></p>', '<h3>Гидравлическое масло GML Hydro HLP 32</h3>\n<p>Гидравлическое масло, разработанное для стационарных гидравлических систем, где требуются хорошие <br>противоизносные свойства, эффективная защита от коррозии, отличная фильтруемость и минимизация <br>отложений. Масла серии GML Hydro HLP имеют широкий спектр одобрений различных производителей <br>гидравлического оборудования и соответствуют требованиям большинства гидравлических систем.<br><br></p>\n<h3>Применение:</h3>\n<p>Как рабочая жидкость для промышленных гидравлических систем. Гидравлические системы <br>станков (термопластавтоматы, прессы, тяжелые манипуляторы, станки. Роботы, формовочные машины <br>для пластмасс и т. д. Для поршневых, шестеренчатых, пластинчатых и аксиально-поршневых насосов в <br>соответствии с требованиями производителей. В гидравлических насосах различных производителей, <br>включая Denison, Cincinnati Machine, Eaton<br><br></p>\n<h3>Спецификации:</h3>\n<p>DIN 51524 PART 2, HLP<br><br></p>\n<h3>Преимущества:</h3>\n<p>Высокая защита от износа, улучшенные моюще-диспергирующие характеристики, <br>высокая термическая и окислительная стабильность, хорошее диспергирование сажи, отвечает <br>требованиям спецификаций ключевых производителей</p>', 'postavka|<p><b> Информация -</b></p>\n<ul>\n<li>\n<pre><b>Бочка: </b>Металлическая</pre>\n</li>\n<li>\n<pre><b>Фасовка: </b>180 кг / 205 литров</pre>\n</li>\n</ul>||info|<p><b>Производитель:</b>\\\"GML OIL\\\"</p>\n<p><b>Страна изготовления:</b> Россия</p>\n<p><b>Импортер/Продавец:</b> OOO \\\"IMPERIAL OIL GROUP\\\"</p>\n<p><b>Срок годности:</b> смотрите на упаковке</p>\n<p><b>Сертификат:</b> по запросу</p>||specifications|<h3>Технические характеристики</h3>\n<p><br></p>\n<table border=\\\"1\\\" style=\\\"border-collapse:collapse;width:100%;height:122.812px;\\\">\n<tbody>\n<tr style=\\\"height:16.5px;\\\">\n<th style=\\\"width:40.7885%;height:16.5px;text-align:center;\\\"><b>Показатели</b></th>\n<th style=\\\"width:20.3526%;height:16.5px;text-align:center;\\\"><b>Метод испытания</b></th>\n<th style=\\\"width:38.859%;height:16.5px;text-align:center;\\\"><b>Типовые значения</b></th>\n</tr>\n<tr style=\\\"height:20.1562px;\\\">\n<td style=\\\"width:40.7885%;height:20.1562px;text-align:left;\\\"></td>\n<td style=\\\"width:20.3526%;height:20.1562px;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:38.859%;height:20.1562px;text-align:left;\\\"><b> </b></td>\n</tr>\n<tr style=\\\"height:20.1562px;\\\">\n<td style=\\\"width:40.7885%;height:20.1562px;text-align:left;\\\"></td>\n<td style=\\\"width:20.3526%;height:20.1562px;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:38.859%;height:20.1562px;text-align:left;\\\"><b> </b></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td style=\\\"width:40.7885%;height:16.5px;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:20.3526%;height:16.5px;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:38.859%;height:16.5px;text-align:left;\\\"><b> </b></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td style=\\\"width:40.7885%;height:16.5px;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:20.3526%;height:16.5px;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:38.859%;height:16.5px;text-align:left;\\\"><b> </b></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td style=\\\"width:40.7885%;height:16.5px;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:20.3526%;height:16.5px;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:38.859%;height:16.5px;text-align:left;\\\"><b> </b></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td style=\\\"width:40.7885%;height:16.5px;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:20.3526%;height:16.5px;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:38.859%;height:16.5px;text-align:left;\\\"><b> </b></td>\n</tr>\n<tr>\n<td style=\\\"width:40.7885%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:20.3526%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:38.859%;text-align:left;\\\"><b> </b></td>\n</tr>\n<tr>\n<td style=\\\"width:40.7885%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:20.3526%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:38.859%;text-align:left;\\\"><b> </b></td>\n</tr>\n<tr>\n<td style=\\\"width:40.7885%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:20.3526%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:38.859%;text-align:left;\\\"><b> </b></td>\n</tr>\n<tr>\n<td style=\\\"width:40.7885%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:20.3526%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:38.859%;text-align:left;\\\"><b> </b></td>\n</tr>\n<tr>\n<td style=\\\"width:40.7885%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:20.3526%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:38.859%;text-align:left;\\\"><b> </b></td>\n</tr>\n<tr>\n<td style=\\\"width:40.7885%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:20.3526%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:38.859%;text-align:left;\\\"><b> </b></td>\n</tr>\n<tr>\n<td style=\\\"width:40.7885%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:20.3526%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:38.859%;text-align:left;\\\"><b> </b></td>\n</tr>\n<tr>\n<td style=\\\"width:40.7885%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:20.3526%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:38.859%;text-align:left;\\\"><b> </b></td>\n</tr>\n<tr>\n<td style=\\\"width:40.7885%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:20.3526%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:38.859%;text-align:left;\\\"><b> </b></td>\n</tr>\n<tr>\n<td style=\\\"width:40.7885%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:20.3526%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:38.859%;text-align:left;\\\"><b> </b></td>\n</tr>\n</tbody>\n</table>\n<p><br></p>||sertification|Есть||article|GML-HLP||barcode|7930110380477||nalichie|1||type|Минеральное||bar|216,5 л||akcija|0||novinka|0', 'Гидравлическое масло GML HYDRO HLP 32', 'Гидравлическое масло GML Hydro HLP 32 Гидравлическое масло, разработанное для стационарных гидравлических систем, где требуются хорошие противоизносные свойства, эффективная защита от коррозии, отличная фильтруемость и минимизация отложений. Масла серии GML Hydro HLP имеют широкий спектр одобрений', 'гидравлических, производителей, систем, Гидравлическое, масло, Hydro, защита, различных, требованиям, разработанное, стационарных, требуются, хорошие, противоизносные, свойства, эффективная, коррозии, отличная, фильтруемость, минимизация', '17,3', 'gidravlicheskoe-maslo-gml-hydro-hlp-46', 0, 1, 1, 1, 0, 0, '', '', ''),
(21, 'GML', '2022-08-22 17:42:05', '<p><a href=\\\"https://gmloil.uz/uploads/posts/2022-05/barell-gml-variant-2-kopija.png\\\" class=\\\"highslide\\\" target=\\\"_blank\\\"><img src=\\\"https://gmloil.uz/uploads/posts/2022-05/barell-gml-variant-2-kopija.png\\\" alt=\\\"\\\" style=\\\"display:block;margin-left:auto;margin-right:auto;\\\"></a></p>', '', 'postavka|<p><b> Информация -</b></p>\n<ul>\n<li>\n<pre><b>Бочка: </b>Металлическая</pre>\n</li>\n<li>\n<pre><b>Фасовка: </b>180 кг / 205 литров</pre>\n</li>\n</ul>||description|<h3>Гидравлическое масло GML Hydro HLP 68</h3>\n<p>Гидравлическое масло, разработанное для стационарных гидравлических систем, где требуются хорошие  <br>противоизносные свойства, эффективная защита от коррозии, отличная фильтруемость и минимизация  <br>отложений. Масла серии GML Hydro HLP имеют широкий спектр одобрений различных производителей  <br>гидравлического оборудования и соответствуют требованиям большинства гидравлических систем. <br><br></p>\n<h3>Применение:</h3>\n<p>Как рабочая жидкость для промышленных гидравлических систем. Гидравлические системы  <br>станков (термопластавтоматы, прессы, тяжелые манипуляторы, станки. Роботы, формовочные машины  <br>для пластмасс и т. д. Для поршневых, шестеренчатых, пластинчатых и аксиально-поршневых насосов в  <br>соответствии с требованиями производителей. В гидравлических насосах различных производителей,  <br>включая Denison, Cincinnati Machine, Eaton <br><br></p>\n<h3>Спецификации:</h3>\n<p>DIN 51524 PART 2, HLP <br><br></p>\n<h3>Преимущества:</h3>\n<p>Высокая защита от износа, улучшенные моюще-диспергирующие характеристики,  <br>высокая термическая и окислительная стабильность, хорошее диспергирование сажи, отвечает  <br>требованиям спецификаций ключевых производителей</p>||info|<p><b>Производитель:</b>\\\"GML OIL\\\"</p>\n<p><b>Страна изготовления:</b> Россия</p>\n<p><b>Импортер/Продавец:</b> OOO \\\"IMPERIAL OIL GROUP\\\"</p>\n<p><b>Срок годности:</b> смотрите на упаковке</p>\n<p><b>Сертификат:</b> по запросу</p>||specifications|<h3>Технические характеристики</h3>\n<p><br></p>\n<table border=\\\"1\\\" style=\\\"border-collapse:collapse;width:100%;height:122.812px;\\\">\n<tbody>\n<tr style=\\\"height:16.5px;\\\">\n<th style=\\\"width:40.7885%;height:16.5px;text-align:center;\\\"><b>Показатели</b></th>\n<th style=\\\"width:20.3526%;height:16.5px;text-align:center;\\\"><b>Метод испытания</b></th>\n<th style=\\\"width:38.859%;height:16.5px;text-align:center;\\\"><b>Типовые значения</b></th>\n</tr>\n<tr style=\\\"height:20.1562px;\\\">\n<td style=\\\"width:40.7885%;height:20.1562px;text-align:left;\\\"></td>\n<td style=\\\"width:20.3526%;height:20.1562px;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:38.859%;height:20.1562px;text-align:left;\\\"><b> </b></td>\n</tr>\n<tr style=\\\"height:20.1562px;\\\">\n<td style=\\\"width:40.7885%;height:20.1562px;text-align:left;\\\"></td>\n<td style=\\\"width:20.3526%;height:20.1562px;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:38.859%;height:20.1562px;text-align:left;\\\"><b> </b></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td style=\\\"width:40.7885%;height:16.5px;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:20.3526%;height:16.5px;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:38.859%;height:16.5px;text-align:left;\\\"><b> </b></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td style=\\\"width:40.7885%;height:16.5px;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:20.3526%;height:16.5px;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:38.859%;height:16.5px;text-align:left;\\\"><b> </b></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td style=\\\"width:40.7885%;height:16.5px;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:20.3526%;height:16.5px;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:38.859%;height:16.5px;text-align:left;\\\"><b> </b></td>\n</tr>\n<tr style=\\\"height:16.5px;\\\">\n<td style=\\\"width:40.7885%;height:16.5px;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:20.3526%;height:16.5px;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:38.859%;height:16.5px;text-align:left;\\\"><b> </b></td>\n</tr>\n<tr>\n<td style=\\\"width:40.7885%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:20.3526%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:38.859%;text-align:left;\\\"><b> </b></td>\n</tr>\n<tr>\n<td style=\\\"width:40.7885%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:20.3526%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:38.859%;text-align:left;\\\"><b> </b></td>\n</tr>\n<tr>\n<td style=\\\"width:40.7885%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:20.3526%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:38.859%;text-align:left;\\\"><b> </b></td>\n</tr>\n<tr>\n<td style=\\\"width:40.7885%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:20.3526%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:38.859%;text-align:left;\\\"><b> </b></td>\n</tr>\n<tr>\n<td style=\\\"width:40.7885%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:20.3526%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:38.859%;text-align:left;\\\"><b> </b></td>\n</tr>\n<tr>\n<td style=\\\"width:40.7885%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:20.3526%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:38.859%;text-align:left;\\\"><b> </b></td>\n</tr>\n<tr>\n<td style=\\\"width:40.7885%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:20.3526%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:38.859%;text-align:left;\\\"><b> </b></td>\n</tr>\n<tr>\n<td style=\\\"width:40.7885%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:20.3526%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:38.859%;text-align:left;\\\"><b> </b></td>\n</tr>\n<tr>\n<td style=\\\"width:40.7885%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:20.3526%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:38.859%;text-align:left;\\\"><b> </b></td>\n</tr>\n<tr>\n<td style=\\\"width:40.7885%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:20.3526%;text-align:left;\\\"><b> </b></td>\n<td style=\\\"width:38.859%;text-align:left;\\\"><b> </b></td>\n</tr>\n</tbody>\n</table>\n<p><br></p>||sertification|Есть||article|GML-||barcode|7930110380477||nalichie|1||type|Минеральное||bar|216,5 л||akcija|0||novinka|0', 'Гидравлическое масло GML Hydro HLP 68', '', '', '17,3', 'gidravlicheskoe-maslo-gml-hydro-hlp-68', 0, 1, 1, 1, 0, 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `dle_post_extras`
--

CREATE TABLE `dle_post_extras` (
  `eid` int(11) NOT NULL,
  `news_id` int(11) NOT NULL DEFAULT 0,
  `news_read` int(11) NOT NULL DEFAULT 0,
  `allow_rate` tinyint(1) NOT NULL DEFAULT 1,
  `rating` int(11) NOT NULL DEFAULT 0,
  `vote_num` int(11) NOT NULL DEFAULT 0,
  `votes` tinyint(1) NOT NULL DEFAULT 0,
  `view_edit` tinyint(1) NOT NULL DEFAULT 0,
  `disable_index` tinyint(1) NOT NULL DEFAULT 0,
  `related_ids` varchar(255) NOT NULL DEFAULT '',
  `access` varchar(150) NOT NULL DEFAULT '',
  `editdate` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(40) NOT NULL DEFAULT '',
  `reason` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `disable_search` tinyint(1) NOT NULL DEFAULT 0,
  `need_pass` tinyint(1) NOT NULL DEFAULT 0,
  `allow_rss` tinyint(1) NOT NULL DEFAULT 1,
  `allow_rss_turbo` tinyint(1) NOT NULL DEFAULT 1,
  `allow_rss_dzen` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dle_post_extras`
--

INSERT INTO `dle_post_extras` (`eid`, `news_id`, `news_read`, `allow_rate`, `rating`, `vote_num`, `votes`, `view_edit`, `disable_index`, `related_ids`, `access`, `editdate`, `editor`, `reason`, `user_id`, `disable_search`, `need_pass`, `allow_rss`, `allow_rss_turbo`, `allow_rss_dzen`) VALUES
(4, 4, 836, 1, 0, 0, 0, 0, 0, '1,2,3', '', 1652853126, 'GML', '', 1, 0, 0, 1, 1, 1),
(5, 5, 288, 1, 0, 0, 0, 0, 0, '4,2,1,6,3', '', 1651669119, 'GML', '', 1, 0, 0, 1, 1, 1),
(8, 8, 145, 0, 0, 0, 0, 0, 0, '4,1,2,5,9', '', 1651670508, 'GML', '', 1, 0, 0, 1, 1, 1),
(9, 9, 147, 0, 0, 0, 0, 0, 0, '4,1,2,8,6', '', 1652684029, 'GML', '', 1, 0, 0, 1, 1, 1),
(10, 10, 141, 0, 0, 0, 0, 0, 0, '4,9,13,14,12', '', 1652712458, 'GML', '', 1, 0, 0, 1, 1, 1),
(11, 11, 150, 0, 0, 0, 0, 0, 0, '12,13,14,15,4', '', 1652711976, 'GML', '', 1, 0, 0, 1, 1, 1),
(12, 12, 291, 1, 0, 0, 0, 0, 0, '4,5,9,8,10', '', 1652852423, 'GML', '', 1, 0, 0, 1, 1, 1),
(13, 13, 149, 1, 0, 0, 0, 0, 0, '4,12,5,8,9', '', 1652710985, 'GML', '', 1, 0, 0, 1, 1, 1),
(14, 14, 148, 1, 0, 0, 0, 0, 0, '13,4,12,5,8', '', 1652711010, 'GML', '', 1, 0, 0, 1, 1, 1),
(15, 15, 175, 1, 0, 0, 0, 0, 0, '4,12,14,13,5', '', 1652711061, 'GML', '', 1, 0, 0, 1, 1, 1),
(16, 16, 189, 1, 0, 0, 0, 0, 0, '4,13,14,12,15', '', 1652712894, 'GML', '', 1, 0, 0, 1, 1, 1),
(17, 17, 204, 1, 0, 0, 0, 0, 0, '4,16,13,14,15', '', 1652714522, 'GML', '', 1, 0, 0, 1, 1, 1),
(18, 18, 183, 1, 0, 0, 0, 0, 0, '4,13,14,16,17', '', 0, '', '', 1, 0, 0, 1, 1, 1),
(19, 19, 172, 1, 0, 0, 0, 0, 0, '18,4,16,13,14', '', 1652852971, 'GML', '', 1, 0, 0, 1, 1, 1),
(20, 20, 137, 1, 0, 0, 0, 0, 0, '12,21,4,18,16', '', 1661172138, 'GML', '', 1, 0, 0, 1, 1, 1),
(21, 21, 128, 1, 0, 0, 0, 0, 0, '4,18,19,13,14', '', 0, '', '', 1, 0, 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dle_post_extras_cats`
--

CREATE TABLE `dle_post_extras_cats` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL DEFAULT 0,
  `cat_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dle_post_extras_cats`
--

INSERT INTO `dle_post_extras_cats` (`id`, `news_id`, `cat_id`) VALUES
(8, 5, 14),
(9, 5, 18),
(27, 4, 17),
(28, 4, 11),
(29, 8, 14),
(30, 8, 18),
(31, 9, 14),
(32, 9, 18),
(33, 10, 14),
(34, 10, 18),
(35, 11, 14),
(36, 11, 18),
(37, 12, 17),
(38, 12, 3),
(39, 13, 17),
(40, 13, 5),
(41, 14, 17),
(42, 14, 5),
(43, 15, 17),
(44, 15, 2),
(45, 16, 17),
(46, 16, 4),
(47, 17, 17),
(48, 17, 2),
(49, 18, 17),
(50, 18, 7),
(51, 19, 17),
(52, 19, 4),
(54, 21, 17),
(55, 21, 3),
(56, 20, 17),
(57, 20, 3);

-- --------------------------------------------------------

--
-- Table structure for table `dle_post_log`
--

CREATE TABLE `dle_post_log` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL DEFAULT 0,
  `expires` varchar(15) NOT NULL DEFAULT '',
  `action` tinyint(1) NOT NULL DEFAULT 0,
  `move_cat` varchar(190) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_post_pass`
--

CREATE TABLE `dle_post_pass` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL DEFAULT 0,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_question`
--

CREATE TABLE `dle_question` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_read_log`
--

CREATE TABLE `dle_read_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `news_id` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(46) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_redirects`
--

CREATE TABLE `dle_redirects` (
  `id` int(11) UNSIGNED NOT NULL,
  `from` varchar(250) NOT NULL DEFAULT '',
  `to` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_rss`
--

CREATE TABLE `dle_rss` (
  `id` smallint(5) NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `allow_main` tinyint(1) NOT NULL DEFAULT 0,
  `allow_rating` tinyint(1) NOT NULL DEFAULT 0,
  `allow_comm` tinyint(1) NOT NULL DEFAULT 0,
  `text_type` tinyint(1) NOT NULL DEFAULT 0,
  `date` tinyint(1) NOT NULL DEFAULT 0,
  `search` text NOT NULL,
  `max_news` tinyint(3) NOT NULL DEFAULT 0,
  `cookie` text NOT NULL,
  `category` smallint(5) NOT NULL DEFAULT 0,
  `lastdate` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dle_rss`
--

INSERT INTO `dle_rss` (`id`, `url`, `description`, `allow_main`, `allow_rating`, `allow_comm`, `text_type`, `date`, `search`, `max_news`, `cookie`, `category`, `lastdate`) VALUES
(1, 'https://dle-news.ru/rss.xml', 'Официальный сайт DataLife Engine', 1, 1, 1, 1, 1, '<div class=\"full-post-content row\">{get}</div><div class=\"full-post-footer ignore-select\">', 5, '', 1, 0),
(2, 'http://gmloil.uz/', 'GML OIL - У нас есть всё.', 1, 1, 1, 1, 1, '<html>{get}</html>', 5, '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dle_rssinform`
--

CREATE TABLE `dle_rssinform` (
  `id` smallint(5) NOT NULL,
  `tag` varchar(40) NOT NULL DEFAULT '',
  `descr` varchar(255) NOT NULL DEFAULT '',
  `category` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `news_max` smallint(5) NOT NULL DEFAULT 0,
  `tmax` smallint(5) NOT NULL DEFAULT 0,
  `dmax` smallint(5) NOT NULL DEFAULT 0,
  `approve` tinyint(1) NOT NULL DEFAULT 1,
  `rss_date_format` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dle_rssinform`
--

INSERT INTO `dle_rssinform` (`id`, `tag`, `descr`, `category`, `url`, `template`, `news_max`, `tmax`, `dmax`, `approve`, `rss_date_format`) VALUES
(1, 'dle', 'Новости с Яндекса', '0', 'https://news.yandex.ru/index.rss', 'informer', 3, 0, 200, 1, 'j F Y H:i');

-- --------------------------------------------------------

--
-- Table structure for table `dle_sendlog`
--

CREATE TABLE `dle_sendlog` (
  `id` int(11) UNSIGNED NOT NULL,
  `user` varchar(40) NOT NULL DEFAULT '',
  `date` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `flag` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_social_login`
--

CREATE TABLE `dle_social_login` (
  `id` int(11) NOT NULL,
  `sid` varchar(40) NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL DEFAULT 0,
  `password` varchar(32) NOT NULL DEFAULT '',
  `provider` varchar(15) NOT NULL DEFAULT '',
  `wait` tinyint(1) NOT NULL DEFAULT 0,
  `waitlogin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_spam_log`
--

CREATE TABLE `dle_spam_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip` varchar(46) NOT NULL DEFAULT '',
  `is_spammer` tinyint(1) NOT NULL DEFAULT 0,
  `email` varchar(50) NOT NULL DEFAULT '',
  `date` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_static`
--

CREATE TABLE `dle_static` (
  `id` mediumint(8) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `descr` varchar(255) NOT NULL DEFAULT '',
  `template` mediumtext NOT NULL,
  `allow_br` tinyint(1) NOT NULL DEFAULT 0,
  `allow_template` tinyint(1) NOT NULL DEFAULT 0,
  `grouplevel` varchar(100) NOT NULL DEFAULT 'all',
  `tpl` varchar(40) NOT NULL DEFAULT '',
  `metadescr` varchar(300) NOT NULL DEFAULT '',
  `metakeys` text NOT NULL,
  `views` mediumint(8) NOT NULL DEFAULT 0,
  `template_folder` varchar(50) NOT NULL DEFAULT '',
  `date` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `metatitle` varchar(255) NOT NULL DEFAULT '',
  `allow_count` tinyint(1) NOT NULL DEFAULT 1,
  `sitemap` tinyint(1) NOT NULL DEFAULT 1,
  `disable_index` tinyint(1) NOT NULL DEFAULT 0,
  `disable_search` tinyint(1) NOT NULL DEFAULT 0,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dle_static`
--

INSERT INTO `dle_static` (`id`, `name`, `descr`, `template`, `allow_br`, `allow_template`, `grouplevel`, `tpl`, `metadescr`, `metakeys`, `views`, `template_folder`, `date`, `metatitle`, `allow_count`, `sitemap`, `disable_index`, `disable_search`, `password`) VALUES
(1, 'dle-rules-page', 'Общие правила на сайте', '<b>Общие правила поведения на сайте:</b><br><br>Начнем с того, что на сайте общаются сотни людей, разных религий и взглядов, и все они являются полноправными посетителями нашего сайта, поэтому если мы хотим чтобы это сообщество людей функционировало нам и необходимы правила. Мы настоятельно рекомендуем прочитать настоящие правила, это займет у вас всего минут пять, но сбережет нам и вам время и поможет сделать сайт более интересным и организованным.<br><br>Начнем с того, что на нашем сайте нужно вести себя уважительно ко всем посетителям сайта. Не надо оскорблений по отношению к участникам, это всегда лишнее. Если есть претензии - обращайтесь к Админам или Модераторам (воспользуйтесь личными сообщениями). Оскорбление других посетителей считается у нас одним из самых тяжких нарушений и строго наказывается администрацией. <b>У нас строго запрещен расизм, религиозные и политические высказывания.</b> Заранее благодарим вас за понимание и за желание сделать наш сайт более вежливым и дружелюбным.<br><br><b>На сайте строго запрещено:</b> <br><br>- сообщения, не относящиеся к содержанию статьи или к контексту обсуждения<br>- оскорбление и угрозы в адрес посетителей сайта<br>- в комментариях запрещаются выражения, содержащие ненормативную лексику, унижающие человеческое достоинство, разжигающие межнациональную рознь<br>- спам, а также реклама любых товаров и услуг, иных ресурсов, СМИ или событий, не относящихся к контексту обсуждения статьи<br><br>Давайте будем уважать друг друга и сайт, на который Вы и другие читатели приходят пообщаться и высказать свои мысли. Администрация сайта оставляет за собой право удалять комментарии или часть комментариев, если они не соответствуют данным требованиям.<br><br>При нарушении правил вам может быть дано <b>предупреждение</b>. В некоторых случаях может быть дан бан <b>без предупреждений</b>. По вопросам снятия бана писать администратору.<br><br><b>Оскорбление</b> администраторов или модераторов также караются <b>баном</b> - уважайте чужой труд.<br><br><div style=\"text-align:center;\">{ACCEPT-DECLINE}</div>', 1, 1, 'all', '', 'Общие правила на сайте', 'Общие правила на сайте', 3, '', 1650389511, '', 1, 1, 0, 0, ''),
(2, 'o-kompanii', 'Информация о компании', '<p style=\\\"text-align:center;\\\"><img src=\\\"https://gmloil.uz/uploads/posts/2022-05/111112222.png\\\" alt=\\\"\\\" width=\\\"228\\\" height=\\\"239\\\" style=\\\"font-size:22px;font-weight:bold;letter-spacing:-0.22px;word-spacing:2.2px;\\\"><span style=\\\"font-size:22px;font-weight:bold;letter-spacing:-0.01em;word-spacing:0.1em;\\\">  </span><span style=\\\"font-size:22px;font-weight:bold;letter-spacing:-0.01em;word-spacing:0.1em;\\\"><img src=\\\"http://gmloil.uz/uploads/posts/2022-05/offline2111-kopija.jpg\\\" alt=\\\"\\\" width=\\\"239\\\" height=\\\"232\\\" style=\\\"font-size:13px;font-weight:400;letter-spacing:normal;word-spacing:1.3px;\\\"><br>О компании</span></p>\n<div class=\\\"static-page__text\\\">\n<p style=\\\"text-align:left;\\\">Приветствуем вас на сайте<span> </span><b>GMLOIL.UZ</b>. Мы являемся специализированной компанией по продаже нефте-продукции и смазочных материалов с 2018 года и в этой области мы можем профессионально предложить решения, которые будут максимально соответствовать вашим запросам на любом уровне. Бренд GML OIL - реализует ассортимент нефти-продукции на территории Узбекистана с 2022 года, качественный продукт по приятной стоимости отвечающий всем последним требованиям в мире смазочных материалов. \\\"General Machinery Lubricants - и этим все сказано!\\\" Продажа масел и смазочных материалов, а также охлаждающей жидкостей - СОЖ и антифризов на всей территории Узбекистана.\\\"    OOO \\\"IMPERAIL OIL GROUP\\\" - \\\"Представитель бренда GML UZBEKISTAN.  </p>\n<p style=\\\"text-align:left;\\\"><b>   Вы можете приобрести у нас и много других товаров: </b></p>\n<ul style=\\\"text-align:left;\\\">\n<li style=\\\"text-align:left;\\\">Моторные масла;</li>\n<li style=\\\"text-align:left;\\\">Редукторные масла;</li>\n<li style=\\\"text-align:left;\\\">Смазки высокотемпературные;</li>\n<li style=\\\"text-align:left;\\\">Антифризы;</li>\n<li style=\\\"text-align:left;\\\">Смазочно-охлаждающие жидкости;</li>\n<li style=\\\"text-align:left;\\\">Гидравлические масла;</li>\n<li style=\\\"text-align:left;\\\">Масляные насосы для бочек;</li>\n<li style=\\\"text-align:left;\\\">Дизельное топливо. </li>\n</ul>\n<p>Несомненным преимуществом работы с нами является максимально полный ассортимент по нашей специфике. Вы сможете приобрести все виды комплектующих, расходных материалов, выбрать удобные для себя условия доставки и оплаты.</p>\n<p>Наши специалисты помогут сделать правильный выбор и принять наиболее оптимальное решение с финансовой точки зрения. Решений много, ориентированных как на профессиональное использование, так и на применение в частных целях.<br><br>С уважением, коллектив<b> предприятия «OOO IMPERIAL OIL GROUP»</b></p>\n</div>', 0, 1, 'all', '', 'Бренд GML OIL - реализует ассортимент нефти-продукции на территории Узбекистана с 2022 года, качественный продукт по приятной стоимости отвечающий всем последним требованиям в мире смазочных материалов. &quot;General Machinery Lubricants - и этим все сказано!&quot; Продажа масел и смазочных', 'территории, Узбекистана, смазочных, материалов, Бренд, реализует, ассортимент, нефтипродукции, качественный, продукт, приятной, стоимости, отвечающий, последним, требованиям, General, Machinery, Lubricants, сказано, Продажа', 354, '', 1651576425, '', 1, 1, 0, 0, ''),
(3, 'dostavka-i-oplata', 'Доставка и оплата', '<p><img src=\\\"http://gmloil.uz/uploads/posts/2022-05/111112323.png\\\" alt=\\\"\\\" width=\\\"352\\\" height=\\\"216\\\" style=\\\"display:block;margin-left:auto;margin-right:auto;\\\"><br>Уважаемые клиенты, мы постоянно работаем над оптимизацией сроков доставки и ищем машины по приемлемой стоимости. В некоторых случаях стоимость доставки может быть меньше чем может быть предварительный расчёт — это зависит от количества и специфики приобретаемого вами товара, от вашего желания сроков доставки, от тарифов транспортно-экспедиционных компаний. При каждом заказе наши сотрудники будут связываться с вами и уточнять детали доставки.</p>\n<h3 style=\\\"text-align:left;\\\"><b>Самовывоз из города Ташкента</b></h3>\n<ul style=\\\"text-align:left;\\\">\n<li><b>адрес: </b>Рисовый базар, офис 1 </li>\n<li><b>телефон:</b><span> </span>+998 (90) 177-27-37, +998 <span>(97) 440-55-00</span></li>\n<li><b>график работы: </b>с9:00 - 17:00; суббота, воскресенье и праздничные дни - выходной</li>\n</ul>\n<h3 style=\\\"text-align:left;\\\">Доставка по городу Ташкенту:</h3>\n<ul style=\\\"text-align:left;\\\">\n<li>при покупке товаров от<span> </span><b>200</b><span> литров</span>, по возможности - доставка осуществляется бесплатно с 10:00-17:00 (в зависимости от загруженности водителя); суббота, воскресенье и праздничные дни – выходной.</li>\n<li>при покупке товаров до<b>200</b><span> литров</span>,<span> </span>самовывоз с нашего склада.</li>\n</ul>\n<h3 style=\\\"text-align:left;\\\">Доставка по области Ташкента:</h3>\n<ul style=\\\"text-align:left;\\\">\n<li>При доставке через транспортные компании, стоимость и сроки доставки обсуждаются с менеджерами компании.</li>\n</ul>\n<h3 style=\\\"text-align:left;\\\">Доставка по городам и областям Узбекистана:</h3>\n<ul>\n<li style=\\\"text-align:left;\\\">Сроки и стоимость доставки по всем населённым пунктам Республики Узбекистан согласно тарифам и графику транспортно-экспедиционных компаний обсуждаются с менеджерами компании.</li>\n</ul>', 0, 1, 'all', '', 'Уважаемые клиенты, мы постоянно работаем над оптимизацией сроков доставки и ищем машины по приемлемой стоимости. В некоторых случаях стоимость доставки может быть меньше чем может быть предварительный расчёт — это зависит от количества и специфики приобретаемого вами товара, от вашего желания', 'доставки, стоимость, Доставка, компании, сроков, может, транспортноэкспедиционных, компаний, Ташкента, суббота, воскресенье, праздничные, выходной, покупке, товаров, литров, обсуждаются, менеджерами, Уважаемые, клиенты', 176, '', 1651679355, '', 1, 1, 0, 0, ''),
(4, 'oplata', 'Оплата', '<div class=\\\"static-page__title\\\">\n<h1 class=\\\"static-page__title-main\\\"><span style=\\\"font-size:20px;letter-spacing:-0.01em;word-spacing:0.1em;\\\">Оплата заказа в городе Ташкент:</span></h1>\n</div>\n<div class=\\\"static-page__text\\\">\n<ul>\n<li>наличными денежными средствами в национальной валюте;</li>\n<li>банковской корпоративной картой, карточкой (UZCARD, HUMO);</li>\n<li>мобильным приложением \\\"Интернет банкинг\\\" в разделе \\\"Платеж по произвольным реквизитам\\\" (необходимо запросить счёт оформив заказ через телеграмм или по телефону указанному в<span> </span>контактах);</li>\n<li>в кассе любого банка (необходимо запросить счёт оформив заказ через сайт или по телефону указанному в<span> </span>контактах);</li>\n<li>в пункте самовывоза, г. Ташкент Рисовый базар. Офис 1 (согласно графику работы организации);</li>\n</ul>\n<h2>Безналичный расчёт:</h2>\n<p>Все представленные в интернет-магазине товары указаны с<span> </span><b>учетом НДС</b><span> </span>и доступны для оплаты по безналичному расчету (перечеслением).</p>\n<p><b>Для получения счёта на оплату можно: </b></p>\n<ul>\n<li>оформить заказ через телеграмм указанный на сайте и дождаться ответа менеджера;</li>\n<li>отправить электронное письмо с реквизитами на адреc<span> <a href=\\\"gmloil@mail.ru\\\">gmloil@mail.ru</a></span>;</li>\n<li>позвонить в отдел продаж;</li>\n</ul>\n<p><b>Действия с нашей стороны:</b></p>\n<ul>\n<li>Сотрудник отдела продаж обрабатывает заказ и выставляет счет договор на продукцию.</li>\n<li>После поступления денежных средств на расчётный счет на основании полученного счёта, с вами свяжется сотрудник отдела продаж для согласования доставки;</li>\n<li>Минимальная сумма товарной или товарно-транспортной отгрузки составляет 80.000 сум.</li>\n</ul>\n</div>', 0, 1, 'all', '', 'Способы оплаты Оплата заказа в городе Ташкент: наличными денежными средствами в национальной валюте; банковской корпоративной картой, карточкой (UZCARD, HUMO); мобильным приложением &quot;Интернет банкинг&quot; в разделе &quot;Платеж по произвольным реквизитам&quot; (необходимо запросить счёт', 'заказ, через, продаж, оплаты, Ташкент, необходимо, запросить, оформив, телеграмм, телефону, указанному, контактах, счёта, отдела, Способы, Оплата, заказа, городе, наличными, денежными', 143, '', 1651681024, '', 1, 1, 0, 0, ''),
(5, 'kontakty', 'Контакты', '<div class=\\\"static-page__title\\\">\n<h1 class=\\\"static-page__title-main\\\"><span style=\\\"color:#e67e23;\\\"><b style=\\\"font-size:13px;word-spacing:0.1em;\\\"><u>Отдел продаж</u></b></span></h1>\n</div>\n<div class=\\\"static-page__text\\\">\n<p><b>мобильный:<span> </span></b>+998: (97) 440-55-00, (55) 500-20-22. </p>\n<p><span style=\\\"color:#e67e23;\\\"><u><b>Отдел по работе с магазинами и маркетплейсами</b></u></span></p>\n<p><b>мобильный:<span> </span></b>+998 (97) 440-55-00<br><br><b>telegram: <a href=\\\"https://t.me/gmloiluz\\\" rel=\\\"external noopener\\\">t.me/gmloiluz</a></b></p>\n<p><b>e-mail:<span> <a href=\\\"info@gmloil.uz\\\">info@gmloil.uz</a></span></b></p>\n<p><span style=\\\"color:#e67e23;\\\"><u><b>Бухгалтерия</b></u></span></p>\n<p><b>мобильный:<span> </span></b>+998 (97) 440-55-00</p>\n<p><b>e-mail:<span> <a href=\\\"info@gmloil.uz\\\">info@gmloil.uz</a></span></b></p>\n</div>', 0, 1, 'all', '', '1', 'мобильный, Отдел, 4405500, 1772737, email, gmloilmailru, Контакты, продаж, 9752728, 5002022, работе, магазинами, маркетплейсами, telegram, tmegmloil, Бухгалтерия', 230, '', 1651681096, '', 1, 1, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `dle_static_files`
--

CREATE TABLE `dle_static_files` (
  `id` int(11) NOT NULL,
  `static_id` int(11) NOT NULL DEFAULT 0,
  `author` varchar(40) NOT NULL DEFAULT '',
  `date` varchar(15) NOT NULL DEFAULT '',
  `name` varchar(200) NOT NULL DEFAULT '',
  `onserver` varchar(190) NOT NULL DEFAULT '',
  `dcount` int(11) NOT NULL DEFAULT 0,
  `size` bigint(20) NOT NULL DEFAULT 0,
  `checksum` char(32) NOT NULL DEFAULT '',
  `driver` tinyint(1) NOT NULL DEFAULT 0,
  `is_public` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dle_static_files`
--

INSERT INTO `dle_static_files` (`id`, `static_id`, `author`, `date`, `name`, `onserver`, `dcount`, `size`, `checksum`, `driver`, `is_public`) VALUES
(1, 3, 'GML', '1651680143', '2022-05/111112323.png|1|1|800x480|67.74 Kb', '', 0, 0, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dle_subscribe`
--

CREATE TABLE `dle_subscribe` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(40) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `news_id` int(11) NOT NULL DEFAULT 0,
  `hash` varchar(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_tags`
--

CREATE TABLE `dle_tags` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL DEFAULT 0,
  `tag` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_twofactor`
--

CREATE TABLE `dle_twofactor` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `pin` varchar(10) NOT NULL DEFAULT '',
  `attempt` tinyint(1) NOT NULL DEFAULT 0,
  `date` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_usergroups`
--

CREATE TABLE `dle_usergroups` (
  `id` smallint(5) NOT NULL,
  `group_name` varchar(50) NOT NULL DEFAULT '',
  `allow_cats` text NOT NULL,
  `allow_adds` tinyint(1) NOT NULL DEFAULT 1,
  `cat_add` text NOT NULL,
  `allow_admin` tinyint(1) NOT NULL DEFAULT 0,
  `allow_addc` tinyint(1) NOT NULL DEFAULT 0,
  `allow_editc` tinyint(1) NOT NULL DEFAULT 0,
  `allow_delc` tinyint(1) NOT NULL DEFAULT 0,
  `edit_allc` tinyint(1) NOT NULL DEFAULT 0,
  `del_allc` tinyint(1) NOT NULL DEFAULT 0,
  `moderation` tinyint(1) NOT NULL DEFAULT 0,
  `allow_all_edit` tinyint(1) NOT NULL DEFAULT 0,
  `allow_edit` tinyint(1) NOT NULL DEFAULT 0,
  `allow_pm` tinyint(1) NOT NULL DEFAULT 0,
  `max_pm` smallint(5) NOT NULL DEFAULT 0,
  `max_foto` varchar(10) NOT NULL DEFAULT '',
  `allow_files` tinyint(1) NOT NULL DEFAULT 0,
  `allow_hide` tinyint(1) NOT NULL DEFAULT 1,
  `allow_short` tinyint(1) NOT NULL DEFAULT 0,
  `time_limit` tinyint(1) NOT NULL DEFAULT 0,
  `rid` smallint(5) NOT NULL DEFAULT 0,
  `allow_fixed` tinyint(1) NOT NULL DEFAULT 0,
  `allow_feed` tinyint(1) NOT NULL DEFAULT 1,
  `allow_search` tinyint(1) NOT NULL DEFAULT 1,
  `allow_poll` tinyint(1) NOT NULL DEFAULT 1,
  `allow_main` tinyint(1) NOT NULL DEFAULT 1,
  `captcha` tinyint(1) NOT NULL DEFAULT 0,
  `icon` varchar(200) NOT NULL DEFAULT '',
  `allow_modc` tinyint(1) NOT NULL DEFAULT 0,
  `allow_rating` tinyint(1) NOT NULL DEFAULT 1,
  `allow_offline` tinyint(1) NOT NULL DEFAULT 0,
  `allow_image_upload` tinyint(1) NOT NULL DEFAULT 0,
  `allow_file_upload` tinyint(1) NOT NULL DEFAULT 0,
  `allow_signature` tinyint(1) NOT NULL DEFAULT 0,
  `allow_url` tinyint(1) NOT NULL DEFAULT 1,
  `news_sec_code` tinyint(1) NOT NULL DEFAULT 1,
  `allow_image` tinyint(1) NOT NULL DEFAULT 0,
  `max_signature` smallint(6) NOT NULL DEFAULT 0,
  `max_info` smallint(6) NOT NULL DEFAULT 0,
  `admin_addnews` tinyint(1) NOT NULL DEFAULT 0,
  `admin_editnews` tinyint(1) NOT NULL DEFAULT 0,
  `admin_comments` tinyint(1) NOT NULL DEFAULT 0,
  `admin_categories` tinyint(1) NOT NULL DEFAULT 0,
  `admin_editusers` tinyint(1) NOT NULL DEFAULT 0,
  `admin_wordfilter` tinyint(1) NOT NULL DEFAULT 0,
  `admin_xfields` tinyint(1) NOT NULL DEFAULT 0,
  `admin_userfields` tinyint(1) NOT NULL DEFAULT 0,
  `admin_static` tinyint(1) NOT NULL DEFAULT 0,
  `admin_editvote` tinyint(1) NOT NULL DEFAULT 0,
  `admin_newsletter` tinyint(1) NOT NULL DEFAULT 0,
  `admin_blockip` tinyint(1) NOT NULL DEFAULT 0,
  `admin_banners` tinyint(1) NOT NULL DEFAULT 0,
  `admin_rss` tinyint(1) NOT NULL DEFAULT 0,
  `admin_iptools` tinyint(1) NOT NULL DEFAULT 0,
  `admin_rssinform` tinyint(1) NOT NULL DEFAULT 0,
  `admin_googlemap` tinyint(1) NOT NULL DEFAULT 0,
  `allow_html` tinyint(1) NOT NULL DEFAULT 1,
  `group_prefix` text NOT NULL,
  `group_suffix` text NOT NULL,
  `allow_subscribe` tinyint(1) NOT NULL DEFAULT 0,
  `allow_image_size` tinyint(1) NOT NULL DEFAULT 0,
  `cat_allow_addnews` text NOT NULL,
  `flood_news` smallint(6) NOT NULL DEFAULT 0,
  `max_day_news` smallint(6) NOT NULL DEFAULT 0,
  `force_leech` tinyint(1) NOT NULL DEFAULT 0,
  `edit_limit` smallint(6) NOT NULL DEFAULT 0,
  `captcha_pm` tinyint(1) NOT NULL DEFAULT 0,
  `max_pm_day` smallint(6) NOT NULL DEFAULT 0,
  `max_mail_day` smallint(6) NOT NULL DEFAULT 0,
  `admin_tagscloud` tinyint(1) NOT NULL DEFAULT 0,
  `allow_vote` tinyint(1) NOT NULL DEFAULT 0,
  `admin_complaint` tinyint(1) NOT NULL DEFAULT 0,
  `news_question` tinyint(1) NOT NULL DEFAULT 0,
  `comments_question` tinyint(1) NOT NULL DEFAULT 0,
  `max_comment_day` smallint(6) NOT NULL DEFAULT 0,
  `max_images` smallint(6) NOT NULL DEFAULT 0,
  `max_files` smallint(6) NOT NULL DEFAULT 0,
  `disable_news_captcha` smallint(6) NOT NULL DEFAULT 0,
  `disable_comments_captcha` smallint(6) NOT NULL DEFAULT 0,
  `pm_question` tinyint(1) NOT NULL DEFAULT 0,
  `captcha_feedback` tinyint(1) NOT NULL DEFAULT 1,
  `feedback_question` tinyint(1) NOT NULL DEFAULT 0,
  `files_type` varchar(255) NOT NULL DEFAULT '',
  `max_file_size` mediumint(9) NOT NULL DEFAULT 0,
  `files_max_speed` smallint(6) NOT NULL DEFAULT 0,
  `spamfilter` tinyint(1) NOT NULL DEFAULT 2,
  `allow_comments_rating` tinyint(1) NOT NULL DEFAULT 1,
  `max_edit_days` tinyint(1) NOT NULL DEFAULT 0,
  `spampmfilter` tinyint(1) NOT NULL DEFAULT 0,
  `force_reg` tinyint(1) NOT NULL DEFAULT 0,
  `force_reg_days` mediumint(9) NOT NULL DEFAULT 0,
  `force_reg_group` smallint(6) NOT NULL DEFAULT 4,
  `force_news` tinyint(1) NOT NULL DEFAULT 0,
  `force_news_count` mediumint(9) NOT NULL DEFAULT 0,
  `force_news_group` smallint(6) NOT NULL DEFAULT 4,
  `force_comments` tinyint(1) NOT NULL DEFAULT 0,
  `force_comments_count` mediumint(9) NOT NULL DEFAULT 0,
  `force_comments_group` smallint(6) NOT NULL DEFAULT 4,
  `force_rating` tinyint(1) NOT NULL DEFAULT 0,
  `force_rating_count` mediumint(9) NOT NULL DEFAULT 0,
  `force_rating_group` smallint(6) NOT NULL DEFAULT 4,
  `not_allow_cats` text NOT NULL,
  `allow_up_image` tinyint(1) NOT NULL DEFAULT 0,
  `allow_up_watermark` tinyint(1) NOT NULL DEFAULT 0,
  `allow_up_thumb` tinyint(1) NOT NULL DEFAULT 0,
  `up_count_image` smallint(6) NOT NULL DEFAULT 0,
  `up_image_side` varchar(20) NOT NULL DEFAULT '',
  `up_image_size` mediumint(9) NOT NULL DEFAULT 0,
  `up_thumb_size` varchar(20) NOT NULL DEFAULT '',
  `allow_mail_files` tinyint(1) NOT NULL DEFAULT 0,
  `max_mail_files` smallint(6) NOT NULL DEFAULT 0,
  `max_mail_allfiles` mediumint(9) NOT NULL DEFAULT 0,
  `mail_files_type` varchar(100) NOT NULL DEFAULT '',
  `video_comments` tinyint(1) NOT NULL DEFAULT 0,
  `media_comments` tinyint(1) NOT NULL DEFAULT 0,
  `min_image_side` varchar(20) NOT NULL DEFAULT '',
  `allow_public_file_upload` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dle_usergroups`
--

INSERT INTO `dle_usergroups` (`id`, `group_name`, `allow_cats`, `allow_adds`, `cat_add`, `allow_admin`, `allow_addc`, `allow_editc`, `allow_delc`, `edit_allc`, `del_allc`, `moderation`, `allow_all_edit`, `allow_edit`, `allow_pm`, `max_pm`, `max_foto`, `allow_files`, `allow_hide`, `allow_short`, `time_limit`, `rid`, `allow_fixed`, `allow_feed`, `allow_search`, `allow_poll`, `allow_main`, `captcha`, `icon`, `allow_modc`, `allow_rating`, `allow_offline`, `allow_image_upload`, `allow_file_upload`, `allow_signature`, `allow_url`, `news_sec_code`, `allow_image`, `max_signature`, `max_info`, `admin_addnews`, `admin_editnews`, `admin_comments`, `admin_categories`, `admin_editusers`, `admin_wordfilter`, `admin_xfields`, `admin_userfields`, `admin_static`, `admin_editvote`, `admin_newsletter`, `admin_blockip`, `admin_banners`, `admin_rss`, `admin_iptools`, `admin_rssinform`, `admin_googlemap`, `allow_html`, `group_prefix`, `group_suffix`, `allow_subscribe`, `allow_image_size`, `cat_allow_addnews`, `flood_news`, `max_day_news`, `force_leech`, `edit_limit`, `captcha_pm`, `max_pm_day`, `max_mail_day`, `admin_tagscloud`, `allow_vote`, `admin_complaint`, `news_question`, `comments_question`, `max_comment_day`, `max_images`, `max_files`, `disable_news_captcha`, `disable_comments_captcha`, `pm_question`, `captcha_feedback`, `feedback_question`, `files_type`, `max_file_size`, `files_max_speed`, `spamfilter`, `allow_comments_rating`, `max_edit_days`, `spampmfilter`, `force_reg`, `force_reg_days`, `force_reg_group`, `force_news`, `force_news_count`, `force_news_group`, `force_comments`, `force_comments_count`, `force_comments_group`, `force_rating`, `force_rating_count`, `force_rating_group`, `not_allow_cats`, `allow_up_image`, `allow_up_watermark`, `allow_up_thumb`, `up_count_image`, `up_image_side`, `up_image_size`, `up_thumb_size`, `allow_mail_files`, `max_mail_files`, `max_mail_allfiles`, `mail_files_type`, `video_comments`, `media_comments`, `min_image_side`, `allow_public_file_upload`) VALUES
(1, 'Администраторы', 'all', 1, 'all', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 50, '101', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, '{THEME}/images/icon_1.gif', 0, 1, 1, 1, 1, 1, 1, 0, 1, 500, 1000, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '<b><span style=\"color:red\">', '</span></b>', 1, 1, 'all', 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'zip,rar,doc,pdf,mp3,mp4', 4096, 0, 2, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, '', 1, 1, 1, 3, '800x600', 300, '200x150', 1, 3, 1000, 'jpg,png,zip,pdf', 1, 1, '10x10', 1),
(2, 'Главные редакторы', 'all', 1, 'all', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 50, '101', 1, 1, 1, 0, 2, 1, 1, 1, 1, 1, 0, '{THEME}/images/icon_2.gif', 0, 1, 0, 1, 1, 1, 1, 0, 1, 500, 1000, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', 1, 1, 'all', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'zip,rar,doc,pdf,mp3,mp4', 4096, 0, 2, 1, 0, 0, 0, 0, 2, 0, 0, 2, 0, 0, 2, 0, 0, 2, '', 1, 1, 1, 3, '800x600', 300, '200x150', 1, 3, 1000, 'jpg,png,zip,pdf', 1, 1, '10x10', 1),
(3, 'Журналисты', 'all', 1, 'all', 1, 1, 1, 1, 0, 0, 1, 0, 1, 1, 50, '101', 1, 1, 1, 0, 3, 0, 1, 1, 1, 1, 0, '{THEME}/images/icon_3.gif', 0, 1, 0, 1, 1, 1, 1, 0, 1, 500, 1000, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', 1, 1, 'all', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'zip,rar,doc,pdf,mp3,mp4', 4096, 0, 2, 1, 0, 0, 0, 0, 3, 0, 0, 3, 0, 0, 3, 0, 0, 3, '', 1, 1, 1, 3, '800x600', 300, '200x150', 0, 3, 1000, 'jpg,png,zip,pdf', 1, 1, '10x10', 0),
(4, 'Посетители', 'all', 1, 'all', 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 20, '101', 1, 1, 1, 0, 4, 0, 1, 1, 1, 1, 0, '{THEME}/images/icon_4.gif', 0, 1, 0, 1, 0, 1, 1, 1, 0, 500, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', 1, 0, 'all', 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'zip,rar,doc,pdf,mp3,mp4', 4096, 0, 2, 1, 0, 2, 0, 0, 4, 0, 0, 4, 0, 0, 4, 0, 0, 4, '', 0, 0, 0, 1, '800x600', 300, '200x150', 0, 3, 1000, 'jpg,png,zip,pdf', 0, 0, '10x10', 0),
(5, 'Гости', 'all', 0, 'all', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 1, 0, 1, 0, 5, 0, 1, 1, 1, 0, 1, '{THEME}/images/icon_5.gif', 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 'all', 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 2, 1, 0, 2, 0, 0, 5, 0, 0, 5, 0, 0, 5, 0, 0, 5, '', 0, 0, 0, 1, '800x600', 300, '200x150', 0, 3, 1000, 'jpg,png,zip,pdf', 0, 0, '10x10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dle_users`
--

CREATE TABLE `dle_users` (
  `email` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(40) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL,
  `news_num` mediumint(8) NOT NULL DEFAULT 0,
  `comm_num` mediumint(8) NOT NULL DEFAULT 0,
  `user_group` smallint(5) NOT NULL DEFAULT 4,
  `lastdate` varchar(20) NOT NULL DEFAULT '',
  `reg_date` varchar(20) NOT NULL DEFAULT '',
  `banned` varchar(5) NOT NULL DEFAULT '',
  `allow_mail` tinyint(1) NOT NULL DEFAULT 1,
  `info` text NOT NULL,
  `signature` text NOT NULL,
  `foto` varchar(255) NOT NULL DEFAULT '',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `land` varchar(100) NOT NULL DEFAULT '',
  `favorites` text NOT NULL,
  `pm_all` smallint(5) NOT NULL DEFAULT 0,
  `pm_unread` smallint(5) NOT NULL DEFAULT 0,
  `time_limit` varchar(20) NOT NULL DEFAULT '',
  `xfields` text NOT NULL,
  `allowed_ip` varchar(255) NOT NULL DEFAULT '',
  `hash` varchar(32) NOT NULL DEFAULT '',
  `logged_ip` varchar(46) NOT NULL DEFAULT '',
  `restricted` tinyint(1) NOT NULL DEFAULT 0,
  `restricted_days` smallint(4) NOT NULL DEFAULT 0,
  `restricted_date` varchar(15) NOT NULL DEFAULT '',
  `timezone` varchar(100) NOT NULL DEFAULT '',
  `news_subscribe` tinyint(1) NOT NULL DEFAULT 0,
  `comments_reply_subscribe` tinyint(1) NOT NULL DEFAULT 0,
  `twofactor_auth` tinyint(1) NOT NULL DEFAULT 0,
  `cat_add` varchar(500) NOT NULL DEFAULT '',
  `cat_allow_addnews` varchar(500) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dle_users`
--

INSERT INTO `dle_users` (`email`, `password`, `name`, `user_id`, `news_num`, `comm_num`, `user_group`, `lastdate`, `reg_date`, `banned`, `allow_mail`, `info`, `signature`, `foto`, `fullname`, `land`, `favorites`, `pm_all`, `pm_unread`, `time_limit`, `xfields`, `allowed_ip`, `hash`, `logged_ip`, `restricted`, `restricted_days`, `restricted_date`, `timezone`, `news_subscribe`, `comments_reply_subscribe`, `twofactor_auth`, `cat_add`, `cat_allow_addnews`) VALUES
('gmloil@mail.ru', '$2y$10$ykj.UzqYIvxSqfT4xsQZQOmR8163ha5jvnGg83UpriM.Xcaa7irmG', 'GML', 1, 16, 0, 1, '1673610381', '1650389511', '', 1, '', '', '', '', '', '', 0, 0, '', '', '', '51e5755caa0910f9e2f634ff9746ce30', '62.209.154.114', 0, 0, '', '', 0, 0, 0, '', ''),
('gmloil.uz@mail.ru', 'a277e71a542e00bf56b81bf66682ca6d', 'GMLOIL', 2, 0, 0, 1, '1671031407', '1671031407', '', 1, '', '', '', '', '', '', 0, 0, '', '', '', '', '', 0, 0, '', '', 0, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `dle_views`
--

CREATE TABLE `dle_views` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_vote`
--

CREATE TABLE `dle_vote` (
  `id` mediumint(8) NOT NULL,
  `category` text NOT NULL,
  `vote_num` mediumint(8) NOT NULL DEFAULT 0,
  `date` varchar(25) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `approve` tinyint(1) NOT NULL DEFAULT 1,
  `start` varchar(15) NOT NULL DEFAULT '',
  `end` varchar(15) NOT NULL DEFAULT '',
  `grouplevel` varchar(250) NOT NULL DEFAULT 'all'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dle_vote`
--

INSERT INTO `dle_vote` (`id`, `category`, `vote_num`, `date`, `title`, `body`, `approve`, `start`, `end`, `grouplevel`) VALUES
(1, 'all', 0, '2022-04-19 17:31:51', 'Оцените работу движка', 'Лучший из новостных<br>Неплохой движок<br>Устраивает ... но ...<br>Встречал и получше<br>Совсем не понравился', 1, '', '', 'all');

-- --------------------------------------------------------

--
-- Table structure for table `dle_vote_result`
--

CREATE TABLE `dle_vote_result` (
  `id` int(10) NOT NULL,
  `ip` varchar(46) NOT NULL DEFAULT '',
  `name` varchar(40) NOT NULL DEFAULT '',
  `vote_id` mediumint(8) NOT NULL DEFAULT 0,
  `answer` tinyint(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dle_xfsearch`
--

CREATE TABLE `dle_xfsearch` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL DEFAULT 0,
  `tagname` varchar(50) NOT NULL DEFAULT '',
  `tagvalue` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dle_admin_logs`
--
ALTER TABLE `dle_admin_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date` (`date`);

--
-- Indexes for table `dle_admin_sections`
--
ALTER TABLE `dle_admin_sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `dle_banned`
--
ALTER TABLE `dle_banned`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`users_id`);

--
-- Indexes for table `dle_banners`
--
ALTER TABLE `dle_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dle_banners_logs`
--
ALTER TABLE `dle_banners_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bid` (`bid`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `dle_banners_rubrics`
--
ALTER TABLE `dle_banners_rubrics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dle_category`
--
ALTER TABLE `dle_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dle_comments`
--
ALTER TABLE `dle_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `approve` (`approve`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rating` (`rating`);
ALTER TABLE `dle_comments` ADD FULLTEXT KEY `text` (`text`);

--
-- Indexes for table `dle_comments_files`
--
ALTER TABLE `dle_comments_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c_id` (`c_id`),
  ADD KEY `author` (`author`);

--
-- Indexes for table `dle_comment_rating_log`
--
ALTER TABLE `dle_comment_rating_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c_id` (`c_id`),
  ADD KEY `member` (`member`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `dle_complaint`
--
ALTER TABLE `dle_complaint`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c_id` (`c_id`),
  ADD KEY `p_id` (`p_id`),
  ADD KEY `n_id` (`n_id`);

--
-- Indexes for table `dle_email`
--
ALTER TABLE `dle_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dle_files`
--
ALTER TABLE `dle_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`);

--
-- Indexes for table `dle_flood`
--
ALTER TABLE `dle_flood`
  ADD PRIMARY KEY (`f_id`),
  ADD KEY `ip` (`ip`),
  ADD KEY `id` (`id`),
  ADD KEY `flag` (`flag`);

--
-- Indexes for table `dle_ignore_list`
--
ALTER TABLE `dle_ignore_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`),
  ADD KEY `user_from` (`user_from`);

--
-- Indexes for table `dle_images`
--
ALTER TABLE `dle_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author` (`author`),
  ADD KEY `news_id` (`news_id`);

--
-- Indexes for table `dle_links`
--
ALTER TABLE `dle_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dle_login_log`
--
ALTER TABLE `dle_login_log`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip` (`ip`),
  ADD KEY `date` (`date`);

--
-- Indexes for table `dle_logs`
--
ALTER TABLE `dle_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `member` (`member`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `dle_lostdb`
--
ALTER TABLE `dle_lostdb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lostid` (`lostid`);

--
-- Indexes for table `dle_mail_log`
--
ALTER TABLE `dle_mail_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hash` (`hash`);

--
-- Indexes for table `dle_metatags`
--
ALTER TABLE `dle_metatags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dle_notice`
--
ALTER TABLE `dle_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `dle_plugins`
--
ALTER TABLE `dle_plugins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dle_plugins_files`
--
ALTER TABLE `dle_plugins_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plugin_id` (`plugin_id`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `dle_plugins_logs`
--
ALTER TABLE `dle_plugins_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plugin_id` (`plugin_id`);

--
-- Indexes for table `dle_pm`
--
ALTER TABLE `dle_pm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `folder` (`folder`),
  ADD KEY `user` (`user`),
  ADD KEY `user_from` (`user_from`),
  ADD KEY `pm_read` (`pm_read`);

--
-- Indexes for table `dle_poll`
--
ALTER TABLE `dle_poll`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`);

--
-- Indexes for table `dle_poll_log`
--
ALTER TABLE `dle_poll_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `member` (`member`);

--
-- Indexes for table `dle_post`
--
ALTER TABLE `dle_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `autor` (`autor`),
  ADD KEY `alt_name` (`alt_name`),
  ADD KEY `category` (`category`),
  ADD KEY `approve` (`approve`),
  ADD KEY `allow_main` (`allow_main`),
  ADD KEY `date` (`date`),
  ADD KEY `symbol` (`symbol`),
  ADD KEY `comm_num` (`comm_num`),
  ADD KEY `fixed` (`fixed`);
ALTER TABLE `dle_post` ADD FULLTEXT KEY `short_story` (`short_story`,`full_story`,`xfields`,`title`);

--
-- Indexes for table `dle_post_extras`
--
ALTER TABLE `dle_post_extras`
  ADD PRIMARY KEY (`eid`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `rating` (`rating`),
  ADD KEY `disable_search` (`disable_search`),
  ADD KEY `allow_rss` (`allow_rss`),
  ADD KEY `news_read` (`news_read`);

--
-- Indexes for table `dle_post_extras_cats`
--
ALTER TABLE `dle_post_extras_cats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `dle_post_log`
--
ALTER TABLE `dle_post_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `expires` (`expires`);

--
-- Indexes for table `dle_post_pass`
--
ALTER TABLE `dle_post_pass`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`);

--
-- Indexes for table `dle_question`
--
ALTER TABLE `dle_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dle_read_log`
--
ALTER TABLE `dle_read_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `dle_redirects`
--
ALTER TABLE `dle_redirects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dle_rss`
--
ALTER TABLE `dle_rss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dle_rssinform`
--
ALTER TABLE `dle_rssinform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dle_sendlog`
--
ALTER TABLE `dle_sendlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`),
  ADD KEY `date` (`date`),
  ADD KEY `flag` (`flag`);

--
-- Indexes for table `dle_social_login`
--
ALTER TABLE `dle_social_login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `dle_spam_log`
--
ALTER TABLE `dle_spam_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip` (`ip`),
  ADD KEY `is_spammer` (`is_spammer`);

--
-- Indexes for table `dle_static`
--
ALTER TABLE `dle_static`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `disable_search` (`disable_search`);
ALTER TABLE `dle_static` ADD FULLTEXT KEY `template` (`template`);

--
-- Indexes for table `dle_static_files`
--
ALTER TABLE `dle_static_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `static_id` (`static_id`),
  ADD KEY `onserver` (`onserver`),
  ADD KEY `author` (`author`);

--
-- Indexes for table `dle_subscribe`
--
ALTER TABLE `dle_subscribe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `dle_tags`
--
ALTER TABLE `dle_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `tag` (`tag`);

--
-- Indexes for table `dle_twofactor`
--
ALTER TABLE `dle_twofactor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pin` (`pin`),
  ADD KEY `date` (`date`);

--
-- Indexes for table `dle_usergroups`
--
ALTER TABLE `dle_usergroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dle_users`
--
ALTER TABLE `dle_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `dle_views`
--
ALTER TABLE `dle_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dle_vote`
--
ALTER TABLE `dle_vote`
  ADD PRIMARY KEY (`id`),
  ADD KEY `approve` (`approve`);

--
-- Indexes for table `dle_vote_result`
--
ALTER TABLE `dle_vote_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answer` (`answer`),
  ADD KEY `vote_id` (`vote_id`),
  ADD KEY `ip` (`ip`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `dle_xfsearch`
--
ALTER TABLE `dle_xfsearch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `tagname` (`tagname`),
  ADD KEY `tagvalue` (`tagvalue`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dle_admin_logs`
--
ALTER TABLE `dle_admin_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1195;

--
-- AUTO_INCREMENT for table `dle_admin_sections`
--
ALTER TABLE `dle_admin_sections`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_banned`
--
ALTER TABLE `dle_banned`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_banners`
--
ALTER TABLE `dle_banners`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dle_banners_logs`
--
ALTER TABLE `dle_banners_logs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_banners_rubrics`
--
ALTER TABLE `dle_banners_rubrics`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_category`
--
ALTER TABLE `dle_category`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `dle_comments`
--
ALTER TABLE `dle_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_comments_files`
--
ALTER TABLE `dle_comments_files`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_comment_rating_log`
--
ALTER TABLE `dle_comment_rating_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_complaint`
--
ALTER TABLE `dle_complaint`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_email`
--
ALTER TABLE `dle_email`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `dle_files`
--
ALTER TABLE `dle_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dle_flood`
--
ALTER TABLE `dle_flood`
  MODIFY `f_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_ignore_list`
--
ALTER TABLE `dle_ignore_list`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_images`
--
ALTER TABLE `dle_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `dle_links`
--
ALTER TABLE `dle_links`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_login_log`
--
ALTER TABLE `dle_login_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_logs`
--
ALTER TABLE `dle_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_lostdb`
--
ALTER TABLE `dle_lostdb`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_mail_log`
--
ALTER TABLE `dle_mail_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_metatags`
--
ALTER TABLE `dle_metatags`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_notice`
--
ALTER TABLE `dle_notice`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_plugins`
--
ALTER TABLE `dle_plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_plugins_files`
--
ALTER TABLE `dle_plugins_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_plugins_logs`
--
ALTER TABLE `dle_plugins_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_pm`
--
ALTER TABLE `dle_pm`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_poll`
--
ALTER TABLE `dle_poll`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_poll_log`
--
ALTER TABLE `dle_poll_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_post`
--
ALTER TABLE `dle_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `dle_post_extras`
--
ALTER TABLE `dle_post_extras`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `dle_post_extras_cats`
--
ALTER TABLE `dle_post_extras_cats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `dle_post_log`
--
ALTER TABLE `dle_post_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_post_pass`
--
ALTER TABLE `dle_post_pass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_question`
--
ALTER TABLE `dle_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_read_log`
--
ALTER TABLE `dle_read_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_redirects`
--
ALTER TABLE `dle_redirects`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_rss`
--
ALTER TABLE `dle_rss`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dle_rssinform`
--
ALTER TABLE `dle_rssinform`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dle_sendlog`
--
ALTER TABLE `dle_sendlog`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_social_login`
--
ALTER TABLE `dle_social_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_spam_log`
--
ALTER TABLE `dle_spam_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_static`
--
ALTER TABLE `dle_static`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dle_static_files`
--
ALTER TABLE `dle_static_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dle_subscribe`
--
ALTER TABLE `dle_subscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_tags`
--
ALTER TABLE `dle_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dle_twofactor`
--
ALTER TABLE `dle_twofactor`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_usergroups`
--
ALTER TABLE `dle_usergroups`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dle_users`
--
ALTER TABLE `dle_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dle_views`
--
ALTER TABLE `dle_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_vote`
--
ALTER TABLE `dle_vote`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dle_vote_result`
--
ALTER TABLE `dle_vote_result`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dle_xfsearch`
--
ALTER TABLE `dle_xfsearch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
