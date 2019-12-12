# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.26)
# Database: foghorn
# Generation Time: 2019-12-11 18:14:04 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table affinities
# ------------------------------------------------------------

DROP TABLE IF EXISTS `affinities`;

CREATE TABLE `affinities` (
  `affinity_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `affinity_name` varchar(18) DEFAULT NULL,
  `affinity_descr` tinyblob,
  `endOne` varchar(16) DEFAULT NULL,
  `endTwo` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`affinity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

LOCK TABLES `affinities` WRITE;
/*!40000 ALTER TABLE `affinities` DISABLE KEYS */;

INSERT INTO `affinities` (`affinity_id`, `affinity_name`, `affinity_descr`, `endOne`, `endTwo`)
VALUES
	(5,'nat_tech',X'6E61747572616C20776F726C64207673206D6F6465726E','Nature','Technology'),
	(6,'water_fire',X'77617465722076732066697265','Water','Fire'),
	(7,'amb_comp',X'657373656E7469616C6C792073656C66207673206F74686572732C207468696E67732061626F75742073656C6620696D70726F76656D656E742076732061626F75742068656C70696E67206F74686572730A','Self','Others');

/*!40000 ALTER TABLE `affinities` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table missive_aff_ref
# ------------------------------------------------------------

DROP TABLE IF EXISTS `missive_aff_ref`;

CREATE TABLE `missive_aff_ref` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `missive_id` int(11) DEFAULT NULL,
  `affinity_id` int(11) DEFAULT NULL,
  `value` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8;

LOCK TABLES `missive_aff_ref` WRITE;
/*!40000 ALTER TABLE `missive_aff_ref` DISABLE KEYS */;

INSERT INTO `missive_aff_ref` (`id`, `missive_id`, `affinity_id`, `value`)
VALUES
	(1,18,5,27),
	(2,18,6,63),
	(3,18,7,23),
	(4,19,5,41),
	(5,19,6,60),
	(6,19,7,24),
	(7,20,5,76),
	(8,20,6,71),
	(9,20,7,45),
	(10,21,5,76),
	(11,21,6,71),
	(12,21,7,81),
	(13,0,5,83),
	(14,0,6,50),
	(15,0,7,17),
	(16,0,5,76),
	(17,0,6,50),
	(18,0,7,14),
	(19,22,5,42),
	(20,22,6,23),
	(21,22,7,3),
	(22,23,5,50),
	(23,23,6,50),
	(24,23,7,50),
	(25,24,5,50),
	(26,24,6,50),
	(27,24,7,50),
	(28,25,5,55),
	(29,25,6,56),
	(30,25,7,27),
	(31,0,5,75),
	(32,0,6,69),
	(33,0,7,76),
	(34,26,5,74),
	(35,26,6,60),
	(36,26,7,29),
	(37,27,5,67),
	(38,27,6,53),
	(39,27,7,33),
	(40,28,5,79),
	(41,28,6,88),
	(42,28,7,41),
	(43,29,5,53),
	(44,29,6,38),
	(45,29,7,67),
	(46,30,5,50),
	(47,30,6,50),
	(48,30,7,15),
	(49,31,5,57),
	(50,31,6,25),
	(51,31,7,50),
	(52,32,5,55),
	(53,32,6,67),
	(54,32,7,50),
	(55,33,5,28),
	(56,33,6,41),
	(57,33,7,22),
	(58,34,5,71),
	(59,34,6,31),
	(60,34,7,50),
	(61,35,5,50),
	(62,35,6,43),
	(63,35,7,73),
	(64,36,5,88),
	(65,36,6,76),
	(66,36,7,50),
	(67,37,5,41),
	(68,37,6,50),
	(69,37,7,50),
	(70,38,5,59),
	(71,38,6,50),
	(72,38,7,31),
	(73,39,5,55),
	(74,39,6,46),
	(75,39,7,76),
	(76,40,5,65),
	(77,40,6,42),
	(78,40,7,37),
	(79,41,5,44),
	(80,41,6,50),
	(81,41,7,68),
	(82,42,5,29),
	(83,42,6,33),
	(84,42,7,69),
	(85,43,5,61),
	(86,43,6,70),
	(87,43,7,34),
	(88,44,5,75),
	(89,44,6,27),
	(90,44,7,22),
	(91,45,5,55),
	(92,45,6,65),
	(93,45,7,42),
	(94,46,5,44),
	(95,46,6,91),
	(96,46,7,12),
	(97,47,5,29),
	(98,47,6,78),
	(99,47,7,18),
	(100,48,5,39),
	(101,48,6,70),
	(102,48,7,4),
	(103,49,5,58),
	(104,49,6,69),
	(105,49,7,24),
	(106,50,5,21),
	(107,50,6,50),
	(108,50,7,50),
	(109,51,5,43),
	(110,51,6,54),
	(111,51,7,82),
	(112,52,5,87),
	(113,52,6,59),
	(114,52,7,50),
	(115,53,5,58),
	(116,53,6,68),
	(117,53,7,29),
	(118,54,5,80),
	(119,54,6,74),
	(120,54,7,50),
	(121,55,5,14),
	(122,55,6,19),
	(123,55,7,57),
	(124,56,5,22),
	(125,56,6,16),
	(126,56,7,50),
	(127,57,5,39),
	(128,57,6,75),
	(129,57,7,12),
	(130,58,5,60),
	(131,58,6,86),
	(132,58,7,35),
	(133,59,5,59),
	(134,59,6,73),
	(135,59,7,62),
	(136,60,5,26),
	(137,60,6,20),
	(138,60,7,50),
	(139,61,5,58),
	(140,61,6,72),
	(141,61,7,32),
	(142,62,5,59),
	(143,62,6,28),
	(144,62,7,34),
	(145,63,5,45),
	(146,63,6,71),
	(147,63,7,81),
	(148,64,5,40),
	(149,64,6,75),
	(150,64,7,79),
	(151,65,5,32),
	(152,65,6,67),
	(153,65,7,25),
	(154,66,5,65),
	(155,66,6,65),
	(156,66,7,39),
	(157,67,5,65),
	(158,67,6,64),
	(159,67,7,58),
	(160,68,5,72),
	(161,68,6,83),
	(162,68,7,71),
	(163,69,5,64),
	(164,69,6,71),
	(165,69,7,22),
	(166,70,5,44),
	(167,70,6,34),
	(168,70,7,70),
	(169,71,5,25),
	(170,71,6,80),
	(171,71,7,5),
	(172,72,5,66),
	(173,72,6,36),
	(174,72,7,58),
	(175,73,5,23),
	(176,73,6,39),
	(177,73,7,25),
	(178,74,5,35),
	(179,74,6,79),
	(180,74,7,70),
	(181,75,5,71),
	(182,75,6,68),
	(183,75,7,34),
	(184,76,5,34),
	(185,76,6,61),
	(186,76,7,23),
	(187,77,5,59),
	(188,77,6,47),
	(189,77,7,23),
	(190,78,5,39),
	(191,78,6,65),
	(192,78,7,39);

/*!40000 ALTER TABLE `missive_aff_ref` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table missive_score_ref
# ------------------------------------------------------------

DROP TABLE IF EXISTS `missive_score_ref`;

CREATE TABLE `missive_score_ref` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `missive_id` int(11) DEFAULT NULL,
  `score_id` int(11) DEFAULT NULL,
  `value` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=317 DEFAULT CHARSET=utf8;

LOCK TABLES `missive_score_ref` WRITE;
/*!40000 ALTER TABLE `missive_score_ref` DISABLE KEYS */;

INSERT INTO `missive_score_ref` (`id`, `missive_id`, `score_id`, `value`)
VALUES
	(1,3,1,31),
	(2,3,2,100),
	(3,3,3,1),
	(4,3,4,1),
	(5,4,1,28),
	(6,4,2,73),
	(7,4,3,15),
	(8,4,4,79),
	(9,5,1,28),
	(10,5,2,75),
	(11,5,3,28),
	(12,5,4,25),
	(13,6,1,68),
	(14,6,2,26),
	(15,6,3,26),
	(16,6,4,68),
	(17,7,1,15),
	(18,7,2,84),
	(19,7,3,78),
	(20,7,4,81),
	(21,8,1,62),
	(22,8,2,19),
	(23,8,3,19),
	(24,8,4,19),
	(25,9,1,50),
	(26,9,2,50),
	(27,9,3,50),
	(28,9,4,50),
	(29,10,1,50),
	(30,10,2,50),
	(31,10,3,50),
	(32,10,4,50),
	(33,11,1,50),
	(34,11,2,50),
	(35,11,3,50),
	(36,11,4,50),
	(37,12,1,50),
	(38,12,2,50),
	(39,12,3,50),
	(40,12,4,50),
	(41,13,1,50),
	(42,13,2,50),
	(43,13,3,50),
	(44,13,4,50),
	(45,14,1,50),
	(46,14,2,50),
	(47,14,3,50),
	(48,14,4,50),
	(49,15,1,27),
	(50,15,2,83),
	(51,15,3,80),
	(52,15,4,65),
	(53,16,1,71),
	(54,16,2,13),
	(55,16,3,77),
	(56,16,4,80),
	(57,17,1,44),
	(58,17,2,31),
	(59,17,3,59),
	(60,17,4,76),
	(61,18,1,57),
	(62,18,2,20),
	(63,18,3,14),
	(64,18,4,29),
	(65,19,1,27),
	(66,19,2,71),
	(67,19,3,65),
	(68,19,4,42),
	(69,20,1,45),
	(70,20,2,59),
	(71,20,3,25),
	(72,20,4,21),
	(73,21,1,77),
	(74,21,2,75),
	(75,21,3,61),
	(76,21,4,8),
	(77,0,1,84),
	(78,0,2,78),
	(79,0,3,82),
	(80,0,4,17),
	(81,0,1,70),
	(82,0,2,85),
	(83,0,3,88),
	(84,0,4,23),
	(85,22,1,27),
	(86,22,2,80),
	(87,22,3,80),
	(88,22,4,31),
	(89,23,1,50),
	(90,23,2,50),
	(91,23,3,50),
	(92,23,4,50),
	(93,24,1,50),
	(94,24,2,50),
	(95,24,3,50),
	(96,24,4,50),
	(97,25,1,36),
	(98,25,2,72),
	(99,25,3,19),
	(100,25,4,19),
	(101,0,1,71),
	(102,0,2,25),
	(103,0,3,25),
	(104,0,4,25),
	(105,26,1,65),
	(106,26,2,75),
	(107,26,3,17),
	(108,26,4,22),
	(109,27,1,36),
	(110,27,2,60),
	(111,27,3,31),
	(112,27,4,75),
	(113,28,1,61),
	(114,28,2,70),
	(115,28,3,28),
	(116,28,4,35),
	(117,29,1,39),
	(118,29,2,27),
	(119,29,3,79),
	(120,29,4,63),
	(121,30,1,70),
	(122,30,2,72),
	(123,30,3,69),
	(124,30,4,28),
	(125,31,1,64),
	(126,31,2,83),
	(127,31,3,20),
	(128,31,4,69),
	(129,32,1,56),
	(130,32,2,84),
	(131,32,3,21),
	(132,32,4,28),
	(133,33,1,40),
	(134,33,2,30),
	(135,33,3,84),
	(136,33,4,84),
	(137,34,1,50),
	(138,34,2,26),
	(139,34,3,71),
	(140,34,4,77),
	(141,35,1,54),
	(142,35,2,32),
	(143,35,3,65),
	(144,35,4,29),
	(145,36,1,50),
	(146,36,2,69),
	(147,36,3,28),
	(148,36,4,73),
	(149,37,1,50),
	(150,37,2,50),
	(151,37,3,50),
	(152,37,4,50),
	(153,38,1,38),
	(154,38,2,77),
	(155,38,3,80),
	(156,38,4,27),
	(157,39,1,44),
	(158,39,2,28),
	(159,39,3,66),
	(160,39,4,50),
	(161,40,1,37),
	(162,40,2,72),
	(163,40,3,32),
	(164,40,4,36),
	(165,41,1,59),
	(166,41,2,35),
	(167,41,3,54),
	(168,41,4,74),
	(169,42,1,56),
	(170,42,2,27),
	(171,42,3,68),
	(172,42,4,59),
	(173,43,1,27),
	(174,43,2,24),
	(175,43,3,45),
	(176,43,4,30),
	(177,44,1,38),
	(178,44,2,69),
	(179,44,3,30),
	(180,44,4,42),
	(181,45,1,38),
	(182,45,2,25),
	(183,45,3,69),
	(184,45,4,61),
	(185,46,1,54),
	(186,46,2,71),
	(187,46,3,64),
	(188,46,4,32),
	(189,47,1,41),
	(190,47,2,28),
	(191,47,3,79),
	(192,47,4,59),
	(193,48,1,26),
	(194,48,2,20),
	(195,48,3,80),
	(196,48,4,31),
	(197,49,1,43),
	(198,49,2,69),
	(199,49,3,43),
	(200,49,4,32),
	(201,50,1,40),
	(202,50,2,62),
	(203,50,3,29),
	(204,50,4,78),
	(205,51,1,64),
	(206,51,2,16),
	(207,51,3,74),
	(208,51,4,18),
	(209,52,1,41),
	(210,52,2,77),
	(211,52,3,17),
	(212,52,4,67),
	(213,53,1,60),
	(214,53,2,59),
	(215,53,3,25),
	(216,53,4,17),
	(217,54,1,69),
	(218,54,2,68),
	(219,54,3,23),
	(220,54,4,30),
	(221,55,1,63),
	(222,55,2,29),
	(223,55,3,37),
	(224,55,4,29),
	(225,56,1,44),
	(226,56,2,61),
	(227,56,3,29),
	(228,56,4,62),
	(229,57,1,61),
	(230,57,2,71),
	(231,57,3,73),
	(232,57,4,29),
	(233,58,1,58),
	(234,58,2,72),
	(235,58,3,24),
	(236,58,4,23),
	(237,59,1,55),
	(238,59,2,23),
	(239,59,3,72),
	(240,59,4,67),
	(241,60,1,38),
	(242,60,2,22),
	(243,60,3,79),
	(244,60,4,52),
	(245,61,1,65),
	(246,61,2,33),
	(247,61,3,33),
	(248,61,4,33),
	(249,62,1,40),
	(250,62,2,66),
	(251,62,3,32),
	(252,62,4,63),
	(253,63,1,26),
	(254,63,2,74),
	(255,63,3,81),
	(256,63,4,23),
	(257,64,1,67),
	(258,64,2,63),
	(259,64,3,30),
	(260,64,4,35),
	(261,65,1,19),
	(262,65,2,70),
	(263,65,3,77),
	(264,65,4,68),
	(265,66,1,31),
	(266,66,2,71),
	(267,66,3,73),
	(268,66,4,68),
	(269,67,1,59),
	(270,67,2,69),
	(271,67,3,31),
	(272,67,4,26),
	(273,68,1,62),
	(274,68,2,70),
	(275,68,3,69),
	(276,68,4,30),
	(277,69,1,30),
	(278,69,2,69),
	(279,69,3,70),
	(280,69,4,25),
	(281,70,1,41),
	(282,70,2,70),
	(283,70,3,81),
	(284,70,4,61),
	(285,71,1,38),
	(286,71,2,69),
	(287,71,3,30),
	(288,71,4,36),
	(289,72,1,63),
	(290,72,2,32),
	(291,72,3,38),
	(292,72,4,60),
	(293,73,1,25),
	(294,73,2,64),
	(295,73,3,69),
	(296,73,4,62),
	(297,74,1,64),
	(298,74,2,36),
	(299,74,3,17),
	(300,74,4,27),
	(301,75,1,67),
	(302,75,2,72),
	(303,75,3,72),
	(304,75,4,83),
	(305,76,1,41),
	(306,76,2,64),
	(307,76,3,34),
	(308,76,4,24),
	(309,77,1,38),
	(310,77,2,43),
	(311,77,3,32),
	(312,77,4,57),
	(313,78,1,30),
	(314,78,2,76),
	(315,78,3,19),
	(316,78,4,31);

/*!40000 ALTER TABLE `missive_score_ref` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table missives
# ------------------------------------------------------------

DROP TABLE IF EXISTS `missives`;

CREATE TABLE `missives` (
  `missive_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `content` blob,
  `author` varchar(300) NOT NULL DEFAULT 'Unknown',
  PRIMARY KEY (`missive_id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

LOCK TABLES `missives` WRITE;
/*!40000 ALTER TABLE `missives` DISABLE KEYS */;

INSERT INTO `missives` (`missive_id`, `content`, `author`)
VALUES
	(3,X'4D656D656E746F204D6F7269','Stoic Saying'),
	(4,X'5468617420697320776861742077652061726520737570706F73656420746F20646F207768656E20776520617265206174206F75722062657374E280946D616B6520697420616C6C207570E28094627574206D616B6520697420757020736F207472756C792074686174206C617465722069742077696C6C2068617070656E2074686174207761792E','Hemmingway to F. Scott Fitzgerald'),
	(5,X'576520696E206F7572206F776E2068756D616E20696D70657266656374696F6E732061726520726570656C6C65642062792074686520706572666563742C2073696E63652065766572797468696E67206973206170706172656E742066726F6D2074686520737461727420616E64207468657265206973206E6F2073756767657374696F6E206F662074686520696E66696E6974652E','Soetsu Yanagi'),
	(6,X'576865726520646F20796F752073656520796F757273656C6620696E20666976652079656172733F2049206A7573742061736B20746865207175657374696F6E2C20686F772063616E204920646F20746865206D6F737420676F6F64207269676874206E6F773F','AOC'),
	(7,X'496620796F752066696E64207468652072696768742068616E646372616674206974206265636F6D6573206120666F726D206F66206C6569737572652E','Nick Offerman'),
	(8,X'4120626C617A696E672066697265206D616B657320666C616D6520616E64206272696768746E657373206F7574206F662065766572797468696E672074686174206973207468726F776E20696E746F2069742E','Marcus Aurelius'),
	(15,X'4472696E6B20796F75722074656120736C6F776C7920616E64207265766572656E746C792C206173206966206974206973207468652061786973206F6E2077686963682074686520776F726C64206561727468207265766F6C76657320E2809320736C6F776C792C206576656E6C792C20776974686F75742072757368696E6720746F7761726420746865206675747572652E','Thich Nhat Hanh'),
	(16,X'4974E280997320776F727468206E6F7468696E6720746861742077686174206D616B6573206120636F6D666F727461626C652077617465722074656D706572617475726520666F72206120312C3530302D706F756E64206D616E617465652077696C6C207374696C6C207365656D20707265747479206675636B696E6720636F6C6420746F20796F752C206576656E20696E20796F757220776574737569742E','Sarah Kasbeer'),
	(17,X'446F20796F752068617665207468652070617469656E636520746F207761697420756E74696C20796F7572206D756420736574746C657320616E642074686520776174657220697320636C6561723F','Lao Tzu'),
	(18,X'546120657068E2809968656D696E2C207461206F756B20657068E2809968656D696E2E205768617420697320757020746F207573206973206E6F7420757020746F2075732E','Stoic Tradition'),
	(19,X'4265666F726520656E6C69676874656E6D656E742063686F7020776F6F6420616E642063617272792077617465722E20416674657220656E6C69676874656E6D656E742C2063686F7020776F6F6420616E642063617272792077617465722E','Wu Li'),
	(20,X'5468652064657461696C7320617265206E6F74207468652064657461696C732E2054686579206D616B65207468652064657369676E2E0A0A','Charles Eames'),
	(21,X'41206C65616465722C20796F75207365652C206973206F6E65206F662074686520666577207468696E677320746861742064697374696E677569736865732061206D6F622066726F6D20612070656F706C652E','from Dune by Frank Herbert'),
	(22,X'4265636F6D65207768617420796F7520617265206E6F74207965742E','St. Augustine'),
	(25,X'5768656E2077696E6473206F66206368616E676520626C6F772C20736F6D65206275696C64207368656C746572732C206F7468657273206275696C642077696E646D696C6C732E','Chinese Proverb'),
	(26,X'596F7572206A6F622069736E277420646F6E6520756E74696C20746865206A6F6220697320646F6E652E','Nike Principle'),
	(27,X'536563757265207468652068756E6B206F6620636C61792066697273742C20616E6420776F7272792061626F7574207363756C7074696E67206974206C617465722E','Sarah Stodola'),
	(28,X'4E6576657220696E7465727275707420616E20656E656D79206D616B696E672061206D697374616B652E','Napoleon'),
	(29,X'476C6F727920626520746F20776F726B2C20616E642073636F726E2075706F6E2049646C656E657373202D20776F726B20616E6420686F6E6F75722C2074686174206973206F7572207765616C74682E','French Compagnon Saying'),
	(30,X'446F7562742061206C6974746C65206F6620796F7572206F776E20696E66616C6C6962696C6974792E20','Michael Bloomberg'),
	(31,X'22546865206C6967687420776F726B732220686520736169642C20696E6469636174696E67207468652077696E646F772C2022746865206772617669747920776F726B732220686520736169642C2064726F7070696E6720612070656E63696C206F6E2074686520666C6F6F722E2022416E797468696E6720656C7365207765206861766520746F2074616B65206F7572206368616E63657320776974682E2220','Douglas Adams (Dirk Gently\'s Holistic Detective Agency) '),
	(32,X'4C6574207573207072657061726520746F2067726170706C6520776974682074686520696E65666661626C652C20616E6420736565206966207765206D6179206E6F742065666620697420616674657220616C6C2E20','Douglas Adams'),
	(33,X'497420776173206F6E65206F662074686F7365206A6F75726E657973206F6E2077686963682061206D616E206665656C732074686174206E6F77206174206C617374206865206D757374206861766520636F6D6520746F2074686520656E64206F662074686520756E6976657273652C20616E64207468656E2066696E647320686520686173206F6E6C7920636F6D6520746F2074686520626567696E6E696E67206F66205475666E656C6C205061726B2E','G.K. Chesterton (Fr. Brown Mysteries)'),
	(34,X'54686520696D706F737369626C65206F6674656E206861732061206B696E64206F6620696E7465677269747920746F20697420776869636820746865206D6572656C7920696D70726F6261626C65206C61636B732E','Douglas Adams'),
	(35,X'596F75206265636F6D65207468652061766572616765206F662074686520352070656F706C6520796F75207370656E6420746865206D6F73742074696D6520776974682E','Jim Rohm'),
	(36,X'496E2074686520626567696E6E696E67207761732074686520576F72642E205468656E2063616D6520746865206675636B696E6720776F72642070726F636573736F722E205468656E2063616D65207468652074686F756768742070726F636573736F722E205468656E2063616D6520746865206465617468206F66206C6974657261747572652E20416E6420736F20697420676F65732E','Hyperion Cantos'),
	(37,X'57652077657265206F6E2074686520726F6F66206F6620416D65726963612C20616E6420616C6C20776520636F756C6420646F207761732079656C6C2C2049206775657373202D206163726F737320746865206E696768742C206561737477617264206F7665722074686520506C61696E732C20776865726520736F6D65776865726520616E206F6C64206D616E20776974682077686974652068616972207761732070726F6261626C792077616C6B696E6720746F7761726420757320776974682074686520576F72642C20616E6420776F756C642061727269766520616E79206D696E75746520616E64206D616B652075732073696C656E742E','Jack Kerouac'),
	(38,X'54686174277320707265636973656C792077686174206D6573736961687320646F2C205261756C2E2E2E2062726964676520646966666572656E7420776F726C64732E20446966666572656E7420657261732E2050726F766964652074686520626F6E64206265747765656E2074776F2069727265636F6E63696C61626C6520636F6E657074732E','Hyperion Cantos'),
	(39,X'5468652068756D616E206D696E642067657473207573656420746F20737472616E67656E657373207665727920717569636B6C7920696620697420646F6573206E6F74206578686962697420696E746572657374696E67206265686176696F722E','Hyperion Cantos'),
	(40,X'49742069732061206772656174206162696C69747920746F2062652061626C6520746F20636F6E6365616C206F6E652773206162696C6974792E','Alex Stone'),
	(41,X'546865206F6E6C7920726561736F6E206C6F63616C73206170707265636961746520666F726569676E6572732077686F20617474656D707420746F20737065616B207468656972206C616E67756167652069732062656361757365206974206769766573207468656D20736F6D657468696E6720746F206C617567682061742E','Chris Harrison'),
	(42,X'416C6F6E6520616D6F6E672074686520616E696D616C732C205B68756D616E5D206973207368616B656E20776974682062656175746966756C206D61646E6573732063616C6C6564206C617567687465722E','G.K. Chesterton (The Everlasting Man)'),
	(43,X'43686F6F736520796F75722074656D706C65206F662066616E6174696369736D207769746820677265617420636172652E','David Foster Wallace'),
	(44,X'546865204275646468612C2074686520476F64686561642C207265736964657320717569746520617320636F6D666F727461626C7920696E20746865206369726375697473206F66206120636F6D7075746572206F7220746865206765617273206F662061206379636C65207472616E736D697373696F6E20617320686520646F65732061742074686520746F70206F662061206D6F756E7461696E206F7220696E2074686520706574616C73206F66206120666C6F7765722E20546F207468696E6B206F746865727769736520697320746F2064656D65616E20746865204275646468612C20776869636820697320746F2064656D65616E206F6E6573656C662E','Robert M. Pirsig'),
	(45,X'54726176656C206973206120736F7274206F6620726576656E676520666F7220686176696E67206265656E20707574206F6E20686F6C642E','Paul Theroux'),
	(46,X'46616C6C207369782074696D65732C2067657420757020736576656E2E','Dwayne Wade'),
	(47,X'457363617065202F2057616C6B206F7574206C696B6520736F6D656F6E652073756464656E6C7920626F726E20696E746F20636F6C6F722E202F20446F206974206E6F772E2E2E202F204469652C20616E642062652071756965742E202F2051756965746E6573732069732074686520737572657374207369676E207468617420796F7527766520646965642E','Rumi'),
	(48,X'49207468696E6B20746865206F6E6C79207265616C2077617920746F206D616E616765206665617220697320746F2073797374656D61746963616C6C792062726F6164656E2020796F757220636F6D666F7274207A6F6E652E','Alex Hannold'),
	(49,X'436F7572616765206973206B6E6F77696E67206974206D6967687420687572742C20616E6420646F696E6720697420616E797761792E20537475706964697479206973207468652073616D652E2054686174277320776879206C69666520697320686172642E','Jeremy Goldberg'),
	(50,X'45766572797468696E6720776869636820697320696E20616E79207761792062656175746966756C2069732062656175746966756C20696E20697473656C662C20616E64207465726D696E6174657320696E20697473656C662C206E6F7420686176696E67207072616973652061732070617274206F6620697473656C662E','Marcus Aurelius'),
	(51,X'546F206361726520666F7220616C6C206D656E206973206163636F7264696E6720746F206D616E2773206E61747572652E','Marcus Aurelius'),
	(52,X'546865206D6F7374206578636974696E6720706872617365206973206E6F742022457572656B6121222C2062757420225468617427732066756E6E79220A','Isaac Asimov'),
	(53,X'4B65657020646561746820696E206D696E6420617420616C6C2074696D65732E20496620612077617272696F72206B6565707320646561746820696E206D696E6420617420616C6C2074696D657320616E64206C697665732061732074686F756768206561636820646179206D6967687420626520686973206C6173742C2068652077696C6C20636F6E647563742068696D73656C662070726F7065726C7920696E20616C6C2068697320616374696F6E732E','Ben Horowitz'),
	(54,X'477261646174696D206665726F63697465722E205374657020627920737465702C206665726F63696F75736C792E','Blue Origin Motto'),
	(55,X'546865792072656475636564207468656D73656C7665732C206170706172656E746C792C20746F2074686520657373656E7469616C733A2074696E73206F662073616C6D6F6E2C2069662068652073686F756C642077616E7420746F206561743B206C6F61646564207265766F6C766572732C2069662068652073686F756C642077616E7420746F2066696768743B206120626F74746C65206F66206272616E64792C2070726573756D61626C7920696E20636173652068652073686F756C64206661696E742C20616E642061207072696573742C2070726573756D61626C7920696E20636173652068652073686F756C64206469652E','G.K. Chesterton'),
	(56,X'497420697320696D706F7274616E7420746F206472617720776973646F6D2066726F6D206D616E7920646966666572656E7420706C616365732E2049662077652074616B652069742066726F6D206F6E6C79206F6E6520706C6163652C206974206265636F6D6573207374616C652E','Uncle Iroh'),
	(57,X'49207375727669766564206265636175736520746865206669726520696E73696465206D65206275726E6564206272696768746572207468616E2074686520666972652061726F756E64206D652E','Joshua Graham, Who Is A Fallout New Vegas NPC'),
	(58,X'49662074686520776F726C642063686F6F73657320746F206265636F6D65206D7920656E656D792C20492077696C6C206669676874206C696B65204920616C7761797320686176652E0A0A','Shadow the Hedgehog'),
	(59,X'4920736565206E6F772074686174207468652063697263756D7374616E636573206F66206F6E6527732062697274682061726520697272656C6576616E743B206974206973207768617420796F7520646F202077697468207468652067696674206F66206C69666520746861742064657465726D696E65732077686F20796F75206172652E','Mewtwo'),
	(60,X'5768656E20736F6D656F6E65206C656176657320796F7572206C6966652C2074686F736520657869747320617265206E6F74206D61646520657175616C2E20536F6D65206172652062656175746966756C20616E6420706F6574696320616E642073617469736679696E672E204F7468657273206172652061627275707420616E6420756E666169722E20427574206D6F737420617265206A75737420756E72656D61726B61626C652E20556E696E74656E74696F6E616C2E20436C756D73792E','Griffin McElroy'),
	(61,X'4920776F726520626C61636B20626563617573652049206C696B65642069742E2049207374696C6C20646F2C20616E642077656172696E67206974207374696C6C206D65616E7320736F6D657468696E6720746F206D652E204974E2809973207374696C6C206D792073796D626F6C206F6620726562656C6C696F6E20E2809320616761696E7374206120737461676E616E74207374617475732071756F2C20616761696E7374206F7572206879706F637269746963616C20686F75736573206F6620476F642C20616761696E73742070656F706C652077686F7365206D696E64732061726520636C6F73656420746F206F7468657273E280992069646561732E','Johnny Cash'),
	(62,X'4963617275732C20796F75E28099726520666C79696E6720746F6F20636C6F736520746F207468652073756E2C20616E64207468652073756E206973206D616465206F6620626565732E','Griffin McElroy'),
	(63,X'416E64204920636F756C642063727920706F776572202F200A506F77657220686173206265656E2063726965642062792074686F7365207374726F6E676572207468616E206D65202F200A537472616967687420696E746F20746865206661636520746861742074656C6C7320796F7520746F202F200A526174746C6520796F757220636861696E7320696620796F75206C6F7665206265696E672066726565','Hozier (Nina Cried Power)'),
	(64,X'536164206973206E6F7420746865206C616E64207468617420686173206E6F206865726F2E2053616420697320746865206C616E642074686174206E656564732061206865726F2E','Tamika Flynn'),
	(65,X'417265207765206C6976696E672061206C696665207468617420697320736166652066726F6D206861726D3F204F6620636F75727365206E6F742E205765206E657665722068617665206265656E2E204275742074686174E2809973206E6F7420746865207175657374696F6E2E20546865207175657374696F6E2069732C20617265207765206C6976696E672061206C696665207468617420697320776F72746820746865206861726D2E','Cecil G. Palmer'),
	(66,X'54686520736179696E672C20224C696665206973206A757374206F6E652064616D6E207468696E6720616674657220616E6F746865722C2220697320612067726F737320756E64657273746174656D656E742E205468652064616D6E207468696E6773206F7665726C61702E','The Cincinnati Enquirer, Ohio, February 21, 1947'),
	(67,X'446F20796F75207468696E6B20476F6420737461797320696E2068656176656E20626563617573652068652C20746F6F2C206C6976657320696E2066656172206F662077686174206865277320637265617465643F','SpyKids'),
	(68,X'50617472696F7469736D2074616B656E20746F6F206661722069732066616E6174696369736D2C206E6F206D61747465722077686F20796F7520617265206F7220776865726520796F752772652066726F6D2E','Captain America'),
	(69,X'49276D20676F696E6720746F2077616B6520757020746F6D6F72726F7720616E64206B65657020747279696E6720746F20646F20676F6F642C20616E6420736F2061726520796F752C20616E64206E6F626F6479206765747320746F20766F7465206F6E20746861742E','Justin McElroy'),
	(70,X'4F757220636170616369747920666F72206C6F766520696E637265617365732077697468206561636820706572736F6E2077652063726F73732070617468732077697468207468726F7567686F7574206F7572206C6976657320616E6420776974682065616368206D6F6D656E74207765207370656E6420776974682074686F73652070656F706C652E2042757420746F6F206F6674656E207765206E65676C65637420746861742070617274206F66206F757273656C76657320696E206661766F72206F66206F74686572732C20616E64206279207468652074696D65207765207265616C697A65206A75737420686F7720696D706F7274616E742069742069732C2077652066696E64206F757273656C766573207769746820666577657220666F6C6B732061726F756E6420746F20707261637469636520776974682E','Griffin McElroy'),
	(71,X'49206D757374206E6F7420666561722E204665617220697320746865206D696E642D6B696C6C65722E204665617220697320746865206C6974746C652D64656174682074686174206272696E677320746F74616C206F626C697465726174696F6E2E20492077696C6C2066616365206D7920666561722E20492077696C6C207065726D697420697420746F2070617373206F766572206D6520616E64207468726F756768206D652E20416E64207768656E2069742068617320676F6E65207061737420492077696C6C207475726E2074686520696E6E65722065796520746F207365652069747320706174682E2057686572652074686520666561722068617320676F6E652074686572652077696C6C206265206E6F7468696E672E204F6E6C7920492077696C6C2072656D61696E2E','from Dune '),
	(72,X'54696D6520697320616E20696C6C7573696F6E2E204C756E636874696D6520646F75626C7920736F2E','Douglas Adams'),
	(73,X'49736E277420697420656E6F75676820746F20736565207468617420612067617264656E2069732062656175746966756C20776974686F757420686176696E6720746F2062656C6965766520746861742074686572652061726520666169726965732061742074686520626F74746F6D206F6620697420746F6F3F','Douglas Adams'),
	(74,X'54686520776F726C64206973206368616E67656420627920796F7572206578616D706C652C206E6F7420627920796F7572206F70696E696F6E2E','Paulo Coelho'),
	(75,X'4B656570207374726F6E672C20696620706F737369626C652E20496E20616E7920636173652C206B65657020636F6F6C2E204861766520756E6C696D697465642070617469656E63652E204E6576657220636F726E657220616E206F70706F6E656E742C20616E6420616C77617973206173736973742068696D20746F207361766520666163652E2050757420796F757273656C6620696E206869732073686F657320E2809320736F20617320746F20736565207468696E6773207468726F7567682068697320657965732E2041766F69642073656C662D7269676874656F75736E657373206C696B652074686520646576696C20E28093206E6F7468696E6720697320736F2073656C662D626C696E64696E672E','B.H. Liddell Hart'),
	(76,X'5472757374206E6F206675747572652C20686F776527657220706C656173616E74210A4C657420746865206465616420506173742062757279206974732064656164210A4163742C20E2809361637420696E20746865206C6976696E672070726573656E7421200A48656172742077697468696E2C20616E6420476F64206F27657268656164210A','Henry Wadsworth Longfellow'),
	(77,X'41207765616C7468206F6620696E666F726D6174696F6E2063726561746573206120706F7665727479206F6620617474656E74696F6E2E','Herbert Simon'),
	(78,X'496620796F75207769736820746F20696D70726F76652C20626520636F6E74656E7420746F2061707065617220636C75656C657373206F722073747570696420696E2065787472616E656F7573206D6174746572732E','Epictetus');

/*!40000 ALTER TABLE `missives` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table past_missives_by_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `past_missives_by_user`;

CREATE TABLE `past_missives_by_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `missive_id` int(11) DEFAULT NULL,
  `active` varchar(1) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

LOCK TABLES `past_missives_by_user` WRITE;
/*!40000 ALTER TABLE `past_missives_by_user` DISABLE KEYS */;

INSERT INTO `past_missives_by_user` (`id`, `user_id`, `missive_id`, `active`)
VALUES
	(1,1,60,'y'),
	(2,1,76,'y');

/*!40000 ALTER TABLE `past_missives_by_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table scores
# ------------------------------------------------------------

DROP TABLE IF EXISTS `scores`;

CREATE TABLE `scores` (
  `score_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `score_name` varchar(18) DEFAULT NULL,
  `score_descr` tinyblob,
  `endOne` varchar(16) DEFAULT NULL,
  `endTwo` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`score_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

LOCK TABLES `scores` WRITE;
/*!40000 ALTER TABLE `scores` DISABLE KEYS */;

INSERT INTO `scores` (`score_id`, `score_name`, `score_descr`, `endOne`, `endTwo`)
VALUES
	(1,'intro_extro',X'696E74726F76657273696F6E20767320657874726F76657273696F6E0A','Introvert','Extrovert'),
	(2,'sens_ntuit',X'73656E73696E6720767320696E74756974696F6E0A','Sensing','Intuition'),
	(3,'think_feel',X'7468696E6B696E67207673206665656C696E670A','Thinking','Feeling'),
	(4,'judg_perceiv',X'6A756467696E672076732070657263656976696E670A','Judging','Perceiving');

/*!40000 ALTER TABLE `scores` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_scores_ref
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_scores_ref`;

CREATE TABLE `user_scores_ref` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `score_id` int(11) DEFAULT NULL,
  `value` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goog_token` longtext,
  `first` varchar(64) DEFAULT NULL,
  `last` varchar(64) DEFAULT NULL,
  `IE` varchar(1) DEFAULT NULL,
  `SN` varchar(1) DEFAULT NULL,
  `TF` varchar(1) DEFAULT NULL,
  `PJ` varchar(1) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `push_token` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `goog_token`, `first`, `last`, `IE`, `SN`, `TF`, `PJ`, `email`, `push_token`)
VALUES
	(1,'eyJhbGciOiJSUzI1NiIsImtpZCI6IjhhNjNmZTcxZTUzMDY3NTI0Y2JiYzZhM2E1ODQ2M2IzODY0YzA3ODciLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI3MDkyMDM0MDM0OTctb3Bhcm41ODlwYXU0bWx2NzMxbThkMzBrODR2bzRmb3QuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI3MDkyMDM0MDM0OTctb3Bhcm41ODlwYXU0bWx2NzMxbThkMzBrODR2bzRmb3QuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMTU3MTcyNTMzNTg4MTIyNjEyMTIiLCJlbWFpbCI6ImphY2tjcmF3Zm9yZDIwMDhAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImF0X2hhc2giOiJhS3hwOUJVRW96Vnl4eThGUzdkZmR3Iiwibm9uY2UiOiJ1YjFidWtnYXdUMDRsblFjX0cwMDlWZXlSZUI5cTlDVnZTQ2dhQnRLTUhjIiwibmFtZSI6IkphY2siLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EtL0FBdUU3bUQtRnNabU1Id29ldnk0N254Ynpka0VkSE1tTWJ4X3JJbUxsc0lPaFE9czk2LWMiLCJnaXZlbl9uYW1lIjoiSmFjayIsImxvY2FsZSI6ImVuIiwiaWF0IjoxNTcyNDUzNzAwLCJleHAiOjE1NzI0NTczMDB9.wkNXsWcXbr6CmyITCvQmVm14puNpQnDAeEfc_WzbTgzGXFCqA8vmW0XnoXw4znvg05pxyNl6g6wECPcNF3cI9dwQ1yypnM7R0aByT-oFNI3R2PM8knrOffct4BFyQSo9zxC_q3w_wsW0u1Bp4bSBD525n6U89sqpqB8nIzdwFVELFh6dITOsm_kzTOwdRRYYa_OAx0AR4hcRkkHwqniGfkgPMaI0astUUp7MtzRc-rc41v-NJ1uvKEEgIqBjvIruX1zFaEwTHDkULO9GaKHRyeJZJSIIVh-3oJAHFfHpBFE_IlwHnjHIYjG-5AXGsqlfTQKeEjcQlPxGQQbZTirwZQ','Jack','',NULL,NULL,NULL,NULL,'jackcrawford2008@gmail.com','6D0AD5A105D207C97064CD757C7212D7563DB3D1FDE62E8223740B9DB06D158E');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
