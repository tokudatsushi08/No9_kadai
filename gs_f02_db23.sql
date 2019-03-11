-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 04, 2019 at 01:58 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gs_f02_db23`
--
CREATE DATABASE IF NOT EXISTS `gs_f02_db23` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `gs_f02_db23`;

-- --------------------------------------------------------

--
-- Table structure for table `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `name`, `url`, `comment`, `indate`) VALUES
(1, '佐賀のがばいばあちゃん', 'http://gabaibatyan', 'めっちゃ面白い！', '2019-02-02 17:43:48'),
(2, 'ssssss', 'ddddd', 'fffffffff', '2019-02-02 17:56:57'),
(3, 'ssssss', 'ddddd', 'fffffffff', '2019-02-02 17:57:00'),
(4, 'ssssss', 'ddddd', 'fffffffff', '2019-02-02 17:57:02'),
(5, 'ssssss', 'ddddd', 'fffffffff', '2019-02-02 18:00:21'),
(6, 'ssssss', 'ddddd', 'fffffffff', '2019-02-02 18:00:24'),
(7, 'ssssss', 'ddddd', 'fffffffff', '2019-02-02 18:02:19'),
(8, 'ssssss', 'ddddd', 'fffffffff', '2019-02-02 18:02:22'),
(9, 'ssssss', 'ddddd', 'fffffffff', '2019-02-02 18:03:07'),
(10, 'ssssss', 'ddddd', 'fffffffff', '2019-02-02 18:03:09'),
(11, 'ssssss', 'ddddd', 'fffffffff', '2019-02-02 18:03:12'),
(12, 'oeskfkaj', 'sofklkf;e', 'sa;dfkl;kef', '2019-02-02 18:06:42'),
(13, 'oeskfkaj', 'sofklkf;e', 'sa;dfkl;kef', '2019-02-02 18:08:13'),
(14, 'oeskfkaj', 'sofklkf;e', 'sa;dfkl;kef', '2019-02-02 18:10:11'),
(15, 'oeskfkaj', 'sofklkf;e', 'sa;dfkl;kef', '2019-02-02 18:10:14'),
(16, 'サラダ記念日', 'http://sarada', 'あなたが好きといったから、毎日サラダ記念日。。。', '2019-02-02 18:15:56'),
(17, '佐賀のがばいばあちゃん', 'saga.http', '面白かったよ！', '2019-02-04 22:55:11'),
(18, '佐賀のがばいばあちゃん', 'saga.http', '面白かったよ！', '2019-02-04 22:55:14');

-- --------------------------------------------------------

--
-- Table structure for table `php02_table`
--

CREATE TABLE `php02_table` (
  `id` int(12) NOT NULL,
  `task` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `php02_table`
--

INSERT INTO `php02_table` (`id`, `task`, `deadline`, `comment`, `indate`) VALUES
(1, '課題', '2019-02-07', '難しい！', '2019-02-02 15:19:21'),
(2, '課題その２', '2019-02-14', 'やっぱ難しい！', '2019-02-02 15:21:24'),
(3, '課題その３', '2019-02-21', 'あれ？簡単？', '2019-02-02 15:23:52'),
(4, '課題その４', '2019-02-28', '難しい・・・', '2019-02-02 15:25:43'),
(5, '課題その５', '2019-03-01', '難しいかよ！', '2019-02-02 15:26:51'),
(6, '課題その6', '2019-03-08', '難しいかよ！', '2019-02-02 15:27:11'),
(7, '課題その7', '2019-03-08', '難しいかよ！', '2019-02-02 15:27:44'),
(8, '課題その8', '2019-03-25', '難しいかよ！', '2019-02-02 15:28:09'),
(9, '課題その9', '2019-03-31', '難しいかよ！', '2019-02-02 15:28:28'),
(10, '課題その10', '2019-04-03', '難しいかよ！', '2019-02-02 15:28:52'),
(11, 'sss', '2019-02-12', 'ssss', '2019-02-02 16:33:19'),
(12, 'sss', '2019-02-12', 'ssss', '2019-02-02 16:33:25'),
(13, 'sss', '2019-02-12', 'ssss', '2019-02-02 16:33:36'),
(14, 'phpをやるよ！', '2019-02-21', '難しいけ', '2019-02-02 16:36:01'),
(15, 'phpをやるよ！', '2019-02-21', '難しいけ', '2019-02-02 16:57:38'),
(16, 'ssss', '2019-02-13', 'ssss', '2019-02-02 16:59:31'),
(17, 'ssss', '2019-02-13', 'ssss', '2019-02-02 16:59:34'),
(18, 'ddddd', '2019-02-07', 'ssssss', '2019-02-02 17:02:16'),
(19, 'ddddd', '2019-02-07', 'ssssss', '2019-02-02 17:02:21'),
(20, 'ddddd', '2019-02-07', 'ssssss', '2019-02-02 17:10:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `php02_table`
--
ALTER TABLE `php02_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `php02_table`
--
ALTER TABLE `php02_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
