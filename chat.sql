-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 06, 2018 at 03:24 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat_message`
--

CREATE TABLE `chat_message` (
  `chat_message_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `chat_message` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `chat_message`
--

INSERT INTO `chat_message` (`chat_message_id`, `to_user_id`, `from_user_id`, `chat_message`, `timestamp`, `status`) VALUES
(1, 1, 2, 'hii', '2018-09-25 20:37:07', 0),
(2, 2, 1, 'hello\n', '2018-09-25 20:40:54', 0),
(3, 2, 1, 'dads', '2018-09-25 20:41:07', 0),
(4, 2, 1, 'dfsfdsfds', '2018-09-25 20:41:08', 0),
(5, 2, 1, 'fdsdfsdf', '2018-09-25 20:41:11', 0),
(6, 2, 1, 'dfsdfs', '2018-09-25 20:41:13', 0),
(7, 2, 1, 'dsfdsdfs', '2018-09-25 20:41:15', 0),
(8, 1, 2, 'ddsdsfds', '2018-09-25 20:41:24', 0),
(9, 1, 2, '😜', '2018-09-25 20:49:24', 0),
(10, 2, 1, '😍', '2018-09-25 20:49:51', 0),
(11, 0, 2, '<br>\n<b>Warning</b>:  move_uploaded_file(upload/Screen Shot 2018-09-05 at 7.43.38 AM.png): failed to open stream: Permission denied in <b>/Applications/XAMPP/xamppfiles/htdocs/group chat awt/upload.php</b> on line <b>11</b><br>\n<br>\n<b>Warning</b>:  move_uploaded_file(): Unable to move \'/Applications/XAMPP/xamppfiles/temp/phpzez1yN\' to \'upload/Screen Shot 2018-09-05 at 7.43.38 AM.png\' in <b>/Applications/XAMPP/xamppfiles/htdocs/group chat awt/upload.php</b> on line <b>11</b><br>\n', '2018-09-25 21:00:14', 1),
(12, 1, 2, 'hiii', '2018-09-25 21:03:05', 0),
(13, 2, 1, '🙁😍😒😋😋😋😋', '2018-09-25 21:03:20', 0),
(14, 1, 2, 'hii \n\ni maffan', '2018-09-25 21:03:32', 0),
(15, 0, 3, 'hii', '2018-09-25 21:04:22', 1),
(16, 0, 2, 'hello', '2018-09-25 21:04:30', 1),
(17, 0, 3, 'whats app', '2018-09-25 21:04:49', 1),
(18, 0, 2, 'hii&nbsp;<div><br></div><div>i am peter</div>', '2018-09-25 21:08:39', 1),
(19, 0, 1, 'hii&nbsp;<div><br></div><div>i am john</div>', '2018-09-25 21:08:57', 1),
(20, 0, 3, 'hii&nbsp;<div>I am David</div>', '2018-09-25 21:09:21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `username`, `password`) VALUES
(1, 'johnsmith', '$2y$10$4REfvTZpxLgkAR/lKG9QiOkSdahOYIR3MeoGJAyiWmRkEFfjH3396'),
(2, 'peterParker', '$2y$10$4REfvTZpxLgkAR/lKG9QiOkSdahOYIR3MeoGJAyiWmRkEFfjH3396'),
(3, 'davidMoore', '$2y$10$4REfvTZpxLgkAR/lKG9QiOkSdahOYIR3MeoGJAyiWmRkEFfjH3396'),
(4, 'affan', '$2y$10$4REfvTZpxLgkAR/lKG9QiOkSdahOYIR3MeoGJAyiWmRkEFfjH3396'),
(6, 's', 's'),
(7, 'affan', 'ansari'),
(8, 'affan', '$2y$10$un4J0b.HC5ZNsbIgvPFnqOGw6OOBSELXtpKkwleT7NPf60qW6hImm'),
(9, 'shahab', '$2y$10$i4HYyQ52vWAL3Uh0XAMiveQzMBd9KGabOBxxghZH0WehxKny0bbfi'),
(10, '', '$2y$10$nR5JtGHgTnlBiniQ/hw1Y.zzoM0iQPR2osBAO8Q4PUYZumOTH1EX.');

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `login_details_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_activity` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_type` enum('no','yes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`login_details_id`, `user_id`, `last_activity`, `is_type`) VALUES
(1, 1, '2018-09-25 20:26:22', 'no'),
(2, 2, '2018-09-25 20:26:48', 'no'),
(3, 2, '2018-09-25 20:28:23', 'no'),
(4, 2, '2018-09-25 20:30:11', 'no'),
(5, 1, '2018-09-25 20:30:33', 'no'),
(6, 2, '2018-09-25 20:33:58', 'no'),
(7, 1, '2018-09-25 20:33:52', 'no'),
(8, 2, '2018-09-25 20:36:49', 'no'),
(9, 2, '2018-09-25 20:40:03', 'no'),
(10, 2, '2018-09-25 20:45:00', 'no'),
(11, 1, '2018-09-25 20:45:08', 'no'),
(12, 2, '2018-09-25 21:01:45', 'no'),
(13, 1, '2018-09-25 21:00:46', 'no'),
(14, 2, '2018-09-25 21:16:06', 'no'),
(15, 1, '2018-09-25 21:03:51', 'no'),
(16, 3, '2018-09-25 21:05:36', 'no'),
(17, 1, '2018-09-25 21:06:25', 'no'),
(18, 3, '2018-09-25 21:06:56', 'no'),
(19, 1, '2018-09-25 21:09:34', 'no'),
(20, 3, '2018-09-25 21:09:28', 'no'),
(21, 4, '2018-09-25 21:17:05', 'no'),
(22, 4, '2018-09-25 21:38:52', 'no'),
(23, 4, '2018-09-25 21:41:53', 'no'),
(24, 4, '2018-10-05 18:14:59', 'no'),
(25, 8, '2018-10-05 18:44:22', 'no'),
(26, 9, '2018-10-05 18:47:33', 'no'),
(27, 10, '2018-10-05 18:49:22', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_message`
--
ALTER TABLE `chat_message`
  ADD PRIMARY KEY (`chat_message_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`login_details_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `chat_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `login_details`
--
ALTER TABLE `login_details`
  MODIFY `login_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
