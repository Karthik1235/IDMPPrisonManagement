DROP TABLE IF EXISTS `requests_archive`;
CREATE TABLE `requests_archive` (
  `prisonerId` int,
  `visitorId` int,
  `supervisorId` int NOT NULL,
  `visitTime` datetime,
  `visitStatus` int DEFAULT 0,
  PRIMARY KEY (`prisonerId`, `visitorId`, `visitTime`),
  CONSTRAINT `FK_prisonerId_requests_archive` FOREIGN KEY (`prisonerId`) REFERENCES `prisoner` (`prisonerId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_supervisor_requests_archive` FOREIGN KEY (`supervisorId`) REFERENCES `supervisor` (`supervisorId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_visitor_requests_archive` FOREIGN KEY (`visitorId`) REFERENCES `visitor` (`visitorId`) ON DELETE RESTRICT ON UPDATE RESTRICT
);

insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (2, 17, 1, '2022-06-27 03:09:18', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (4, 2, 1, '2015-12-24 15:50:48', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (5, 20, 1, '2011-08-26 23:53:35', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (13, 2, 2, '2021-05-06 17:00:56', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (16, 19, 1, '2016-12-23 04:02:39', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (20, 17, 2, '2014-05-14 20:32:10', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (23, 2, 2, '2020-12-18 08:11:19', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (23, 18, 1, '2019-07-25 14:52:03', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (27, 4, 2, '2016-12-29 19:56:27', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (28, 5, 2, '2021-10-20 01:10:05', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (36, 18, 2, '2022-08-23 11:42:51', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (40, 16, 1, '2016-05-16 17:48:22', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (43, 12, 2, '2015-08-06 21:46:36', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (46, 13, 3, '2013-04-07 22:15:34', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (51, 9, 1, '2017-12-06 08:18:46', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (52, 25, 1, '2014-02-24 13:50:42', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (53, 17, 3, '2021-05-18 03:20:12', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (55, 5, 1, '2012-12-15 19:07:12', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (57, 6, 2, '2017-05-26 03:47:02', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (59, 27, 1, '2021-07-16 19:24:51', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (63, 19, 3, '2018-05-09 23:55:05', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (68, 11, 3, '2014-12-26 03:46:30', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (70, 14, 2, '2019-09-24 19:46:27', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (71, 14, 1, '2021-07-25 18:09:39', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (73, 24, 3, '2020-08-31 12:33:12', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (81, 14, 1, '2016-11-24 02:41:30', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (82, 6, 3, '2017-01-14 06:06:39', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (86, 28, 1, '2013-02-21 15:40:04', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (87, 18, 1, '2018-07-20 03:14:17', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (93, 13, 3, '2013-12-08 12:26:27', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (95, 20, 1, '2022-10-15 07:15:22', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (105, 23, 1, '2012-04-21 06:11:09', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (109, 18, 2, '2013-11-11 03:58:26', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (110, 2, 1, '2015-07-28 22:43:38', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (117, 28, 2, '2015-06-27 10:52:52', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (124, 3, 1, '2019-07-03 10:36:59', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (127, 24, 1, '2012-05-21 00:54:59', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (135, 17, 2, '2015-04-23 04:44:42', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (136, 22, 1, '2013-02-08 22:34:40', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (138, 21, 1, '2014-07-30 01:17:23', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (143, 18, 2, '2019-12-28 01:05:26', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (147, 22, 1, '2021-08-21 02:59:00', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (161, 23, 1, '2018-09-02 05:36:41', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (162, 2, 1, '2019-05-28 17:11:10', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (173, 29, 3, '2015-12-29 06:37:50', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (176, 8, 3, '2017-01-20 20:29:56', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (180, 17, 2, '2018-08-20 14:16:40', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (184, 2, 3, '2011-01-22 23:06:06', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (189, 7, 1, '2012-03-03 02:30:02', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (199, 29, 2, '2012-02-01 16:35:36', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (202, 20, 3, '2021-01-10 23:46:59', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (210, 29, 3, '2011-04-05 17:56:20', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (220, 3, 2, '2016-01-06 10:30:07', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (229, 20, 2, '2011-05-10 11:02:02', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (237, 6, 3, '2013-03-01 20:22:47', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (245, 20, 2, '2021-06-24 12:03:31', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (250, 6, 2, '2020-11-24 04:10:48', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (250, 25, 3, '2011-01-10 10:27:07', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (251, 16, 1, '2022-09-30 06:29:14', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (255, 19, 3, '2010-12-15 08:29:45', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (256, 12, 1, '2013-06-05 15:46:23', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (256, 15, 2, '2021-08-29 18:58:38', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (265, 12, 3, '2016-10-09 02:43:52', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (270, 21, 3, '2013-10-06 07:05:25', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (274, 5, 1, '2019-08-29 16:48:44', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (279, 29, 2, '2016-01-02 09:26:22', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (303, 13, 3, '2017-12-12 17:13:48', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (304, 9, 2, '2020-02-28 00:36:20', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (305, 27, 2, '2012-06-30 16:08:28', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (312, 14, 1, '2020-07-20 05:15:16', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (318, 2, 3, '2019-10-04 20:12:13', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (325, 29, 1, '2012-01-28 20:56:08', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (327, 8, 2, '2010-12-14 02:01:17', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (328, 2, 1, '2018-06-19 03:13:46', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (341, 4, 2, '2015-03-22 10:36:23', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (349, 27, 1, '2016-06-09 01:04:15', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (353, 24, 2, '2021-08-26 19:59:01', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (354, 3, 1, '2014-03-10 14:52:52', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (356, 4, 1, '2018-06-18 07:57:39', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (371, 30, 1, '2011-03-15 02:19:00', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (375, 19, 2, '2017-04-19 06:28:15', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (379, 28, 3, '2011-06-27 21:32:35', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (380, 24, 2, '2017-08-22 04:32:22', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (394, 7, 2, '2010-12-02 01:07:42', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (405, 25, 3, '2012-03-15 12:17:11', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (412, 9, 3, '2022-02-21 15:59:21', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (418, 9, 1, '2022-06-20 11:50:03', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (422, 15, 1, '2015-12-21 16:16:53', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (424, 1, 3, '2020-11-26 19:13:02', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (426, 16, 1, '2011-04-11 21:55:32', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (435, 26, 2, '2021-01-13 03:13:47', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (437, 4, 2, '2012-04-07 15:31:48', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (449, 7, 1, '2015-04-12 18:59:16', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (464, 7, 2, '2022-09-11 14:53:26', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (471, 5, 3, '2012-01-19 12:53:48', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (474, 17, 3, '2019-10-01 15:33:52', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (481, 24, 1, '2018-01-06 02:36:00', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (484, 22, 1, '2018-03-28 23:46:27', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (491, 3, 2, '2013-09-11 00:27:46', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (499, 26, 3, '2015-04-17 08:45:36', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (2, 17, 1, '2010-12-10 05:44:56', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (4, 2, 1, '2017-09-16 15:37:12', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (5, 20, 1, '2011-07-15 10:06:24', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (13, 2, 2, '2022-10-28 12:32:28', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (16, 19, 1, '2017-08-10 21:53:03', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (20, 17, 2, '2014-09-28 10:37:18', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (23, 2, 2, '2022-07-21 13:29:18', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (23, 18, 1, '2016-10-01 17:02:33', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (27, 4, 2, '2012-04-19 21:15:23', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (28, 5, 2, '2018-10-20 02:15:28', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (36, 18, 2, '2012-01-23 05:40:50', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (40, 16, 1, '2017-02-18 19:39:38', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (43, 12, 2, '2011-12-30 18:47:36', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (46, 13, 3, '2018-11-08 00:59:00', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (51, 9, 1, '2011-04-30 09:22:39', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (52, 25, 1, '2012-10-13 03:24:06', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (53, 17, 3, '2021-01-19 12:26:17', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (55, 5, 1, '2013-07-01 02:15:31', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (57, 6, 2, '2017-03-27 23:43:02', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (59, 27, 1, '2011-03-21 12:47:41', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (63, 19, 3, '2017-03-30 23:19:05', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (68, 11, 3, '2013-06-16 02:54:07', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (70, 14, 2, '2013-03-09 17:05:44', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (71, 14, 1, '2016-10-04 15:11:06', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (73, 24, 3, '2012-12-29 15:06:15', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (81, 14, 1, '2014-04-24 02:46:50', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (82, 6, 3, '2018-01-26 19:43:54', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (86, 28, 1, '2015-01-07 08:11:17', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (87, 18, 1, '2016-08-10 22:20:16', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (93, 13, 3, '2019-10-17 18:58:03', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (95, 20, 1, '2013-09-04 18:05:39', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (105, 23, 1, '2011-04-06 10:26:08', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (109, 18, 2, '2019-10-13 00:08:19', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (110, 2, 1, '2016-06-15 20:07:54', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (117, 28, 2, '2012-05-22 12:15:39', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (124, 3, 1, '2017-09-03 13:37:51', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (127, 24, 1, '2019-01-28 02:59:27', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (135, 17, 2, '2019-10-20 20:51:59', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (136, 22, 1, '2016-01-16 03:52:41', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (138, 21, 1, '2021-07-23 05:45:49', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (143, 18, 2, '2021-06-01 10:36:47', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (147, 22, 1, '2016-07-01 01:51:00', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (161, 23, 1, '2014-12-08 04:09:30', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (162, 2, 1, '2012-01-13 04:42:05', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (173, 29, 3, '2020-10-04 04:48:19', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (176, 8, 3, '2020-05-12 23:37:19', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (180, 17, 2, '2015-12-03 19:50:01', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (184, 2, 3, '2021-03-15 20:13:02', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (189, 7, 1, '2015-01-27 01:55:10', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (199, 29, 2, '2018-11-25 06:41:42', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (202, 20, 3, '2012-10-16 16:48:10', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (210, 29, 3, '2017-12-12 13:14:47', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (220, 3, 2, '2015-03-12 21:21:54', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (229, 20, 2, '2020-07-31 07:02:08', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (237, 6, 3, '2022-03-16 04:27:08', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (245, 20, 2, '2013-11-17 11:19:30', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (250, 6, 2, '2018-02-15 07:14:01', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (250, 25, 3, '2015-11-02 01:14:09', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (251, 16, 1, '2012-10-10 21:55:44', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (255, 19, 3, '2020-04-06 06:47:29', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (256, 12, 1, '2022-09-22 10:22:21', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (256, 15, 2, '2014-01-05 03:15:22', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (265, 12, 3, '2021-08-08 07:59:10', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (270, 21, 3, '2018-02-09 04:22:15', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (274, 5, 1, '2013-01-20 21:42:53', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (279, 29, 2, '2020-03-22 21:27:14', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (303, 13, 3, '2018-06-29 04:51:44', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (304, 9, 2, '2012-11-08 02:05:17', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (305, 27, 2, '2021-04-01 23:53:05', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (312, 14, 1, '2012-03-10 05:13:54', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (318, 2, 3, '2020-08-14 05:49:54', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (325, 29, 1, '2015-12-07 15:10:50', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (327, 8, 2, '2012-10-07 02:08:39', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (328, 2, 1, '2012-01-01 20:23:39', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (341, 4, 2, '2018-05-17 00:40:04', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (349, 27, 1, '2020-04-06 19:12:34', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (353, 24, 2, '2022-05-18 05:04:30', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (354, 3, 1, '2018-09-22 21:42:20', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (356, 4, 1, '2014-05-24 17:10:40', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (371, 30, 1, '2012-11-15 22:31:17', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (375, 19, 2, '2012-09-04 02:18:58', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (379, 28, 3, '2018-05-01 02:21:04', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (380, 24, 2, '2020-10-29 14:30:44', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (394, 7, 2, '2018-05-10 21:26:22', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (405, 25, 3, '2018-05-01 10:06:33', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (412, 9, 3, '2012-07-06 15:40:11', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (418, 9, 1, '2022-01-30 03:23:07', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (422, 15, 1, '2015-09-02 03:51:37', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (424, 1, 3, '2012-07-04 21:36:50', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (426, 16, 1, '2022-07-17 14:03:02', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (435, 26, 2, '2017-12-02 16:19:15', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (437, 4, 2, '2016-04-05 09:50:02', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (449, 7, 1, '2017-06-22 01:09:01', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (464, 7, 2, '2012-02-04 17:10:05', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (471, 5, 3, '2020-09-06 18:58:56', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (474, 17, 3, '2021-05-20 11:03:05', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (481, 24, 1, '2016-09-17 07:23:59', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (484, 22, 1, '2022-01-02 20:48:07', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (491, 3, 2, '2018-03-31 07:20:16', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (499, 26, 3, '2015-06-27 20:56:09', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (2, 17, 1, '2015-06-07 21:59:23', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (4, 2, 1, '2021-07-31 23:24:55', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (5, 20, 1, '2019-04-17 12:16:28', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (13, 2, 2, '2020-09-08 05:46:07', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (16, 19, 1, '2013-07-15 20:02:39', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (20, 17, 2, '2019-12-31 19:42:33', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (23, 2, 2, '2012-06-04 19:10:22', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (23, 18, 1, '2019-10-17 04:37:55', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (27, 4, 2, '2022-03-05 12:42:55', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (28, 5, 2, '2022-09-11 10:27:58', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (36, 18, 2, '2020-06-27 20:49:11', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (40, 16, 1, '2012-02-03 18:21:13', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (43, 12, 2, '2012-06-03 08:51:32', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (46, 13, 3, '2022-09-26 03:07:27', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (51, 9, 1, '2013-07-13 19:03:40', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (52, 25, 1, '2020-05-26 05:54:24', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (53, 17, 3, '2020-07-30 16:48:58', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (55, 5, 1, '2012-05-04 21:28:21', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (57, 6, 2, '2022-08-02 08:37:41', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (59, 27, 1, '2016-06-05 13:28:12', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (63, 19, 3, '2016-12-28 08:35:55', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (68, 11, 3, '2012-12-17 15:10:08', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (70, 14, 2, '2013-01-05 14:33:31', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (71, 14, 1, '2020-05-18 23:11:35', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (73, 24, 3, '2013-01-28 04:42:01', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (81, 14, 1, '2020-06-08 03:06:39', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (82, 6, 3, '2017-03-25 17:23:46', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (86, 28, 1, '2020-01-03 04:17:48', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (87, 18, 1, '2014-12-11 01:53:01', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (93, 13, 3, '2015-06-13 12:03:17', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (95, 20, 1, '2019-06-13 07:53:57', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (105, 23, 1, '2014-11-23 15:11:20', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (109, 18, 2, '2013-02-07 15:40:03', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (110, 2, 1, '2022-04-24 15:59:56', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (117, 28, 2, '2019-08-26 09:35:03', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (124, 3, 1, '2016-11-23 23:27:28', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (127, 24, 1, '2017-12-20 04:17:15', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (135, 17, 2, '2017-01-16 16:28:00', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (136, 22, 1, '2017-04-22 19:15:37', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (138, 21, 1, '2013-05-14 15:19:05', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (143, 18, 2, '2019-02-11 11:00:12', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (147, 22, 1, '2011-09-06 01:53:55', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (161, 23, 1, '2022-05-16 18:45:05', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (162, 2, 1, '2014-03-11 00:15:26', 1);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (173, 29, 3, '2015-09-27 16:27:30', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (176, 8, 3, '2019-06-10 20:33:15', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (180, 17, 2, '2019-02-19 09:23:02', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (184, 2, 3, '2016-04-12 04:14:15', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (189, 7, 1, '2021-08-29 00:03:01', 2);
insert into requests_archive (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (199, 29, 2, '2014-08-06 09:26:49', 1);
