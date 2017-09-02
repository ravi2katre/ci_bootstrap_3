-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2017 at 09:14 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school-management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_groups`
--

CREATE TABLE `admin_groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_groups`
--

INSERT INTO `admin_groups` (`id`, `name`, `description`) VALUES
(1, 'webmaster', 'Webmaster'),
(2, 'admin', 'Administrator'),
(3, 'manager', 'Manager'),
(4, 'staff', 'Staff');

-- --------------------------------------------------------

--
-- Table structure for table `admin_login_attempts`
--

CREATE TABLE `admin_login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`) VALUES
(1, '127.0.0.1', 'webmaster', '$2y$08$/X5gzWjesYi78GqeAv5tA.dVGBVP7C1e1PzqnYCVe5s1qhlDIPPES', NULL, NULL, NULL, NULL, NULL, 'StLbqBF3j7FRHjJ3t45JCO', 1451900190, 1504160490, 1, 'Webmaster', ''),
(2, '127.0.0.1', 'admin', '$2y$08$7Bkco6JXtC3Hu6g9ngLZDuHsFLvT7cyAxiz1FzxlX5vwccvRT7nKW', NULL, NULL, NULL, NULL, NULL, NULL, 1451900228, 1465489580, 1, 'Admin', ''),
(3, '127.0.0.1', 'manager', '$2y$08$snzIJdFXvg/rSHe0SndIAuvZyjktkjUxBXkrrGdkPy1K6r5r/dMLa', NULL, NULL, NULL, NULL, NULL, NULL, 1451900430, 1465489585, 1, 'Manager', ''),
(4, '127.0.0.1', 'staff', '$2y$08$NigAXjN23CRKllqe3KmjYuWXD5iSRPY812SijlhGeKfkrMKde9da6', NULL, NULL, NULL, NULL, NULL, NULL, 1451900439, 1465489590, 1, 'Staff', ''),
(5, '::1', 'ravi2katre@gmail.com', '$2y$08$2c7fglguF3b0yIcvx4AvPOvYZWWJMB9EkRNL4Wr0En8r1qqOeOXLe', NULL, 'ravi2katre@gmail.com', NULL, NULL, NULL, NULL, 1504178236, NULL, 1, 'rrr', 'fgfg'),
(6, '::1', 'ravi22katre@gmail.com', '$2y$08$gF0wSLtjtrdZovScW/Wcs.tN.kBhAkTfw52t2G65nf1Cm19icJ46O', NULL, 'ravi22katre@gmail.com', NULL, NULL, NULL, NULL, 1504178297, NULL, 1, 'ddf', 'dfdff'),
(7, '::1', 'ravi2katre@ymail.com', '$2y$08$YgrHa785/eqUMKxnGGHLtuf41bw.E28ZS3bGXxE5zgSyv5ySPsKDa', NULL, 'ravi2katre@ymail.com', NULL, NULL, NULL, NULL, 1504178655, NULL, 1, 'aa', 'ss'),
(8, '::1', 'dfdfd@ff.com', '$2y$08$NCPVS1QygDKZh176A48eXOfBVOXz.00y6AT/6aKPFHScCSe2gMG92', NULL, 'dfdfd@ff.com', NULL, NULL, NULL, NULL, 1504179205, NULL, 1, 'dfdff', 'dfdfdf'),
(9, '::1', 'sdsd@ff.com', '$2y$08$/qTeBABIFk8U29ll7IbWR.2RcOG/HY8JdpbH6kn.uvsLAn7xkAmXK', NULL, 'sdsd@ff.com', NULL, NULL, NULL, NULL, 1504179293, NULL, 1, 'ssdsd', 'sdsdsd'),
(10, '::1', 'dfdf@gg.com', '$2y$08$fIJDdAqkZKwUPrsRSInK9ebEOjWsLo9hMAkFdyhC1K0AFwiMD2GW6', NULL, 'dfdf@gg.com', NULL, NULL, NULL, NULL, 1504179348, NULL, 1, 'dfdf', 'dfdf'),
(11, '::1', 'dfff@ff.com', '$2y$08$QT5v/cSd/0CmYTqbul71yuwmko/dD9uGEvwP4cWPJ2CSMkrCMDCTa', NULL, 'dfff@ff.com', NULL, NULL, NULL, NULL, 1504179482, NULL, 1, 'ddd', 'dfdf');

-- --------------------------------------------------------

--
-- Table structure for table `admin_users_groups`
--

CREATE TABLE `admin_users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_users_groups`
--

INSERT INTO `admin_users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `api_access`
--

