DROP TABLE IF EXISTS `labor`;
CREATE TABLE `labor` (
  `laborId` int NOT NULL,
  `laborName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`laborId`)
);

insert into labor (laborId, laborName) values (1, 'janitorial work');
insert into labor (laborId, laborName) values (2, 'grounds maintenance');
insert into labor (laborId, laborName) values (3, 'laundry services');
insert into labor (laborId, laborName) values (4, 'food preparation');
insert into labor (laborId, laborName) values (5, 'assembly line work');
insert into labor (laborId, laborName) values (6, 'carpentry');
insert into labor (laborId, laborName) values (7, 'plumbing');
insert into labor (laborId, laborName) values (8, 'electrical work');
insert into labor (laborId, laborName) values (9, 'data entry');
insert into labor (laborId, laborName) values (10, 'gardening');
