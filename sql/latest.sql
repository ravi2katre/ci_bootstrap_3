#
# TABLE STRUCTURE FOR: admin_groups
#

DROP TABLE IF EXISTS `admin_groups`;

CREATE TABLE `admin_groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `admin_groups` (`id`, `name`, `description`) VALUES ('1', 'webmaster', 'Webmaster');
INSERT INTO `admin_groups` (`id`, `name`, `description`) VALUES ('2', 'admin', 'Administrator');
INSERT INTO `admin_groups` (`id`, `name`, `description`) VALUES ('3', 'manager', 'Manager');
INSERT INTO `admin_groups` (`id`, `name`, `description`) VALUES ('4', 'staff', 'Staff');


#
# TABLE STRUCTURE FOR: admin_login_attempts
#

DROP TABLE IF EXISTS `admin_login_attempts`;

CREATE TABLE `admin_login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: admin_users
#

DROP TABLE IF EXISTS `admin_users`;

CREATE TABLE `admin_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

INSERT INTO `admin_users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`) VALUES ('1', '127.0.0.1', 'webmaster', '$2y$08$/X5gzWjesYi78GqeAv5tA.dVGBVP7C1e1PzqnYCVe5s1qhlDIPPES', NULL, NULL, NULL, NULL, NULL, 'StLbqBF3j7FRHjJ3t45JCO', '1451900190', '1504160490', '1', 'Webmaster', '');
INSERT INTO `admin_users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`) VALUES ('2', '127.0.0.1', 'admin', '$2y$08$7Bkco6JXtC3Hu6g9ngLZDuHsFLvT7cyAxiz1FzxlX5vwccvRT7nKW', NULL, NULL, NULL, NULL, NULL, NULL, '1451900228', '1465489580', '1', 'Admin', '');
INSERT INTO `admin_users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`) VALUES ('3', '127.0.0.1', 'manager', '$2y$08$snzIJdFXvg/rSHe0SndIAuvZyjktkjUxBXkrrGdkPy1K6r5r/dMLa', NULL, NULL, NULL, NULL, NULL, NULL, '1451900430', '1465489585', '1', 'Manager', '');
INSERT INTO `admin_users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`) VALUES ('4', '127.0.0.1', 'staff', '$2y$08$NigAXjN23CRKllqe3KmjYuWXD5iSRPY812SijlhGeKfkrMKde9da6', NULL, NULL, NULL, NULL, NULL, NULL, '1451900439', '1465489590', '1', 'Staff', '');
INSERT INTO `admin_users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`) VALUES ('5', '::1', 'ravi2katre@gmail.com', '$2y$08$2c7fglguF3b0yIcvx4AvPOvYZWWJMB9EkRNL4Wr0En8r1qqOeOXLe', NULL, 'ravi2katre@gmail.com', NULL, NULL, NULL, NULL, '1504178236', NULL, '1', 'rrr', 'fgfg');
INSERT INTO `admin_users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`) VALUES ('6', '::1', 'ravi22katre@gmail.com', '$2y$08$gF0wSLtjtrdZovScW/Wcs.tN.kBhAkTfw52t2G65nf1Cm19icJ46O', NULL, 'ravi22katre@gmail.com', NULL, NULL, NULL, NULL, '1504178297', NULL, '1', 'ddf', 'dfdff');
INSERT INTO `admin_users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`) VALUES ('7', '::1', 'ravi2katre@ymail.com', '$2y$08$YgrHa785/eqUMKxnGGHLtuf41bw.E28ZS3bGXxE5zgSyv5ySPsKDa', NULL, 'ravi2katre@ymail.com', NULL, NULL, NULL, NULL, '1504178655', NULL, '1', 'aa', 'ss');
INSERT INTO `admin_users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`) VALUES ('8', '::1', 'dfdfd@ff.com', '$2y$08$NCPVS1QygDKZh176A48eXOfBVOXz.00y6AT/6aKPFHScCSe2gMG92', NULL, 'dfdfd@ff.com', NULL, NULL, NULL, NULL, '1504179205', NULL, '1', 'dfdff', 'dfdfdf');
INSERT INTO `admin_users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`) VALUES ('9', '::1', 'sdsd@ff.com', '$2y$08$/qTeBABIFk8U29ll7IbWR.2RcOG/HY8JdpbH6kn.uvsLAn7xkAmXK', NULL, 'sdsd@ff.com', NULL, NULL, NULL, NULL, '1504179293', NULL, '1', 'ssdsd', 'sdsdsd');
INSERT INTO `admin_users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`) VALUES ('10', '::1', 'dfdf@gg.com', '$2y$08$fIJDdAqkZKwUPrsRSInK9ebEOjWsLo9hMAkFdyhC1K0AFwiMD2GW6', NULL, 'dfdf@gg.com', NULL, NULL, NULL, NULL, '1504179348', NULL, '1', 'dfdf', 'dfdf');
INSERT INTO `admin_users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`) VALUES ('11', '::1', 'dfff@ff.com', '$2y$08$QT5v/cSd/0CmYTqbul71yuwmko/dD9uGEvwP4cWPJ2CSMkrCMDCTa', NULL, 'dfff@ff.com', NULL, NULL, NULL, NULL, '1504179482', NULL, '1', 'ddd', 'dfdf');


#
# TABLE STRUCTURE FOR: admin_users_groups
#

DROP TABLE IF EXISTS `admin_users_groups`;

CREATE TABLE `admin_users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

