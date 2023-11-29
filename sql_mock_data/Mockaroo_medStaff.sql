DROP TABLE IF EXISTS `medStaff`;
CREATE TABLE `medStaff` (
  `staffId` int NOT NULL AUTO_INCREMENT,
  `SSN` varchar(12) DEFAULT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `sex` enum('Male','Female','Other') NOT NULL,
  `dob` date NOT NULL,
  `servSdate` date NOT NULL,
  `addrId` int DEFAULT NULL,
  `supervisorId` int DEFAULT NULL,
  `salary` int DEFAULT NULL,
  PRIMARY KEY (`staffId`),
  CONSTRAINT `FK_MedAddresssId3` FOREIGN KEY (`addrId`) REFERENCES `address` (`addrId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_MedSupervisor` FOREIGN KEY (`supervisorId`) REFERENCES `supervisor` (`supervisorId`) ON DELETE RESTRICT ON UPDATE RESTRICT
);

insert into medStaff (staffId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (1, '265-50-6547', 'Carin', 'Bonefant', 'Female', '1953-11-18', '2009-08-04', 1, 2, 60000);
insert into medStaff (staffId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (2, '258-04-9565', 'Murdock', 'Opfer', 'Female', '1961-12-05', '2013-05-20', 2, 1, 60000);
insert into medStaff (staffId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (3, '431-67-8674', 'Cordell', 'Galsworthy', 'Male', '1927-02-22', '2012-05-23', 3, 2, 70000);
insert into medStaff (staffId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (4, '800-94-5975', 'Rachele', 'Pessolt', 'Other', '1948-04-08', '2015-02-21', 4, 2, 60000);
insert into medStaff (staffId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (5, '717-13-2991', 'Ree', 'Gland', 'Female', '1976-03-06', '2009-07-08', 5, 3, 55000);
