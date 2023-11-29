DROP TABLE IF EXISTS `guard`;
CREATE TABLE `guard` (
  `guardId` int NOT NULL AUTO_INCREMENT,
  `SSN` varchar(12) DEFAULT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `sex` enum('Male','Female','Other') NOT NULL,
  `dob` date NOT NULL,
  `servSdate` date NOT NULL,
  `servEdate` date NOT NULL,
  `addrId` int DEFAULT NULL,
  `supervisorId` int DEFAULT NULL,
  `salary` int DEFAULT NULL,
  PRIMARY KEY (`guardId`),
  UNIQUE KEY `SSN` (`SSN`),
  CONSTRAINT `FK_AddresssId3` FOREIGN KEY (`addrId`) REFERENCES `address` (`addrId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Supervisor` FOREIGN KEY (`supervisorId`) REFERENCES `supervisor` (`supervisorId`) ON DELETE RESTRICT ON UPDATE RESTRICT
);

insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (1, '175-04-2452', 'Axel', 'Bahia', 'Other', '1979-08-12', '2011-12-18', '2028-08-06', 1, 2, 35000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (2, '346-18-8630', 'Ora', 'Blakesley', 'Female', '1977-09-29', '2007-04-19', '2027-09-22', 2, 2, 30000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (3, '680-64-5648', 'Rustin', 'Heinlein', 'Other', '1986-12-07', '2009-12-24', '2025-05-30', 3, 3, 55000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (4, '752-60-4219', 'Raychel', 'Phipps', 'Other', '1946-11-27', '2017-11-22', '2028-01-20', 4, 1, 30000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (5, '448-56-1322', 'Maxi', 'Pesik', 'Other', '1929-12-06', '2018-03-05', '2029-04-11', 5, 3, 55000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (6, '629-24-8838', 'Inglis', 'Winstone', 'Male', '1964-04-26', '2007-02-27', '2024-04-20', 6, 3, 30000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (7, '541-38-4325', 'Madel', 'Frend', 'Female', '1983-03-20', '2015-11-16', '2025-02-26', 7, 2, 35000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (8, '430-69-3227', 'Rubin', 'Hanney', 'Male', '1966-11-27', '2013-09-05', '2029-01-22', 8, 3, 40000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (9, '595-42-8065', 'Tyson', 'Munnings', 'Male', '1973-04-01', '2009-09-09', '2027-09-26', 9, 1, 60000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (10, '756-60-5718', 'Miquela', 'Janz', 'Female', '1970-07-29', '2017-01-15', '2024-03-23', 10, 3, 60000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (11, '297-84-0819', 'Matthew', 'Schowenburg', 'Female', '1961-04-11', '2017-10-15', '2026-09-28', 11, 1, 60000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (12, '769-82-0219', 'Sara', 'Caney', 'Male', '1980-12-04', '2019-05-12', '2024-06-24', 12, 2, 30000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (13, '859-01-8772', 'Malissa', 'Bortoluzzi', 'Other', '1975-10-21', '2007-08-25', '2026-07-24', 13, 1, 45000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (14, '592-95-6953', 'Kain', 'Merriton', 'Other', '1925-06-01', '2010-03-03', '2026-02-26', 14, 1, 55000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (15, '645-21-9877', 'Margarita', 'Askin', 'Other', '1971-04-27', '2017-11-30', '2028-04-26', 15, 2, 40000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (16, '745-07-0673', 'Pebrook', 'Dymocke', 'Other', '1928-11-06', '2013-08-19', '2026-04-10', 16, 3, 60000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (17, '671-68-2457', 'Sampson', 'Saleway', 'Male', '1969-11-15', '2012-10-01', '2025-02-09', 17, 2, 30000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (18, '618-08-9819', 'Jeffrey', 'Shier', 'Male', '1976-03-20', '2011-06-23', '2025-05-27', 18, 2, 60000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (19, '435-50-8295', 'Sandor', 'Dunnett', 'Other', '1942-01-26', '2013-12-23', '2026-01-07', 19, 1, 30000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (20, '138-97-9735', 'Davin', 'Seagar', 'Male', '1933-07-05', '2010-11-01', '2028-03-19', 20, 3, 30000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (21, '355-77-0675', 'Florance', 'McNeachtain', 'Other', '1954-02-09', '2013-03-22', '2026-03-26', 21, 2, 50000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (22, '209-29-5979', 'Ches', 'Josskovitz', 'Female', '1947-10-04', '2016-11-09', '2029-02-16', 22, 3, 55000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (23, '712-27-1155', 'Ax', 'Hissie', 'Male', '1939-07-06', '2012-02-23', '2026-02-27', 23, 2, 45000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (24, '501-10-5389', 'Falito', 'Crookes', 'Female', '1949-07-13', '2017-09-01', '2025-06-13', 24, 3, 60000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (25, '322-92-8048', 'Hortensia', 'Lingner', 'Male', '1962-08-13', '2017-06-21', '2025-02-04', 25, 3, 45000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (26, '567-43-5202', 'Cori', 'Solman', 'Female', '1966-01-02', '2013-10-04', '2029-07-31', 26, 3, 40000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (27, '529-88-0617', 'Mortie', 'Farre', 'Other', '1976-05-08', '2018-05-14', '2027-10-04', 27, 1, 60000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (28, '290-06-9980', 'Marguerite', 'Rushmare', 'Other', '1938-01-25', '2010-11-17', '2028-01-18', 28, 3, 60000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (29, '446-85-8466', 'Julie', 'Lamar', 'Male', '1957-09-05', '2017-06-12', '2029-09-23', 29, 3, 30000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (30, '287-41-4268', 'Melodee', 'Phelp', 'Other', '1941-02-19', '2010-07-13', '2024-03-06', 30, 1, 55000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (31, '299-27-3736', 'Waylin', 'Odlin', 'Male', '1953-07-22', '2017-06-27', '2024-02-18', 31, 2, 45000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (32, '568-27-1277', 'Rainer', 'Egdal', 'Male', '1937-05-29', '2019-07-08', '2026-06-02', 32, 3, 30000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (33, '455-55-9575', 'Gayle', 'Waldram', 'Male', '1965-11-07', '2016-02-12', '2028-03-09', 33, 3, 40000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (34, '339-36-6444', 'Maximo', 'Officer', 'Male', '1943-12-18', '2016-01-06', '2024-11-14', 34, 2, 40000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (35, '512-43-1609', 'Annnora', 'Dyball', 'Male', '1950-11-27', '2008-11-15', '2024-03-29', 35, 3, 40000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (36, '743-62-5690', 'Stormi', 'Stothart', 'Other', '1969-12-09', '2008-02-17', '2024-10-27', 36, 3, 35000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (37, '571-44-4391', 'Joelly', 'Wibberley', 'Other', '1968-05-26', '2014-04-14', '2026-08-30', 37, 3, 50000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (38, '186-71-4271', 'Nicolle', 'Lere', 'Other', '1959-05-14', '2015-03-26', '2026-11-06', 38, 3, 30000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (39, '586-40-6331', 'Bearnard', 'Egger', 'Male', '1953-03-12', '2017-12-02', '2026-05-14', 39, 2, 30000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (40, '298-87-1933', 'Henrietta', 'Baudi', 'Female', '1982-02-20', '2015-08-28', '2028-06-11', 40, 3, 55000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (41, '614-95-4268', 'Brunhilda', 'Troman', 'Female', '1979-10-15', '2007-09-03', '2028-03-17', 41, 3, 60000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (42, '848-92-7070', 'Andeee', 'Henricsson', 'Other', '1957-08-29', '2010-10-06', '2027-12-21', 42, 2, 50000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (43, '139-68-8033', 'Arnaldo', 'Geerdts', 'Male', '1983-02-12', '2017-04-12', '2029-02-10', 43, 1, 45000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (44, '838-51-2013', 'Washington', 'Bento', 'Male', '1970-11-24', '2019-08-04', '2025-03-18', 44, 1, 45000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, servEDate, addrId, supervisorId, salary) values (45, '371-13-8481', 'Niccolo', 'Sparham', 'Male', '1986-10-28', '2012-11-23', '2025-02-03', 45, 1, 35000);
