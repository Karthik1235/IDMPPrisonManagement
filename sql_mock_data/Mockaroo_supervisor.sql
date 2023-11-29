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
insert into supervisor (supervisorId, supervisor_username, supervisor_password, SSN, firstName, lastName, sex, dob, servSDate, servEDate, addrId, salary) values (4, 'abillion3', '(^*7yg(7reg', '398-78-3427', 'Anet', 'Billion', 'Female', '1956-10-26', '2010-11-27', '2024-10-14', 4, 64527);
insert into supervisor (supervisorId, supervisor_username, supervisor_password, SSN, firstName, lastName, sex, dob, servSDate, servEDate, addrId, salary) values (5, 'wdaybell4', 'LIHJiouh98(*', '532-61-8590', 'Woody', 'Daybell', 'Female', '1950-04-30', '2015-05-28', '2028-08-25', 5, 65741);
insert into supervisor (supervisorId, supervisor_username, supervisor_password, SSN, firstName, lastName, sex, dob, servSDate, servEDate, addrId, salary) values (6, 'sphizaclea5', '(&G87&*Gg', '883-54-8388', 'Susanne', 'Phizaclea', 'Female', '1985-02-01', '2017-08-29', '2035-05-01', 6, 93606);
insert into supervisor (supervisorId, supervisor_username, supervisor_password, SSN, firstName, lastName, sex, dob, servSDate, servEDate, addrId, salary) values (7, 'ljay6', 'JHGky*v7', '860-44-9594', 'Lorraine', 'Jay', 'Female', '1973-10-24', '2019-05-28', '2039-12-16', 7, 91695);
insert into supervisor (supervisorId, supervisor_username, supervisor_password, SSN, firstName, lastName, sex, dob, servSDate, servEDate, addrId, salary) values (8, 'ftrivett7', 'IUGBiI*&bg7*&', '866-66-1653', 'Friedrich', 'Trivett', 'Other', '1934-12-25', '2021-04-13', '2041-07-10', 8, 97490);
insert into supervisor (supervisorId, supervisor_username, supervisor_password, SSN, firstName, lastName, sex, dob, servSDate, servEDate, addrId, salary) values (9, 'seite8', 'UBiub&&(*g*&', '643-39-6796', 'Smith', 'Eite', 'Other', '1950-03-30', '2016-11-28', '2037-01-11', 9, 99397);
insert into supervisor (supervisorId, supervisor_username, supervisor_password, SSN, firstName, lastName, sex, dob, servSDate, servEDate, addrId, salary) values (10, 'trosenthaler9', 'IUYGi7g&78*&', '826-71-1223', 'Thoma', 'Rosenthaler', 'Female', '1926-12-01', '2009-07-27', '2039-04-24', 10, 83765);
