-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-10-24 15:41:09
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cauth`
--

-- --------------------------------------------------------

--
-- 表的结构 `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `openid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `books`
--

INSERT INTO `books` (`id`, `isbn`, `title`, `image`, `alt`, `publisher`, `summary`, `price`, `openid`, `rate`, `tags`, `author`, `count`) VALUES
(1, '9787115437303', '深入React技术栈', 'https://img3.doubanio.com/view/subject/m/public/s29162154.jpg', 'https://book.douban.com/subject/26918038/', '人民邮电出版社', '全面讲述React技术栈的第一本原创图书，pure render专栏主创倾力打造\n覆盖React、Flux、Redux及可视化，帮助开发者在实践中深入理解技术和源码\n前端组件化主流解决方案，一本书玩转', 'CNY 79.00', 'oYm780DIyHAPajdSmkwG-x4D7txY', '8.3', 'React 132,Web前端 66,JavaScript 57,前端 31,前端开发 24,Web开发 21,编程 19,技术 17', '陈屹', 0),
(2, '9787121331565', 'Vue移动开发实战技巧', 'https://img3.doubanio.com/view/subject/m/public/s29662615.jpg', 'https://book.douban.com/subject/27662351/', '电子工业出版社', '内容简介\nVue.js是一个渐进式的JavaScript 框架，与其他重量级框架不同的是，Vue 采用自底向上增量开发的设计。Vue 的核心库只关注视图层，它不仅易于上手，还便于与第三方库或既有项目整', '58', 'oYm780DIyHAPajdSmkwG-x4D7txY', '0.0', 'Vue 6,前端 5,移动 3,开发 3,软件开发 1,互联网 1,Vue.js 1', '李利德', 5),
(3, '9787010009230', '毛泽东选集 第二卷', 'https://img1.doubanio.com/view/subject/m/public/s23005817.jpg', 'https://book.douban.com/subject/1125026/', '人民出版社', '这部选集，包括了毛泽东同志在中国革命各个时期中的重要著作。几年前各地方曾经出过几种不同版本的《毛泽东选集》，都是没有经过著者审查的，体例颇为杂乱，文字亦有错讹，有些重要的著作又没有收进去。现在的这部选', '23.00元', 'oYm780DIyHAPajdSmkwG-x4D7txY', '9.1', '毛泽东 352,政治 207,毛泽东选集 206,哲学 157,革命 93,马克思主义 81,历史 80,政经战略 74', '毛泽东', 3),
(4, '9787121139512', '浪潮之巅', 'https://img3.doubanio.com/view/subject/m/public/s6807265.jpg', 'https://book.douban.com/subject/6709783/', '电子工业出版社', '近一百多年来，总有一些公司很幸运地、有意识或无意识地站在技术革命的浪尖之上。在这十几年间，它们代表着科技的浪潮，直到下一波浪潮的来临。\n从一百年前算起，AT&T 公司、IBM 公司、苹果公司、英特尔公', '55.00元', 'oYm780DIyHAPajdSmkwG-x4D7txY', '9.1', '互联网 12304,IT 9041,商业 6411,计算机 4594,浪潮之巅 4554,历史 3672,管理 1811,投资 1496', '吴军', 7),
(5, '9787115351531', '图解HTTP', 'https://img3.doubanio.com/view/subject/m/public/s27283822.jpg', 'https://book.douban.com/subject/25863515/', '人民邮电出版社', '本书对互联网基盘——HTTP协议进行了全面系统的介绍。作者由HTTP协议的发展历史娓娓道来，严谨细致地剖析了HTTP协议的结构，列举诸多常见通信场景及实战案例，最后延伸到Web安全、最新技术动向等方面', '49.00元', 'oYm780DIyHAPajdSmkwG-x4D7txY', '8.1', 'HTTP 1147,网络 543,计算机 492,协议 332,互联网 299,web 201,Web 201,网络编程 167', '【日】上野宣', 2);

-- --------------------------------------------------------

--
-- 表的结构 `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) NOT NULL,
  `comment` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `openid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bookid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `csessioninfo`
--

CREATE TABLE IF NOT EXISTS `csessioninfo` (
  `open_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uuid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skey` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_visit_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `session_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_info` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`open_id`),
  KEY `openid` (`open_id`) USING BTREE,
  KEY `skey` (`skey`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会话管理用户信息';

--
-- 转存表中的数据 `csessioninfo`
--

INSERT INTO `csessioninfo` (`open_id`, `uuid`, `skey`, `create_time`, `last_visit_time`, `session_key`, `user_info`) VALUES
('oYm780DIyHAPajdSmkwG-x4D7txY', 'f127a3d1-5a29-4fad-ab03-a933cb46f1fa', 'c453cbfe93f58fe0f5cf04d98d8b7b3f28b75a15', '2018-10-09 07:48:27', '2018-10-10 07:02:27', 'zYz9FBcpv8ZfEdDA+i67Aw==', '{"openId":"oYm780DIyHAPajdSmkwG-x4D7txY","nickName":"肖","gender":1,"language":"zh_TW","city":"Changping","province":"Beijing","country":"China","avatarUrl":"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epynyoSbL6fVcico2jvAT38pChgrXiawNmMvIDvRPsP5kjUa3P7147h2qxaXIdSEk3sylJiaEwWZpvKg/132","watermark":{"timestamp":1539071306,"appid":"wx2e74405674c01fba"}}');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
