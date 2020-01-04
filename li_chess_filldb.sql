#
# TABLE STRUCTURE FOR: boards
#

DROP TABLE IF EXISTS `boards`;

CREATE TABLE `boards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: clubs
#

DROP TABLE IF EXISTS `clubs`;

CREATE TABLE `clubs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_closed` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `clubs` (`id`, `name`, `created_at`, `is_closed`) VALUES (1, 'Feil PLC', '1973-01-21 23:46:27', NULL);
INSERT INTO `clubs` (`id`, `name`, `created_at`, `is_closed`) VALUES (2, 'Sawayn LLC', '1971-03-23 02:21:53', NULL);
INSERT INTO `clubs` (`id`, `name`, `created_at`, `is_closed`) VALUES (3, 'Cassin and Sons', '2011-12-04 08:27:36', NULL);
INSERT INTO `clubs` (`id`, `name`, `created_at`, `is_closed`) VALUES (4, 'Corkery-Barton', '2012-06-21 16:52:51', NULL);
INSERT INTO `clubs` (`id`, `name`, `created_at`, `is_closed`) VALUES (5, 'Graham Ltd', '2010-08-18 01:19:02', NULL);
INSERT INTO `clubs` (`id`, `name`, `created_at`, `is_closed`) VALUES (6, 'Murazik PLC', '1975-06-24 13:00:47', NULL);
INSERT INTO `clubs` (`id`, `name`, `created_at`, `is_closed`) VALUES (7, 'Mraz-Christiansen', '1998-11-04 17:25:51', NULL);
INSERT INTO `clubs` (`id`, `name`, `created_at`, `is_closed`) VALUES (8, 'Rempel-Armstrong', '1984-01-06 20:59:26', NULL);
INSERT INTO `clubs` (`id`, `name`, `created_at`, `is_closed`) VALUES (9, 'Konopelski-Ryan', '1981-06-20 02:32:07', NULL);
INSERT INTO `clubs` (`id`, `name`, `created_at`, `is_closed`) VALUES (10, 'Goyette and Sons', '2012-06-16 21:01:34', NULL);
INSERT INTO `clubs` (`id`, `name`, `created_at`, `is_closed`) VALUES (11, 'Johns, Mayert and Kunze', '1982-12-04 08:13:59', NULL);
INSERT INTO `clubs` (`id`, `name`, `created_at`, `is_closed`) VALUES (12, 'Christiansen, Collier and Bechtelar', '2018-10-05 15:37:07', NULL);
INSERT INTO `clubs` (`id`, `name`, `created_at`, `is_closed`) VALUES (13, 'McDermott-Wunsch', '1998-06-02 00:13:00', NULL);
INSERT INTO `clubs` (`id`, `name`, `created_at`, `is_closed`) VALUES (14, 'Weissnat, Ferry and Wisoky', '1983-10-05 20:22:03', NULL);
INSERT INTO `clubs` (`id`, `name`, `created_at`, `is_closed`) VALUES (15, 'Nicolas-Ankunding', '1983-05-15 10:39:07', NULL);
INSERT INTO `clubs` (`id`, `name`, `created_at`, `is_closed`) VALUES (16, 'Kassulke-Farrell', '2005-01-29 00:39:28', NULL);
INSERT INTO `clubs` (`id`, `name`, `created_at`, `is_closed`) VALUES (17, 'Senger, Pacocha and Harvey', '2010-09-13 16:42:37', NULL);
INSERT INTO `clubs` (`id`, `name`, `created_at`, `is_closed`) VALUES (18, 'Renner-Weimann', '2018-03-31 12:20:01', NULL);
INSERT INTO `clubs` (`id`, `name`, `created_at`, `is_closed`) VALUES (19, 'Heathcote-Kassulke', '1978-11-20 09:59:34', NULL);
INSERT INTO `clubs` (`id`, `name`, `created_at`, `is_closed`) VALUES (20, 'Turner, Lesch and Huels', '2014-11-20 10:11:12', NULL);
INSERT INTO `clubs` (`id`, `name`, `created_at`, `is_closed`) VALUES (21, 'Casper Group', '2004-10-23 07:22:44', NULL);
INSERT INTO `clubs` (`id`, `name`, `created_at`, `is_closed`) VALUES (22, 'Legros, Beatty and Veum', '1983-10-26 19:15:55', NULL);
INSERT INTO `clubs` (`id`, `name`, `created_at`, `is_closed`) VALUES (23, 'Nienow and Sons', '1979-09-02 16:54:39', NULL);
INSERT INTO `clubs` (`id`, `name`, `created_at`, `is_closed`) VALUES (24, 'Schinner-Will', '2002-12-23 15:29:15', NULL);
INSERT INTO `clubs` (`id`, `name`, `created_at`, `is_closed`) VALUES (25, 'Nienow Group', '1972-11-06 05:57:21', NULL);
INSERT INTO `clubs` (`id`, `name`, `created_at`, `is_closed`) VALUES (26, 'Crona-Muller', '2017-08-24 20:06:37', NULL);
INSERT INTO `clubs` (`id`, `name`, `created_at`, `is_closed`) VALUES (27, 'Berge-Kovacek', '1976-08-12 16:37:31', NULL);
INSERT INTO `clubs` (`id`, `name`, `created_at`, `is_closed`) VALUES (28, 'Ryan-Maggio', '2003-04-11 00:10:12', NULL);
INSERT INTO `clubs` (`id`, `name`, `created_at`, `is_closed`) VALUES (29, 'Spinka, Bogan and Altenwerth', '2018-03-11 15:51:23', NULL);
INSERT INTO `clubs` (`id`, `name`, `created_at`, `is_closed`) VALUES (30, 'Thompson-Grimes', '1978-08-13 02:13:42', NULL);


#
# TABLE STRUCTURE FOR: clubs_members
#

DROP TABLE IF EXISTS `clubs_members`;

CREATE TABLE `clubs_members` (
  `club_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `is_banned` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (1, 1, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (2, 2, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (3, 3, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (4, 4, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (5, 5, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (6, 6, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (7, 7, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (8, 8, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (9, 9, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (10, 10, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (11, 11, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (12, 12, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (13, 13, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (14, 14, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (15, 15, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (16, 16, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (17, 17, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (18, 18, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (19, 19, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (20, 20, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (21, 21, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (22, 22, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (23, 23, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (24, 24, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (25, 25, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (26, 26, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (27, 27, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (28, 28, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (29, 29, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (30, 30, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (1, 31, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (2, 32, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (3, 33, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (4, 34, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (5, 35, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (6, 36, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (7, 37, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (8, 38, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (9, 39, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (10, 40, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (11, 41, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (12, 42, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (13, 43, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (14, 44, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (15, 45, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (16, 46, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (17, 47, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (18, 48, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (19, 49, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (20, 50, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (21, 51, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (22, 52, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (23, 53, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (24, 54, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (25, 55, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (26, 56, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (27, 57, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (28, 58, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (29, 59, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (30, 60, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (1, 61, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (2, 62, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (3, 63, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (4, 64, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (5, 65, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (6, 66, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (7, 67, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (8, 68, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (9, 69, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (10, 70, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (11, 71, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (12, 72, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (13, 73, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (14, 74, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (15, 75, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (16, 76, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (17, 77, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (18, 78, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (19, 79, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (20, 80, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (21, 81, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (22, 82, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (23, 83, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (24, 84, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (25, 85, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (26, 86, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (27, 87, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (28, 88, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (29, 89, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (30, 90, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (1, 91, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (2, 92, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (3, 93, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (4, 94, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (5, 95, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (6, 96, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (7, 97, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (8, 98, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (9, 99, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (10, 100, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (11, 1, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (12, 2, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (13, 3, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (14, 4, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (15, 5, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (16, 6, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (17, 7, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (18, 8, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (19, 9, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (20, 10, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (21, 11, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (22, 12, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (23, 13, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (24, 14, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (25, 15, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (26, 16, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (27, 17, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (28, 18, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (29, 19, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (30, 20, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (1, 21, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (2, 22, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (3, 23, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (4, 24, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (5, 25, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (6, 26, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (7, 27, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (8, 28, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (9, 29, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (10, 30, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (11, 31, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (12, 32, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (13, 33, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (14, 34, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (15, 35, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (16, 36, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (17, 37, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (18, 38, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (19, 39, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (20, 40, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (21, 41, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (22, 42, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (23, 43, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (24, 44, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (25, 45, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (26, 46, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (27, 47, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (28, 48, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (29, 49, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (30, 50, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (1, 51, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (2, 52, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (3, 53, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (4, 54, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (5, 55, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (6, 56, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (7, 57, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (8, 58, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (9, 59, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (10, 60, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (11, 61, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (12, 62, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (13, 63, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (14, 64, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (15, 65, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (16, 66, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (17, 67, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (18, 68, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (19, 69, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (20, 70, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (21, 71, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (22, 72, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (23, 73, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (24, 74, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (25, 75, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (26, 76, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (27, 77, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (28, 78, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (29, 79, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (30, 80, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (1, 81, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (2, 82, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (3, 83, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (4, 84, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (5, 85, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (6, 86, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (7, 87, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (8, 88, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (9, 89, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (10, 90, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (11, 91, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (12, 92, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (13, 93, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (14, 94, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (15, 95, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (16, 96, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (17, 97, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (18, 98, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (19, 99, NULL, NULL);
INSERT INTO `clubs_members` (`club_id`, `user_id`, `is_admin`, `is_banned`) VALUES (20, 100, NULL, NULL);


#
# TABLE STRUCTURE FOR: figures
#

DROP TABLE IF EXISTS `figures`;

CREATE TABLE `figures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: figures_types
#

DROP TABLE IF EXISTS `figures_types`;

CREATE TABLE `figures_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: games
#

DROP TABLE IF EXISTS `games`;

CREATE TABLE `games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_game_id` int(11) DEFAULT NULL,
  `white` int(11) NOT NULL COMMENT 'user_id',
  `black` int(11) NOT NULL COMMENT 'user_id',
  `status_id` int(11) DEFAULT NULL,
  `result_game` int(10) unsigned DEFAULT NULL COMMENT '1 - white winner, 0- black winner, 0,5 - draw',
  `tournament_id` int(11) DEFAULT NULL,
  `start_at` datetime NOT NULL DEFAULT current_timestamp(),
  `finished_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (1, 2, 3, 9, 3, 0, 1, '2009-07-01 14:41:22', '1989-11-05 10:57:16');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (2, 5, 67, 23, 3, 0, 2, '2005-12-20 15:47:14', '1991-02-13 08:54:07');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (3, 4, 1, 47, 3, 0, 3, '1977-05-19 07:24:33', '1976-05-10 14:32:20');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (4, 2, 99, 53, 2, 0, 4, '1988-12-04 22:27:29', '1997-09-19 11:31:20');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (5, 4, 68, 13, 3, 0, 5, '2018-11-16 11:50:01', '1998-07-24 06:42:04');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (6, 1, 89, 97, 2, 0, 6, '1989-03-30 14:32:40', '2012-02-02 08:16:51');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (7, 1, 41, 33, 2, 0, 7, '2002-11-16 18:17:29', '1999-11-22 08:18:50');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (8, 5, 42, 38, 1, 0, 8, '1994-10-09 16:55:25', '1988-02-27 20:27:23');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (9, 3, 17, 17, 3, 0, 9, '1982-09-09 02:30:49', '1971-01-04 00:27:38');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (10, 2, 72, 58, 3, 0, 10, '2015-01-25 16:36:31', '1998-03-10 23:25:37');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (11, 4, 59, 26, 1, 0, 11, '2018-12-25 05:53:55', '1988-11-20 13:33:40');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (12, 4, 67, 92, 3, 0, 12, '1972-12-04 15:13:25', '1984-11-12 22:37:03');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (13, 4, 74, 99, 1, 0, 13, '2001-03-27 13:27:18', '1987-12-30 14:39:25');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (14, 4, 57, 6, 2, 0, 14, '1991-08-12 04:37:13', '1996-04-16 10:01:04');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (15, 1, 70, 48, 3, 0, 15, '1971-06-16 11:21:17', '2015-12-11 16:52:51');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (16, 4, 87, 76, 1, 0, 16, '1978-08-03 08:43:49', '1984-01-08 08:40:33');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (17, 1, 56, 16, 1, 0, 17, '1989-05-20 05:25:05', '1984-04-19 13:13:34');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (18, 1, 66, 5, 3, 0, 18, '2004-11-12 12:18:56', '1997-12-24 03:00:46');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (19, 2, 96, 5, 2, 0, 19, '1986-03-06 22:51:24', '1999-03-14 19:24:43');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (20, 4, 69, 51, 3, 0, 20, '1994-07-10 07:53:05', '1976-09-06 10:53:16');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (21, 3, 100, 96, 1, 0, 21, '1978-05-12 00:10:36', '1973-01-11 13:14:12');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (22, 1, 21, 53, 1, 0, 22, '2007-11-07 14:04:53', '1975-02-09 20:54:35');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (23, 5, 8, 43, 1, 0, 23, '1993-02-25 02:13:28', '1982-10-17 19:07:46');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (24, 1, 38, 73, 1, 0, 24, '1981-02-07 09:58:02', '2018-11-30 22:43:07');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (25, 4, 20, 5, 2, 0, 25, '2012-10-22 02:14:55', '1996-08-23 17:41:26');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (26, 3, 62, 32, 2, 0, 26, '1984-10-02 21:36:26', '1983-07-06 00:27:56');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (27, 3, 49, 30, 2, 0, 27, '1976-09-20 10:12:46', '2009-03-07 16:45:26');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (28, 2, 91, 51, 2, 0, 28, '2002-05-22 21:41:54', '2013-08-16 13:55:45');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (29, 1, 45, 91, 2, 0, 29, '2010-09-29 01:34:50', '1990-01-16 13:37:37');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (30, 2, 65, 23, 3, 0, 30, '1977-10-25 17:28:58', '1989-01-29 13:28:59');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (31, 4, 46, 7, 1, 0, 31, '2000-05-13 18:27:19', '2004-06-09 19:54:41');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (32, 5, 21, 86, 2, 0, 32, '1983-09-25 05:01:21', '1976-01-27 00:56:45');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (33, 4, 45, 67, 2, 0, 33, '2005-08-04 14:18:31', '1977-04-07 10:35:35');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (34, 4, 47, 17, 2, 0, 34, '1980-05-13 14:08:10', '2014-02-28 07:11:04');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (35, 1, 35, 81, 2, 0, 35, '1993-06-20 05:22:18', '2011-07-21 06:59:24');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (36, 5, 45, 65, 3, 0, 36, '1981-09-17 15:19:27', '2014-05-12 04:10:15');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (37, 2, 44, 59, 3, 0, 37, '1997-11-02 00:55:36', '1973-04-13 02:33:29');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (38, 2, 17, 56, 2, 0, 38, '1999-03-19 01:18:48', '2015-11-14 04:24:55');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (39, 2, 26, 59, 3, 0, 39, '1975-12-13 09:31:04', '1981-12-12 18:25:36');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (40, 1, 89, 16, 1, 0, 40, '2001-10-27 04:02:11', '1977-11-17 21:41:07');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (41, 3, 19, 59, 1, 0, 1, '1976-02-02 01:15:18', '1980-03-17 01:51:21');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (42, 3, 8, 9, 1, 0, 2, '1989-05-27 06:01:38', '1990-06-15 16:50:19');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (43, 4, 7, 24, 3, 0, 3, '1980-03-02 23:23:52', '1979-04-21 00:38:25');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (44, 3, 52, 60, 2, 0, 4, '1998-09-27 15:14:22', '1993-05-21 21:39:12');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (45, 1, 99, 65, 2, 0, 5, '1976-10-20 02:35:23', '1987-02-17 23:32:03');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (46, 5, 86, 41, 3, 0, 6, '1994-05-10 17:58:17', '1997-02-21 06:08:15');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (47, 1, 34, 50, 3, 0, 7, '1993-07-24 10:32:46', '1997-01-08 21:00:42');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (48, 2, 91, 76, 1, 0, 8, '1998-12-16 08:32:06', '1985-08-12 10:51:23');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (49, 1, 14, 12, 2, 0, 9, '1976-04-06 18:04:49', '2005-03-11 06:46:18');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (50, 2, 91, 58, 3, 0, 10, '2005-12-24 23:59:11', '1987-06-21 10:17:02');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (51, 3, 66, 49, 2, 0, 11, '2007-04-15 20:47:56', '1989-02-18 16:30:49');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (52, 4, 44, 100, 2, 0, 12, '1995-02-09 10:05:25', '1993-06-07 01:01:55');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (53, 5, 37, 34, 3, 0, 13, '2004-03-10 17:17:40', '1991-10-13 17:41:28');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (54, 2, 54, 41, 1, 0, 14, '2017-02-12 18:53:18', '1981-03-20 21:24:23');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (55, 2, 51, 10, 2, 0, 15, '1994-01-31 17:20:36', '1977-05-04 06:36:42');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (56, 5, 33, 71, 2, 0, 16, '1987-04-22 08:16:04', '1981-01-13 21:24:00');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (57, 1, 62, 97, 1, 0, 17, '2003-01-04 18:15:43', '1974-06-18 08:24:31');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (58, 4, 13, 15, 2, 0, 18, '1991-01-11 13:03:53', '1999-09-15 11:00:59');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (59, 5, 23, 84, 2, 0, 19, '1997-04-05 14:06:39', '1973-03-26 03:56:45');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (60, 1, 51, 13, 1, 0, 20, '2006-07-25 22:10:44', '2007-10-02 13:19:41');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (61, 5, 80, 22, 3, 0, 21, '2000-01-16 03:07:57', '2004-07-10 06:11:56');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (62, 4, 5, 27, 1, 0, 22, '1980-10-11 03:39:59', '2008-05-07 12:13:35');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (63, 1, 74, 11, 3, 0, 23, '2019-03-26 20:02:51', '1993-07-21 00:25:06');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (64, 5, 47, 14, 2, 0, 24, '1984-11-18 03:10:57', '2001-05-10 23:07:03');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (65, 4, 26, 46, 3, 0, 25, '1990-11-21 19:19:47', '1979-05-16 20:55:26');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (66, 4, 89, 9, 3, 0, 26, '2004-05-04 13:07:25', '1979-09-20 03:07:32');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (67, 3, 99, 86, 3, 0, 27, '2010-01-24 17:34:31', '2018-12-06 13:06:34');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (68, 2, 36, 12, 1, 0, 28, '1994-02-12 18:10:28', '1993-04-27 00:53:12');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (69, 4, 70, 46, 2, 0, 29, '2017-05-31 20:48:06', '1986-09-17 12:35:44');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (70, 5, 82, 96, 2, 0, 30, '1977-01-30 22:40:43', '1975-01-06 19:14:18');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (71, 2, 68, 99, 3, 0, 31, '1984-07-10 18:41:39', '2015-04-10 19:11:05');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (72, 3, 72, 58, 3, 0, 32, '2002-10-24 00:56:52', '1981-05-25 01:48:35');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (73, 5, 2, 92, 2, 0, 33, '1981-11-20 07:01:57', '1990-10-25 15:14:32');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (74, 1, 64, 11, 1, 0, 34, '1974-01-04 23:28:21', '2010-01-06 01:47:01');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (75, 3, 24, 20, 2, 0, 35, '1973-05-31 13:51:07', '1973-06-15 00:40:46');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (76, 4, 22, 50, 3, 0, 36, '2007-11-09 01:13:22', '2012-02-04 23:59:56');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (77, 2, 54, 88, 1, 0, 37, '1972-08-23 09:33:25', '1998-10-01 01:26:18');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (78, 2, 37, 100, 1, 0, 38, '2008-10-28 14:18:43', '1980-05-24 16:54:49');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (79, 3, 20, 14, 3, 0, 39, '1994-07-17 22:14:51', '2007-12-16 01:58:19');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (80, 1, 64, 30, 2, 0, 40, '2008-08-09 06:07:19', '2000-09-26 01:28:33');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (81, 2, 88, 30, 3, 0, 1, '1995-10-10 19:20:34', '2000-06-20 16:32:40');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (82, 3, 6, 70, 1, 0, 2, '1984-02-10 10:59:44', '2014-08-09 18:37:50');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (83, 4, 63, 99, 1, 0, 3, '2003-07-07 05:50:01', '1993-01-22 10:09:12');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (84, 3, 36, 41, 2, 0, 4, '1995-12-01 07:23:06', '1994-09-20 09:42:02');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (85, 5, 60, 58, 1, 0, 5, '2014-05-05 18:12:21', '2010-02-10 02:11:14');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (86, 4, 59, 50, 3, 0, 6, '1996-03-26 00:58:05', '1996-07-08 14:13:29');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (87, 3, 61, 13, 1, 0, 7, '1971-07-09 01:47:53', '1984-08-12 13:04:11');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (88, 5, 13, 16, 1, 0, 8, '1999-05-12 07:06:54', '1985-07-09 08:49:04');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (89, 5, 45, 8, 3, 0, 9, '2005-06-13 03:29:51', '1975-03-29 12:54:36');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (90, 4, 85, 30, 2, 0, 10, '2004-01-20 02:10:50', '1976-10-17 15:49:31');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (91, 3, 67, 37, 1, 0, 11, '2004-09-19 17:05:55', '1995-09-25 03:35:09');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (92, 2, 72, 57, 3, 0, 12, '2009-08-11 14:56:34', '2018-04-26 13:08:07');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (93, 4, 56, 42, 3, 0, 13, '1979-12-07 14:05:12', '1979-11-06 22:48:40');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (94, 3, 35, 51, 1, 0, 14, '2003-11-06 21:40:46', '1979-11-24 16:49:50');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (95, 1, 41, 55, 3, 0, 15, '1988-06-03 20:07:53', '2016-11-12 10:37:15');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (96, 2, 31, 72, 3, 0, 16, '2005-05-20 11:47:34', '1978-04-30 02:05:57');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (97, 1, 66, 85, 1, 0, 17, '2003-06-07 03:23:22', '1983-01-04 04:00:32');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (98, 5, 63, 69, 3, 0, 18, '2002-02-26 15:57:32', '1990-07-26 01:51:53');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (99, 1, 4, 53, 1, 0, 19, '1978-05-08 04:19:17', '1981-11-29 22:21:28');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (100, 3, 32, 80, 1, 0, 20, '1993-07-15 08:14:50', '2003-09-22 10:50:14');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (101, 4, 95, 82, 1, 0, 21, '1979-03-22 17:48:14', '2014-02-12 04:48:06');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (102, 3, 44, 29, 1, 0, 22, '1991-07-02 07:06:42', '2008-10-11 20:41:24');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (103, 5, 68, 11, 2, 0, 23, '2002-05-01 00:57:35', '2001-05-02 16:30:27');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (104, 1, 48, 63, 3, 0, 24, '2007-11-18 17:09:39', '1979-09-05 08:27:31');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (105, 3, 80, 85, 3, 0, 25, '2002-01-01 22:52:41', '1978-04-14 12:04:42');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (106, 5, 85, 56, 1, 0, 26, '1995-02-08 18:13:31', '1976-11-06 02:53:41');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (107, 2, 3, 70, 2, 0, 27, '1982-05-13 01:43:29', '2003-09-04 01:29:30');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (108, 4, 18, 35, 1, 0, 28, '1987-11-24 12:04:11', '2005-01-16 20:16:09');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (109, 1, 12, 49, 3, 0, 29, '1982-04-22 16:23:57', '2008-05-10 17:28:29');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (110, 2, 74, 53, 2, 0, 30, '1979-10-11 23:50:14', '1978-02-08 06:36:09');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (111, 5, 68, 36, 2, 0, 31, '1995-11-02 18:28:26', '2008-07-18 04:18:23');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (112, 1, 55, 23, 2, 0, 32, '1975-12-12 16:07:33', '1970-04-23 00:41:00');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (113, 4, 94, 91, 3, 0, 33, '2001-05-23 17:58:09', '1973-02-16 05:51:20');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (114, 1, 28, 52, 1, 0, 34, '2000-02-18 13:11:19', '2006-11-08 02:43:58');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (115, 4, 72, 82, 3, 0, 35, '1980-04-10 09:30:17', '1972-01-08 00:22:12');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (116, 1, 74, 6, 1, 0, 36, '2000-03-24 12:49:58', '2001-07-20 11:26:30');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (117, 5, 54, 54, 2, 0, 37, '1978-02-12 20:53:46', '1998-12-28 18:57:00');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (118, 4, 5, 34, 2, 0, 38, '2012-03-04 16:27:41', '2015-12-01 20:09:34');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (119, 1, 54, 76, 2, 0, 39, '2004-10-24 15:42:26', '1990-09-11 08:21:34');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (120, 3, 26, 3, 2, 0, 40, '1982-10-12 19:24:30', '1975-05-06 15:55:53');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (121, 5, 49, 74, 1, 0, 1, '2005-03-06 03:46:16', '1997-04-10 12:14:38');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (122, 5, 20, 88, 3, 0, 2, '1975-08-28 12:11:05', '1977-07-27 00:55:59');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (123, 1, 59, 11, 1, 0, 3, '2003-05-30 12:17:13', '1990-09-11 16:59:52');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (124, 2, 16, 43, 2, 0, 4, '1990-03-24 20:55:42', '2012-03-25 11:22:57');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (125, 1, 48, 91, 3, 0, 5, '1982-12-24 12:50:00', '1978-10-05 16:54:09');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (126, 2, 78, 76, 3, 0, 6, '1978-05-05 02:04:56', '1977-10-06 02:00:14');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (127, 4, 28, 18, 2, 0, 7, '1995-07-25 21:38:31', '2016-11-23 11:26:03');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (128, 1, 30, 84, 2, 0, 8, '2008-03-30 09:51:05', '2013-02-05 19:53:23');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (129, 2, 99, 72, 1, 0, 9, '1979-01-22 03:55:48', '1987-05-08 06:13:31');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (130, 5, 85, 60, 1, 0, 10, '1986-01-01 01:01:16', '1974-09-21 22:43:27');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (131, 1, 62, 18, 3, 0, 11, '1992-07-31 19:39:28', '2009-02-14 09:37:49');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (132, 1, 8, 55, 2, 0, 12, '1999-10-23 08:46:29', '2004-06-07 14:08:07');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (133, 4, 72, 26, 3, 0, 13, '1981-05-15 03:45:50', '1984-06-25 21:58:53');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (134, 2, 16, 60, 2, 0, 14, '2009-11-23 09:35:05', '2006-05-24 01:41:44');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (135, 2, 62, 76, 2, 0, 15, '2001-11-04 12:24:13', '2000-11-05 09:51:57');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (136, 5, 39, 76, 3, 0, 16, '2002-03-03 05:04:48', '2010-04-04 04:58:03');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (137, 3, 68, 100, 3, 0, 17, '1985-11-19 13:10:11', '1986-05-13 06:43:07');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (138, 1, 5, 63, 3, 0, 18, '1977-04-25 11:49:07', '2011-11-05 21:33:32');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (139, 3, 100, 45, 2, 0, 19, '2013-08-05 21:19:20', '1998-10-22 16:40:24');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (140, 4, 12, 63, 2, 0, 20, '2012-03-15 21:24:23', '1994-02-15 06:02:18');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (141, 2, 51, 66, 2, 0, 21, '2013-08-28 16:34:28', '2009-10-05 09:59:59');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (142, 2, 61, 21, 1, 0, 22, '2013-07-13 10:11:16', '2012-06-23 22:22:55');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (143, 3, 48, 27, 1, 0, 23, '2001-07-10 09:34:42', '2006-12-26 16:17:54');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (144, 2, 78, 89, 1, 0, 24, '1975-10-10 12:05:21', '2008-11-10 17:47:37');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (145, 3, 60, 55, 1, 0, 25, '2018-12-12 20:09:01', '1981-04-09 23:26:40');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (146, 1, 8, 12, 2, 0, 26, '1981-06-27 11:11:18', '2003-01-09 02:42:26');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (147, 2, 68, 33, 3, 0, 27, '2000-05-07 05:27:18', '1974-01-20 13:55:54');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (148, 3, 34, 68, 1, 0, 28, '1984-12-16 01:28:02', '1980-12-08 04:05:59');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (149, 5, 21, 82, 1, 0, 29, '1989-05-31 18:02:41', '1970-11-22 00:01:47');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (150, 5, 54, 95, 1, 0, 30, '1975-03-25 12:28:25', '1987-08-23 06:46:59');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (151, 3, 85, 9, 2, 0, 31, '2016-03-30 20:40:12', '1984-10-16 03:17:44');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (152, 3, 8, 77, 3, 0, 32, '1986-01-25 02:31:36', '2013-01-31 05:54:05');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (153, 4, 49, 26, 2, 0, 33, '2010-04-04 06:46:11', '2008-07-04 16:50:18');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (154, 3, 1, 70, 1, 0, 34, '2002-06-27 04:23:54', '2018-12-30 23:16:22');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (155, 1, 4, 54, 3, 0, 35, '1974-04-10 18:05:31', '2005-09-08 00:10:30');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (156, 3, 64, 8, 3, 0, 36, '1996-01-30 15:34:26', '1975-12-10 19:25:42');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (157, 3, 7, 46, 2, 0, 37, '1991-01-21 11:51:16', '1992-06-03 19:33:20');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (158, 3, 63, 26, 3, 0, 38, '2014-11-23 00:34:09', '2010-06-07 20:54:37');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (159, 4, 14, 49, 3, 0, 39, '1999-01-17 06:45:54', '1981-10-19 13:00:11');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (160, 4, 10, 79, 2, 0, 40, '1980-06-16 22:28:02', '1985-02-08 06:52:15');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (161, 2, 33, 74, 1, 0, 1, '2007-07-02 05:22:56', '1977-05-14 15:27:47');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (162, 2, 92, 24, 1, 0, 2, '1978-07-09 22:51:11', '2008-07-10 22:17:45');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (163, 5, 72, 13, 3, 0, 3, '1982-03-17 16:38:57', '1997-04-24 06:11:12');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (164, 1, 23, 20, 1, 0, 4, '1988-03-09 15:33:35', '1987-05-19 23:43:24');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (165, 3, 93, 69, 2, 0, 5, '1995-09-26 16:28:08', '1994-09-24 03:21:32');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (166, 2, 45, 80, 3, 0, 6, '1980-05-19 10:10:19', '1986-12-13 04:02:43');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (167, 5, 2, 8, 3, 0, 7, '1983-08-19 11:20:14', '2018-03-30 04:31:03');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (168, 3, 96, 10, 3, 0, 8, '1989-12-09 04:00:04', '1994-09-07 22:39:50');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (169, 4, 83, 41, 3, 0, 9, '2013-07-19 06:23:21', '2012-01-29 07:36:03');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (170, 5, 22, 49, 3, 0, 10, '1998-05-28 14:44:53', '1982-09-27 21:05:26');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (171, 1, 3, 41, 1, 0, 11, '1988-04-05 12:06:40', '1982-06-01 19:27:56');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (172, 1, 9, 45, 2, 0, 12, '1981-11-21 19:17:18', '2008-09-28 22:30:37');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (173, 4, 83, 65, 1, 0, 13, '1971-01-26 20:36:22', '2001-03-07 08:59:26');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (174, 2, 87, 72, 2, 0, 14, '1980-08-09 02:35:28', '2014-08-07 16:01:30');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (175, 1, 39, 59, 3, 0, 15, '2002-03-30 00:27:26', '1975-11-13 07:33:56');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (176, 3, 27, 28, 1, 0, 16, '2019-07-02 04:00:05', '2000-02-26 22:52:49');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (177, 4, 36, 71, 1, 0, 17, '1995-09-04 03:36:36', '1984-08-08 21:26:48');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (178, 3, 99, 9, 3, 0, 18, '1970-06-24 16:16:26', '1985-07-05 07:28:14');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (179, 5, 90, 35, 2, 0, 19, '1993-05-17 22:43:30', '1981-04-24 23:49:17');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (180, 4, 91, 49, 1, 0, 20, '1987-04-14 21:48:29', '1978-06-15 20:34:58');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (181, 5, 1, 31, 1, 0, 21, '1971-08-19 20:57:19', '1995-08-05 06:02:45');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (182, 4, 98, 67, 2, 0, 22, '2001-04-18 22:26:13', '2017-05-18 17:20:19');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (183, 2, 92, 84, 3, 0, 23, '1976-06-09 18:40:44', '1978-04-27 09:19:50');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (184, 5, 23, 69, 2, 0, 24, '1975-02-17 09:44:55', '2001-12-04 10:22:06');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (185, 1, 73, 85, 3, 0, 25, '2002-03-28 06:07:40', '1995-03-05 10:13:00');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (186, 5, 83, 47, 1, 0, 26, '1991-12-23 16:53:39', '1973-12-19 13:46:53');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (187, 2, 83, 92, 1, 0, 27, '1977-04-02 16:02:08', '1996-08-20 15:49:10');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (188, 4, 12, 27, 1, 0, 28, '1987-10-25 05:39:29', '2007-10-08 23:31:21');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (189, 1, 79, 79, 3, 0, 29, '1994-08-31 22:50:55', '1973-06-28 08:02:21');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (190, 5, 29, 33, 3, 0, 30, '2013-05-03 23:17:48', '1971-11-15 10:36:53');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (191, 3, 27, 71, 2, 0, 31, '1978-03-23 14:51:35', '1986-08-11 11:25:44');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (192, 1, 8, 46, 1, 0, 32, '1978-06-17 16:26:51', '1991-02-03 02:37:03');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (193, 2, 66, 6, 2, 0, 33, '2009-10-30 22:17:34', '2019-10-24 04:51:07');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (194, 1, 31, 27, 3, 0, 34, '1995-02-09 12:52:21', '2016-12-27 02:40:27');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (195, 4, 50, 82, 1, 0, 35, '1974-05-30 10:21:25', '1971-01-16 09:38:40');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (196, 4, 28, 48, 3, 0, 36, '2011-03-25 08:09:08', '2007-04-27 05:33:23');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (197, 2, 33, 98, 3, 0, 37, '1994-04-23 06:08:18', '1982-01-07 09:36:35');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (198, 5, 93, 92, 3, 0, 38, '2009-12-27 00:35:00', '2013-04-26 17:19:44');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (199, 5, 34, 93, 3, 0, 39, '1989-10-29 10:51:21', '2004-01-13 23:20:32');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (200, 2, 9, 61, 2, 0, 40, '2013-10-07 03:24:01', '1973-02-22 04:18:43');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (201, 5, 53, 14, 3, 0, 1, '1993-01-21 11:46:33', '1982-06-12 17:44:43');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (202, 3, 42, 87, 1, 0, 2, '2011-03-11 01:07:09', '2006-11-11 16:42:23');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (203, 1, 14, 7, 3, 0, 3, '1981-04-12 02:52:01', '1986-02-13 11:23:27');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (204, 3, 91, 54, 3, 0, 4, '2003-07-02 17:51:01', '1991-10-10 12:08:53');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (205, 5, 86, 17, 1, 0, 5, '2015-08-04 08:15:20', '2004-05-03 16:17:07');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (206, 3, 23, 48, 3, 0, 6, '1994-09-08 02:22:14', '1998-07-12 22:19:06');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (207, 1, 23, 30, 1, 0, 7, '1981-08-20 18:58:50', '1980-06-16 20:48:18');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (208, 4, 55, 44, 1, 0, 8, '1987-04-25 01:55:41', '2006-08-06 18:34:56');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (209, 2, 43, 53, 2, 0, 9, '1986-11-03 20:31:56', '1970-08-21 14:53:48');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (210, 3, 18, 11, 2, 0, 10, '1985-04-28 17:06:24', '2018-08-23 17:41:23');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (211, 2, 41, 22, 2, 0, 11, '2009-06-15 05:42:29', '2018-09-10 18:23:30');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (212, 1, 51, 27, 2, 0, 12, '2019-03-24 06:23:02', '2014-11-17 06:56:54');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (213, 3, 9, 15, 1, 0, 13, '1996-02-20 12:56:45', '2013-08-31 08:21:30');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (214, 1, 67, 94, 3, 0, 14, '1994-05-29 08:48:52', '1970-10-06 00:01:42');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (215, 1, 15, 40, 2, 0, 15, '2011-07-16 22:33:57', '1971-03-09 09:34:22');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (216, 4, 80, 37, 1, 0, 16, '1992-04-21 15:18:13', '2003-08-26 18:09:43');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (217, 3, 16, 36, 1, 0, 17, '1982-09-23 09:22:44', '1993-10-05 06:39:41');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (218, 5, 14, 27, 1, 0, 18, '2013-09-24 21:13:24', '2002-06-10 16:30:28');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (219, 2, 17, 43, 1, 0, 19, '1985-09-23 02:44:01', '2013-06-20 11:14:44');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (220, 1, 10, 34, 1, 0, 20, '1980-03-03 17:32:33', '1980-11-30 12:39:12');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (221, 4, 3, 69, 1, 0, 21, '1970-02-05 22:31:21', '2005-02-15 06:28:19');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (222, 2, 64, 76, 2, 0, 22, '1990-10-20 17:12:11', '1984-12-25 10:19:36');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (223, 4, 75, 82, 2, 0, 23, '1981-08-25 13:42:26', '2001-12-22 03:28:10');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (224, 5, 45, 41, 3, 0, 24, '1993-07-16 20:10:13', '2005-08-18 01:47:38');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (225, 5, 82, 17, 2, 0, 25, '2008-01-14 06:02:25', '1984-02-07 06:03:02');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (226, 1, 96, 81, 1, 0, 26, '2002-04-30 16:26:00', '1987-01-31 13:32:41');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (227, 5, 18, 9, 2, 0, 27, '2010-12-16 08:28:42', '1974-08-25 05:49:50');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (228, 5, 54, 56, 1, 0, 28, '2010-07-30 10:53:25', '1992-04-05 14:36:43');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (229, 2, 41, 81, 1, 0, 29, '1988-09-26 13:17:52', '2007-01-15 13:07:17');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (230, 2, 89, 18, 2, 0, 30, '2003-06-01 20:55:14', '2013-06-09 08:40:07');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (231, 3, 97, 12, 1, 0, 31, '2017-12-19 16:10:39', '1986-05-15 07:25:06');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (232, 1, 83, 65, 1, 0, 32, '1986-12-29 11:27:48', '2018-12-05 08:51:46');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (233, 2, 91, 13, 3, 0, 33, '2004-10-31 03:39:50', '2000-10-18 07:52:52');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (234, 5, 49, 89, 1, 0, 34, '2001-02-07 06:45:27', '2008-07-09 14:51:42');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (235, 1, 2, 48, 1, 0, 35, '1986-05-22 23:53:48', '1977-02-07 12:34:12');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (236, 2, 26, 40, 3, 0, 36, '1981-08-06 16:45:56', '1995-02-25 06:11:05');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (237, 5, 71, 43, 1, 0, 37, '1972-02-07 14:34:32', '1979-06-10 03:09:31');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (238, 1, 95, 30, 1, 0, 38, '1996-12-20 17:27:16', '1995-07-15 20:59:43');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (239, 4, 39, 75, 1, 0, 39, '1977-04-01 04:52:42', '1983-05-27 01:15:48');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (240, 3, 36, 89, 3, 0, 40, '1993-05-21 05:11:15', '1991-05-23 17:38:36');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (241, 1, 30, 44, 2, 0, 1, '2010-01-22 07:56:41', '2011-08-07 08:40:25');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (242, 3, 50, 15, 3, 0, 2, '1975-04-30 17:30:11', '1983-07-28 02:32:17');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (243, 2, 44, 46, 1, 0, 3, '1992-08-08 02:56:43', '2001-07-08 21:54:26');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (244, 2, 9, 96, 1, 0, 4, '1989-10-14 09:27:05', '1984-02-07 05:21:00');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (245, 2, 6, 52, 1, 0, 5, '2000-02-14 12:54:12', '2007-01-08 22:50:38');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (246, 2, 28, 95, 3, 0, 6, '1979-12-18 16:26:10', '1979-02-10 11:43:12');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (247, 2, 91, 39, 2, 0, 7, '2007-12-28 17:42:28', '2001-07-07 12:30:15');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (248, 2, 67, 29, 2, 0, 8, '2013-05-07 01:54:30', '2001-10-19 07:57:46');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (249, 3, 84, 35, 2, 0, 9, '2000-06-06 19:42:17', '1981-08-12 07:06:40');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (250, 2, 55, 69, 2, 0, 10, '2003-07-27 22:44:31', '1985-01-19 06:30:24');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (251, 2, 4, 45, 2, 0, 11, '2011-03-24 15:45:51', '2005-05-03 06:41:37');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (252, 1, 77, 88, 3, 0, 12, '1971-06-15 17:45:30', '2007-06-14 12:04:31');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (253, 3, 41, 24, 2, 0, 13, '1974-12-28 08:52:05', '2002-07-13 07:38:56');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (254, 5, 61, 91, 2, 0, 14, '1990-10-03 20:16:18', '2016-01-07 12:26:31');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (255, 4, 24, 85, 1, 0, 15, '1972-03-27 08:07:49', '1987-09-10 15:30:37');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (256, 1, 7, 82, 1, 0, 16, '1988-12-04 18:30:39', '1975-10-23 15:37:18');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (257, 4, 30, 50, 1, 0, 17, '1992-02-14 17:23:16', '1982-01-26 00:07:45');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (258, 4, 70, 32, 1, 0, 18, '2002-03-06 16:40:09', '1978-01-01 21:16:24');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (259, 4, 52, 36, 1, 0, 19, '2017-07-26 11:12:20', '1978-02-01 09:46:51');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (260, 3, 87, 92, 2, 0, 20, '2005-09-03 07:25:38', '1976-04-09 23:25:37');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (261, 1, 5, 30, 3, 0, 21, '1979-10-01 04:21:58', '1985-05-22 09:12:00');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (262, 2, 17, 13, 2, 0, 22, '2008-09-13 11:55:59', '1973-05-26 03:19:39');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (263, 3, 52, 22, 1, 0, 23, '1981-12-13 02:38:35', '1987-02-16 03:02:41');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (264, 2, 61, 81, 1, 0, 24, '1999-05-31 22:21:21', '2000-09-26 19:35:16');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (265, 4, 50, 1, 3, 0, 25, '1978-03-17 12:18:14', '1985-11-21 11:52:48');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (266, 4, 15, 18, 1, 0, 26, '1980-06-15 00:27:49', '1983-03-13 14:19:50');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (267, 5, 37, 34, 3, 0, 27, '1975-08-01 11:09:33', '2002-04-18 02:38:50');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (268, 2, 30, 70, 1, 0, 28, '2001-08-04 03:49:22', '1989-09-17 09:01:41');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (269, 4, 28, 22, 3, 0, 29, '1986-07-19 22:34:13', '1988-07-25 16:31:13');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (270, 5, 18, 14, 2, 0, 30, '2005-11-21 15:26:01', '2000-10-10 00:13:28');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (271, 5, 50, 52, 3, 0, 31, '2013-07-09 00:26:02', '2000-09-22 20:06:42');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (272, 3, 73, 66, 1, 0, 32, '2018-12-04 11:04:39', '2012-12-25 13:04:56');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (273, 2, 39, 95, 1, 0, 33, '1992-10-17 20:09:54', '1992-07-15 23:59:45');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (274, 2, 65, 48, 2, 0, 34, '1974-07-13 04:05:39', '1971-03-06 16:50:01');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (275, 3, 22, 93, 3, 0, 35, '2002-08-30 09:07:24', '2017-09-05 14:58:25');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (276, 5, 51, 6, 2, 0, 36, '2018-07-22 13:24:25', '1983-06-07 02:49:21');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (277, 4, 92, 76, 1, 0, 37, '1974-03-25 05:22:13', '2019-01-08 23:49:25');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (278, 3, 52, 71, 2, 0, 38, '2006-03-27 12:37:21', '2012-03-01 23:39:14');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (279, 3, 100, 91, 3, 0, 39, '2013-12-22 17:33:28', '2019-03-31 04:28:50');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (280, 2, 4, 87, 2, 0, 40, '1973-08-22 00:23:40', '2019-10-28 15:40:06');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (281, 5, 95, 40, 2, 0, 1, '2014-08-28 01:40:53', '1975-10-12 11:51:41');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (282, 2, 38, 67, 3, 0, 2, '1987-11-01 11:14:28', '1970-04-18 21:00:47');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (283, 3, 82, 91, 2, 0, 3, '2010-12-13 18:36:44', '2002-04-16 12:27:27');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (284, 3, 24, 65, 1, 0, 4, '2004-12-02 00:52:50', '1977-10-23 00:45:17');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (285, 1, 51, 75, 2, 0, 5, '2017-08-03 04:27:41', '2015-06-03 15:18:17');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (286, 1, 60, 20, 3, 0, 6, '2017-11-12 03:05:00', '2011-06-14 18:29:02');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (287, 1, 74, 2, 2, 0, 7, '2017-10-28 06:16:39', '1986-08-28 16:08:04');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (288, 4, 5, 75, 2, 0, 8, '2007-04-11 17:39:05', '2007-03-20 06:42:49');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (289, 4, 74, 89, 1, 0, 9, '1988-10-06 17:07:42', '2004-12-20 04:09:17');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (290, 1, 67, 93, 3, 0, 10, '2005-03-05 13:07:40', '1974-06-05 14:29:49');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (291, 1, 16, 10, 1, 0, 11, '2015-12-24 21:58:50', '1973-12-15 12:50:05');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (292, 4, 8, 71, 3, 0, 12, '1991-09-26 00:45:04', '2001-03-21 10:47:00');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (293, 5, 96, 9, 1, 0, 13, '2002-01-30 06:43:14', '1982-01-15 10:36:37');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (294, 3, 30, 50, 3, 0, 14, '1996-09-02 03:20:04', '1991-06-29 23:27:55');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (295, 4, 10, 19, 1, 0, 15, '2003-09-25 09:25:54', '1979-02-21 19:35:30');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (296, 2, 6, 83, 3, 0, 16, '2001-05-28 19:46:52', '1979-03-03 13:26:39');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (297, 3, 39, 21, 3, 0, 17, '1990-08-09 16:26:13', '1980-10-07 15:03:49');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (298, 3, 84, 40, 2, 0, 18, '1977-08-15 16:40:30', '1980-12-04 10:59:57');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (299, 3, 2, 52, 1, 0, 19, '1996-03-31 14:06:44', '1988-09-01 03:07:56');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (300, 5, 38, 48, 1, 0, 20, '1974-06-05 01:51:00', '2017-11-10 06:39:21');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (301, 1, 89, 8, 1, 0, 21, '2019-05-22 15:33:54', '2015-09-21 11:44:14');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (302, 2, 40, 62, 2, 0, 22, '1976-10-17 05:44:15', '2014-01-26 06:21:44');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (303, 1, 88, 76, 1, 0, 23, '1998-09-08 03:48:36', '1993-08-19 05:25:45');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (304, 3, 1, 92, 2, 0, 24, '1975-09-09 08:21:26', '1972-08-03 07:53:03');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (305, 2, 52, 12, 1, 0, 25, '1974-02-19 12:45:00', '1986-04-29 04:51:24');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (306, 2, 5, 3, 1, 0, 26, '2007-07-11 00:54:50', '1996-04-24 01:19:39');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (307, 3, 14, 27, 2, 0, 27, '1987-11-04 09:23:57', '2002-05-10 01:56:15');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (308, 1, 80, 37, 3, 0, 28, '1996-07-07 21:01:51', '2019-05-19 17:12:33');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (309, 1, 72, 72, 3, 0, 29, '1988-10-21 20:32:14', '2010-08-09 02:38:45');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (310, 5, 18, 25, 2, 0, 30, '1989-08-02 18:45:34', '1987-01-19 18:01:13');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (311, 1, 22, 85, 1, 0, 31, '2001-06-10 09:45:05', '1987-11-19 22:30:00');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (312, 4, 24, 69, 1, 0, 32, '2010-04-30 16:37:08', '1975-11-15 11:58:02');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (313, 3, 29, 79, 1, 0, 33, '1980-09-07 21:09:58', '1982-08-22 09:02:08');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (314, 4, 25, 3, 2, 0, 34, '2013-06-28 15:56:33', '1986-09-05 16:59:37');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (315, 5, 54, 60, 2, 0, 35, '1971-06-29 00:56:57', '1989-12-04 10:07:28');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (316, 4, 45, 52, 1, 0, 36, '2010-01-07 14:00:33', '2006-12-28 09:10:35');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (317, 3, 17, 70, 2, 0, 37, '2018-09-05 11:30:30', '2016-02-21 11:41:31');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (318, 1, 95, 92, 1, 0, 38, '1989-09-27 13:30:02', '2005-05-13 02:07:08');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (319, 4, 38, 81, 2, 0, 39, '1970-04-30 13:13:48', '1992-04-19 17:07:41');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (320, 3, 44, 70, 1, 0, 40, '1999-11-29 15:41:48', '2002-06-16 06:49:36');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (321, 5, 84, 46, 1, 0, 1, '2000-02-10 11:05:46', '2004-10-29 12:15:22');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (322, 2, 73, 91, 3, 0, 2, '1985-12-02 23:57:16', '1988-06-26 09:55:43');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (323, 1, 86, 33, 3, 0, 3, '1999-01-15 15:22:11', '2018-03-07 18:16:59');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (324, 4, 79, 43, 1, 0, 4, '1977-01-21 04:48:11', '2012-01-22 17:24:59');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (325, 3, 53, 88, 1, 0, 5, '1988-06-12 19:07:26', '2019-04-12 21:06:15');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (326, 5, 60, 55, 3, 0, 6, '2013-08-01 09:17:39', '1980-05-10 10:54:32');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (327, 5, 49, 17, 3, 0, 7, '1988-03-11 18:00:18', '2007-08-08 07:31:50');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (328, 2, 67, 72, 3, 0, 8, '1995-02-27 01:17:49', '1974-10-21 17:11:38');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (329, 1, 39, 42, 2, 0, 9, '2005-08-23 16:57:51', '1989-05-23 06:49:47');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (330, 4, 58, 96, 1, 0, 10, '2017-06-12 04:29:06', '1998-01-12 00:25:36');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (331, 5, 81, 84, 3, 0, 11, '1972-01-04 09:55:39', '1996-01-21 03:40:07');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (332, 4, 66, 71, 3, 0, 12, '1994-11-14 00:55:58', '1986-11-23 16:14:07');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (333, 2, 55, 49, 2, 0, 13, '2008-05-19 17:23:52', '1996-04-02 18:42:21');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (334, 2, 78, 98, 1, 0, 14, '1977-04-01 11:38:15', '2013-01-24 09:31:29');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (335, 3, 15, 35, 1, 0, 15, '1986-10-19 09:18:03', '2002-07-23 12:37:48');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (336, 5, 32, 58, 1, 0, 16, '2018-03-24 23:50:46', '1973-09-12 01:42:21');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (337, 4, 86, 69, 3, 0, 17, '1970-12-28 03:06:10', '2014-10-03 00:37:33');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (338, 2, 59, 65, 1, 0, 18, '2019-10-31 10:16:21', '2014-02-10 06:52:19');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (339, 1, 68, 93, 3, 0, 19, '1987-04-01 03:59:09', '1997-11-12 21:42:31');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (340, 1, 40, 64, 1, 0, 20, '2008-07-15 07:24:08', '1979-05-17 03:00:59');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (341, 3, 56, 19, 3, 0, 21, '2007-04-29 18:04:20', '1996-01-25 10:20:48');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (342, 5, 7, 10, 1, 0, 22, '1986-12-21 04:02:08', '2009-05-25 07:16:19');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (343, 2, 38, 99, 1, 0, 23, '1990-02-15 01:15:05', '1994-09-27 17:12:54');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (344, 4, 50, 67, 3, 0, 24, '1970-12-28 14:41:35', '2016-04-16 08:59:31');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (345, 1, 99, 86, 2, 0, 25, '1973-11-10 11:18:11', '1992-04-24 03:19:12');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (346, 1, 30, 7, 1, 0, 26, '1989-05-26 18:08:46', '1992-09-04 05:11:04');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (347, 5, 92, 53, 1, 0, 27, '2004-12-15 07:51:39', '1977-09-22 06:11:17');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (348, 3, 41, 48, 2, 0, 28, '2006-03-19 00:35:27', '2015-04-29 03:11:51');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (349, 5, 81, 53, 2, 0, 29, '1987-03-05 18:00:04', '2015-06-22 16:52:46');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (350, 2, 26, 84, 3, 0, 30, '2008-03-15 10:11:30', '1996-07-03 13:49:32');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (351, 4, 83, 13, 3, 0, 31, '1975-11-11 00:47:28', '2011-09-22 07:04:59');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (352, 4, 28, 14, 3, 0, 32, '1997-09-03 06:48:41', '2013-11-05 05:54:33');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (353, 2, 60, 10, 3, 0, 33, '1979-02-25 16:33:02', '2015-02-22 14:10:38');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (354, 5, 96, 32, 2, 0, 34, '1986-08-24 18:36:35', '1976-06-04 10:52:23');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (355, 3, 22, 33, 2, 0, 35, '1975-05-05 08:14:26', '1975-03-29 22:00:55');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (356, 5, 95, 51, 3, 0, 36, '2006-03-29 02:50:11', '2011-12-15 19:58:43');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (357, 2, 20, 61, 2, 0, 37, '1985-06-11 14:04:57', '2018-12-14 19:27:33');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (358, 5, 21, 11, 1, 0, 38, '2002-04-04 00:22:21', '1993-11-07 05:41:46');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (359, 4, 38, 49, 3, 0, 39, '1980-01-04 05:14:01', '1986-03-12 03:43:01');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (360, 1, 62, 35, 3, 0, 40, '1970-07-22 04:39:44', '1986-11-24 18:04:37');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (361, 5, 68, 36, 3, 0, 1, '2016-01-24 01:15:00', '1995-09-08 16:22:54');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (362, 4, 63, 41, 2, 0, 2, '2019-04-07 19:08:04', '1974-11-19 08:44:09');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (363, 3, 22, 65, 1, 0, 3, '1988-10-17 22:22:04', '1993-01-29 22:10:23');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (364, 5, 36, 73, 1, 0, 4, '1977-11-29 18:56:02', '2004-12-17 09:07:06');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (365, 3, 56, 94, 3, 0, 5, '1984-02-20 10:09:39', '2004-05-25 14:44:21');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (366, 4, 100, 86, 1, 0, 6, '2000-05-08 21:33:19', '2016-04-01 00:27:02');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (367, 2, 92, 87, 3, 0, 7, '1998-04-09 11:40:29', '2017-11-14 20:45:51');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (368, 3, 30, 76, 1, 0, 8, '1980-01-01 13:31:07', '1987-07-17 04:07:18');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (369, 3, 96, 19, 2, 0, 9, '2015-01-29 11:00:25', '1988-01-26 22:37:32');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (370, 1, 20, 60, 1, 0, 10, '2004-06-11 15:35:59', '1990-06-11 04:17:18');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (371, 4, 49, 73, 3, 0, 11, '2018-11-23 06:16:54', '1996-09-10 06:53:46');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (372, 2, 16, 81, 1, 0, 12, '2000-09-24 15:21:24', '1971-06-02 08:59:35');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (373, 2, 40, 32, 2, 0, 13, '1996-10-11 01:25:26', '1989-04-05 09:07:00');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (374, 4, 58, 64, 2, 0, 14, '1996-05-14 13:16:24', '2004-04-08 12:49:46');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (375, 1, 8, 80, 3, 0, 15, '1983-08-08 06:01:10', '1978-03-13 06:59:09');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (376, 1, 93, 73, 1, 0, 16, '1989-06-17 05:36:17', '2006-06-06 13:20:49');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (377, 5, 13, 44, 3, 0, 17, '1971-08-30 15:30:49', '2017-02-16 05:12:28');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (378, 2, 1, 32, 1, 0, 18, '2001-05-31 20:09:45', '1972-10-19 07:08:33');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (379, 5, 70, 79, 3, 0, 19, '2016-11-16 00:33:11', '1985-08-23 04:05:28');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (380, 2, 33, 46, 2, 0, 20, '1998-02-14 09:49:44', '1974-08-10 21:11:30');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (381, 2, 87, 73, 3, 0, 21, '2016-08-22 19:02:43', '1985-08-08 04:56:29');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (382, 2, 13, 40, 2, 0, 22, '2005-03-10 15:02:35', '2010-04-28 15:27:53');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (383, 1, 50, 20, 3, 0, 23, '1971-01-17 03:50:28', '1984-04-12 23:29:54');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (384, 4, 45, 60, 2, 0, 24, '1973-04-28 05:25:39', '2018-03-28 04:42:07');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (385, 3, 35, 68, 1, 0, 25, '1993-09-27 04:19:30', '1999-05-05 23:40:10');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (386, 2, 67, 15, 1, 0, 26, '2000-03-09 04:30:20', '2005-12-02 07:04:01');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (387, 5, 38, 8, 2, 0, 27, '2000-12-04 18:42:51', '2007-08-16 01:28:17');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (388, 5, 10, 64, 1, 0, 28, '2004-04-20 17:15:57', '1996-04-12 11:34:26');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (389, 1, 73, 67, 2, 0, 29, '1972-10-03 03:27:17', '2018-05-08 01:57:59');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (390, 3, 79, 12, 2, 0, 30, '2002-10-28 02:45:31', '1993-01-16 09:26:00');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (391, 5, 29, 68, 2, 0, 31, '1978-12-21 21:13:42', '2002-08-29 10:03:00');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (392, 4, 30, 65, 3, 0, 32, '2016-01-16 13:11:21', '2012-02-14 05:13:35');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (393, 4, 90, 92, 1, 0, 33, '2011-11-10 13:44:06', '1983-09-01 20:16:56');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (394, 5, 49, 98, 3, 0, 34, '2004-08-29 17:53:58', '1996-10-06 02:37:25');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (395, 2, 76, 92, 1, 0, 35, '2009-02-09 13:03:56', '2002-07-26 11:57:05');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (396, 5, 25, 24, 2, 0, 36, '1990-04-02 06:22:48', '2002-11-22 16:58:38');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (397, 3, 74, 38, 2, 0, 37, '2004-04-04 12:56:17', '1980-12-31 12:34:28');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (398, 4, 54, 58, 1, 0, 38, '2009-04-06 07:17:09', '2014-11-25 06:40:43');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (399, 2, 82, 1, 1, 0, 39, '1994-03-22 20:13:28', '2012-08-17 02:51:59');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (400, 2, 44, 7, 2, 0, 40, '2013-06-13 15:40:08', '1989-09-11 19:32:29');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (401, 2, 98, 87, 3, 0, 1, '1980-10-19 21:59:22', '2002-02-02 16:05:19');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (402, 4, 97, 40, 3, 0, 2, '1987-06-04 09:39:30', '1980-11-16 02:04:25');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (403, 1, 100, 83, 1, 0, 3, '2010-09-21 04:00:44', '2007-03-07 22:24:34');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (404, 4, 96, 65, 1, 0, 4, '2013-12-21 09:19:31', '2011-04-27 13:50:13');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (405, 1, 56, 29, 1, 0, 5, '1990-08-11 23:56:44', '1973-02-27 18:58:47');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (406, 4, 16, 74, 3, 0, 6, '1976-09-26 08:44:17', '1975-08-10 22:14:23');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (407, 1, 84, 3, 2, 0, 7, '1978-11-03 02:03:42', '2000-01-09 05:21:57');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (408, 4, 76, 52, 3, 0, 8, '2017-08-18 09:53:42', '2005-10-12 23:18:57');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (409, 5, 37, 11, 1, 0, 9, '2017-03-11 04:10:52', '1980-02-07 00:57:01');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (410, 5, 52, 44, 1, 0, 10, '1970-10-05 18:51:48', '1986-05-14 23:50:14');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (411, 4, 93, 42, 1, 0, 11, '2019-10-24 21:37:06', '2019-07-31 13:22:02');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (412, 1, 73, 64, 2, 0, 12, '1982-11-26 15:11:17', '1993-10-17 13:01:56');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (413, 5, 46, 54, 2, 0, 13, '2003-11-25 18:44:19', '1984-04-29 03:39:21');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (414, 4, 72, 4, 3, 0, 14, '1983-07-19 21:04:40', '1995-08-09 07:06:49');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (415, 5, 75, 71, 1, 0, 15, '1987-12-15 15:46:21', '1992-04-23 21:41:03');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (416, 4, 38, 58, 2, 0, 16, '1987-01-04 05:29:52', '1984-05-17 23:48:27');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (417, 4, 39, 13, 2, 0, 17, '1970-03-05 05:04:45', '2001-12-05 09:03:30');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (418, 2, 20, 60, 1, 0, 18, '2014-10-26 09:33:53', '1981-10-16 19:50:53');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (419, 1, 77, 89, 2, 0, 19, '2012-07-20 17:44:34', '2002-11-17 21:52:20');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (420, 4, 60, 51, 2, 0, 20, '1997-02-16 20:48:29', '1974-12-27 06:59:30');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (421, 4, 41, 99, 2, 0, 21, '1973-02-28 21:48:14', '2019-05-08 02:35:21');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (422, 2, 99, 14, 2, 0, 22, '1996-08-17 21:56:26', '1989-12-20 07:39:56');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (423, 5, 6, 8, 1, 0, 23, '1976-03-14 05:11:41', '2002-03-02 20:02:35');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (424, 1, 1, 52, 3, 0, 24, '1994-10-24 00:30:43', '2001-07-06 05:19:06');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (425, 5, 40, 75, 1, 0, 25, '2003-06-14 05:41:41', '1988-03-29 19:25:56');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (426, 5, 52, 72, 3, 0, 26, '1997-01-08 01:50:37', '1980-09-15 06:30:21');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (427, 1, 58, 61, 1, 0, 27, '1998-10-24 12:37:08', '1994-04-06 16:04:02');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (428, 4, 21, 12, 2, 0, 28, '1994-03-16 02:53:18', '2019-09-28 06:43:23');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (429, 1, 59, 69, 2, 0, 29, '2014-12-04 08:19:11', '1973-06-26 06:24:26');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (430, 3, 25, 86, 2, 0, 30, '1994-10-21 09:17:29', '2010-11-21 10:12:07');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (431, 3, 27, 91, 2, 0, 31, '2001-04-10 21:22:58', '1983-12-14 19:08:51');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (432, 1, 3, 55, 1, 0, 32, '2013-04-24 02:50:27', '1981-11-20 06:53:13');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (433, 4, 4, 27, 1, 0, 33, '2006-12-28 16:45:57', '2019-06-10 20:38:38');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (434, 4, 95, 7, 2, 0, 34, '1992-05-04 15:44:58', '1997-01-03 20:26:31');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (435, 2, 69, 15, 2, 0, 35, '2011-12-01 18:52:15', '1974-10-09 10:14:29');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (436, 3, 82, 24, 1, 0, 36, '2015-11-11 17:07:47', '1991-07-07 23:08:49');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (437, 4, 27, 35, 1, 0, 37, '1984-07-19 08:57:58', '1991-08-22 22:34:17');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (438, 3, 98, 24, 2, 0, 38, '1987-08-08 15:53:57', '1995-05-15 04:17:59');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (439, 3, 46, 92, 1, 0, 39, '1995-10-04 09:44:53', '2017-01-21 22:56:45');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (440, 3, 69, 12, 2, 0, 40, '1985-03-05 19:42:31', '2018-06-24 07:20:21');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (441, 5, 59, 58, 2, 0, 1, '2003-01-18 01:55:04', '2006-01-30 11:28:07');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (442, 5, 86, 54, 3, 0, 2, '1971-12-30 15:20:00', '2004-05-14 07:33:44');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (443, 1, 63, 35, 3, 0, 3, '1975-10-23 18:27:45', '1988-06-14 20:09:45');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (444, 3, 85, 23, 3, 0, 4, '2006-10-16 06:21:47', '1979-01-31 17:10:04');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (445, 2, 97, 16, 2, 0, 5, '1984-05-19 14:55:28', '1991-06-05 10:57:48');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (446, 3, 13, 53, 3, 0, 6, '1982-11-14 03:49:28', '1986-11-26 13:53:00');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (447, 2, 61, 50, 2, 0, 7, '2009-02-16 18:51:28', '2003-04-12 01:29:56');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (448, 4, 42, 51, 3, 0, 8, '1998-07-04 08:08:44', '2019-06-09 09:12:37');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (449, 1, 6, 68, 1, 0, 9, '1983-05-14 17:46:19', '2008-10-24 03:34:15');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (450, 1, 90, 40, 1, 0, 10, '1991-06-26 16:40:38', '2002-11-19 14:13:14');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (451, 1, 69, 7, 2, 0, 11, '1992-09-24 13:03:59', '1981-12-20 15:14:11');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (452, 1, 68, 39, 3, 0, 12, '1991-08-19 03:28:32', '2017-01-16 07:30:04');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (453, 2, 17, 15, 3, 0, 13, '1979-07-03 17:07:17', '2007-11-04 18:51:04');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (454, 3, 19, 50, 3, 0, 14, '2006-01-27 01:57:32', '2013-05-11 19:16:34');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (455, 5, 52, 82, 2, 0, 15, '1985-10-16 04:18:45', '1991-05-18 07:16:16');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (456, 1, 81, 74, 2, 0, 16, '2003-11-28 21:00:20', '1982-10-30 05:16:00');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (457, 2, 31, 49, 2, 0, 17, '2002-12-29 14:29:44', '2002-06-19 03:03:18');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (458, 1, 68, 6, 3, 0, 18, '1997-11-01 19:04:15', '2005-08-08 16:59:37');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (459, 3, 8, 39, 1, 0, 19, '1998-09-20 00:31:18', '1999-03-08 11:23:04');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (460, 3, 74, 60, 3, 0, 20, '1980-04-22 07:29:00', '1994-07-12 08:31:05');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (461, 1, 46, 36, 1, 0, 21, '2019-03-11 19:55:47', '1983-08-08 04:01:09');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (462, 2, 8, 9, 3, 0, 22, '1990-04-20 03:36:09', '1986-03-30 00:27:57');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (463, 3, 31, 61, 3, 0, 23, '2015-08-26 01:12:36', '1980-09-12 07:46:43');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (464, 4, 91, 91, 1, 0, 24, '2007-12-20 00:54:28', '2008-07-12 06:45:28');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (465, 5, 77, 11, 1, 0, 25, '1971-07-06 05:30:15', '2005-12-21 10:07:27');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (466, 4, 42, 97, 3, 0, 26, '1989-06-27 10:04:55', '2008-03-30 23:38:26');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (467, 3, 45, 18, 3, 0, 27, '1993-07-19 10:12:59', '1979-10-20 15:15:31');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (468, 1, 61, 59, 3, 0, 28, '1997-07-04 15:47:46', '2015-01-12 18:10:00');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (469, 3, 68, 53, 2, 0, 29, '1984-02-18 23:02:52', '2012-12-27 01:30:01');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (470, 3, 11, 50, 1, 0, 30, '1993-06-17 15:01:21', '2003-12-07 01:51:20');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (471, 3, 36, 50, 2, 0, 31, '1998-05-07 13:11:23', '1981-10-03 10:28:43');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (472, 2, 87, 23, 3, 0, 32, '1984-03-27 07:49:29', '2001-08-25 13:50:58');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (473, 1, 95, 85, 1, 0, 33, '1994-05-30 15:05:33', '1977-08-24 20:54:58');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (474, 3, 4, 4, 3, 0, 34, '2015-10-10 21:39:17', '2019-08-03 00:14:37');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (475, 1, 64, 56, 2, 0, 35, '1976-03-30 04:55:01', '1977-11-23 22:09:17');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (476, 2, 60, 97, 3, 0, 36, '2010-06-20 04:16:35', '2008-11-09 18:37:48');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (477, 1, 7, 51, 2, 0, 37, '1977-02-08 20:48:48', '1995-01-05 14:18:37');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (478, 1, 58, 27, 3, 0, 38, '2003-11-20 17:50:31', '2012-02-14 19:05:42');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (479, 1, 12, 72, 2, 0, 39, '2016-02-26 01:45:56', '1996-11-25 14:49:36');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (480, 5, 94, 49, 3, 0, 40, '1990-07-22 14:02:01', '2010-01-31 14:52:53');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (481, 2, 84, 64, 3, 0, 1, '2004-01-10 11:16:35', '1985-10-15 21:21:59');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (482, 2, 92, 66, 1, 0, 2, '1994-03-14 04:09:41', '1994-11-17 08:46:50');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (483, 3, 94, 96, 1, 0, 3, '1998-11-22 09:42:36', '2007-07-10 16:01:36');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (484, 3, 93, 45, 1, 0, 4, '1982-11-25 08:19:59', '1989-01-30 04:47:33');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (485, 1, 97, 46, 1, 0, 5, '1995-02-17 15:23:49', '1984-04-26 03:56:05');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (486, 1, 18, 63, 1, 0, 6, '1970-06-15 06:25:55', '2004-07-07 14:47:30');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (487, 3, 52, 2, 1, 0, 7, '1987-07-12 22:23:14', '1997-04-18 11:31:35');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (488, 1, 38, 44, 1, 0, 8, '1983-06-30 14:32:12', '2011-06-10 10:16:13');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (489, 2, 57, 42, 1, 0, 9, '2012-02-12 05:04:30', '1994-06-22 11:08:42');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (490, 1, 79, 31, 1, 0, 10, '1985-06-17 15:33:37', '2013-10-13 15:41:10');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (491, 1, 51, 21, 1, 0, 11, '1992-06-15 01:53:53', '1988-12-19 05:15:52');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (492, 1, 84, 59, 3, 0, 12, '1975-05-26 20:06:38', '2019-02-22 13:56:30');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (493, 5, 77, 95, 1, 0, 13, '2013-01-13 22:27:44', '1975-12-28 09:45:50');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (494, 1, 51, 20, 1, 0, 14, '1995-03-09 10:04:05', '2004-03-23 05:01:02');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (495, 3, 44, 100, 3, 0, 15, '1976-07-30 17:48:46', '1985-07-04 12:38:28');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (496, 4, 31, 78, 1, 0, 16, '1985-10-19 06:04:50', '2019-03-09 18:47:10');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (497, 1, 40, 75, 3, 0, 17, '1978-02-19 15:52:27', '1999-07-31 15:45:59');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (498, 5, 35, 49, 2, 0, 18, '2002-12-09 10:45:46', '1999-12-06 04:22:25');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (499, 5, 60, 82, 2, 0, 19, '1978-02-04 22:47:06', '2013-10-14 10:12:22');
INSERT INTO `games` (`id`, `type_game_id`, `white`, `black`, `status_id`, `result_game`, `tournament_id`, `start_at`, `finished_at`) VALUES (500, 4, 18, 89, 1, 0, 20, '1973-07-13 20:34:35', '2009-07-24 04:46:56');


#
# TABLE STRUCTURE FOR: languages
#

DROP TABLE IF EXISTS `languages`;

CREATE TABLE `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_user_id` int(11) DEFAULT NULL,
  `to_user_id` int(11) DEFAULT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (1, 81, 56, 'Praesentium vero quis veritatis quis temporibus. Autem suscipit tempora velit consequatur est aut.', '1996-10-03 21:23:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (2, 59, 14, 'Dolores neque optio rerum voluptatem enim est. Nisi ea ut non fugit. Explicabo assumenda ipsa iure sit dolore et autem. Et cumque consequuntur sit accusantium illo. Minus laboriosam numquam dolores vitae beatae.', '2014-02-03 15:14:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (3, 92, 4, 'Sint sequi blanditiis vero consequatur vel ad consequatur. Eius sunt sed a est voluptatem. Nulla quo magnam repellendus id ullam et.', '1992-06-14 01:45:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (4, 60, 28, 'Eos dolores dolor rerum esse cumque. Et odio perferendis voluptates doloribus. Qui quibusdam doloremque perferendis earum magnam nobis nesciunt.', '1988-09-16 23:16:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (5, 25, 88, 'Et voluptatibus odit nisi cumque ipsam. Earum distinctio voluptatem totam enim. Omnis voluptas consequatur suscipit magni quidem. Soluta voluptatem sed dolorum quisquam odio eligendi explicabo. Eius dolorum laudantium illo itaque nulla.', '2014-05-20 15:26:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (6, 59, 4, 'Repellat fugit at provident est possimus aspernatur. Repellendus qui sunt magni ipsum consectetur.', '1982-10-09 10:23:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (7, 9, 62, 'At qui aut consectetur culpa recusandae provident odio. Cumque aliquid iusto quia eius tenetur molestiae iusto. Dicta excepturi temporibus vitae voluptate laborum quo voluptas dolore.', '2011-11-06 19:42:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (8, 17, 88, 'Sit odio voluptas commodi libero mollitia aut enim dignissimos. Ratione eos velit aut necessitatibus id repellat. Eum eos assumenda incidunt aut. Veniam sit aliquam architecto ut cupiditate sapiente et. Nam est ab consequuntur amet.', '2007-11-29 03:57:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (9, 42, 76, 'Aut exercitationem ut nihil. Excepturi est dolorem quas aut et debitis.', '2002-01-02 05:43:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (10, 67, 100, 'Distinctio voluptatum sapiente sed possimus odio. Officiis velit exercitationem in omnis voluptates. Error qui vel alias unde enim velit.', '1983-12-15 06:29:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (11, 75, 28, 'Aut est aut eaque atque eaque aliquam. Praesentium voluptates est tempora. Pariatur voluptate cupiditate eos id vel quae. Praesentium sint similique sit ipsam nemo. Et harum magni quod id velit nihil.', '1984-09-03 03:44:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (12, 85, 35, 'Qui ipsa iusto nulla eveniet et magnam. Autem rerum dolor quis similique. Ullam facere numquam nobis aut repellat libero qui.', '2013-12-02 18:15:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (13, 97, 42, 'Ut quia eligendi ipsam et consequatur labore. Optio aut aut impedit. Qui nihil alias ut unde.', '2016-01-27 09:13:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (14, 63, 13, 'Et dolor iusto corporis laboriosam molestiae eos. Odit dolorum et excepturi nihil rem enim.', '2010-06-16 10:30:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (15, 34, 43, 'Cupiditate tempora quas autem aspernatur sapiente accusamus. Neque qui natus quas voluptate non. Quae ut hic totam at quaerat. Dolor consequuntur recusandae nisi vero. Est quia numquam assumenda nemo.', '2009-08-09 23:09:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (16, 47, 75, 'Eveniet autem quos quod ea quae cum sed. Hic quia nostrum impedit aut quis. Sunt eos minus placeat fuga dolore beatae corrupti nobis.', '1979-12-15 23:25:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (17, 13, 58, 'Rerum quia voluptatum repudiandae quia id quasi. Quia tenetur eum soluta est quod. Et vel aut quam est perferendis voluptatibus.', '1992-07-15 00:28:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (18, 92, 54, 'Est dolorem mollitia amet quod non. Et quos minus ipsam cupiditate sequi qui eius porro. Qui labore deserunt eum veniam et.', '2010-03-06 08:32:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (19, 22, 8, 'Et perferendis odit animi. Ipsum sed corporis perferendis accusantium omnis inventore. Ducimus ut quo velit velit maiores impedit. Unde quia incidunt a dolor assumenda neque.', '2013-08-25 22:28:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (20, 47, 12, 'Saepe quam iste aut asperiores temporibus aut. Qui voluptatum quae rerum. In nam sit aliquam aspernatur voluptatum quos eveniet saepe.', '1977-06-12 20:15:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (21, 53, 84, 'Enim facilis rerum autem ea. Aut eveniet iusto et quo velit amet eos qui. Amet consequatur rem odio unde natus aut. Qui consectetur nam rerum esse quis esse libero officia.', '1976-09-04 01:53:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (22, 61, 90, 'Ipsa eius dolorem repellendus possimus. Omnis quis dolores doloribus veritatis at et eligendi. Voluptatem aspernatur quia consequatur libero quos excepturi et hic.', '2007-01-10 22:20:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (23, 96, 74, 'Eum nam reprehenderit molestias ut eum. Deserunt et nam ut quis dolore distinctio qui. Iste atque id maiores tempora perferendis expedita. Aut ipsa nihil suscipit ducimus incidunt nemo.', '2014-02-27 07:30:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (24, 13, 36, 'Quae ea aut est possimus doloribus laboriosam. Pariatur ipsam sit minima corporis expedita et iusto eum. Qui rerum in autem magni laudantium vitae omnis. Tenetur facere dolorem unde perferendis qui id et neque.', '1989-12-18 08:20:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (25, 78, 33, 'Et expedita quia illo et. Illum reprehenderit cupiditate ullam et similique. Nobis assumenda minus explicabo. Fugit molestiae sit saepe vero dolores veritatis est. Velit molestiae veniam voluptatem atque dolore.', '2012-01-21 01:56:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (26, 5, 97, 'Ducimus dolorem eveniet assumenda aut ut officiis. Dolores id maxime quae molestiae eveniet. Voluptas deserunt iste alias et voluptatem qui.', '2014-10-22 19:01:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (27, 7, 23, 'Voluptatem ut a unde et iure et officiis fugiat. Et ratione sequi amet recusandae illum. Non enim aperiam aut eveniet similique omnis temporibus. Voluptatem soluta et consequuntur earum non ipsum.', '2014-08-01 04:40:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (28, 10, 40, 'Laudantium enim libero et animi et qui suscipit molestiae. Officiis pariatur adipisci modi eum soluta. Delectus modi molestiae quia iste.', '1970-11-19 15:24:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (29, 73, 10, 'Dolorem impedit enim mollitia quibusdam iusto ullam. Porro fuga ex voluptatibus quis ratione repellat. Dolorem quidem unde explicabo iste doloremque. Culpa hic et velit nesciunt dolor voluptas neque.', '1973-08-01 20:42:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (30, 97, 68, 'Quasi id sed placeat omnis deserunt. Deleniti tenetur atque eum minus qui ipsum quis. Reprehenderit et consectetur aspernatur et aut.', '1982-11-10 07:32:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (31, 31, 59, 'Et enim vel velit aspernatur quibusdam. Atque repellat est et optio quis quisquam quae ut.', '1991-01-03 19:37:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (32, 31, 89, 'Expedita similique temporibus occaecati qui qui consequatur quas. Ut officiis sint saepe minima. Enim ducimus nesciunt cum minima qui hic esse illum.', '2005-02-17 23:43:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (33, 35, 22, 'Eos perspiciatis dolores non sunt. Ad aspernatur esse modi quo. Nulla aliquam nesciunt molestias aspernatur. Occaecati dolores vel maxime.', '2015-12-18 14:12:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (34, 18, 28, 'Magni eligendi expedita rerum voluptatem. Est distinctio voluptate impedit sint. Ut iusto provident fugiat quia esse pariatur velit. Cumque velit natus sequi aut quibusdam reiciendis.', '2013-11-16 15:48:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (35, 16, 81, 'Unde amet reiciendis quia velit. Quis dolores quia atque numquam et. Dolor dolores rerum repellendus aut aut consequatur consequatur et. Atque est at consequatur incidunt velit illum.', '2000-05-18 16:03:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (36, 29, 15, 'Iure voluptas voluptate commodi occaecati sequi odit molestiae. Temporibus aut aut ab dicta blanditiis. Voluptatem sed laudantium nam molestias voluptates id soluta. Aut deserunt in porro excepturi cupiditate sint placeat.', '1984-01-03 17:29:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (37, 8, 29, 'Voluptas vel quae eum ex molestiae odit facere. A porro dolores qui in. Repudiandae dolor non illo. Est iste incidunt veniam autem eum non dolor velit.', '1992-03-22 20:13:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (38, 89, 65, 'Quo aliquam adipisci et excepturi exercitationem odit ut incidunt. Dolorum dolorem laboriosam eligendi.', '1979-05-27 06:04:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (39, 99, 60, 'Architecto eum et adipisci voluptate. Non minus dolorem dolorem atque mollitia aut voluptatem commodi. Soluta praesentium nulla earum doloremque nam tempora.', '1992-08-24 21:26:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (40, 93, 42, 'Officiis repudiandae reprehenderit nihil. Iure praesentium molestiae veritatis vel et quas ut. A qui vero similique in commodi. Est ipsum dignissimos a placeat laboriosam.', '1971-07-30 12:21:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (41, 46, 31, 'Distinctio voluptatum excepturi ea maxime doloribus. Omnis recusandae quos consectetur quia illum sit unde. Veniam aut deserunt cum eos sit voluptate.', '1982-02-20 05:52:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (42, 82, 74, 'Quis eum labore ullam totam. Consequatur sed atque expedita rerum. Velit error sunt consequatur dolor. Libero sint accusamus dolor est ut velit.', '1984-02-15 15:43:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (43, 100, 44, 'Dolor aut est quis adipisci. Omnis aut dicta dolor occaecati aut dignissimos beatae. Debitis assumenda tempora quia qui. Minus at aut debitis et modi atque.', '2007-06-18 22:54:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (44, 6, 64, 'Vel quia ipsa quo odio ipsum occaecati. Voluptatibus sit nesciunt voluptatem quisquam accusamus excepturi aperiam. Quae vel quo voluptates reprehenderit qui.', '2008-09-19 04:04:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (45, 89, 74, 'Deserunt nostrum sed dolorem adipisci molestiae molestiae. Amet doloribus aspernatur aut voluptatem et magnam tempora. Enim est nemo aperiam quo aspernatur.', '1991-06-09 08:01:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (46, 43, 22, 'Totam vel quam commodi eum. Cupiditate aperiam vel ipsa enim illo rem. Maiores aliquam vel ea voluptates recusandae molestias. Officiis quas et commodi sit dolores facilis qui.', '1971-12-16 21:42:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (47, 99, 82, 'Sed voluptatem fuga occaecati ea. Accusamus dolores ea qui. Inventore illo asperiores atque nostrum doloremque vitae totam. Ut accusamus consequuntur optio ratione eum.', '1985-05-26 08:44:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (48, 58, 16, 'Non et exercitationem eligendi at ut. Quos nulla culpa et. Non hic enim consequatur sed atque soluta et.', '1973-09-16 15:11:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (49, 26, 17, 'Molestiae impedit alias porro enim repellendus eum. Eius eum sunt ea reprehenderit et. Sunt ratione quia dolores et.', '1990-10-29 04:53:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES (50, 21, 82, 'Dolorem corrupti nulla similique voluptatum et. Suscipit dolore cum non repudiandae enim aut. Rerum veniam sunt dolores est. Autem ipsam sed deserunt in.', '1990-01-17 03:51:34');


#
# TABLE STRUCTURE FOR: moves
#

DROP TABLE IF EXISTS `moves`;

CREATE TABLE `moves` (
  `game_id` int(11) NOT NULL,
  `move_number` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `figure_id` int(11) DEFAULT NULL,
  `field` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: profile
#

DROP TABLE IF EXISTS `profile`;

CREATE TABLE `profile` (
  `user_id` int(11) DEFAULT NULL,
  `country` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_rating` int(11) DEFAULT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (60, 'Austria', '0917 Angelica Courts\nAddisonshire, RI 38056', 2868, 'abe33@example.net', '2016-04-28 04:00:53');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (66, 'Kenya', '5250 Christop Extension\nNew Niaberg, NY 56297', 2545, 'acruickshank@example.com', '2005-12-18 04:47:04');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (52, 'Palestinian Territory', '270 Bednar Square Suite 191\nPort Odessa, GA 48747', 3860, 'adela.langworth@example.com', '2012-10-24 07:23:23');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (18, 'Uganda', '0940 Pfannerstill Mountains\nMelvinbury, LA 62652', 1004, 'adrain.wisoky@example.net', '2019-06-21 13:39:23');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (3, 'Mali', '035 Cummerata Springs\nWindlerland, NJ 39479-1849', 3979, 'agrimes@example.com', '1981-12-31 03:00:33');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (100, 'Sudan', '868 Edward Cove Suite 573\nWest Alecmouth, PA 06845-6464', 2998, 'aida22@example.net', '1991-03-14 11:37:34');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (40, 'Saint Vincent and the Grenadines', '08426 Spinka Wells\nSouth Mireillebury, KY 29962', 3796, 'alden.bednar@example.com', '1985-06-27 09:40:32');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (31, 'Malta', '114 Adalberto Heights Apt. 324\nWest Nathaniel, WA 37461-5319', 3572, 'alexane.hodkiewicz@example.org', '1994-10-26 07:51:42');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (77, 'Macao', '30313 Harber Stream Suite 681\nOmaview, NY 55410', 1555, 'antonette.cormier@example.org', '2001-11-08 09:20:14');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (14, 'Saint Vincent and the Grenadines', '0308 Satterfield Ridges\nLake Valeriestad, UT 89651-4651', 3761, 'armando.halvorson@example.com', '2005-12-20 12:41:17');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (81, 'Saint Vincent and the Grenadines', '79913 Koss Meadows\nWillmsfort, WY 06815', 3362, 'aroberts@example.net', '1975-12-29 19:03:50');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (5, 'Slovenia', '7297 Kunde Neck Apt. 324\nSouth Marguerite, WA 98856', 3354, 'arvilla16@example.net', '2015-05-05 19:53:22');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (65, 'Saint Helena', '859 Brock Orchard\nSouth Nannieshire, WI 94086', 3372, 'baumbach.pattie@example.com', '1993-03-20 15:45:41');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (20, 'Martinique', '919 O\'Reilly Village Apt. 747\nNew Francisco, FL 47940-2921', 2404, 'bergnaum.sylvester@example.com', '1972-03-07 02:12:39');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (38, 'Canada', '71437 Cora Isle\nHahnhaven, NE 35924', 3961, 'brakus.kaitlin@example.net', '2002-07-03 09:08:56');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (26, 'Maldives', '255 Mandy Ville\nMerlland, KS 74827', 2160, 'braun.naomie@example.com', '1984-02-24 04:27:34');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (64, 'Paraguay', '5333 Block Ferry Apt. 224\nEast Lillyfort, TX 49778', 2299, 'braxton.kreiger@example.org', '1989-07-14 17:21:49');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (98, 'Panama', '973 Eleanore Rest Apt. 717\nEthaview, IN 70944-7111', 3116, 'brianne15@example.com', '1973-08-04 02:37:38');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (72, 'Puerto Rico', '295 Rice Isle Suite 934\nNorth Cassidystad, ME 63657', 3052, 'chadrick60@example.com', '2018-07-27 03:25:59');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (17, 'Oman', '504 Alize Divide\nNew Oda, SD 71991', 1430, 'christiana.kertzmann@example.org', '1981-08-12 13:04:40');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (16, 'Rwanda', '6959 Shields Flat\nLake Wilfred, TN 13112-8676', 3169, 'cleo.halvorson@example.net', '1975-03-24 10:05:10');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (96, 'Syrian Arab Republic', '281 Pfeffer Pike\nWest Marcus, VA 43027-5953', 3749, 'conn.dee@example.net', '1972-01-28 20:36:53');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (9, 'Syrian Arab Republic', '27432 Kulas Light\nMcLaughlinville, MA 72240-1457', 2070, 'ctromp@example.com', '2000-08-04 07:05:25');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (73, 'Montenegro', '237 Sophie Common\nArmstrongmouth, HI 27014', 1798, 'cummings.annabell@example.com', '1970-04-29 16:12:57');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (69, 'American Samoa', '176 Alfredo Center\nVenafort, IN 80828-4755', 3277, 'dickens.gertrude@example.net', '1983-05-21 06:30:02');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (74, 'Mongolia', '20642 Rodriguez Common\nEast Antwonshire, NC 14121-1600', 1894, 'domenica12@example.com', '2003-05-01 17:49:40');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (68, 'Palestinian Territory', '9362 Cronin Parks Suite 629\nEbertberg, IN 38966', 1148, 'dubuque.osbaldo@example.net', '2005-02-27 15:04:43');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (8, 'Peru', '51314 Palma Drives Apt. 541\nJohnstonstad, UT 80149', 1113, 'ellis.miller@example.com', '2007-06-28 18:03:31');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (12, 'Rwanda', '34740 Dave Summit\nMurlbury, KS 04561', 1510, 'esta.zulauf@example.org', '1991-02-21 02:49:08');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (24, 'Tajikistan', '5568 Darian Spring Apt. 462\nCartwrightbury, AR 30319-1166', 2534, 'ezemlak@example.org', '2014-08-23 14:30:21');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (10, 'Philippines', '044 Marcia Walks\nEast Roslyn, FL 31960', 2138, 'feichmann@example.org', '2008-01-23 05:10:23');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (50, 'Micronesia', '10152 Labadie Summit Suite 902\nNew Marinaview, SC 23178-6281', 1094, 'ferdman@example.com', '2012-11-27 23:14:51');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (39, 'Papua New Guinea', '62594 Kameron Rapid\nJanickborough, CT 74255-5528', 1068, 'freeman93@example.com', '1994-12-09 22:07:28');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (85, 'Saudi Arabia', '76054 Patrick Green Suite 381\nLake Roycebury, MA 99746-6819', 3681, 'gabriel59@example.com', '2013-11-24 21:41:21');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (78, 'Canada', '7406 Sipes Extensions Suite 472\nIvahfort, NY 75316', 2485, 'gking@example.net', '2011-06-03 03:54:41');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (30, 'Kyrgyz Republic', '900 Willms Rapids\nLake Ayana, IL 60324-7677', 2390, 'gutmann.minerva@example.net', '1986-01-09 00:39:45');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (91, 'Vanuatu', '29284 Jacobs Village Suite 553\nEast Granville, KY 79055', 3557, 'gwisozk@example.org', '2007-12-04 09:06:58');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (21, 'French Guiana', '38566 Hand Brook Apt. 974\nFisherside, WA 15838', 3255, 'hane.jessie@example.com', '1998-05-06 07:53:36');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (89, 'Saint Lucia', '3499 Walter Circle Suite 960\nBotsfordshire, UT 19138-3050', 2161, 'harber.gerda@example.org', '1981-09-27 23:54:18');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (59, 'Reunion', '9952 Opal Walks Apt. 032\nLawrencemouth, MI 23766', 1359, 'harmony24@example.net', '1990-05-14 07:51:51');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (28, 'Greenland', '7410 Bogan Creek Suite 670\nEast Svenport, GA 41404-7287', 1347, 'hbrakus@example.com', '1978-06-08 03:20:30');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (41, 'Tuvalu', '2666 Torey Cape\nEdythtown, CO 16432', 1258, 'heaney.orie@example.com', '2011-09-11 19:24:47');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (55, 'Holy See (Vatican City State)', '29324 Celine Isle Suite 275\nLednerburgh, WI 12596-6463', 2394, 'helene.kris@example.com', '1974-01-19 05:40:59');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (25, 'Tanzania', '2209 Ethelyn Mount Apt. 411\nVerdahaven, IL 97586-2103', 2750, 'irwin.ebert@example.org', '2005-12-14 11:28:45');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (49, 'Falkland Islands (Malvinas)', '557 Chase Junctions Apt. 843\nAbbottburgh, NJ 51778-5095', 3774, 'jarvis.hand@example.com', '1998-08-28 00:48:06');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (99, 'Saint Martin', '457 Jennifer Cape Apt. 464\nSouth Jeramybury, IA 28133-0088', 3475, 'johnathon35@example.org', '2008-10-07 23:32:50');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (70, 'Gabon', '63361 Watsica Route Apt. 454\nLake Veda, CA 60280-5200', 1439, 'jonathan.glover@example.org', '1982-12-18 21:47:08');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (88, 'Burundi', '6771 Carolina Terrace Apt. 005\nBuckridgeville, MD 85319-7611', 1542, 'jonathan63@example.net', '1992-03-01 22:17:19');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (94, 'Belize', '3252 Daron Point Suite 303\nPort Bernardo, DC 32265', 2273, 'jschaden@example.org', '2002-10-06 18:30:04');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (27, 'Uzbekistan', '5554 Dora Valley Suite 034\nRickyberg, MT 25419-1666', 3577, 'kaleb23@example.net', '1986-03-10 04:02:53');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (48, 'Antarctica (the territory South of 60 deg S)', '247 Watsica Valleys Apt. 313\nWest Richmond, MO 64165', 3323, 'katelynn.parisian@example.net', '1987-09-18 08:08:41');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (62, 'Saint Kitts and Nevis', '21127 West Passage\nNicolasburgh, HI 51797-9363', 1258, 'kenny.adams@example.com', '2011-12-22 20:33:31');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (63, 'Seychelles', '4161 Katarina Roads\nWest Khalilmouth, MN 88424', 3200, 'leatha86@example.org', '1994-05-04 19:19:19');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (23, 'Afghanistan', '875 Schaden Prairie Suite 786\nLake Adolf, MI 77505', 2186, 'lesley.runolfsdottir@example.net', '1990-01-16 04:42:52');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (43, 'Greenland', '119 Bernier Forest\nNorth Lydia, AL 97871-3999', 3553, 'levi03@example.org', '1995-11-25 13:28:10');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (90, 'Brunei Darussalam', '03530 Casper Forest\nWest Flavieview, UT 39817', 1685, 'macie.shanahan@example.net', '1987-02-22 07:22:49');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (61, 'Isle of Man', '5207 Savanah Port\nHowebury, AL 99493', 1879, 'madie.windler@example.org', '2010-03-02 11:11:59');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (56, 'British Virgin Islands', '088 Dena Pass Suite 029\nNorth Winnifredland, MN 72370-5073', 2791, 'maiya52@example.org', '2003-07-01 17:25:51');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (57, 'Poland', '5991 Brandon Pike Suite 870\nNew Macburgh, MD 86733-5338', 2467, 'mann.mallie@example.net', '1999-02-24 07:51:17');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (79, 'Israel', '026 Stracke Walk Suite 341\nWisokyshire, AK 60070', 3446, 'markus81@example.org', '1986-03-23 07:23:02');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (53, 'Turkmenistan', '38602 Harris Burgs\nLavernamouth, ID 61086-2263', 3616, 'nathanial.anderson@example.com', '1995-04-01 21:05:15');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (97, 'Palau', '0225 Waters Lakes\nSimonisside, ND 41970-8711', 3471, 'nemmerich@example.net', '2001-05-22 06:52:22');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (87, 'Martinique', '35017 Kemmer Roads\nLake Harley, CT 76954-7787', 3721, 'ngrady@example.com', '2015-06-25 09:11:18');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (19, 'Lithuania', '3551 Block Islands\nPort Sonia, WA 19658', 2479, 'nikko.gaylord@example.org', '1975-11-07 14:23:10');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (45, 'Belize', '95323 Destin Fields Suite 799\nSouth Kenyon, VT 87316', 2106, 'plegros@example.net', '1991-01-15 04:54:17');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (44, 'Central African Republic', '22298 Robyn Ways Apt. 398\nSouth Phoebe, WI 21515', 1465, 'purdy.norberto@example.net', '1991-10-23 22:57:05');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (93, 'Uzbekistan', '41005 Beer Ford Suite 576\nArieltown, DC 14531', 2108, 'qheidenreich@example.org', '1981-06-06 09:54:17');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (15, 'Nicaragua', '32056 Greenfelder Hills Apt. 545\nNew Tierraview, KS 07153-1668', 3990, 'quitzon.jody@example.org', '1987-01-25 07:33:29');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (82, 'Netherlands', '52442 Gideon Lock Apt. 629\nCummeratabury, MS 14275-5899', 2510, 'rcorkery@example.com', '2019-04-17 11:01:31');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (13, 'Burkina Faso', '13813 Schumm Spurs\nMayerchester, NY 56029-8257', 1559, 'rocky.blanda@example.net', '1988-04-29 23:18:14');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (46, 'Bolivia', '097 Connelly Mews Apt. 599\nEast Adrien, KS 50689', 2864, 'rossie.parisian@example.net', '2000-06-18 05:47:16');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (67, 'Vanuatu', '180 Carolyn Expressway\nMabelleside, NC 83197-2061', 2017, 'roxane01@example.net', '2008-03-04 03:36:09');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (92, 'United States of America', '579 Magdalena Roads Apt. 724\nNew Maidahaven, KS 78585', 3737, 'sbaumbach@example.org', '2007-03-03 16:23:52');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (42, 'Tokelau', '26606 Bergnaum Island\nPort Quinnchester, AL 48721-7798', 3296, 'schneider.maude@example.com', '1979-07-05 09:53:33');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (6, 'Andorra', '23932 Toney Lights Suite 595\nGeoffreymouth, FL 95062-5484', 1057, 'schoen.merl@example.net', '2018-02-24 00:48:27');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (37, 'Guinea-Bissau', '2590 Shields Circles Suite 224\nLake Leonor, VA 92518', 3839, 'schulist.shirley@example.org', '2007-12-15 09:02:08');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (22, 'Ethiopia', '475 Cedrick Parkways Apt. 838\nNew Sophieberg, MI 84447-8151', 2780, 'sipes.faye@example.net', '1988-08-08 02:06:07');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (51, 'Thailand', '4156 Burley Meadow\nWunschshire, RI 59847', 3787, 'spinka.melissa@example.net', '1984-12-15 08:53:20');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (35, 'Slovenia', '1656 Mohr Branch\nAlexaton, ND 61471-5172', 1545, 'sschneider@example.com', '1976-04-09 16:41:37');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (33, 'Pakistan', '32896 Jaquelin Inlet\nSouth Stanland, KS 81785-4580', 1586, 'tiffany.mitchell@example.org', '1973-05-09 16:33:51');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (54, 'Morocco', '85967 Seth Court Apt. 275\nNew Sabrinaton, WY 34596', 3275, 'tobin66@example.com', '1978-10-24 19:25:42');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (7, 'Saint Pierre and Miquelon', '3734 Jaylon Highway\nSouth Kendra, TN 30130-9568', 1204, 'trantow.irving@example.net', '2013-11-17 00:49:23');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (11, 'Comoros', '09350 Jedidiah Causeway\nNew Wilsonshire, CA 81431', 1912, 'tressie22@example.org', '1974-05-14 05:12:52');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (32, 'Bouvet Island (Bouvetoya)', '890 Rolfson Stravenue\nLake Turner, WI 11176-1033', 2659, 'uflatley@example.com', '1990-05-23 07:55:21');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (76, 'Qatar', '022 Shany Ford Suite 269\nPort Llewellynburgh, MO 43380', 1040, 'ulegros@example.org', '1995-02-24 04:02:42');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (4, 'Solomon Islands', '6073 Wisoky Green Apt. 411\nLake Waynebury, CA 85811', 1244, 'uwilkinson@example.org', '1997-04-10 07:40:44');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (36, 'Comoros', '0747 Pacocha Junctions Suite 579\nNew Maymiefort, NM 63918', 3073, 'vernon52@example.com', '2012-12-14 15:51:03');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (83, 'Ireland', '3965 Lorena Plains Apt. 277\nKevontown, IN 34420', 1647, 'von.nolan@example.net', '2009-04-19 16:58:28');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (84, 'Pakistan', '1527 Spencer Cape\nWest Cicero, NC 29536', 1736, 'wendy.grimes@example.org', '2005-01-04 08:00:27');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (95, 'Cape Verde', '416 Maryse Center\nPort Halle, OR 98597', 2151, 'westley.crona@example.net', '1976-02-13 21:49:50');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (47, 'Bhutan', '991 Erin Drive\nSouth Lois, IN 10096', 2458, 'wfahey@example.net', '1981-08-23 22:58:04');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (71, 'San Marino', '259 Timmothy Club\nEast Camren, HI 95011-4341', 1263, 'wilderman.elza@example.org', '1981-01-05 22:57:32');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (29, 'Jamaica', '70381 Timothy Lodge Apt. 502\nRohanmouth, KY 46988', 2526, 'williamson.adam@example.com', '2001-06-11 10:39:18');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (86, 'Argentina', '55365 Talia Village\nOndrickatown, OH 31337', 2340, 'wintheiser.luther@example.com', '1997-01-11 14:48:41');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (1, 'Greenland', '70728 Mallory Hills\nKulasside, LA 38106-9634', 3480, 'wwalsh@example.org', '1976-10-06 15:03:49');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (34, 'Vietnam', '229 Volkman Springs Suite 911\nThompsonhaven, KS 62392-4212', 2544, 'yasmin20@example.com', '1976-03-31 05:14:04');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (58, 'Macedonia', '3121 Keeling Court\nHirtheville, MO 54420', 2525, 'yebert@example.com', '1988-04-14 05:32:28');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (75, 'Sweden', '23686 Turner Landing Apt. 517\nNew Dellport, AL 32730', 1569, 'yklein@example.com', '2009-10-02 17:39:34');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (2, 'Denmark', '909 Billy Grove\nBlandamouth, CO 11130-0521', 2323, 'ypurdy@example.com', '2005-11-04 13:37:39');
INSERT INTO `profile` (`user_id`, `country`, `location`, `user_rating`, `email`, `created_at`) VALUES (80, 'Denmark', '441 Fisher Shores Apt. 488\nRomagueramouth, MD 09722-0061', 2990, 'zschimmel@example.com', '2007-10-14 02:49:52');


#
# TABLE STRUCTURE FOR: status_game
#

DROP TABLE IF EXISTS `status_game`;

CREATE TABLE `status_game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `status_game` (`id`, `name`) VALUES (1, 'repellat');
INSERT INTO `status_game` (`id`, `name`) VALUES (2, 'at');
INSERT INTO `status_game` (`id`, `name`) VALUES (3, 'temporibus');


#
# TABLE STRUCTURE FOR: subscribes
#

DROP TABLE IF EXISTS `subscribes`;

CREATE TABLE `subscribes` (
  `user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (34, 71);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (96, 46);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (12, 98);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (67, 88);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (51, 90);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (88, 80);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (57, 39);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (72, 21);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (21, 30);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (47, 78);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (44, 65);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (15, 75);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (53, 82);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (14, 86);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (16, 77);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (77, 65);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (84, 83);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (28, 88);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (55, 74);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (82, 47);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (30, 49);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (34, 36);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (93, 40);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (92, 25);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (86, 82);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (93, 73);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (65, 30);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (27, 22);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (48, 49);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (17, 67);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (61, 28);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (2, 84);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (14, 39);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (20, 40);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (33, 84);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (89, 39);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (68, 10);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (2, 11);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (77, 12);
INSERT INTO `subscribes` (`user_id`, `to_user_id`) VALUES (9, 25);


#
# TABLE STRUCTURE FOR: theams
#

DROP TABLE IF EXISTS `theams`;

CREATE TABLE `theams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: tournaments
#

DROP TABLE IF EXISTS `tournaments`;

CREATE TABLE `tournaments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_game_id` int(11) DEFAULT NULL,
  `club_id` int(11) DEFAULT NULL,
  `start_at` datetime NOT NULL DEFAULT current_timestamp(),
  `finished_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status_id` int(11) DEFAULT NULL,
  `winner_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (1, 'Lesch-Schmitt', 2, 1, '2017-05-26 17:42:14', '1988-07-22 08:06:56', 1, 75);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (2, 'Gulgowski, O\'Reilly and Spinka', 2, 2, '1978-05-01 00:43:34', '1975-07-17 14:25:46', 3, 2);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (3, 'Herman-Gutmann', 1, 3, '1994-05-29 11:51:54', '1981-10-02 11:35:28', 1, 3);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (4, 'Okuneva-Will', 3, 4, '1993-11-01 16:28:30', '1983-10-03 05:26:30', 2, 79);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (5, 'Roberts-Graham', 1, 5, '2010-02-03 19:51:12', '2013-01-08 20:36:54', 2, 52);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (6, 'Marquardt PLC', 3, 6, '1984-02-15 16:15:24', '1991-06-28 04:09:28', 1, 58);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (7, 'Doyle, Maggio and Kshlerin', 3, 7, '2006-09-18 11:54:35', '1977-05-13 17:40:39', 3, 90);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (8, 'Runolfsson Inc', 1, 8, '1997-06-10 08:01:17', '1997-03-28 05:23:09', 3, 75);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (9, 'Schmitt Ltd', 2, 9, '1985-06-20 03:18:46', '1980-04-05 08:28:25', 1, 74);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (10, 'Barton, Ruecker and Osinski', 5, 10, '2011-02-13 22:14:31', '1990-09-29 09:16:25', 2, 58);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (11, 'Zemlak Group', 3, 11, '2016-02-13 13:58:13', '1994-04-30 19:39:36', 2, 4);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (12, 'Waelchi Inc', 3, 12, '2007-09-25 19:42:34', '1987-11-25 17:56:41', 1, 74);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (13, 'Jakubowski LLC', 3, 13, '1979-05-20 09:10:53', '1994-05-28 18:54:13', 3, 72);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (14, 'Monahan, Willms and Fritsch', 3, 14, '2003-06-18 17:14:22', '1999-06-21 16:41:18', 3, 16);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (15, 'O\'Reilly-Mueller', 2, 15, '2010-04-09 17:01:43', '2016-07-13 02:44:56', 3, 91);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (16, 'Murray Ltd', 4, 16, '1989-06-28 21:08:19', '1993-11-22 08:13:42', 3, 17);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (17, 'Russel and Sons', 3, 17, '1984-12-04 04:28:01', '1988-02-01 10:08:17', 3, 78);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (18, 'Weimann, Beer and Zboncak', 1, 18, '2006-10-25 16:45:11', '1970-12-06 22:16:46', 2, 66);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (19, 'McGlynn PLC', 4, 19, '1990-09-23 04:05:09', '1974-04-17 11:36:11', 3, 97);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (20, 'Gerhold PLC', 4, 20, '2011-08-30 07:41:48', '2015-08-01 18:33:55', 1, 69);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (21, 'O\'Connell Ltd', 3, 21, '1992-04-11 12:46:23', '1989-10-14 21:27:43', 2, 1);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (22, 'Erdman Inc', 1, 22, '1986-09-30 12:13:37', '1971-04-29 01:23:22', 1, 95);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (23, 'Jones, Heidenreich and Stracke', 2, 23, '1972-06-25 14:19:53', '1998-07-28 15:53:47', 2, 50);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (24, 'Raynor-Walsh', 3, 24, '2016-06-09 04:50:57', '2018-12-23 16:39:53', 3, 27);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (25, 'Will Group', 3, 25, '1990-10-21 23:44:41', '1987-05-03 15:06:14', 3, 40);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (26, 'Kreiger, Mante and Upton', 3, 26, '1980-11-23 22:07:41', '1998-11-25 09:17:12', 2, 1);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (27, 'Johnston, Crona and Klocko', 2, 27, '1988-09-30 21:26:01', '1996-10-23 15:15:24', 1, 46);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (28, 'Jenkins-Gulgowski', 4, 28, '1972-07-30 04:01:34', '2006-01-10 15:01:13', 1, 58);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (29, 'Gaylord-Bartoletti', 2, 29, '1990-06-03 22:05:16', '1977-12-02 11:28:53', 2, 100);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (30, 'Labadie-Morissette', 4, 30, '1986-05-06 14:33:05', '2002-05-28 18:53:47', 1, 46);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (31, 'Marks, McDermott and Lemke', 2, 1, '1985-06-08 00:48:30', '2013-03-07 05:37:10', 3, 97);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (32, 'Renner Group', 1, 2, '1983-01-01 00:54:19', '1973-01-27 09:33:37', 3, 48);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (33, 'Langworth, Schmeler and Schaefer', 5, 3, '2008-07-18 01:08:28', '1988-04-06 15:06:40', 2, 27);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (34, 'Farrell, Aufderhar and Fisher', 2, 4, '1972-12-08 07:20:35', '1996-03-25 02:40:42', 3, 93);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (35, 'Littel-Thiel', 2, 5, '1970-10-19 15:50:34', '2002-08-01 20:15:01', 1, 75);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (36, 'Will-Parisian', 1, 6, '1975-10-14 22:00:36', '1970-04-17 03:35:41', 3, 84);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (37, 'Jenkins-Dickens', 3, 7, '1998-10-22 01:52:43', '2012-10-18 05:07:18', 1, 41);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (38, 'Mante-Koelpin', 4, 8, '2009-10-25 08:00:10', '1987-12-18 21:54:29', 3, 32);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (39, 'Fahey-Maggio', 5, 9, '2013-12-17 12:19:20', '1987-12-26 15:16:20', 3, 55);
INSERT INTO `tournaments` (`id`, `name`, `type_game_id`, `club_id`, `start_at`, `finished_at`, `status_id`, `winner_id`) VALUES (40, 'White, Graham and Rau', 5, 10, '2014-02-02 02:14:43', '2011-04-02 18:18:10', 3, 96);


#
# TABLE STRUCTURE FOR: trainers
#

DROP TABLE IF EXISTS `trainers`;

CREATE TABLE `trainers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `location` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `speak_language` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ratio_for_hour` int(11) DEFAULT NULL,
  `availibility` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `trainers` (`id`, `name`, `rating`, `location`, `speak_language`, `ratio_for_hour`, `availibility`) VALUES (1, 'accusantium', 3134, '1151 Palma Garden Suite 581\nNorth Monique, NC 75569-8173', '6', 27712, NULL);
INSERT INTO `trainers` (`id`, `name`, `rating`, `location`, `speak_language`, `ratio_for_hour`, `availibility`) VALUES (2, 'voluptatibus', 3239, '805 Orn Loop\nOberbrunnermouth, FL 87226-2477', '5', 52177, NULL);
INSERT INTO `trainers` (`id`, `name`, `rating`, `location`, `speak_language`, `ratio_for_hour`, `availibility`) VALUES (3, 'quod', 3011, '256 Fadel Locks Suite 612\nAldachester, UT 81925-1191', '1', 97871, NULL);
INSERT INTO `trainers` (`id`, `name`, `rating`, `location`, `speak_language`, `ratio_for_hour`, `availibility`) VALUES (4, 'quia', 3943, '2703 Trantow Gardens Suite 381\nNorth Rosemaryton, IA 79475', '6', 70362, NULL);
INSERT INTO `trainers` (`id`, `name`, `rating`, `location`, `speak_language`, `ratio_for_hour`, `availibility`) VALUES (5, 'voluptatem', 4812, '213 Genevieve Ford Suite 449\nFelipaside, WA 97932', '5', 74135, NULL);
INSERT INTO `trainers` (`id`, `name`, `rating`, `location`, `speak_language`, `ratio_for_hour`, `availibility`) VALUES (6, 'consequatur', 3215, '5900 Gretchen Prairie\nWest Adolf, GA 52142', '3', 32734, NULL);
INSERT INTO `trainers` (`id`, `name`, `rating`, `location`, `speak_language`, `ratio_for_hour`, `availibility`) VALUES (7, 'non', 2366, '5905 Rosario Park\nLake Kenneth, AL 55237-5388', '4', 31086, NULL);
INSERT INTO `trainers` (`id`, `name`, `rating`, `location`, `speak_language`, `ratio_for_hour`, `availibility`) VALUES (8, 'ea', 4586, '881 Hagenes Glen Apt. 602\nMoenchester, WI 34653-1296', '2', 26549, NULL);
INSERT INTO `trainers` (`id`, `name`, `rating`, `location`, `speak_language`, `ratio_for_hour`, `availibility`) VALUES (9, 'ad', 3470, '90677 Mackenzie Ville\nNaomieville, NY 54096-2837', '5', 34364, NULL);
INSERT INTO `trainers` (`id`, `name`, `rating`, `location`, `speak_language`, `ratio_for_hour`, `availibility`) VALUES (10, 'soluta', 4748, '273 Ankunding Vista Apt. 404\nStephaniaville, WI 50232', '3', 34592, NULL);
INSERT INTO `trainers` (`id`, `name`, `rating`, `location`, `speak_language`, `ratio_for_hour`, `availibility`) VALUES (11, 'ab', 2329, '10481 Melissa Pine\nLillachester, UT 86655-1412', '5', 51424, NULL);
INSERT INTO `trainers` (`id`, `name`, `rating`, `location`, `speak_language`, `ratio_for_hour`, `availibility`) VALUES (12, 'nobis', 4360, '73392 Elnora Mills Apt. 479\nLake Elijahville, NV 61088-6458', '9', 39184, NULL);
INSERT INTO `trainers` (`id`, `name`, `rating`, `location`, `speak_language`, `ratio_for_hour`, `availibility`) VALUES (13, 'qui', 2093, '144 Hipolito Light\nVickychester, MO 48720-9575', '5', 73256, NULL);
INSERT INTO `trainers` (`id`, `name`, `rating`, `location`, `speak_language`, `ratio_for_hour`, `availibility`) VALUES (14, 'accusantium', 2270, '09970 Arjun Unions\nWest Aleen, NV 78144', '10', 95016, NULL);
INSERT INTO `trainers` (`id`, `name`, `rating`, `location`, `speak_language`, `ratio_for_hour`, `availibility`) VALUES (15, 'pariatur', 2597, '16961 Hassan Highway Apt. 033\nAniyahmouth, FL 04111', '8', 89314, NULL);
INSERT INTO `trainers` (`id`, `name`, `rating`, `location`, `speak_language`, `ratio_for_hour`, `availibility`) VALUES (16, 'porro', 4645, '66485 Ondricka Mission\nSouth Scottyborough, MA 94689-3790', '4', 48132, NULL);
INSERT INTO `trainers` (`id`, `name`, `rating`, `location`, `speak_language`, `ratio_for_hour`, `availibility`) VALUES (17, 'facilis', 3704, '27743 Dickinson Fords Suite 759\nSouth Miller, NY 58736', '1', 36488, NULL);
INSERT INTO `trainers` (`id`, `name`, `rating`, `location`, `speak_language`, `ratio_for_hour`, `availibility`) VALUES (18, 'tempore', 2472, '033 Mueller Flat\nEast Davonteside, CT 66453-5189', '9', 81175, NULL);
INSERT INTO `trainers` (`id`, `name`, `rating`, `location`, `speak_language`, `ratio_for_hour`, `availibility`) VALUES (19, 'odit', 3537, '34857 Chanel Shoals Apt. 059\nNew Wyatt, PA 63428-8564', '1', 15105, NULL);
INSERT INTO `trainers` (`id`, `name`, `rating`, `location`, `speak_language`, `ratio_for_hour`, `availibility`) VALUES (20, 'odit', 4868, '5635 Kilback Plaza\nEast Winfieldstad, AL 53924', '2', 22661, NULL);
INSERT INTO `trainers` (`id`, `name`, `rating`, `location`, `speak_language`, `ratio_for_hour`, `availibility`) VALUES (21, 'maiores', 4662, '40618 Allie Dam\nSouth Norma, NE 64127-4915', '1', 61613, NULL);
INSERT INTO `trainers` (`id`, `name`, `rating`, `location`, `speak_language`, `ratio_for_hour`, `availibility`) VALUES (22, 'eum', 4908, '7980 Nicolas Ridges Apt. 418\nCollierville, MI 61351', '6', 21515, NULL);
INSERT INTO `trainers` (`id`, `name`, `rating`, `location`, `speak_language`, `ratio_for_hour`, `availibility`) VALUES (23, 'earum', 4461, '3860 Brigitte Wells\nHermistonville, MT 21739-2631', '9', 14969, NULL);
INSERT INTO `trainers` (`id`, `name`, `rating`, `location`, `speak_language`, `ratio_for_hour`, `availibility`) VALUES (24, 'odio', 3696, '085 Thomas Valleys\nParisianberg, SC 89220', '8', 66576, NULL);
INSERT INTO `trainers` (`id`, `name`, `rating`, `location`, `speak_language`, `ratio_for_hour`, `availibility`) VALUES (25, 'quos', 4910, '2359 Mohr Greens Apt. 420\nJacobsonmouth, AL 38706-3571', '9', 25027, NULL);
INSERT INTO `trainers` (`id`, `name`, `rating`, `location`, `speak_language`, `ratio_for_hour`, `availibility`) VALUES (26, 'consequatur', 2526, '9606 Boyer Cape\nLake Abigaleville, MT 84522', '2', 36400, NULL);
INSERT INTO `trainers` (`id`, `name`, `rating`, `location`, `speak_language`, `ratio_for_hour`, `availibility`) VALUES (27, 'sunt', 3185, '9955 Blaise Stravenue\nPort Jaquanton, CA 48244-2510', '3', 91213, NULL);
INSERT INTO `trainers` (`id`, `name`, `rating`, `location`, `speak_language`, `ratio_for_hour`, `availibility`) VALUES (28, 'quia', 4828, '113 Rempel Extensions\nLake Hope, NY 18323', '7', 48809, NULL);
INSERT INTO `trainers` (`id`, `name`, `rating`, `location`, `speak_language`, `ratio_for_hour`, `availibility`) VALUES (29, 'cumque', 2757, '2138 Anissa Row Suite 182\nPort Carolyneview, KY 77815-2147', '4', 31546, NULL);
INSERT INTO `trainers` (`id`, `name`, `rating`, `location`, `speak_language`, `ratio_for_hour`, `availibility`) VALUES (30, 'officia', 2914, '098 Clemmie Mall Suite 570\nEast Clarabelle, RI 15578', '3', 37874, NULL);


#
# TABLE STRUCTURE FOR: types_game
#

DROP TABLE IF EXISTS `types_game`;

CREATE TABLE `types_game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `types_game` (`id`, `name`) VALUES (1, 'et');
INSERT INTO `types_game` (`id`, `name`) VALUES (2, 'provident');
INSERT INTO `types_game` (`id`, `name`) VALUES (3, 'earum');
INSERT INTO `types_game` (`id`, `name`) VALUES (4, 'quaerat');
INSERT INTO `types_game` (`id`, `name`) VALUES (5, 'qui');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `name`) VALUES (1, 'aperiam');
INSERT INTO `users` (`id`, `name`) VALUES (2, 'quam');
INSERT INTO `users` (`id`, `name`) VALUES (3, 'eum');
INSERT INTO `users` (`id`, `name`) VALUES (4, 'deserunt');
INSERT INTO `users` (`id`, `name`) VALUES (5, 'esse');
INSERT INTO `users` (`id`, `name`) VALUES (6, 'omnis');
INSERT INTO `users` (`id`, `name`) VALUES (7, 'modi');
INSERT INTO `users` (`id`, `name`) VALUES (8, 'magnam');
INSERT INTO `users` (`id`, `name`) VALUES (9, 'molestiae');
INSERT INTO `users` (`id`, `name`) VALUES (10, 'magni');
INSERT INTO `users` (`id`, `name`) VALUES (11, 'quia');
INSERT INTO `users` (`id`, `name`) VALUES (12, 'blanditiis');
INSERT INTO `users` (`id`, `name`) VALUES (13, 'voluptatum');
INSERT INTO `users` (`id`, `name`) VALUES (14, 'aut');
INSERT INTO `users` (`id`, `name`) VALUES (15, 'molestias');
INSERT INTO `users` (`id`, `name`) VALUES (16, 'ducimus');
INSERT INTO `users` (`id`, `name`) VALUES (17, 'distinctio');
INSERT INTO `users` (`id`, `name`) VALUES (18, 'ut');
INSERT INTO `users` (`id`, `name`) VALUES (19, 'alias');
INSERT INTO `users` (`id`, `name`) VALUES (20, 'minus');
INSERT INTO `users` (`id`, `name`) VALUES (21, 'tempore');
INSERT INTO `users` (`id`, `name`) VALUES (22, 'et');
INSERT INTO `users` (`id`, `name`) VALUES (23, 'et');
INSERT INTO `users` (`id`, `name`) VALUES (24, 'quod');
INSERT INTO `users` (`id`, `name`) VALUES (25, 'aut');
INSERT INTO `users` (`id`, `name`) VALUES (26, 'necessitatibus');
INSERT INTO `users` (`id`, `name`) VALUES (27, 'et');
INSERT INTO `users` (`id`, `name`) VALUES (28, 'hic');
INSERT INTO `users` (`id`, `name`) VALUES (29, 'qui');
INSERT INTO `users` (`id`, `name`) VALUES (30, 'est');
INSERT INTO `users` (`id`, `name`) VALUES (31, 'non');
INSERT INTO `users` (`id`, `name`) VALUES (32, 'ad');
INSERT INTO `users` (`id`, `name`) VALUES (33, 'a');
INSERT INTO `users` (`id`, `name`) VALUES (34, 'dolor');
INSERT INTO `users` (`id`, `name`) VALUES (35, 'sunt');
INSERT INTO `users` (`id`, `name`) VALUES (36, 'earum');
INSERT INTO `users` (`id`, `name`) VALUES (37, 'rerum');
INSERT INTO `users` (`id`, `name`) VALUES (38, 'omnis');
INSERT INTO `users` (`id`, `name`) VALUES (39, 'rem');
INSERT INTO `users` (`id`, `name`) VALUES (40, 'illo');
INSERT INTO `users` (`id`, `name`) VALUES (41, 'assumenda');
INSERT INTO `users` (`id`, `name`) VALUES (42, 'sunt');
INSERT INTO `users` (`id`, `name`) VALUES (43, 'quae');
INSERT INTO `users` (`id`, `name`) VALUES (44, 'autem');
INSERT INTO `users` (`id`, `name`) VALUES (45, 'veniam');
INSERT INTO `users` (`id`, `name`) VALUES (46, 'eos');
INSERT INTO `users` (`id`, `name`) VALUES (47, 'laboriosam');
INSERT INTO `users` (`id`, `name`) VALUES (48, 'ut');
INSERT INTO `users` (`id`, `name`) VALUES (49, 'voluptatum');
INSERT INTO `users` (`id`, `name`) VALUES (50, 'velit');
INSERT INTO `users` (`id`, `name`) VALUES (51, 'non');
INSERT INTO `users` (`id`, `name`) VALUES (52, 'voluptas');
INSERT INTO `users` (`id`, `name`) VALUES (53, 'et');
INSERT INTO `users` (`id`, `name`) VALUES (54, 'est');
INSERT INTO `users` (`id`, `name`) VALUES (55, 'quibusdam');
INSERT INTO `users` (`id`, `name`) VALUES (56, 'asperiores');
INSERT INTO `users` (`id`, `name`) VALUES (57, 'sed');
INSERT INTO `users` (`id`, `name`) VALUES (58, 'dolores');
INSERT INTO `users` (`id`, `name`) VALUES (59, 'at');
INSERT INTO `users` (`id`, `name`) VALUES (60, 'enim');
INSERT INTO `users` (`id`, `name`) VALUES (61, 'perferendis');
INSERT INTO `users` (`id`, `name`) VALUES (62, 'est');
INSERT INTO `users` (`id`, `name`) VALUES (63, 'illo');
INSERT INTO `users` (`id`, `name`) VALUES (64, 'voluptas');
INSERT INTO `users` (`id`, `name`) VALUES (65, 'nisi');
INSERT INTO `users` (`id`, `name`) VALUES (66, 'pariatur');
INSERT INTO `users` (`id`, `name`) VALUES (67, 'similique');
INSERT INTO `users` (`id`, `name`) VALUES (68, 'aut');
INSERT INTO `users` (`id`, `name`) VALUES (69, 'consequatur');
INSERT INTO `users` (`id`, `name`) VALUES (70, 'laudantium');
INSERT INTO `users` (`id`, `name`) VALUES (71, 'dolore');
INSERT INTO `users` (`id`, `name`) VALUES (72, 'a');
INSERT INTO `users` (`id`, `name`) VALUES (73, 'fuga');
INSERT INTO `users` (`id`, `name`) VALUES (74, 'incidunt');
INSERT INTO `users` (`id`, `name`) VALUES (75, 'natus');
INSERT INTO `users` (`id`, `name`) VALUES (76, 'est');
INSERT INTO `users` (`id`, `name`) VALUES (77, 'facilis');
INSERT INTO `users` (`id`, `name`) VALUES (78, 'voluptas');
INSERT INTO `users` (`id`, `name`) VALUES (79, 'qui');
INSERT INTO `users` (`id`, `name`) VALUES (80, 'sit');
INSERT INTO `users` (`id`, `name`) VALUES (81, 'autem');
INSERT INTO `users` (`id`, `name`) VALUES (82, 'quo');
INSERT INTO `users` (`id`, `name`) VALUES (83, 'vel');
INSERT INTO `users` (`id`, `name`) VALUES (84, 'laboriosam');
INSERT INTO `users` (`id`, `name`) VALUES (85, 'voluptas');
INSERT INTO `users` (`id`, `name`) VALUES (86, 'veritatis');
INSERT INTO `users` (`id`, `name`) VALUES (87, 'placeat');
INSERT INTO `users` (`id`, `name`) VALUES (88, 'repellendus');
INSERT INTO `users` (`id`, `name`) VALUES (89, 'totam');
INSERT INTO `users` (`id`, `name`) VALUES (90, 'dicta');
INSERT INTO `users` (`id`, `name`) VALUES (91, 'vel');
INSERT INTO `users` (`id`, `name`) VALUES (92, 'accusantium');
INSERT INTO `users` (`id`, `name`) VALUES (93, 'porro');
INSERT INTO `users` (`id`, `name`) VALUES (94, 'porro');
INSERT INTO `users` (`id`, `name`) VALUES (95, 'quia');
INSERT INTO `users` (`id`, `name`) VALUES (96, 'vel');
INSERT INTO `users` (`id`, `name`) VALUES (97, 'iure');
INSERT INTO `users` (`id`, `name`) VALUES (98, 'minima');
INSERT INTO `users` (`id`, `name`) VALUES (99, 'eos');
INSERT INTO `users` (`id`, `name`) VALUES (100, 'sed');


