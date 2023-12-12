DROP TABLE IF EXISTS `cell`;
CREATE TABLE `cell` (
  `cellId` int AUTO_INCREMENT,
  `capacity` int DEFAULT NULL,
  `blockId` int,
  PRIMARY KEY (`cellId`, `blockId`),
  CONSTRAINT `FK_blockId` FOREIGN KEY (`blockId`) REFERENCES `block` (`blockId`)
);

insert into cell (cellId, capacity, blockId) values (1, 4, 1);
insert into cell (cellId, capacity, blockId) values (2, 4, 2);
insert into cell (cellId, capacity, blockId) values (3, 4, 3);
insert into cell (cellId, capacity, blockId) values (4, 5, 4);
insert into cell (cellId, capacity, blockId) values (5, 4, 5);
insert into cell (cellId, capacity, blockId) values (6, 4, 6);
insert into cell (cellId, capacity, blockId) values (7, 6, 7);
insert into cell (cellId, capacity, blockId) values (8, 5, 8);
insert into cell (cellId, capacity, blockId) values (9, 4, 9);
insert into cell (cellId, capacity, blockId) values (10, 4, 10);
insert into cell (cellId, capacity, blockId) values (11, 6, 11);
insert into cell (cellId, capacity, blockId) values (12, 4, 12);
insert into cell (cellId, capacity, blockId) values (13, 5, 13);
insert into cell (cellId, capacity, blockId) values (14, 5, 14);
insert into cell (cellId, capacity, blockId) values (15, 5, 15);
insert into cell (cellId, capacity, blockId) values (16, 4, 16);
insert into cell (cellId, capacity, blockId) values (17, 4, 17);
insert into cell (cellId, capacity, blockId) values (18, 4, 18);
insert into cell (cellId, capacity, blockId) values (19, 4, 19);
insert into cell (cellId, capacity, blockId) values (20, 6, 20);
insert into cell (cellId, capacity, blockId) values (21, 6, 21);
insert into cell (cellId, capacity, blockId) values (22, 4, 22);
insert into cell (cellId, capacity, blockId) values (23, 4, 23);
insert into cell (cellId, capacity, blockId) values (24, 4, 24);
insert into cell (cellId, capacity, blockId) values (25, 4, 25);
insert into cell (cellId, capacity, blockId) values (26, 5, 26);
insert into cell (cellId, capacity, blockId) values (27, 6, 27);
insert into cell (cellId, capacity, blockId) values (28, 4, 28);
insert into cell (cellId, capacity, blockId) values (29, 5, 29);
insert into cell (cellId, capacity, blockId) values (30, 6, 30);
insert into cell (cellId, capacity, blockId) values (31, 4, 1);
insert into cell (cellId, capacity, blockId) values (32, 5, 2);
insert into cell (cellId, capacity, blockId) values (33, 4, 3);
insert into cell (cellId, capacity, blockId) values (34, 5, 4);
insert into cell (cellId, capacity, blockId) values (35, 4, 5);
insert into cell (cellId, capacity, blockId) values (36, 4, 6);
insert into cell (cellId, capacity, blockId) values (37, 4, 7);
insert into cell (cellId, capacity, blockId) values (38, 6, 8);
insert into cell (cellId, capacity, blockId) values (39, 4, 9);
insert into cell (cellId, capacity, blockId) values (40, 4, 10);
insert into cell (cellId, capacity, blockId) values (41, 6, 11);
insert into cell (cellId, capacity, blockId) values (42, 6, 12);
insert into cell (cellId, capacity, blockId) values (43, 4, 13);
insert into cell (cellId, capacity, blockId) values (44, 5, 14);
insert into cell (cellId, capacity, blockId) values (45, 5, 15);
insert into cell (cellId, capacity, blockId) values (46, 5, 16);
insert into cell (cellId, capacity, blockId) values (47, 6, 17);
insert into cell (cellId, capacity, blockId) values (48, 6, 18);
insert into cell (cellId, capacity, blockId) values (49, 4, 19);
insert into cell (cellId, capacity, blockId) values (50, 6, 20);
insert into cell (cellId, capacity, blockId) values (51, 4, 21);
insert into cell (cellId, capacity, blockId) values (52, 5, 22);
insert into cell (cellId, capacity, blockId) values (53, 5, 23);
insert into cell (cellId, capacity, blockId) values (54, 6, 24);
insert into cell (cellId, capacity, blockId) values (55, 6, 25);
insert into cell (cellId, capacity, blockId) values (56, 4, 26);
insert into cell (cellId, capacity, blockId) values (57, 4, 27);
insert into cell (cellId, capacity, blockId) values (58, 4, 28);
insert into cell (cellId, capacity, blockId) values (59, 6, 29);
insert into cell (cellId, capacity, blockId) values (60, 4, 30);
insert into cell (cellId, capacity, blockId) values (61, 6, 1);
insert into cell (cellId, capacity, blockId) values (62, 5, 2);
insert into cell (cellId, capacity, blockId) values (63, 4, 3);
insert into cell (cellId, capacity, blockId) values (64, 5, 4);
insert into cell (cellId, capacity, blockId) values (65, 5, 5);
insert into cell (cellId, capacity, blockId) values (66, 6, 6);
insert into cell (cellId, capacity, blockId) values (67, 6, 7);
insert into cell (cellId, capacity, blockId) values (68, 6, 8);
insert into cell (cellId, capacity, blockId) values (69, 5, 9);
insert into cell (cellId, capacity, blockId) values (70, 4, 10);
insert into cell (cellId, capacity, blockId) values (71, 4, 11);
insert into cell (cellId, capacity, blockId) values (72, 6, 12);
insert into cell (cellId, capacity, blockId) values (73, 5, 13);
insert into cell (cellId, capacity, blockId) values (74, 4, 14);
insert into cell (cellId, capacity, blockId) values (75, 5, 15);
insert into cell (cellId, capacity, blockId) values (76, 4, 16);
insert into cell (cellId, capacity, blockId) values (77, 4, 17);
insert into cell (cellId, capacity, blockId) values (78, 4, 18);
insert into cell (cellId, capacity, blockId) values (79, 5, 19);
insert into cell (cellId, capacity, blockId) values (80, 6, 20);
insert into cell (cellId, capacity, blockId) values (81, 4, 21);
insert into cell (cellId, capacity, blockId) values (82, 5, 22);
insert into cell (cellId, capacity, blockId) values (83, 5, 23);
insert into cell (cellId, capacity, blockId) values (84, 4, 24);
insert into cell (cellId, capacity, blockId) values (85, 4, 25);
insert into cell (cellId, capacity, blockId) values (86, 5, 26);
insert into cell (cellId, capacity, blockId) values (87, 6, 27);
insert into cell (cellId, capacity, blockId) values (88, 4, 28);
insert into cell (cellId, capacity, blockId) values (89, 4, 29);
insert into cell (cellId, capacity, blockId) values (90, 6, 30);
insert into cell (cellId, capacity, blockId) values (91, 5, 1);
insert into cell (cellId, capacity, blockId) values (92, 6, 2);
insert into cell (cellId, capacity, blockId) values (93, 4, 3);
insert into cell (cellId, capacity, blockId) values (94, 4, 4);
insert into cell (cellId, capacity, blockId) values (95, 4, 5);
insert into cell (cellId, capacity, blockId) values (96, 6, 6);
insert into cell (cellId, capacity, blockId) values (97, 5, 7);
insert into cell (cellId, capacity, blockId) values (98, 5, 8);
insert into cell (cellId, capacity, blockId) values (99, 4, 9);
insert into cell (cellId, capacity, blockId) values (100, 6, 10);
insert into cell (cellId, capacity, blockId) values (101, 4, 11);
insert into cell (cellId, capacity, blockId) values (102, 5, 12);
insert into cell (cellId, capacity, blockId) values (103, 4, 13);
insert into cell (cellId, capacity, blockId) values (104, 5, 14);
insert into cell (cellId, capacity, blockId) values (105, 4, 15);
insert into cell (cellId, capacity, blockId) values (106, 6, 16);
insert into cell (cellId, capacity, blockId) values (107, 6, 17);
insert into cell (cellId, capacity, blockId) values (108, 4, 18);
insert into cell (cellId, capacity, blockId) values (109, 5, 19);
insert into cell (cellId, capacity, blockId) values (110, 5, 20);
insert into cell (cellId, capacity, blockId) values (111, 5, 21);
insert into cell (cellId, capacity, blockId) values (112, 5, 22);
insert into cell (cellId, capacity, blockId) values (113, 4, 23);
insert into cell (cellId, capacity, blockId) values (114, 4, 24);
insert into cell (cellId, capacity, blockId) values (115, 4, 25);
insert into cell (cellId, capacity, blockId) values (116, 4, 26);
insert into cell (cellId, capacity, blockId) values (117, 5, 27);
insert into cell (cellId, capacity, blockId) values (118, 6, 28);
insert into cell (cellId, capacity, blockId) values (119, 5, 29);
insert into cell (cellId, capacity, blockId) values (120, 5, 30);
insert into cell (cellId, capacity, blockId) values (121, 6, 1);
insert into cell (cellId, capacity, blockId) values (122, 6, 2);
insert into cell (cellId, capacity, blockId) values (123, 4, 3);
insert into cell (cellId, capacity, blockId) values (124, 5, 4);
insert into cell (cellId, capacity, blockId) values (125, 5, 5);
insert into cell (cellId, capacity, blockId) values (126, 4, 6);
insert into cell (cellId, capacity, blockId) values (127, 5, 7);
insert into cell (cellId, capacity, blockId) values (128, 4, 8);
insert into cell (cellId, capacity, blockId) values (129, 6, 9);
insert into cell (cellId, capacity, blockId) values (130, 4, 10);
insert into cell (cellId, capacity, blockId) values (131, 4, 11);
insert into cell (cellId, capacity, blockId) values (132, 5, 12);
insert into cell (cellId, capacity, blockId) values (133, 5, 13);
insert into cell (cellId, capacity, blockId) values (134, 4, 14);
insert into cell (cellId, capacity, blockId) values (135, 6, 15);
insert into cell (cellId, capacity, blockId) values (136, 6, 16);
insert into cell (cellId, capacity, blockId) values (137, 5, 17);
insert into cell (cellId, capacity, blockId) values (138, 6, 18);
insert into cell (cellId, capacity, blockId) values (139, 4, 19);
insert into cell (cellId, capacity, blockId) values (140, 4, 20);
insert into cell (cellId, capacity, blockId) values (141, 5, 21);
insert into cell (cellId, capacity, blockId) values (142, 4, 22);
insert into cell (cellId, capacity, blockId) values (143, 6, 23);
insert into cell (cellId, capacity, blockId) values (144, 4, 24);
insert into cell (cellId, capacity, blockId) values (145, 6, 25);
insert into cell (cellId, capacity, blockId) values (146, 6, 26);
insert into cell (cellId, capacity, blockId) values (147, 5, 27);
insert into cell (cellId, capacity, blockId) values (148, 6, 28);
insert into cell (cellId, capacity, blockId) values (149, 6, 29);
insert into cell (cellId, capacity, blockId) values (150, 6, 30);