CREATE TABLE `api_access` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(40) NOT NULL DEFAULT '',
  `controller` varchar(50) NOT NULL DEFAULT '',
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `api_keys`
--

CREATE TABLE `api_keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `api_keys`
--

INSERT INTO `api_keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 0, 'anonymous', 1, 1, 0, NULL, 1463388382);

-- --------------------------------------------------------

--
-- Table structure for table `api_limits`
--

CREATE TABLE `api_limits` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `count` int(10) NOT NULL,
  `hour_started` int(11) NOT NULL,
  `api_key` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `api_logs`
--

CREATE TABLE `api_logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` int(9) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subject` varchar(128) NOT NULL,
  `mail_from` varchar(128) NOT NULL,
  `mail_from_name` varchar(255) DEFAULT NULL,
  `mail_to` varchar(255) DEFAULT NULL,
  `content` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `title`, `subject`, `mail_from`, `mail_from_name`, `mail_to`, `content`, `date`) VALUES
(1, 'Feedback Success', '[[complete_sub_order_id]]  Order Feedback: [[rate]]', '[[support_email]]', 'Webmaster', '[[customer_email]]', '<p>	Dear [[customer_name]],</p>\r\n<p>	[[feedback_comments]]</p>\r\n\r\n', '2017-02-20 05:00:00'),
(3, 'Testing', 'Testing email', 'support@photographersedit.com', 'Photographer\'s Edit', 'rkatre@tiuconsulting.com', '<p>\r\n	Hi Ravi,</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	Testikng goes here...</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	Thanks</p>\r\n', '0000-00-00 00:00:00'),
(4, 'Order Success ', ' [[site_name]]  - Order Confirmation [[complete_order_id]] ', 'support@photographersedit.com', 'Webmaster', '[[customer_email]]', '<p style="color: rgb(34, 34, 34); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">\r\n	<span style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">Dear [[customer_name]],<span class="Apple-converted-space"> </span></span><br style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;" />\r\n	<br style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;" />\r\n	<strong style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">Thank you!<span class="Apple-converted-space">&nbsp;</span><span class="il">Order</span><span class="Apple-converted-space"> [[complete_sub_order_id]] </span>([[complete_sub_order_name]]</strong><strong style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">) has been received.</strong><span style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;"><span class="Apple-converted-space"> </span></span></p>\r\n<p style="color: rgb(34, 34, 34); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">\r\n	<span style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;">If you have not already, please upload the image files for this&nbsp;</span><span class="il" style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;">order</span><span style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;">&nbsp;now. You can upload the files and view the status of your&nbsp;</span><span class="il" style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;">order</span><span style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;">&nbsp;by visiting your&nbsp;</span><a data-saferedirecturl="https://www.google.com/url?hl=en&amp;q=http://www.photographersedit.com/account_dashboard&amp;source=gmail&amp;ust=1487848125561000&amp;usg=AFQjCNGk1sj4VnaaqEcEnnOfIU5qi6YHJA" href="http://www.photographersedit.com/account_dashboard" style="font-family: Helvetica, sans-serif; font-size: 14px;" target="_blank">Account Dashboard</a><span style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;">.&nbsp;</span><br style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;" />\r\n	<br style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;" />\r\n	<span style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;">Here is a summary of your&nbsp;</span><span class="il" style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;">order</span><span style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;">:&nbsp;</span></p>\r\n<p style="color: rgb(34, 34, 34); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">\r\n	<span style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;">[[order_table]]</span></p>\r\n', '0000-00-00 00:00:00'),
(5, 'Comment Notification', '[[site_name]]  - New Comment Re Order # [[complete_sub_order_id]] ', '[[support_email]]', 'Webmaster', '[[customer_email]]', '<p style="color: rgb(34, 34, 34); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">\r\n	Dear [[customer_name]],</p>\r\n<p style="color: rgb(34, 34, 34); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">\r\n	The following comment was just added to order [[complete_sub_order_id]] ( [[order_name]])</p>\r\n<p style="color: rgb(34, 34, 34); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">\r\n	&nbsp;</p>\r\n<p style="color: rgb(34, 34, 34); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">\r\n	Comment: [[order_comment_text]]</p>\r\n<p style="color: rgb(34, 34, 34); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">\r\n	<br />\r\n	Order Status: [[new_order_status_value]]</p>\r\n<p style="color: rgb(34, 34, 34); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">\r\n	Date: [[order_comment_created_on]]</p>\r\n<p style="color: rgb(34, 34, 34); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">\r\n	&nbsp;</p>\r\n', '0000-00-00 00:00:00'),
(6, 'Quote Provided', '[[subject]]', 'support@photographersedit.com', 'webmaster', 'rkatre@tiuconsulting.com', '<p>\r\n	Dear [[customer_name]],<br />\r\n	<br />\r\n	Your order quote is ready and awaiting your approval.<br />\r\n	<br />\r\n	Order #: [[complete_sub_order_id]] ( [[order_name]] )<br />\r\n	Image Received: [[image_received]]<br />\r\n	Quote Amount: $[[quote_amount]]<br />\r\n	Completion Time: About [[number_business_days]] business days once the quote is paid for.<br />\r\n	Notes:<br />\r\n	<br />\r\n	<strong>To continue, please choose one of the following:</strong><br />\r\n	<br />\r\n	<strong>[[approve_link]]</strong><br />\r\n	<br />\r\n	<strong>[[reject_link]]</strong><br />\r\n	<br />\r\n	We&rsquo;ll wait for your response before continuing.</p>\r\n', '0000-00-00 00:00:00'),
(7, 'Quote Paid', 'Photographer\'s Edit - Order Confirmation #[[complete_sub_order_id]]', 'support@photographersedit.com', 'Photographer\'s Edit', 'rkatre@tiuconsulting.com', '<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;">Dear [[customer_name]],&nbsp;</span><br style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;" />\r\n	<br style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;" />\r\n	<span style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;">Thank you for your order&nbsp;</span><strong style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;">#[[complete_sub_order_id]] ([[order_name]])&nbsp;</strong><span style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;">with Photographer&#39;s Edit! We look forward to working on your images as soon as possible. Please refer to&nbsp;</span><a data-saferedirecturl="https://www.google.com/url?hl=en&amp;q=http://support.photographersedit.com&amp;source=gmail&amp;ust=1491117618936000&amp;usg=AFQjCNGdBGbZKcSicfL9XON2BEazdybxyA" href="http://support.photographersedit.com/" style="font-family: Helvetica, sans-serif; font-size: 14px;" target="_blank">support.photographersedit.com</a><span style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;">&nbsp;for any questions on how to send.&nbsp;</span><br style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;" />\r\n	<br style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;" />\r\n	<span style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;">To view the status of your order, please visit our website and refer to the order status under Account.&nbsp;</span></p>\r\n<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;">[[order_details]]</span></p>\r\n', '0000-00-00 00:00:00'),
(8, 'Order Comments Added', 'Photographer\'s Edit - New Comment Re Order #[[complete_sub_order_id]]', 'rkatre@tiuconsulting.com', 'Ravindra', 'rkatre@tiuconsulting.com', '<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;">Dear Daniel,</span><br style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;" />\r\n	<br style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;" />\r\n	<span style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;">The following comment was just added to order&nbsp;</span>[[complete_sub_order_id]]<span style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;">&nbsp;(</span>[[order_name]]<span style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;">):</span><br style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;" />\r\n	&nbsp;</p>\r\n<table bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" height="100%" style="border-spacing: 0px; color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;" width="100%">\r\n	<tbody>\r\n		<tr>\r\n			<td align="left" bgcolor="#ffffff" style="margin: 0px; border-collapse: collapse; line-height: 20px;" valign="top" width="20%">\r\n				Comment:</td>\r\n			<td align="left" bgcolor="#ffffff" style="margin: 0px; border-collapse: collapse; line-height: 20px;" valign="top">\r\n				[[order_comment_text]]</td>\r\n		</tr>\r\n		<tr>\r\n			<td align="left" bgcolor="#ffffff" style="margin: 0px; border-collapse: collapse; line-height: 20px;" valign="top">\r\n				Order Status:</td>\r\n			<td align="left" bgcolor="#ffffff" style="margin: 0px; border-collapse: collapse; line-height: 20px;" valign="top">\r\n				[[order_status_value]]</td>\r\n		</tr>\r\n		<tr>\r\n			<td align="left" bgcolor="#ffffff" style="margin: 0px; border-collapse: collapse; line-height: 20px;" valign="top">\r\n				Date:</td>\r\n			<td align="left" bgcolor="#ffffff" style="margin: 0px; border-collapse: collapse; line-height: 20px;" valign="top">\r\n				[[order_date]]</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	&nbsp;</p>\r\n', '0000-00-00 00:00:00'),
(9, 'Order Status Updates', 'Photographer\'s Edit - [[order_status_value_new]], Order #[[complete_sub_order_id]]', 'rkatre@tiuconsulting.com', 'Ravindra', 'rkatre@tiuconsulting.com', '<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;">Dear Ravi,&nbsp;</span><br style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;" />\r\n	<br style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;" />\r\n	<strong style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;">Just a quick status update: Order [[complete_sub_order_id]] ([[order_name]]) has been changed from [[order_status_value_old]] to [[order_status_value_new]].</strong><span style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;">&nbsp;</span><br style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;" />\r\n	<br style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;" />\r\n	<span style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;">If you have any questions, please visit&nbsp;</span><a data-saferedirecturl="https://www.google.com/url?hl=en&amp;q=http://support.photographersedit.com&amp;source=gmail&amp;ust=1489063087476000&amp;usg=AFQjCNEpyAYPI-RK7BbTwORE_troSrmN7A" href="http://support.photographersedit.com/" style="font-family: Helvetica, sans-serif; font-size: 14px;" target="_blank">support.photographersedit.com</a><span style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;">&nbsp;to browse our FAQ, or reply to this email to contact support.&nbsp;</span></p>\r\n', '0000-00-00 00:00:00'),
(10, 'Neglected Order Alerts', '[[subject]]', 'rkatre@tiuconsulting.com', 'Ravindra', 'rkatre@tiuconsulting.com', '<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;">This is an automated message sent by the PE system. Order&nbsp;</span>[[complete_sub_order_id]]<span style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;">&nbsp;has been on hold for about [[totaldayfromorderstatusupdate]] days.&nbsp;</span></p>\r\n<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: Helvetica, sans-serif; font-size: 14px;">Please look at the order details and consider contacting the client for any information or files that we need from them so we can proceed with the order.&nbsp;</span></p>\r\n', '0000-00-00 00:00:00'),
(11, ' Zenfolio Anniversary', 'Photographer\'s Edit - Zenfolio Anniversary Discount', 'rkatre@tiuconsulting.com', 'Ravindra', 'rkatre@tiuconsulting.com', '<p>\r\n	As a thank you for starting your PE add-on with Zenfolio please accept this $50 discount code as a token of our appreciation for trying out our services. The discount code can be applied at check out and has to be used up entirely on a single order within the next 30 days. Your code is [[discount_code]]</p>\r\n', '0000-00-00 00:00:00'),
(12, 'PE Credit Gift Card', 'Life Points Redemption', 'rkatre@tiuconsulting.com', 'PE', '[[customer_email]]', '<p>\r\n	Dear [[customer_firstname]],<br />\r\n	<br />\r\n	Way to go! You cashed in your Life Points for PE credit. That&acute;s like getting free time!<br />\r\n	<br />\r\n	Here&#39;s your electronic gift card. You can use this code with future orders until it runs out.<br />\r\n	<br />\r\n	Gift Card Code: <b>[[discount_code]]</b><br />\r\n	Starting Amount: <b>$[[discount_amount]] PE Credit</b><br />\r\n	<br />\r\n	Keep up the good work, and make sure you enjoy that extra time you just received!</p>\r\n', '0000-00-00 00:00:00'),
(13, 'Amazon Gift', 'Life Points Redemption', 'rkatre@tiuconsulting.com', 'PE', '[[customer_email]],rkatre@tiuconsulting.com', '<p>\r\n	Dear [[customer_firstname]],<br />\r\n	<br />\r\n	Congratulations on the redemption of your reward points!<br />\r\n	Here are the details:<br />\r\n	<br />\r\n	[[packageDetail]]<br />\r\n	<br />\r\n	You will receive your PE Credit code or Amazon Gift Card via email within 2-3 business days.<br />\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n', '0000-00-00 00:00:00'),
(21, 'Aelrt Type: A', '[[subject]]', 'rkatre@tiuconsulting.com', 'PE', 'rkatre@tiuconsulting.com', '<p>\r\n	This is an automated message sent by the PE system. Order JD1800101 is either late or about to be late according to the stated<br />\r\n	ETC of ETC DATE - <span class="aBn" data-term="goog_2078748274" tabindex="0"><span class="aQJ">[[order_etc]]</span></span>.<br />\r\n	Please prioritize the delivery of this order if possible, or update the ETC if appropriate.</p>\r\n', '0000-00-00 00:00:00'),
(22, 'Aelrt Type: B', '[[subject]]', 'rkatre@tiuconsulting.com', 'PE', 'rkatre@tiuconsulting.com', '<p>\r\n	This is an automated message sent by the PE system. Order JD1700541 <span class="il">has</span> <span class="il">been</span> on <span class="il">hold</span> for about <span class="il">2</span> <span class="il">days</span>.<br />\r\n	Please look at the order details and consider contacting the client for any information or files that we need from them so we can proceed with the order.</p>\r\n', '0000-00-00 00:00:00'),
(23, 'Aelrt Type: C', '[[subject]]', 'rkatre@tiuconsulting.com', 'PE', 'rkatre@tiuconsulting.com', '<p>\r\n	This is an automated message sent by the PE system. Order JD1500121 <span class="il">has</span> <span class="il">been</span> on <span class="il">hold</span> for about <span class="il">4</span> <span class="il">days</span>.<br />\r\n	Please look at the order details and consider contacting the client for any information or files that we need from them so we can proceed with the order. You should also mention that if we don&#39;t hear from them in the next week, the order will be canceled.</p>\r\n', '0000-00-00 00:00:00'),
(24, 'Aelrt Type: D', '[[subject]]', 'rkatre@tiuconsulting.com', 'PE', 'rkatre@tiuconsulting.com', '<p>\r\n	This is an automated message sent by the PE system. Order JD0400651 has been on hold for at least <span class="il">10</span> <span class="il">days</span>.<br />\r\n	By this point, someone should have contacted the client about the issue multiple times. Now it&#39;s time to cancel the order. If the client ever gets back to us, we can reactivate it.<br />\r\n	Please change the order status to Order Canceled.</p>\r\n', '0000-00-00 00:00:00'),
(25, 'Scheduled Order Reminder', 'Photographer\'s Edit - Scheduled Order Reminder', 'support@photographersedit.com', 'Photographer\'s Edit', '[[customer_email]],rkatre@tiuconsulting.com', '<p>\r\n	Dear [[customer_firstname]],<br />\r\n	<br />\r\n	You currently have an event booked on your calendar for [[order_date]].<br />\r\n	<br />\r\n	<strong>Order Name : [[order_name]]</strong><br />\r\n	<strong>Service Name : [[service_name]]</strong><br />\r\n	<strong>No. Of Images : [[no_of_images]]</strong><br />\r\n	<br />\r\n	Please log into your account, Place your Order and Upload your images by <span class="aBn" data-term="goog_519907665" tabindex="0">11:59pm PST</span> on [[order_date]]<br />\r\n	<br />\r\n	If you have any questions, please visit <a data-saferedirecturl="https://www.google.com/url?hl=en&amp;q=http://support.photographersedit.com&amp;source=gmail&amp;ust=1492867756186000&amp;usg=AFQjCNHh4ZZ9kqhk3cWdtkS6PIgch_Nblg" href="http://support.photographersedit.com/" target="_blank">support.photographersedit.com</a> to browse our FAQ, or reply to this email to contact support. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n', '0000-00-00 00:00:00'),
(26, 'Reedem Gift Card Notification Support', 'Life Points Redemption', 'rkatre@tiuconsulting.com', 'Photographer\\\'s Edit', 'rkatre@tiuconsulting.com', '<p>\r\n	This is an automated message from the PE system. A customer just redeemed Life Rewards.<br />\r\n	<br />\r\n	Customer: [[customer_name]]<br />\r\n	[[packageDetail]]<br />\r\n	&nbsp;</p>\r\n', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'webmaster', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `menu_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `children` varchar(255) NOT NULL,
  `sort_by` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`menu_id`, `parent_id`, `name`, `url`, `icon`, `children`, `sort_by`) VALUES
