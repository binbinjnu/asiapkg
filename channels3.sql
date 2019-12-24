-- --------------------------------------------------------
-- 主机:                           23.224.180.151
-- 服务器版本:                        5.7.28-log - MySQL Community Server (GPL)
-- 服务器OS:                        Linux
-- HeidiSQL 版本:                  10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for channels3
CREATE DATABASE IF NOT EXISTS `channels3` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `channels3`;

-- Dumping structure for table channels3.article_t
CREATE TABLE IF NOT EXISTS `article_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `annex` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table channels3.article_t: ~0 rows (大约)
/*!40000 ALTER TABLE `article_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `article_t` ENABLE KEYS */;

-- Dumping structure for table channels3.channel_t
CREATE TABLE IF NOT EXISTS `channel_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `owner_id` int(11) NOT NULL,
  `master` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`,`owner_id`) USING BTREE,
  KEY `channel_t_owner_id` (`owner_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table channels3.channel_t: ~0 rows (大约)
/*!40000 ALTER TABLE `channel_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `channel_t` ENABLE KEYS */;

-- Dumping structure for table channels3.chan_data_android_t
CREATE TABLE IF NOT EXISTS `chan_data_android_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id` int(11) NOT NULL,
  `water` decimal(18,2) NOT NULL DEFAULT '0.00',
  `new_water` decimal(18,2) NOT NULL DEFAULT '0.00',
  `reg` bigint(20) NOT NULL DEFAULT '0',
  `bind` bigint(20) NOT NULL DEFAULT '0',
  `pay_count` bigint(20) NOT NULL DEFAULT '0',
  `all_pay_num` bigint(20) NOT NULL DEFAULT '0',
  `new_pay_num` bigint(20) NOT NULL DEFAULT '0',
  `all_pay_money` decimal(18,2) NOT NULL DEFAULT '0.00',
  `new_pay_money` decimal(18,2) NOT NULL DEFAULT '0.00',
  `exchange_count` bigint(20) NOT NULL DEFAULT '0',
  `exchange_money` decimal(18,2) NOT NULL DEFAULT '0.00',
  `day_key` int(11) NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `channel_id` (`channel_id`,`day_key`) USING BTREE,
  KEY `chan_data_android_t_channel_id` (`channel_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table channels3.chan_data_android_t: ~0 rows (大约)
/*!40000 ALTER TABLE `chan_data_android_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `chan_data_android_t` ENABLE KEYS */;

-- Dumping structure for table channels3.chan_data_ios_t
CREATE TABLE IF NOT EXISTS `chan_data_ios_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id` int(11) NOT NULL,
  `water` decimal(18,2) NOT NULL DEFAULT '0.00',
  `new_water` decimal(18,2) NOT NULL DEFAULT '0.00',
  `reg` bigint(20) NOT NULL DEFAULT '0',
  `bind` bigint(20) NOT NULL DEFAULT '0',
  `pay_count` bigint(20) NOT NULL DEFAULT '0',
  `all_pay_num` bigint(20) NOT NULL DEFAULT '0',
  `new_pay_num` bigint(20) NOT NULL DEFAULT '0',
  `all_pay_money` decimal(18,2) NOT NULL DEFAULT '0.00',
  `new_pay_money` decimal(18,2) NOT NULL DEFAULT '0.00',
  `exchange_count` bigint(20) NOT NULL DEFAULT '0',
  `exchange_money` decimal(18,2) NOT NULL DEFAULT '0.00',
  `day_key` int(11) NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `channel_id` (`channel_id`,`day_key`) USING BTREE,
  KEY `chan_data_ios_t_channel_id` (`channel_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table channels3.chan_data_ios_t: ~0 rows (大约)
/*!40000 ALTER TABLE `chan_data_ios_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `chan_data_ios_t` ENABLE KEYS */;

-- Dumping structure for table channels3.chan_data_t
CREATE TABLE IF NOT EXISTS `chan_data_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id` int(11) NOT NULL,
  `water` decimal(18,2) NOT NULL DEFAULT '0.00',
  `new_water` decimal(18,2) NOT NULL DEFAULT '0.00',
  `reg` bigint(20) NOT NULL DEFAULT '0',
  `bind` bigint(20) NOT NULL DEFAULT '0',
  `pay_count` bigint(20) NOT NULL DEFAULT '0',
  `all_pay_num` bigint(20) NOT NULL DEFAULT '0',
  `new_pay_num` bigint(20) NOT NULL DEFAULT '0',
  `all_pay_money` decimal(18,2) NOT NULL DEFAULT '0.00',
  `new_pay_money` decimal(18,2) NOT NULL DEFAULT '0.00',
  `exchange_count` bigint(20) NOT NULL DEFAULT '0',
  `exchange_money` decimal(18,2) NOT NULL DEFAULT '0.00',
  `day_key` int(11) NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `channel_id` (`channel_id`,`day_key`) USING BTREE,
  KEY `chan_data_t_channel_id` (`channel_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table channels3.chan_data_t: ~0 rows (大约)
/*!40000 ALTER TABLE `chan_data_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `chan_data_t` ENABLE KEYS */;

-- Dumping structure for table channels3.chan_money_his_t
CREATE TABLE IF NOT EXISTS `chan_money_his_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `money_user_id` int(11) NOT NULL,
  `water` decimal(18,2) NOT NULL DEFAULT '0.00',
  `new_water` decimal(18,2) NOT NULL DEFAULT '0.00',
  `percent` int(11) NOT NULL DEFAULT '0',
  `money` decimal(18,2) NOT NULL DEFAULT '0.00',
  `day_key` int(11) NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `chan_money_his_t_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table channels3.chan_money_his_t: ~0 rows (大约)
/*!40000 ALTER TABLE `chan_money_his_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `chan_money_his_t` ENABLE KEYS */;

-- Dumping structure for table channels3.chan_settle2_t
CREATE TABLE IF NOT EXISTS `chan_settle2_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `money` decimal(18,2) NOT NULL DEFAULT '0.00',
  `real_money` decimal(18,2) NOT NULL DEFAULT '0.00',
  `account` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bank_code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `check_user_id` int(11) NOT NULL DEFAULT '0',
  `check_time` bigint(20) NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL DEFAULT '0',
  `send_time` bigint(20) NOT NULL DEFAULT '0',
  `order_id` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `device_id` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `device_type` tinyint(4) NOT NULL DEFAULT '0',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `order_id` (`order_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table channels3.chan_settle2_t: ~0 rows (大约)
/*!40000 ALTER TABLE `chan_settle2_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `chan_settle2_t` ENABLE KEYS */;

-- Dumping structure for table channels3.config_t
CREATE TABLE IF NOT EXISTS `config_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `key` (`key`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table channels3.config_t: ~0 rows (大约)
/*!40000 ALTER TABLE `config_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_t` ENABLE KEYS */;

-- Dumping structure for table channels3.consume_statistics_t
CREATE TABLE IF NOT EXISTS `consume_statistics_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id` int(11) NOT NULL,
  `z_j_h` decimal(18,2) NOT NULL DEFAULT '0.00',
  `b_r_n_n` decimal(18,2) NOT NULL DEFAULT '0.00',
  `q_z_n_n` decimal(18,2) NOT NULL DEFAULT '0.00',
  `d_d_z` decimal(18,2) NOT NULL DEFAULT '0.00',
  `rb` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dt` decimal(18,2) NOT NULL DEFAULT '0.00',
  `benz` decimal(18,2) NOT NULL DEFAULT '0.00',
  `fish` decimal(18,2) NOT NULL DEFAULT '0.00',
  `baccarat` decimal(18,2) NOT NULL DEFAULT '0.00',
  `day_key` int(11) NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `channel_id` (`channel_id`,`day_key`) USING BTREE,
  KEY `consume_statistics_t_channel_id` (`channel_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table channels3.consume_statistics_t: ~0 rows (大约)
/*!40000 ALTER TABLE `consume_statistics_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `consume_statistics_t` ENABLE KEYS */;

-- Dumping structure for table channels3.keep_android_t
CREATE TABLE IF NOT EXISTS `keep_android_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id` int(11) NOT NULL,
  `login_num` bigint(20) NOT NULL DEFAULT '0',
  `old_login_num` bigint(20) NOT NULL DEFAULT '0',
  `new_user` bigint(20) NOT NULL DEFAULT '0',
  `keep1` bigint(20) NOT NULL DEFAULT '0',
  `keep3` bigint(20) NOT NULL DEFAULT '0',
  `keep7` bigint(20) NOT NULL DEFAULT '0',
  `keep15` bigint(20) NOT NULL DEFAULT '0',
  `keep30` bigint(20) NOT NULL DEFAULT '0',
  `reg1` bigint(20) NOT NULL DEFAULT '0',
  `reg3` bigint(20) NOT NULL DEFAULT '0',
  `reg7` bigint(20) NOT NULL DEFAULT '0',
  `reg15` bigint(20) NOT NULL DEFAULT '0',
  `reg30` bigint(20) NOT NULL DEFAULT '0',
  `day_key` int(11) NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `channel_id` (`channel_id`,`day_key`) USING BTREE,
  KEY `keep_android_t_channel_id` (`channel_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table channels3.keep_android_t: ~0 rows (大约)
/*!40000 ALTER TABLE `keep_android_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `keep_android_t` ENABLE KEYS */;

-- Dumping structure for table channels3.keep_ios_t
CREATE TABLE IF NOT EXISTS `keep_ios_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id` int(11) NOT NULL,
  `login_num` bigint(20) NOT NULL DEFAULT '0',
  `old_login_num` bigint(20) NOT NULL DEFAULT '0',
  `new_user` bigint(20) NOT NULL DEFAULT '0',
  `keep1` bigint(20) NOT NULL DEFAULT '0',
  `keep3` bigint(20) NOT NULL DEFAULT '0',
  `keep7` bigint(20) NOT NULL DEFAULT '0',
  `keep15` bigint(20) NOT NULL DEFAULT '0',
  `keep30` bigint(20) NOT NULL DEFAULT '0',
  `reg1` bigint(20) NOT NULL DEFAULT '0',
  `reg3` bigint(20) NOT NULL DEFAULT '0',
  `reg7` bigint(20) NOT NULL DEFAULT '0',
  `reg15` bigint(20) NOT NULL DEFAULT '0',
  `reg30` bigint(20) NOT NULL DEFAULT '0',
  `day_key` int(11) NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `channel_id` (`channel_id`,`day_key`) USING BTREE,
  KEY `keep_ios_t_channel_id` (`channel_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table channels3.keep_ios_t: ~0 rows (大约)
/*!40000 ALTER TABLE `keep_ios_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `keep_ios_t` ENABLE KEYS */;

-- Dumping structure for table channels3.keep_t
CREATE TABLE IF NOT EXISTS `keep_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id` int(11) NOT NULL,
  `login_num` bigint(20) NOT NULL DEFAULT '0',
  `old_login_num` bigint(20) NOT NULL DEFAULT '0',
  `new_user` bigint(20) NOT NULL DEFAULT '0',
  `keep1` bigint(20) NOT NULL DEFAULT '0',
  `keep3` bigint(20) NOT NULL DEFAULT '0',
  `keep7` bigint(20) NOT NULL DEFAULT '0',
  `keep15` bigint(20) NOT NULL DEFAULT '0',
  `keep30` bigint(20) NOT NULL DEFAULT '0',
  `reg1` bigint(20) NOT NULL DEFAULT '0',
  `reg3` bigint(20) NOT NULL DEFAULT '0',
  `reg7` bigint(20) NOT NULL DEFAULT '0',
  `reg15` bigint(20) NOT NULL DEFAULT '0',
  `reg30` bigint(20) NOT NULL DEFAULT '0',
  `day_key` int(11) NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `channel_id` (`channel_id`,`day_key`) USING BTREE,
  KEY `keep_t_channel_id` (`channel_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table channels3.keep_t: ~0 rows (大约)
/*!40000 ALTER TABLE `keep_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `keep_t` ENABLE KEYS */;

-- Dumping structure for table channels3.login_time_t
CREATE TABLE IF NOT EXISTS `login_time_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ip` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table channels3.login_time_t: ~0 rows (大约)
/*!40000 ALTER TABLE `login_time_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_time_t` ENABLE KEYS */;

-- Dumping structure for table channels3.log_t
CREATE TABLE IF NOT EXISTS `log_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` tinyint(4) NOT NULL DEFAULT '4',
  `user_id` int(11) NOT NULL,
  `context` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table channels3.log_t: ~0 rows (大约)
/*!40000 ALTER TABLE `log_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_t` ENABLE KEYS */;

-- Dumping structure for table channels3.message_t
CREATE TABLE IF NOT EXISTS `message_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL DEFAULT '0',
  `text` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `author_id` int(11) NOT NULL,
  `time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table channels3.message_t: ~0 rows (大约)
/*!40000 ALTER TABLE `message_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `message_t` ENABLE KEYS */;

-- Dumping structure for table channels3.notice_t
CREATE TABLE IF NOT EXISTS `notice_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `context` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` bigint(20) NOT NULL DEFAULT '0',
  `end_time` bigint(20) NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table channels3.notice_t: ~0 rows (大约)
/*!40000 ALTER TABLE `notice_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `notice_t` ENABLE KEYS */;

-- Dumping structure for table channels3.show_role_t
CREATE TABLE IF NOT EXISTS `show_role_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `item` (`item`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table channels3.show_role_t: ~0 rows (大约)
/*!40000 ALTER TABLE `show_role_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `show_role_t` ENABLE KEYS */;

-- Dumping structure for table channels3.user_extend_t
CREATE TABLE IF NOT EXISTS `user_extend_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `percent` int(11) NOT NULL DEFAULT '0',
  `alipay` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `money` decimal(18,2) NOT NULL DEFAULT '0.00',
  `sum_money` decimal(18,2) NOT NULL DEFAULT '0.00',
  `otp_secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `open_wallet` tinyint(1) NOT NULL DEFAULT '1',
  `open_exchange` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table channels3.user_extend_t: ~0 rows (大约)
/*!40000 ALTER TABLE `user_extend_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_extend_t` ENABLE KEYS */;

-- Dumping structure for table channels3.user_money_his_t
CREATE TABLE IF NOT EXISTS `user_money_his_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `old` decimal(18,2) NOT NULL DEFAULT '0.00',
  `money` decimal(18,2) NOT NULL DEFAULT '0.00',
  `new` decimal(18,2) NOT NULL DEFAULT '0.00',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table channels3.user_money_his_t: ~0 rows (大约)
/*!40000 ALTER TABLE `user_money_his_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_money_his_t` ENABLE KEYS */;

-- Dumping structure for table channels3.user_role_t
CREATE TABLE IF NOT EXISTS `user_role_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `open` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `item_id` (`item_id`,`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table channels3.user_role_t: ~0 rows (大约)
/*!40000 ALTER TABLE `user_role_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_role_t` ENABLE KEYS */;

-- Dumping structure for table channels3.user_t
CREATE TABLE IF NOT EXISTS `user_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `role` int(11) NOT NULL DEFAULT '0',
  `code` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `token` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_info_id` int(11) DEFAULT NULL,
  `extend_id` int(11) DEFAULT NULL,
  `open_down` tinyint(1) NOT NULL DEFAULT '1',
  `chan_num` int(11) NOT NULL DEFAULT '0',
  `links` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `last_login` bigint(20) NOT NULL DEFAULT '0',
  `last_ip` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `account` (`account`) USING BTREE,
  UNIQUE KEY `user_name` (`user_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table channels3.user_t: ~0 rows (大约)
/*!40000 ALTER TABLE `user_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_t` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
