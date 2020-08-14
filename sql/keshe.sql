-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: 2020-08-14 16:52:42
-- 服务器版本： 5.6.44-log
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `keshe`
--

-- --------------------------------------------------------

--
-- 表的结构 `administrator`
--

CREATE TABLE IF NOT EXISTS `administrator` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `psd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `administrator`
--

INSERT INTO `administrator` (`id`, `name`, `psd`) VALUES
(1, '01', '01'),
(2, '02', '02'),
(3, '03', '03');

-- --------------------------------------------------------

--
-- 表的结构 `jscore`
--

CREATE TABLE IF NOT EXISTS `jscore` (
  `id` int(11) NOT NULL,
  `tname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kecheng` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `one` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `two` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `three` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `four` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `five` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `jscore`
--

INSERT INTO `jscore` (`id`, `tname`, `kecheng`, `one`, `two`, `three`, `four`, `five`) VALUES
(1, '011', '英语', '20', '20', '20', '20', '20'),
(2, '011', '英语', '20', '20', '20', '20', '20'),
(3, '011', '英语', '5', '5', '5', '5', '5');

-- --------------------------------------------------------

--
-- 表的结构 `score`
--

CREATE TABLE IF NOT EXISTS `score` (
  `id` int(11) NOT NULL,
  `tname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kecheng` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tscore` int(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `score`
--

INSERT INTO `score` (`id`, `tname`, `kecheng`, `tscore`) VALUES
(1, '011', '英语', 100),
(2, '011', '英语', 100),
(3, '011', '英语', 25);

-- --------------------------------------------------------

--
-- 表的结构 `sjscore`
--

CREATE TABLE IF NOT EXISTS `sjscore` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `xingming` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kecheng` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `one` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `two` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `three` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `four` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `five` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `score` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `sjscore`
--

INSERT INTO `sjscore` (`id`, `name`, `tname`, `xingming`, `kecheng`, `one`, `two`, `three`, `four`, `five`, `score`) VALUES
(1, '081', '011', '赵敏', '英语', '20', '20', '20', '20', '20', '100'),
(2, '081', '011', '赵敏', '英语', '20', '20', '20', '20', '20', '100'),
(3, '081', '011', '赵敏', '英语', '5', '5', '5', '5', '5', '25');

-- --------------------------------------------------------

--
-- 表的结构 `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `psd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `students`
--

INSERT INTO `students` (`id`, `name`, `psd`) VALUES
(1, '081', '01'),
(2, '082', '2'),
(3, '083', '3'),
(4, '084', '04'),
(5, '089', '89'),
(6, '085', '05');

-- --------------------------------------------------------

--
-- 表的结构 `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `psd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `psd`) VALUES
(1, '011', '1'),
(2, '012', '2'),
(3, '013', '3'),
(4, '014', '14'),
(5, '015', '15');

-- --------------------------------------------------------

--
-- 表的结构 `teacherke`
--

CREATE TABLE IF NOT EXISTS `teacherke` (
  `id` int(11) NOT NULL,
  `tname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `xingming` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kecheng` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `teacherke`
--

INSERT INTO `teacherke` (`id`, `tname`, `sname`, `xingming`, `kecheng`) VALUES
(1, '011', '081', '赵敏', '英语'),
(2, '011', '082', '赵敏', '英语'),
(3, '012', '081', '王刚', '数学'),
(4, '012', '083', '王刚', '数学'),
(5, '013', '081', '李阳', '物理');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `jscore`
--
ALTER TABLE `jscore`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sjscore`
--
ALTER TABLE `sjscore`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `teacherke`
--
ALTER TABLE `teacherke`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `jscore`
--
ALTER TABLE `jscore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `score`
--
ALTER TABLE `score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sjscore`
--
ALTER TABLE `sjscore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `teacherke`
--
ALTER TABLE `teacherke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