(8, 0, 'Home', 'home', 'fa fa-home', '', 0),
(9, 0, 'Users', 'users', 'fa fa-users', '', 2),
(10, 11, 'Account', 'panel/account', 'fa fa-cog', '', 200),
(11, 0, 'Utilities', 'util/list_db', 'fa fa-cogs', '', 90),
(12, 0, 'Sign Out', 'panel/logout', 'fa fa-sign-out', '', 100),
(13, 11, 'Database version', 'util/list_db', 'fa fa-circle-o text-aqua', '', 300),
(15, 11, 'Menu', 'menus', 'fa fa-circle', '', 0),
(16, 11, 'Emails', 'emails', 'fa fa-circle', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `menus_groups`
--

CREATE TABLE `menus_groups` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL DEFAULT '0',
  `menu_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus_groups`
--

INSERT INTO `menus_groups` (`id`, `group_id`, `menu_id`) VALUES
(6, 1, 16),
(3, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'member', '$2y$08$kkqUE2hrqAJtg.pPnAhvL.1iE7LIujK5LZ61arONLpaBBWh/ek61G', NULL, 'member@member.com', NULL, NULL, NULL, NULL, 1451903855, 1451905011, 1, 'Member', 'One', NULL, NULL),
(3, '::1', 'webmaster@webmaster.com', '$2y$08$eDM/4g8Z9aQjMGKY20LDnu7XAAwaRhyNBxaWmjsaNxZUlz2KoTD/q', NULL, 'webmaster@webmaster.com', NULL, NULL, NULL, NULL, 1504179799, 1504331495, 1, 'Ravi', 'Katre', NULL, NULL),
(6, '::1', 'ddd5@ddd.com', '$2y$08$5R41h5xqbLNDS9VHt91TJOwoR51CgyEtIyzi9.tpWlT9nmXMb5FUm', NULL, 'ddd5@ddd.com', NULL, NULL, NULL, NULL, 1504253360, NULL, 1, 'aa', 'aa', NULL, NULL),
(7, '::1', 'ddd2@ddd.com', '$2y$08$ppLIxQvtsFP4jsuI9aeZAOopkdAb0tnTBCefZri8A3wXQynBVp1Ta', NULL, 'ddd2@ddd.com', NULL, NULL, NULL, NULL, 1504261130, NULL, 1, 'ravi', 'ravi', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 3, 1),
(3, 4, 1),
(4, 5, 1),
(5, 6, 1),
(6, 7, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_groups`
--
ALTER TABLE `admin_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_login_attempts`
--
ALTER TABLE `admin_login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_users_groups`
--
ALTER TABLE `admin_users_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_access`
--
ALTER TABLE `api_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_keys`
--
ALTER TABLE `api_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_limits`
--
ALTER TABLE `api_limits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_logs`
--
ALTER TABLE `api_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `menus_groups`
--
ALTER TABLE `menus_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_groups`
--
ALTER TABLE `admin_groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `admin_login_attempts`
--
ALTER TABLE `admin_login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `admin_users_groups`
--
ALTER TABLE `admin_users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `api_access`
--
ALTER TABLE `api_access`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `api_keys`
--
ALTER TABLE `api_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `api_limits`
--
ALTER TABLE `api_limits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `api_logs`
--
ALTER TABLE `api_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `menus_groups`
--
ALTER TABLE `menus_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
