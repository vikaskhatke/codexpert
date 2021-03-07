-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2021 at 04:10 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codexpert`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_name` varchar(255) NOT NULL,
  `categories_description` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_name`, `categories_description`, `created`) VALUES
(1, 'javascript', 'JavaScript, often abbreviated as JS, is a programming language that conforms to the ECMAScript specification. JavaScript is high-level, often just-in-time compiled, and multi-paradigm.', '2020-10-19 11:43:42'),
(2, 'java', 'Java is a class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible.', '2020-10-19 11:43:42'),
(3, 'python', 'Python is an interpreted, high-level and general-purpose programming language. Created by Guido van Rossum and first released in 1991, ', '2020-10-19 11:44:33'),
(4, 'React', 'React is an open-source, front end, JavaScript library for building user interfaces or UI components.', '2021-01-23 11:42:48'),
(5, 'Angular', 'Angular is a platform for building mobile and desktop web applications. Join the community of millions of developers who build compelling user interfaces', '2021-02-23 20:50:51'),
(6, 'Vue.js', 'Vue.js is an open-source model–view–viewmodel front end JavaScript framework for building user interfaces and single-page applications.', '2021-02-23 20:52:51');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(8) NOT NULL,
  `comment_content` text NOT NULL,
  `thread_id` int(8) NOT NULL,
  `comment_by` int(8) NOT NULL,
  `comment_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_content`, `thread_id`, `comment_by`, `comment_time`) VALUES
(1, 'this is new comment .', 1, 1, '2020-10-29 11:54:36'),
(2, 'Hello this is vikas.', 2, 3, '2020-10-29 17:07:42'),
(3, 'asas', 0, 3, '2020-10-29 17:16:02'),
(4, '', 2, 3, '2020-10-29 17:16:42'),
(5, '', 4, 4, '2020-10-29 17:16:49'),
(6, 'sumbody please fix this', 4, 0, '2020-10-29 17:17:20'),
(7, 'adada', 4, 0, '2020-10-29 17:17:46'),
(8, 'asdasda', 4, 0, '2020-10-29 17:18:18'),
(9, 'asdasda', 4, 0, '2020-10-29 17:18:52'),
(10, 'asdasda', 2, 0, '2020-10-29 17:21:00'),
(11, 'asadd', 2, 0, '2020-10-29 17:21:03'),
(12, '', 2, 0, '2020-10-29 17:21:19'),
(13, 'hey brother\r\n', 22, 0, '2021-01-22 13:12:14'),
(14, 'hey bro\r\n', 23, 0, '2021-01-23 11:59:46'),
(15, '', 6, 0, '2021-02-10 20:23:22'),
(16, '', 6, 0, '2021-02-10 23:33:26'),
(17, 'hey\r\n', 23, 0, '2021-02-14 21:59:36'),
(18, 'hey please answer the below quetion', 25, 0, '2021-02-15 13:35:32'),
(19, 'can I second quetion.', 25, 0, '2021-02-15 13:35:50'),
(20, 'can I second quetion.', 25, 0, '2021-02-15 13:56:34'),
(21, 'bye', 26, 0, '2021-02-15 14:00:51'),
(22, 'bye', 26, 0, '2021-02-15 14:01:17'),
(23, 'internship', 23, 0, '2021-02-15 14:01:54'),
(24, 'internship', 23, 0, '2021-02-15 14:05:00'),
(25, 'internship', 23, 0, '2021-02-15 14:12:36'),
(26, 'vikas', 7, 13, '2021-02-15 14:16:11'),
(27, 'crop and lasso tool', 28, 13, '2021-02-15 14:19:55'),
(28, 'hey', 6, 13, '2021-02-15 17:45:51'),
(29, '<script>\r\n {\r\n  alert(\"Hello\nHow are you?\");\r\n}\r\n</script>\r\n', 6, 13, '2021-02-15 17:58:12'),
(30, '<script>\r\n {\r\n  alert(\"Hello\nHow are you?\");\r\n}\r\n</script>\r\n', 6, 13, '2021-02-15 17:58:22'),
(31, '<script>\r\n\r\n  alert(\"Hello\nHow are you?\");\r\n\r\n</script>\r\n', 6, 13, '2021-02-15 17:58:41'),
(32, '<script>\r\n  alert(\"HelloHow are you?\");\r\n\r\n</script>\r\n', 6, 13, '2021-02-15 18:01:40'),
(33, '&ltscript&gt\r\n  alert(\"Hello\nHow are you?\");\r\n\r\n&lt/script&gt\r\n', 6, 13, '2021-02-15 18:03:42'),
(34, '', 6, 13, '2021-02-15 18:03:53'),
(35, 'vikas', 31, 13, '2021-02-15 19:31:17'),
(36, 'dareba\r\n', 23, 15, '2021-02-19 19:36:59'),
(37, 'dareba\r\n', 23, 15, '2021-02-19 19:39:43'),
(38, 'dareba\r\n', 23, 15, '2021-02-19 19:39:53'),
(39, 'dareba\r\n', 23, 15, '2021-02-19 19:40:59'),
(40, 'hey ', 23, 15, '2021-02-19 20:31:51'),
(41, 'please write the below query.', 33, 11, '2021-02-27 11:44:42'),
(42, 'This is peer to peer forum for sharing the knowledge with each other. No Spam / Advertising / Self-promote in the forums. ... Do not post copyright-infringing material. ... Do not post “offensive” posts, links or images. ... Do not cross post questions. ... Do not PM users asking for help. ... Remain respectful of other members at all times.', 2, 13, '2021-03-03 12:02:41'),
(43, 'This is peer to peer forum for sharing the knowledge with each other. No Spam / Advertising / Self-promote in the forums. ... Do not post copyright-infringing material. ... Do not post “offensive” posts, links or images. ... Do not cross post questions. ... Do not PM users asking for help. ... Remain respectful of other members at all times.', 2, 13, '2021-03-03 12:02:58'),
(44, 'go python.org', 1, 13, '2021-03-04 21:50:54'),
(45, 'go python.org', 1, 13, '2021-03-04 21:51:01');

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `thread_id` int(11) NOT NULL,
  `thread_title` varchar(255) NOT NULL,
  `thread_desc` text NOT NULL,
  `thread_cat_id` int(7) NOT NULL,
  `thread_user_id` int(7) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`thread_id`, `thread_title`, `thread_desc`, `thread_cat_id`, `thread_user_id`, `timestamp`) VALUES
(1, 'unnable to install pyaudio.', 'i am notable to install pyaudio on windows.', 3, 2, '2020-10-20 08:28:17'),
(2, 'unable to see my css file in js.', 'how to connect the css files to html documnent', 1, 3, '2020-10-20 08:29:39'),
(3, 'hey bro', 'lie my comment', 3, 6, '2020-10-23 07:12:37'),
(4, 'adasa', 'adaa', 1, 7, '2020-10-23 07:32:16'),
(5, 'adasa', 'adda', 1, 9, '2020-10-23 07:32:20'),
(6, 'hey brro', 'look at this\r\n', 1, 5, '2020-10-23 07:32:37'),
(7, 'Unable to install win', 'Please help to install win', 1, 9, '2020-10-29 11:04:57'),
(8, '', '', 1, 8, '2020-10-29 11:08:03'),
(9, 'width change', 'How can we change the height and width? ', 1, 2, '2020-10-29 11:09:28'),
(10, '', '', 1, 5, '2020-10-29 11:09:33'),
(11, '', '', 1, 0, '2020-10-29 11:37:03'),
(12, 'read to show', 'hello all are laughing', 1, 0, '2020-10-29 16:51:51'),
(13, '', '', 1, 0, '2020-10-29 16:52:48'),
(14, '', '', 1, 0, '2020-10-29 16:52:55'),
(15, '', '', 1, 0, '2020-10-29 16:52:58'),
(16, '', '', 1, 0, '2020-10-29 16:54:19'),
(17, '', '', 3, 0, '2020-10-29 16:56:45'),
(18, '', '', 1, 0, '2020-10-29 17:01:48'),
(19, '', '', 1, 0, '2020-10-29 17:03:33'),
(20, 'adasa', '', 1, 0, '2020-10-29 17:03:39'),
(21, '', '', 1, 0, '2021-01-22 13:04:36'),
(22, 'hey please help', '', 3, 0, '2021-01-22 13:11:56'),
(23, 'intern', 'vikas', 2, 0, '2021-01-23 11:59:12'),
(24, 'Why react is used for the front end', '', 4, 0, '2021-01-25 13:10:23'),
(25, 'my interview', 'what is java', 2, 0, '2021-02-15 13:35:08'),
(26, 'about the job', 'kindly help the interview quetion.', 3, 0, '2021-02-15 13:58:54'),
(27, 'intern', 'adsaadasa', 1, 13, '2021-02-15 14:15:46'),
(28, 'photoshop', 'learn photoshop', 2, 13, '2021-02-15 14:17:57'),
(29, 'hey please help', 'please help to find solution.', 3, 13, '2021-02-15 14:54:09'),
(30, 'hey please help', 'please help to find solution.', 3, 13, '2021-02-15 15:18:03'),
(31, 'hey please help', '$th_desc', 4, 13, '2021-02-15 18:08:04'),
(32, 'hey please help', 'dada', 2, 15, '2021-02-19 20:34:32'),
(33, 'help for SQL', 'how to create the database table', 1, 13, '2021-02-27 11:43:13'),
(34, 'Moutain holidays', 'This is peer to peer forum for sharing the knowledge with each other. No Spam / Advertising / Self-promote in the forums. ... Do not post copyright-infringing material. ... Do not post “offensive” posts, links or images. ... Do not cross post questions. ... Do not PM users asking for help. ... Remain respectful of other members at all times.', 2, 11, '2021-03-03 09:53:56'),
(35, 'Moutain holidays', 'This is peer to peer forum for sharing the knowledge with each other. No Spam / Advertising / Self-promote in the forums. ... Do not post copyright-infringing material. ... Do not post “offensive” posts, links or images. ... Do not cross post questions. ... Do not PM users asking for help. ... Remain respectful of other members at all times.', 2, 11, '2021-03-03 09:55:02'),
(36, 'Moutain holidays', 'This is peer to peer forum for sharing the knowledge with each other. No Spam / Advertising / Self-promote in the forums. ... Do not post copyright-infringing material. ... Do not post “offensive” posts, links or images. ... Do not cross post questions. ... Do not PM users asking for help. ... Remain respectful of other members at all times.', 2, 11, '2021-03-03 09:55:25'),
(37, 'Moutain holidays', 'This is peer to peer forum for sharing the knowledge with each other. No Spam / Advertising / Self-promote in the forums. ... Do not post copyright-infringing material. ... Do not post “offensive” posts, links or images. ... Do not cross post questions. ... Do not PM users asking for help. ... Remain respectful of other members at all times.', 2, 11, '2021-03-03 09:55:40'),
(38, 'Moutain holidays', 'This is peer to peer forum for sharing the knowledge with each other. No Spam / Advertising / Self-promote in the forums. ... Do not post copyright-infringing material. ... Do not post “offensive” posts, links or images. ... Do not cross post questions. ... Do not PM users asking for help. ... Remain respectful of other members at all times.', 2, 11, '2021-03-03 09:55:53'),
(39, 'synonems', 'The best 23 synonyms for forum, including: panel, mass meeting, gathering, medium, conference, tribunal, discussion, court, marketplace, assembly, ', 2, 11, '2021-03-03 09:57:28'),
(40, 'synonems', 'The best 23 synonyms for forum, including: panel, mass meeting, gathering, medium, conference, tribunal, discussion, court, marketplace, assembly, ', 2, 11, '2021-03-03 09:57:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(8) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `user_email`, `user_pass`, `timestamp`) VALUES
(1, 'vikas@gmail.com', '1', '2020-10-30 06:57:26'),
(3, 'hello@gmail.com', '$2y$10$3mT23JNIo.zgwznzifH8E.sENC69rj.Ij1Y1lIVvPTIB7yhDRyZdO', '2020-10-30 07:31:09'),
(4, 'vikas@vikas.com', '$2y$10$Y1SuSQNbWlp748fr03.z2OS9adGp80.16iJovnuKn6WrQ/P.Og2Za', '2020-10-30 07:38:15'),
(5, 'hey@hey.com', '$2y$10$PtP2IDHs6eRNiKdo/C6JmOmmlFgxs/4UKb18oiwzbcHUQezhj7/YS', '2020-10-30 07:46:18'),
(6, 'fevi@gmail.com', '$2y$10$zduEXphV9odUZGqPj5bcnOV3cMtQulPTFMsdVpHH1zxJ9glKvziOq', '2020-11-01 14:03:43'),
(7, '$user_email', '$hash', '2021-01-27 13:59:53'),
(8, 'vikaskhatke@gmail.com', '$2y$10$tIiBDT/mWiz2Xde/HUeZteAx/JnpT/IpISNAOb6c7Z7uXKWfrhfxW', '2021-01-30 23:28:46'),
(9, 'akash@akash', '$2y$10$gqnB5W870vbFvb2PTEHiDuXzOerwRQSfSCfIKoGZv.MIa/YIWDXa6', '2021-02-01 12:40:39'),
(10, 'baba@baba.com', '$2y$10$6etrHpd5CbrxBYkf.fhTZ.vulerLVm2VzOw2zE05KZB9Gj7ok1TM6', '2021-02-01 13:29:44'),
(11, 'a@a.com', '$2y$10$ieMZO41XQKEjhPQ0ZEyFtODIzt0IEd2oHyGpKA6nLGDwSjLvd0GvG', '2021-02-13 11:45:24'),
(12, 'q@q.co', '$2y$10$XzPHVsPZdfI.e3x3NyQxa.rNGBZcmO91.zcso8Jsyf8GnF2Tqa3Fq', '2021-02-14 20:34:16'),
(13, 'f@f.com', '$2y$10$p0diInMz6KVutwDx7PPXC.t0HnV1lEb1JP5EoqFMZz89boNoqejiq', '2021-02-14 20:55:47'),
(14, 'vikaskhatke1@gmail.com', '$2y$10$J1dMVOTqFoX0TaicbUv7J.FW08jbe/yXuISLskv6Xhpc/XBbJ/gYa', '2021-02-15 13:34:31'),
(15, 'dareba@d.com', '$2y$10$cH5ewd6EQXdp.FhcLEqgQO1wC9/FYytj/byzm2RVik0yivgerFHYa', '2021-02-19 19:34:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`thread_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `thread_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
