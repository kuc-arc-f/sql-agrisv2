-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- ホスト: localhost
-- 生成時間: 2015 年 4 月 09 日 10:52
-- サーバのバージョン: 5.5.16
-- PHP のバージョン: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- データベース: `agrisv2`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `m_code`
--

CREATE TABLE IF NOT EXISTS `m_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kbn` int(11) DEFAULT NULL,
  `code` text,
  `ncode` int(11) DEFAULT NULL,
  `title` text,
  `biko` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- テーブルの構造 `m_mcs`
--

CREATE TABLE IF NOT EXISTS `m_mcs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mc_name` text,
  `moi_num` int(11) DEFAULT '0',
  `kai_num_1` int(11) DEFAULT '0',
  `vnum_1` int(1) DEFAULT '0',
  `kai_num_2` int(11) DEFAULT '0',
  `vnum_2` int(1) DEFAULT '0',
  `kai_num_3` int(11) DEFAULT '0',
  `vnum_3` int(1) DEFAULT '0',
  `kai_num_4` int(11) DEFAULT '0',
  `vnum_4` int(1) DEFAULT '0',
  `kai_num_5` int(11) DEFAULT '0',
  `vnum_5` int(1) DEFAULT '0',
  `ck_num` int(4) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- テーブルの構造 `m_user`
--

CREATE TABLE IF NOT EXISTS `m_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` text,
  `s_pass` text,
  `s_mail` text,
  `biko` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- テーブルの構造 `t_mlogs`
--

CREATE TABLE IF NOT EXISTS `t_mlogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mc_id` int(11) DEFAULT NULL,
  `txt_log` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- テーブルの構造 `t_sensors`
--

CREATE TABLE IF NOT EXISTS `t_sensors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mc_id` int(11) DEFAULT NULL,
  `vnum` int(2) DEFAULT '0',
  `snum` int(11) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- テーブルの構造 `t_vitems`
--

CREATE TABLE IF NOT EXISTS `t_vitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mc_id` int(11) DEFAULT NULL,
  `vnum` int(2) DEFAULT '0',
  `k_flg` int(1) DEFAULT '0',
  `k_kbn` int(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