INSERT INTO `admin_users_groups` (`id`, `user_id`, `group_id`) VALUES ('1', '1', '1');
INSERT INTO `admin_users_groups` (`id`, `user_id`, `group_id`) VALUES ('2', '2', '2');
INSERT INTO `admin_users_groups` (`id`, `user_id`, `group_id`) VALUES ('3', '3', '3');
INSERT INTO `admin_users_groups` (`id`, `user_id`, `group_id`) VALUES ('4', '4', '4');
INSERT INTO `admin_users_groups` (`id`, `user_id`, `group_id`) VALUES ('5', '5', '1');
INSERT INTO `admin_users_groups` (`id`, `user_id`, `group_id`) VALUES ('6', '6', '1');
INSERT INTO `admin_users_groups` (`id`, `user_id`, `group_id`) VALUES ('7', '7', '1');
INSERT INTO `admin_users_groups` (`id`, `user_id`, `group_id`) VALUES ('8', '8', '1');
INSERT INTO `admin_users_groups` (`id`, `user_id`, `group_id`) VALUES ('9', '9', '1');
INSERT INTO `admin_users_groups` (`id`, `user_id`, `group_id`) VALUES ('10', '10', '1');
INSERT INTO `admin_users_groups` (`id`, `user_id`, `group_id`) VALUES ('11', '11', '1');


#
# TABLE STRUCTURE FOR: api_access
#

DROP TABLE IF EXISTS `api_access`;

CREATE TABLE `api_access` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(40) NOT NULL DEFAULT '',
  `controller` varchar(50) NOT NULL DEFAULT '',
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: api_keys
#

DROP TABLE IF EXISTS `api_keys`;

CREATE TABLE `api_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `api_keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES ('1', '0', 'anonymous', '1', '1', '0', NULL, '1463388382');


#
# TABLE STRUCTURE FOR: api_limits
#

DROP TABLE IF EXISTS `api_limits`;

CREATE TABLE `api_limits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) NOT NULL,
  `count` int(10) NOT NULL,
  `hour_started` int(11) NOT NULL,
  `api_key` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: api_logs
#

DROP TABLE IF EXISTS `api_logs`;

CREATE TABLE `api_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: emails
#

DROP TABLE IF EXISTS `emails`;

CREATE TABLE `emails` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `subject` varchar(128) NOT NULL,
  `mail_from` varchar(128) NOT NULL,
  `mail_from_name` varchar(255) DEFAULT NULL,
  `mail_to` varchar(255) DEFAULT NULL,
  `content` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: events
#

DROP TABLE IF EXISTS `events`;

CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` tinytext NOT NULL,
  `Images` int(11) NOT NULL,
  `comments` tinytext NOT NULL,
  `date` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;



#
# TABLE STRUCTURE FOR: groups
#

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `groups` (`id`, `name`, `description`) VALUES ('1', 'webmaster', 'General User');
INSERT INTO `groups` (`id`, `name`, `description`) VALUES ('2', 'members', '');
INSERT INTO `groups` (`id`, `name`, `description`) VALUES ('3', 'Schools', '');
INSERT INTO `groups` (`id`, `name`, `description`) VALUES ('4', 'Parents', '');
INSERT INTO `groups` (`id`, `name`, `description`) VALUES ('5', 'Students', '');


#
# TABLE STRUCTURE FOR: login_attempts
#

DROP TABLE IF EXISTS `login_attempts`;

CREATE TABLE `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: menus
#

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `children` varchar(255) NOT NULL,
  `sort_by` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

