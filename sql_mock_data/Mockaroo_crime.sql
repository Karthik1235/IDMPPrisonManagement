DROP TABLE IF EXISTS `crime`;
CREATE TABLE `crime` (
  `crimeId` int NOT NULL AUTO_INCREMENT,
  `crimeName` varchar(50) NOT NULL,
  PRIMARY KEY (`crimeId`)
);

insert into crime (crimeId, crimeName) values (1, 'burglary');
insert into crime (crimeId, crimeName) values (2, 'assault');
insert into crime (crimeId, crimeName) values (3, 'fraud');
insert into crime (crimeId, crimeName) values (4, 'vandalism');
insert into crime (crimeId, crimeName) values (5, 'shoplifting');
insert into crime (crimeId, crimeName) values (6, 'drug possession');
insert into crime (crimeId, crimeName) values (7, 'trespassing');
insert into crime (crimeId, crimeName) values (8, 'identity theft');
insert into crime (crimeId, crimeName) values (9, 'cybercrime');
insert into crime (crimeId, crimeName) values (10, 'embezzlement');
