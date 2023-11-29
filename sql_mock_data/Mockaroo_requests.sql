DROP TABLE IF EXISTS `requests`;
CREATE TABLE `requests` (
  `prisonerId` int,
  `visitorId` int,
  `supervisorId` int NOT NULL,
  `visitTime` datetime,
  `visitStatus` int DEFAULT 0,
  PRIMARY KEY `FK_prisonerId_requests` (`prisonerId`, `visitorId`, `visitTime`),
  CONSTRAINT `FK_prisonerId_requests` FOREIGN KEY (`prisonerId`) REFERENCES `prisoner` (`prisonerId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_supervisor_requests` FOREIGN KEY (`supervisorId`) REFERENCES `supervisor` (`supervisorId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_visitor_requests` FOREIGN KEY (`visitorId`) REFERENCES `visitor` (`visitorId`) ON DELETE RESTRICT ON UPDATE RESTRICT
);

insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (412, 9, 3, '2023-08-16 12:46:29', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (23, 2, 2, '2023-10-03 14:50:18', 0);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (237, 6, 3, '2022-11-30 08:42:03', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (73, 24, 3, '2023-03-30 22:18:19', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (162, 2, 1, '2023-08-20 17:12:11', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (426, 16, 1, '2023-05-17 13:21:12', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (418, 9, 1, '2022-12-24 18:52:14', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (380, 24, 2, '2023-11-02 16:48:57', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (161, 23, 1, '2023-10-16 13:53:00', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (471, 5, 3, '2023-01-21 00:11:46', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (2, 17, 1, '2023-08-05 00:18:34', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (93, 13, 3, '2023-08-02 21:16:31', 0);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (173, 29, 3, '2023-08-20 17:47:47', 0);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (251, 16, 1, '2023-05-04 04:08:33', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (449, 7, 1, '2023-07-26 12:30:36', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (481, 24, 1, '2023-02-02 21:41:08', 0);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (135, 17, 2, '2023-02-06 22:58:16', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (20, 17, 2, '2023-05-17 15:01:59', 0);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (256, 12, 1, '2023-08-23 20:52:46', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (265, 12, 3, '2023-10-20 09:21:11', 0);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (184, 2, 3, '2023-08-27 10:11:11', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (176, 8, 3, '2023-11-12 20:53:40', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (109, 18, 2, '2022-12-21 15:35:50', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (375, 19, 2, '2023-05-28 22:34:43', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (424, 1, 3, '2023-07-19 11:37:30', 0);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (63, 19, 3, '2023-10-01 05:53:44', 0);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (328, 2, 1, '2022-12-18 13:15:12', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (199, 29, 2, '2023-10-24 06:23:22', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (82, 6, 3, '2023-06-07 02:53:50', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (354, 3, 1, '2023-10-30 13:46:16', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (13, 2, 2, '2023-07-14 09:15:32', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (5, 20, 1, '2023-01-10 13:27:03', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (379, 28, 3, '2023-03-05 00:34:05', 0);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (250, 25, 3, '2022-12-04 19:49:35', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (435, 26, 2, '2023-11-12 13:07:42', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (180, 17, 2, '2023-09-19 04:49:29', 0);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (147, 22, 1, '2023-06-24 16:39:19', 0);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (229, 20, 2, '2023-04-29 11:05:39', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (4, 2, 1, '2023-04-17 01:44:57', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (68, 11, 3, '2023-05-19 03:13:01', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (23, 18, 1, '2023-09-30 08:04:23', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (318, 2, 3, '2022-12-22 01:40:50', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (270, 21, 3, '2023-04-19 13:19:29', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (43, 12, 2, '2023-01-19 23:58:55', 0);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (51, 9, 1, '2023-10-29 23:04:45', 0);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (491, 3, 2, '2023-02-14 07:00:12', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (117, 28, 2, '2023-03-25 05:33:20', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (474, 17, 3, '2023-03-06 10:43:38', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (210, 29, 3, '2023-05-01 23:11:18', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (70, 14, 2, '2023-10-12 11:39:18', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (138, 21, 1, '2023-09-03 19:50:39', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (86, 28, 1, '2023-02-19 03:43:49', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (124, 3, 1, '2022-12-11 22:47:25', 0);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (349, 27, 1, '2023-05-29 21:20:17', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (16, 19, 1, '2023-04-13 00:54:43', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (110, 2, 1, '2023-05-05 22:52:30', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (356, 4, 1, '2023-06-28 05:25:45', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (27, 4, 2, '2023-08-26 23:30:00', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (220, 3, 2, '2023-11-13 05:45:59', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (105, 23, 1, '2023-06-12 16:08:25', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (52, 25, 1, '2023-07-30 11:36:52', 0);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (28, 5, 2, '2022-12-23 08:11:20', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (95, 20, 1, '2023-08-07 04:14:56', 0);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (57, 6, 2, '2023-04-12 07:14:13', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (303, 13, 3, '2023-07-03 23:49:18', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (499, 26, 3, '2023-03-26 10:23:05', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (71, 14, 1, '2023-06-21 23:35:21', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (422, 15, 1, '2023-01-11 11:38:24', 0);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (36, 18, 2, '2023-05-16 22:56:49', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (81, 14, 1, '2023-03-21 16:02:52', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (202, 20, 3, '2023-05-28 08:22:30', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (46, 13, 3, '2022-12-22 19:12:36', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (55, 5, 1, '2023-08-29 17:46:35', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (341, 4, 2, '2022-12-11 13:02:42', 0);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (405, 25, 3, '2023-04-07 19:03:17', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (394, 7, 2, '2023-02-17 07:51:16', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (136, 22, 1, '2023-02-14 13:10:29', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (327, 8, 2, '2023-04-13 19:38:17', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (53, 17, 3, '2023-03-20 16:49:08', 0);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (87, 18, 1, '2023-11-22 21:46:42', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (255, 19, 3, '2023-03-29 14:48:34', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (371, 30, 1, '2023-02-07 01:37:41', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (305, 27, 2, '2023-01-11 01:24:39', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (59, 27, 1, '2023-11-25 21:13:57', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (40, 16, 1, '2023-07-30 18:23:38', 0);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (256, 15, 2, '2023-02-17 17:57:46', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (312, 14, 1, '2023-11-16 21:07:22', 0);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (143, 18, 2, '2023-07-01 04:37:57', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (325, 29, 1, '2023-04-17 08:04:49', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (274, 5, 1, '2023-08-30 22:21:26', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (250, 6, 2, '2023-05-01 09:28:30', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (464, 7, 2, '2023-01-16 13:18:03', 0);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (279, 29, 2, '2023-01-02 04:54:41', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (127, 24, 1, '2023-08-08 09:53:23', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (245, 20, 2, '2023-05-10 11:11:14', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (437, 4, 2, '2023-10-14 06:26:02', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (189, 7, 1, '2023-05-27 01:50:18', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (304, 9, 2, '2023-10-25 07:13:16', 2);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (353, 24, 2, '2023-06-19 09:51:27', 1);
insert into requests (prisonerId, visitorId, supervisorId, visitTime, visitStatus) values (484, 22, 1, '2023-08-14 19:47:25', 1);
