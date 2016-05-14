-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2016 at 04:32 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `app`
--

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `permissions`) VALUES
(1, 'Standard user', ''),
(2, 'Administrator', '{"admin": 1}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `joined` datetime NOT NULL,
  `group` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=47 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `salt`, `name`, `joined`, `group`) VALUES
(32, 'admin', '1140224f97be019a78c249a1cf88a07cb94af1accbbe215dc2d2fb00865a1fde', '<4àÉf7ºµÖJÿ¥Á5Š½Q/³h½þl›H¸ ', 'Milos Nikolic', '2016-05-12 19:41:19', 2),
(33, 'alex', '9b36676234bbaf30754a1b136d9c085c817e0c7f6a612f463855021c694d520f', 'lhèdrÁe¬©Hø)YèO¥:äßå+fœµAWŸ—', 'Alex Garret', '2016-05-12 20:57:59', 1),
(39, 'deki', 'a976ec6d0d07fe88370d9df5b4823e264edd93511feb45ee50089ce26d445dae', '!¬†¬òëÝ³I|NaË„¬Yí•+kßÊ¾œQ•', 'Dejan Glisin', '2016-05-13 15:40:05', 1),
(40, 'zoki', '270bc0736bdd4e739a19d7d8265ddbe43f3e4cae2c4268d46cb5675725c28766', 'Qûð>œh`ß\\“ñž5ÿ€$–’2X†i5Í?#«ù', 'Zoran Ilic', '2016-05-14 15:15:44', 1),
(41, 'pera', 'd9aeaa365a3d2a9731752c441deb6302bdd2e0a4cc05134d96259cd91dde21df', '=K/ÕÀNz3¥dKÞÏ^1©²Écí?ã8»¨FâN)í', 'Pera Peric', '2016-05-14 15:22:29', 1),
(42, 'milan', 'a08b2101fe110d862207c39b77b173543881ae1997a02e9f5237bd1b467bfa7d', 'Žr''Fde¡Êí+9ùC›Ûk£–	Ž«P NØÄ–À', 'Milan Ognjanovic', '2016-05-14 15:34:46', 1),
(43, 'duca', 'c1fbcd749712404f72a0cc329e90e9b874480207993e4d8c99939d5951802d99', 'uJ|õÊË’\nŒˆâ˜0òEaLà8Ì{aƒÄÜùë¥“', 'Dusan Kutni', '2016-05-14 15:38:23', 1),
(44, 'cici', '55bb5e8eaf71aeea447aa0fef9718cdc01b04932817d35b74d2ff4831fbc55fb', 'ŸCˆý®?§ªèLe¸Ûp¦V0^€¶ëÝdO', 'Kristina Bajovic', '2016-05-14 15:51:55', 1),
(45, 'cicika', '4c68553b75f5ecb111c1675cedfe8ac23b4d4591de4c5a070d0afde24acda76b', 'X-BêE^t¶+îaŽ§bÒZÔ«Öo{0®„óŠÉ', 'Kristina Bajovicka', '2016-05-14 15:53:16', 1),
(46, 'laza', 'a345e132b965b15e4d1589b2747fe378b6e9e47e474ff9e1b8779e5ff40ab58a', 'ŠífÊæ*|ïpiE¾…XbY¾8ÕW)^%\0ö;0-', 'Lazar Remetic', '2016-05-14 15:55:09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_session`
--

CREATE TABLE IF NOT EXISTS `users_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `hash` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users_session`
--

INSERT INTO `users_session` (`id`, `user_id`, `hash`) VALUES
(4, 32, '74ac989ab44ccdb468f7e0e1eabd53f00732e6a0e9d49bd10f736f70b2645627');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
