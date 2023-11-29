DROP TABLE IF EXISTS `guards`;
CREATE TABLE `guards` (
  `guardId` int NOT NULL,
  `blockId` int NOT NULL,
  PRIMARY KEY (`guardId`,`blockId`),
  CONSTRAINT `FK_block` FOREIGN KEY (`blockId`) REFERENCES `block` (`blockId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_guard` FOREIGN KEY (`guardId`) REFERENCES `guard` (`guardId`) ON DELETE RESTRICT
);

insert into guards (guardId, blockId) values (1, 1);
insert into guards (guardId, blockId) values (2, 2);
insert into guards (guardId, blockId) values (3, 3);
insert into guards (guardId, blockId) values (4, 4);
insert into guards (guardId, blockId) values (5, 5);
insert into guards (guardId, blockId) values (6, 6);
insert into guards (guardId, blockId) values (7, 7);
insert into guards (guardId, blockId) values (8, 8);
insert into guards (guardId, blockId) values (9, 9);
insert into guards (guardId, blockId) values (10, 10);
insert into guards (guardId, blockId) values (11, 11);
insert into guards (guardId, blockId) values (12, 12);
insert into guards (guardId, blockId) values (13, 13);
insert into guards (guardId, blockId) values (14, 14);
insert into guards (guardId, blockId) values (15, 15);
insert into guards (guardId, blockId) values (16, 16);
insert into guards (guardId, blockId) values (17, 17);
insert into guards (guardId, blockId) values (18, 18);
insert into guards (guardId, blockId) values (19, 19);
insert into guards (guardId, blockId) values (20, 20);
insert into guards (guardId, blockId) values (21, 21);
insert into guards (guardId, blockId) values (22, 22);
insert into guards (guardId, blockId) values (23, 23);
insert into guards (guardId, blockId) values (24, 24);
insert into guards (guardId, blockId) values (25, 25);
insert into guards (guardId, blockId) values (26, 26);
insert into guards (guardId, blockId) values (27, 27);
insert into guards (guardId, blockId) values (28, 28);
insert into guards (guardId, blockId) values (29, 29);
insert into guards (guardId, blockId) values (30, 30);
insert into guards (guardId, blockId) values (31, 1);
insert into guards (guardId, blockId) values (32, 2);
insert into guards (guardId, blockId) values (33, 3);
insert into guards (guardId, blockId) values (34, 4);
insert into guards (guardId, blockId) values (35, 5);
insert into guards (guardId, blockId) values (36, 6);
insert into guards (guardId, blockId) values (37, 7);
insert into guards (guardId, blockId) values (38, 8);
insert into guards (guardId, blockId) values (39, 9);
insert into guards (guardId, blockId) values (40, 10);
insert into guards (guardId, blockId) values (41, 11);
insert into guards (guardId, blockId) values (42, 12);
insert into guards (guardId, blockId) values (43, 13);
insert into guards (guardId, blockId) values (44, 14);
insert into guards (guardId, blockId) values (45, 15);
