DROP TABLE IF EXISTS `supervisor`;
CREATE TABLE `supervisor` (
  `supervisorId` int NOT NULL AUTO_INCREMENT,
  `supervisor_username` varchar(30) DEFAULT NULL,
  `supervisor_password` varchar(30) NOT NULL,
  `SSN` varchar(12) DEFAULT NULL,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `sex` enum('Male','Female','Other') NOT NULL,
  `dob` date NOT NULL,
  `servSDate` date NOT NULL,
  `servEDate` date NOT NULL,
  `addrId` int NOT NULL,
  `salary` int NOT NULL,
  PRIMARY KEY (`supervisorId`),
  UNIQUE KEY `supervisor_username` (`supervisor_username`),
  UNIQUE KEY `SSN` (`SSN`),
  KEY `FK_AddresssId2` (`addrId`),
  CONSTRAINT `FK_AddresssId2` FOREIGN KEY (`addrId`) REFERENCES `address` (`addrId`) ON DELETE RESTRICT ON UPDATE RESTRICT
);

insert into supervisor (supervisorId, supervisor_username, supervisor_password, SSN, firstName, lastName, sex, dob, servSDate, servEDate, addrId, salary) values (1, 'ehaugg0', 'uC4\)Cv=', '196-73-4920', 'Estrella', 'Haugg', 'Other', '1984-06-05', '2010-11-27', '2047-02-05', 1, 85000);
insert into supervisor (supervisorId, supervisor_username, supervisor_password, SSN, firstName, lastName, sex, dob, servSDate, servEDate, addrId, salary) values (2, 'egiannini1', 'eT4,b#aqA_O1f8Z', '193-39-9207', 'Emmalynn', 'Giannini', 'Other', '1960-12-20', '2017-08-05', '2044-08-26', 2, 90000);
insert into supervisor (supervisorId, supervisor_username, supervisor_password, SSN, firstName, lastName, sex, dob, servSDate, servEDate, addrId, salary) values (3, 'hklauber2', 'aTq\(Lpa', '601-21-0710', 'Hamilton', 'Klauber', 'Male', '1935-04-16', '2022-09-18', '2027-06-26', 3, 65000);