INSERT INTO `menus` (`menu_id`, `parent_id`, `name`, `url`, `icon`, `children`, `sort_by`) VALUES ('8', '0', 'Home', 'home', 'fa fa-home', '', '0');
INSERT INTO `menus` (`menu_id`, `parent_id`, `name`, `url`, `icon`, `children`, `sort_by`) VALUES ('9', '11', 'Users', 'users', 'fa fa-users', '', '2');
INSERT INTO `menus` (`menu_id`, `parent_id`, `name`, `url`, `icon`, `children`, `sort_by`) VALUES ('10', '11', 'Account', 'panel/account', 'fa fa-cog', '', '200');
INSERT INTO `menus` (`menu_id`, `parent_id`, `name`, `url`, `icon`, `children`, `sort_by`) VALUES ('11', '0', 'Utilities', 'util/list_db', 'fa fa-cogs', '', '90');
INSERT INTO `menus` (`menu_id`, `parent_id`, `name`, `url`, `icon`, `children`, `sort_by`) VALUES ('12', '0', 'Sign Out', 'panel/logout', 'fa fa-sign-out', '', '100');
INSERT INTO `menus` (`menu_id`, `parent_id`, `name`, `url`, `icon`, `children`, `sort_by`) VALUES ('13', '11', 'Database version', 'util/list_db', 'fa fa-circle-o text-aqua', '', '300');
INSERT INTO `menus` (`menu_id`, `parent_id`, `name`, `url`, `icon`, `children`, `sort_by`) VALUES ('15', '11', 'Menu', 'menus', 'fa fa-circle', '', '0');
INSERT INTO `menus` (`menu_id`, `parent_id`, `name`, `url`, `icon`, `children`, `sort_by`) VALUES ('16', '11', 'Emails', 'emails', 'fa fa-circle', '', '0');
INSERT INTO `menus` (`menu_id`, `parent_id`, `name`, `url`, `icon`, `children`, `sort_by`) VALUES ('20', '0', 'Schools', 'schools', 'fa fa-circle', '', '0');
INSERT INTO `menus` (`menu_id`, `parent_id`, `name`, `url`, `icon`, `children`, `sort_by`) VALUES ('21', '0', 'Students', 'students', 'fa fa-circle', '', '0');
INSERT INTO `menus` (`menu_id`, `parent_id`, `name`, `url`, `icon`, `children`, `sort_by`) VALUES ('22', '0', 'Events', 'events', 'fa fa-circle', '', '0');
INSERT INTO `menus` (`menu_id`, `parent_id`, `name`, `url`, `icon`, `children`, `sort_by`) VALUES ('23', '0', 'Parents', 'parents', 'fa fa-circle', '', '0');
INSERT INTO `menus` (`menu_id`, `parent_id`, `name`, `url`, `icon`, `children`, `sort_by`) VALUES ('24', '11', 'Groups', 'groups', 'fa fa-circle', '', '0');


#
# TABLE STRUCTURE FOR: menus_groups
#

DROP TABLE IF EXISTS `menus_groups`;

CREATE TABLE `menus_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL DEFAULT '0',
  `menu_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

INSERT INTO `menus_groups` (`id`, `group_id`, `menu_id`) VALUES ('6', '1', '16');
INSERT INTO `menus_groups` (`id`, `group_id`, `menu_id`) VALUES ('3', '1', '8');
INSERT INTO `menus_groups` (`id`, `group_id`, `menu_id`) VALUES ('9', '1', '20');
INSERT INTO `menus_groups` (`id`, `group_id`, `menu_id`) VALUES ('12', '1', '21');
INSERT INTO `menus_groups` (`id`, `group_id`, `menu_id`) VALUES ('14', '1', '22');
INSERT INTO `menus_groups` (`id`, `group_id`, `menu_id`) VALUES ('16', '1', '23');
INSERT INTO `menus_groups` (`id`, `group_id`, `menu_id`) VALUES ('17', '1', '9');
INSERT INTO `menus_groups` (`id`, `group_id`, `menu_id`) VALUES ('19', '1', '24');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES ('1', '127.0.0.1', 'member', '$2y$08$kkqUE2hrqAJtg.pPnAhvL.1iE7LIujK5LZ61arONLpaBBWh/ek61G', NULL, 'member@member.com', NULL, NULL, NULL, NULL, '1451903855', '1504615224', '1', 'Member', 'One', NULL, NULL);
INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES ('6', '::1', 'ddd5@ddd.com', '$2y$08$5R41h5xqbLNDS9VHt91TJOwoR51CgyEtIyzi9.tpWlT9nmXMb5FUm', NULL, 'ddd5@ddd.com', NULL, NULL, NULL, NULL, '1504253360', NULL, '1', 'aa', 'aa', NULL, NULL);
INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES ('7', '::1', 'ddd2@ddd.com', '$2y$08$ppLIxQvtsFP4jsuI9aeZAOopkdAb0tnTBCefZri8A3wXQynBVp1Ta', NULL, 'ddd2@ddd.com', NULL, NULL, NULL, NULL, '1504261130', NULL, '1', 'ravi', 'ravi', NULL, NULL);
INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES ('8', '::1', 'school@school.com', '$2y$08$OtACKrDIZ./2wDRwFWpyquUxRfip68kdvwK2GOex/DYh8E4wHyP4u', NULL, 'school@school.com', NULL, NULL, NULL, NULL, '1504615142', NULL, '1', 'Groups', 'groups', NULL, NULL);


#
# TABLE STRUCTURE FOR: users_groups
#

DROP TABLE IF EXISTS `users_groups`;

CREATE TABLE `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES ('1', '1', '1');
INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES ('3', '4', '1');
INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES ('4', '5', '1');
INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES ('5', '6', '1');
INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES ('6', '7', '1');
INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES ('7', '3', '1');
INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES ('8', '8', '1');


