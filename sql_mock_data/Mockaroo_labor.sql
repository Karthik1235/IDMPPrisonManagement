DROP TABLE IF EXISTS `labor`;
CREATE TABLE `labor` (
  `laborId` int NOT NULL,
  `laborName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`laborId`)
);

insert into labor (laborId, laborName) values (1, 'gardening');
insert into labor (laborId, laborName) values (2, 'cleaning');
insert into labor (laborId, laborName) values (3, 'construction');
insert into labor (laborId, laborName) values (4, 'carpentry');
insert into labor (laborId, laborName) values (5, 'plumbing');
