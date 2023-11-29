DROP TABLE IF EXISTS `medStaff`;
CREATE TABLE `medStaff` (
  `staffId` int NOT NULL AUTO_INCREMENT,
  `SSN` varchar(12) DEFAULT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `sex` enum('Male','Female','Other') NOT NULL,
  `dob` date NOT NULL,
  `servSDate` date NOT NULL,
  `servEDate` date NOT NULL,
  `addrId` int DEFAULT NULL,
  `supervisorId` int DEFAULT NULL,
  `salary` int DEFAULT NULL,
  PRIMARY KEY (`staffId`),
  CONSTRAINT `FK_MedAddresssId3` FOREIGN KEY (`addrId`) REFERENCES `address` (`addrId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_MedSupervisor` FOREIGN KEY (`supervisorId`) REFERENCES `supervisor` (`supervisorId`) ON DELETE RESTRICT ON UPDATE RESTRICT
);

insert into medStaff (staffId, SSN, first_name, last_name, sex, dob, servSDate, serveDate, addrId, supervisorId, salary) values (1, '292-02-3095', 'Drusilla', 'Olner', 'Other', '1934-07-10', '2019-06-30', '2025-02-17', 1, 1, 65000);
insert into medStaff (staffId, SSN, first_name, last_name, sex, dob, servSDate, serveDate, addrId, supervisorId, salary) values (2, '731-37-8644', 'Loralyn', 'Shakelady', 'Female', '1971-08-09', '2019-10-15', '2024-02-21', 2, 2, 70000);
insert into medStaff (staffId, SSN, first_name, last_name, sex, dob, servSDate, serveDate, addrId, supervisorId, salary) values (3, '600-31-8447', 'Ric', 'Rozzier', 'Male', '1960-10-20', '2012-02-04', '2027-05-23', 3, 2, 65000);
insert into medStaff (staffId, SSN, first_name, last_name, sex, dob, servSDate, serveDate, addrId, supervisorId, salary) values (4, '782-17-4709', 'Cordy', 'Monketon', 'Other', '1945-10-27', '2012-03-05', '2025-03-28', 4, 3, 70000);
insert into medStaff (staffId, SSN, first_name, last_name, sex, dob, servSDate, serveDate, addrId, supervisorId, salary) values (5, '137-40-4088', 'Eustacia', 'Eastwell', 'Male', '1977-02-05', '2019-08-04', '2027-05-08', 5, 1, 50000);
insert into medStaff (staffId, SSN, first_name, last_name, sex, dob, servSDate, serveDate, addrId, supervisorId, salary) values (6, '212-90-0245', 'Myrilla', 'Derr', 'Male', '1967-09-03', '2012-06-06', '2027-07-07', 6, 1, 60000);
insert into medStaff (staffId, SSN, first_name, last_name, sex, dob, servSDate, serveDate, addrId, supervisorId, salary) values (7, '870-96-5616', 'Annadiana', 'Poytres', 'Other', '1983-01-30', '2007-03-26', '2025-03-31', 7, 3, 70000);
insert into medStaff (staffId, SSN, first_name, last_name, sex, dob, servSDate, serveDate, addrId, supervisorId, salary) values (8, '156-05-3494', 'Ula', 'Rusted', 'Female', '1952-05-12', '2019-01-25', '2029-06-26', 8, 3, 50000);
insert into medStaff (staffId, SSN, first_name, last_name, sex, dob, servSDate, serveDate, addrId, supervisorId, salary) values (9, '655-52-2032', 'Candida', 'Taborre', 'Female', '1943-03-28', '2010-12-10', '2024-11-04', 9, 1, 65000);
insert into medStaff (staffId, SSN, first_name, last_name, sex, dob, servSDate, serveDate, addrId, supervisorId, salary) values (10, '787-25-8310', 'Shirlene', 'Pilkington', 'Male', '1954-02-06', '2015-05-26', '2027-01-24', 10, 3, 70000);
