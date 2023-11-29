DROP TABLE IF EXISTS `guard`;
CREATE TABLE `guard` (
  `guardId` int NOT NULL AUTO_INCREMENT,
  `SSN` varchar(12) DEFAULT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `sex` enum('Male','Female','Other') NOT NULL,
  `dob` date NOT NULL,
  `servSdate` date NOT NULL,
  `addrId` int DEFAULT NULL,
  `supervisorId` int DEFAULT NULL,
  `salary` int DEFAULT NULL,
  PRIMARY KEY (`guardId`),
  UNIQUE KEY `SSN` (`SSN`),
  CONSTRAINT `FK_AddresssId3` FOREIGN KEY (`addrId`) REFERENCES `address` (`addrId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Supervisor` FOREIGN KEY (`supervisorId`) REFERENCES `supervisor` (`supervisorId`) ON DELETE RESTRICT ON UPDATE RESTRICT
);

insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (1, '418-93-0777', 'Miner', 'McCrystal', 'Male', '1957-12-22', '2010-11-24', 1, 3, 30000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (2, '292-22-0114', 'Jodi', 'Rudman', 'Male', '1973-04-15', '2016-05-23', 2, 1, 60000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (3, '845-09-5159', 'Griffy', 'Casel', 'Female', '1949-05-27', '2014-03-19', 3, 3, 55000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (4, '571-32-7750', 'Linnie', 'Dy', 'Female', '1987-09-13', '2008-06-15', 4, 2, 40000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (5, '289-24-6420', 'Shurwood', 'Bairstow', 'Female', '1965-11-18', '2007-02-28', 5, 1, 55000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (6, '892-77-8175', 'Trixie', 'Busher', 'Other', '1937-07-23', '2016-07-19', 6, 2, 60000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (7, '397-92-9735', 'Onofredo', 'Oty', 'Female', '1956-09-12', '2006-05-31', 7, 1, 30000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (8, '422-97-0959', 'Domeniga', 'Tregonna', 'Male', '1944-09-10', '2009-02-26', 8, 1, 55000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (9, '879-98-9283', 'Sumner', 'Gostick', 'Other', '1950-09-19', '2019-01-29', 9, 2, 30000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (10, '545-55-8049', 'Annnora', 'Proschek', 'Female', '1956-04-11', '2017-08-18', 10, 2, 60000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (11, '536-09-9693', 'Jeromy', 'Sketcher', 'Female', '1969-09-29', '2019-10-21', 11, 2, 55000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (12, '501-19-1867', 'Gilberto', 'Styche', 'Female', '1929-10-09', '2015-10-12', 12, 2, 55000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (13, '767-72-5113', 'Shawn', 'Giocannoni', 'Other', '1929-03-24', '2015-09-12', 13, 2, 60000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (14, '585-16-6763', 'Tobiah', 'Breawood', 'Female', '1949-06-13', '2007-01-18', 14, 3, 40000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (15, '645-90-5225', 'Rhiamon', 'Wannan', 'Female', '1951-09-16', '2008-10-29', 15, 2, 55000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (16, '216-61-6747', 'Ardella', 'MacCrackan', 'Female', '1930-04-12', '2015-03-12', 16, 3, 60000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (17, '302-14-4253', 'Mayne', 'Strattan', 'Other', '1940-09-08', '2014-07-10', 17, 1, 60000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (18, '578-48-5766', 'Candi', 'Cuppitt', 'Female', '1970-08-31', '2008-09-23', 18, 3, 45000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (19, '470-08-3644', 'Ruggiero', 'Cromblehome', 'Female', '1968-06-17', '2013-10-15', 19, 1, 50000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (20, '519-02-4611', 'Alley', 'Larkings', 'Female', '1956-04-26', '2007-11-18', 20, 3, 55000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (21, '503-59-6476', 'Constanta', 'Jirousek', 'Female', '1960-12-02', '2013-11-25', 21, 2, 30000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (22, '718-05-3935', 'Danita', 'Denerley', 'Female', '1944-03-29', '2013-08-16', 22, 2, 55000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (23, '593-92-9898', 'Catherin', 'Chellenham', 'Female', '1966-07-16', '2017-06-27', 23, 3, 60000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (24, '513-56-9340', 'Isabel', 'MacDonogh', 'Male', '1973-05-26', '2007-03-28', 24, 2, 55000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (25, '558-45-8747', 'Tomasina', 'Mangeney', 'Female', '1940-08-31', '2011-01-09', 25, 3, 50000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (26, '395-84-0875', 'Sophey', 'Leipnik', 'Male', '1969-01-10', '2011-05-28', 26, 3, 55000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (27, '872-87-9643', 'Bernadine', 'Sill', 'Male', '1956-03-21', '2017-12-28', 27, 1, 60000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (28, '118-40-9074', 'Normie', 'Clynman', 'Male', '1924-08-13', '2010-08-04', 28, 3, 45000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (29, '271-47-5376', 'Link', 'Juggins', 'Other', '1937-01-18', '2012-08-20', 29, 2, 50000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (30, '753-90-9893', 'Barret', 'Quene', 'Other', '1966-12-12', '2012-05-06', 30, 2, 35000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (31, '184-97-6943', 'Urban', 'Maginot', 'Other', '1933-02-27', '2008-02-26', 31, 1, 30000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (32, '624-55-8526', 'Maynord', 'Farriar', 'Male', '1942-03-31', '2010-01-10', 32, 1, 60000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (33, '812-03-8554', 'Leese', 'Antonchik', 'Female', '1948-10-13', '2010-05-14', 33, 3, 55000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (34, '570-38-7659', 'Errol', 'Milborn', 'Female', '1976-11-11', '2011-12-04', 34, 2, 55000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (35, '552-04-2855', 'Shayne', 'Ranns', 'Female', '1932-11-15', '2007-08-01', 35, 2, 45000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (36, '345-85-4856', 'Kevon', 'Moncarr', 'Male', '1940-03-12', '2008-05-21', 36, 3, 35000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (37, '584-86-9269', 'Tedra', 'Frankling', 'Female', '1974-11-03', '2010-10-16', 37, 3, 35000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (38, '868-87-6580', 'Chiquita', 'Hancill', 'Female', '1937-10-24', '2016-01-18', 38, 2, 45000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (39, '575-99-3792', 'Nollie', 'Benettelli', 'Male', '1970-02-21', '2019-09-19', 39, 1, 50000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (40, '320-23-3488', 'Dee', 'Boother', 'Male', '1948-03-19', '2016-08-23', 40, 2, 55000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (41, '253-21-1839', 'Eunice', 'McGavin', 'Male', '1945-05-21', '2016-06-23', 41, 2, 60000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (42, '446-67-3146', 'Anastasia', 'Heeks', 'Female', '1953-03-22', '2011-01-25', 42, 1, 55000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (43, '234-34-6758', 'Charlean', 'Jolliss', 'Female', '1962-04-11', '2019-05-20', 43, 1, 45000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (44, '457-19-2624', 'Shellie', 'Lampbrecht', 'Other', '1979-10-16', '2011-01-26', 44, 2, 60000);
insert into guard (guardId, SSN, first_name, last_name, sex, dob, servSDate, addrId, supervisorId, salary) values (45, '496-56-5131', 'Cheri', 'Sharram', 'Female', '1936-04-02', '2014-01-23', 45, 1, 35000);
