DROP TABLE IF EXISTS `visitor`;
CREATE TABLE `visitor` (
  `visitorId` int NOT NULL AUTO_INCREMENT,
  `visitor_username` varchar(30) NOT NULL,
  `visitor_password` varchar(30) NOT NULL,
  `SSN` varchar(12) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `sex` enum('Male','Female','Other') NOT NULL,
  `dob` date NOT NULL,
  `addrId` int NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  PRIMARY KEY (`visitorId`),
  UNIQUE KEY `visitor_username` (`visitor_username`),
  KEY `visitor_address` (`addrId`),
  CONSTRAINT `visitor_address` FOREIGN KEY (`addrId`) REFERENCES `address` (`addrId`) ON DELETE RESTRICT ON UPDATE RESTRICT
);

insert into visitor (visitorId, visitor_username, visitor_password, SSN, first_name, last_name, sex, dob, addrId, phone_number) values (1, 'gfilyakov0', 'yJ5#fD<|gzoEi', '135-46-5443', 'Gifford', 'Filyakov', 'Male', '1964-06-05', 1, '4598565295');
insert into visitor (visitorId, visitor_username, visitor_password, SSN, first_name, last_name, sex, dob, addrId, phone_number) values (2, 'gmccreath1', 'hD9=ZtEX8Nel$Y/p', '842-26-2234', 'Gladi', 'McCreath', 'Other', '1975-12-08', 2, '7801530337');
insert into visitor (visitorId, visitor_username, visitor_password, SSN, first_name, last_name, sex, dob, addrId, phone_number) values (3, 'eshaul2', 'rQ9''/p)r?W', '687-88-7982', 'Eldridge', 'Shaul', 'Male', '1946-05-06', 3, '1327293109');
insert into visitor (visitorId, visitor_username, visitor_password, SSN, first_name, last_name, sex, dob, addrId, phone_number) values (4, 'dweson3', 'eF7`@JZHv', '727-19-3765', 'Dominick', 'Weson', 'Male', '2003-02-12', 4, '9272681516');
insert into visitor (visitorId, visitor_username, visitor_password, SSN, first_name, last_name, sex, dob, addrId, phone_number) values (5, 'eerrichiello4', 'hoiuwehjrgf98', '534-27-4608', 'Elisa', 'Errichiello', 'Other', '1948-10-08', 5, '8326964180');
insert into visitor (visitorId, visitor_username, visitor_password, SSN, first_name, last_name, sex, dob, addrId, phone_number) values (6, 'jdonat5', '03842oiufhewr', '565-71-4253', 'Jerrie', 'Donat', 'Male', '1999-01-17', 6, '9108599681');
insert into visitor (visitorId, visitor_username, visitor_password, SSN, first_name, last_name, sex, dob, addrId, phone_number) values (7, 'ecobello6', '*Y@G#B(U$@', '885-43-5367', 'Eward', 'Cobello', 'Female', '1944-05-10', 7, '2093590460');
insert into visitor (visitorId, visitor_username, visitor_password, SSN, first_name, last_name, sex, dob, addrId, phone_number) values (8, 'cslatten7', '@#$GUHou39', '897-11-8143', 'Clarance', 'Slatten', 'Female', '1989-02-01', 8, '5446972258');
insert into visitor (visitorId, visitor_username, visitor_password, SSN, first_name, last_name, sex, dob, addrId, phone_number) values (9, 'jreeveley8', 'NU(&G#97hg93ui', '290-11-8529', 'Jacky', 'Reeveley', 'Female', '1994-03-14', 9, '9161814664');
insert into visitor (visitorId, visitor_username, visitor_password, SSN, first_name, last_name, sex, dob, addrId, phone_number) values (10, 'hmcquilkin9', 'J*H98h98h98', '548-52-2917', 'Hana', 'McQuilkin', 'Other', '1978-05-24', 10, '4215618140');
insert into visitor (visitorId, visitor_username, visitor_password, SSN, first_name, last_name, sex, dob, addrId, phone_number) values (11, 'gvarnama', 'UHDSF*H(89hsd', '536-28-3353', 'Georgina', 'Varnam', 'Female', '1933-10-05', 11, '3667804171');
insert into visitor (visitorId, visitor_username, visitor_password, SSN, first_name, last_name, sex, dob, addrId, phone_number) values (12, 'amargrieb', 'SDiuhS89y9@#$', '814-64-9781', 'Alta', 'Margrie', 'Male', '2015-08-15', 12, '8312761853');
insert into visitor (visitorId, visitor_username, visitor_password, SSN, first_name, last_name, sex, dob, addrId, phone_number) values (13, 'apottsc', 'SDFKJH98ysdifu898I*@)', '857-61-1605', 'Alick', 'Potts', 'Other', '1975-09-29', 13, '2368990580');
insert into visitor (visitorId, visitor_username, visitor_password, SSN, first_name, last_name, sex, dob, addrId, phone_number) values (14, 'cgaylerd', '(*Ysdfkjz98(8h', '746-13-0154', 'Cookie', 'Gayler', 'Female', '1988-08-13', 14, '2008264446');
insert into visitor (visitorId, visitor_username, visitor_password, SSN, first_name, last_name, sex, dob, addrId, phone_number) values (15, 'ccloneye', '&G7g9&G97g(&&', '638-42-5639', 'Christos', 'Cloney', 'Other', '1974-04-09', 15, '1591737266');
insert into visitor (visitorId, visitor_username, visitor_password, SSN, first_name, last_name, sex, dob, addrId, phone_number) values (16, 'smccaugheyf', 'IUHI*Y98(*YG9g9&(', '682-33-9239', 'Shalna', 'McCaughey', 'Female', '1950-05-22', 16, '8322662672');
insert into visitor (visitorId, visitor_username, visitor_password, SSN, first_name, last_name, sex, dob, addrId, phone_number) values (17, 'jfeedomeg', 'IUHiug(98G(0(', '419-77-4814', 'Jeane', 'Feedome', 'Other', '1946-04-28', 17, '1733232110');
insert into visitor (visitorId, visitor_username, visitor_password, SSN, first_name, last_name, sex, dob, addrId, phone_number) values (18, 'imalkinsonh', 'UHIuh98y(UI', '848-81-5705', 'Iggie', 'Malkinson', 'Other', '1957-01-10', 18, '2183950374');
insert into visitor (visitorId, visitor_username, visitor_password, SSN, first_name, last_name, sex, dob, addrId, phone_number) values (19, 'gstilli', 'JHFDJg86A%^ft', '101-93-1543', 'Gloriana', 'Still', 'Other', '2017-02-13', 19, '7521881782');
insert into visitor (visitorId, visitor_username, visitor_password, SSN, first_name, last_name, sex, dob, addrId, phone_number) values (20, 'glampingj', '*&G8yg*&g7gG', '777-67-1569', 'Giustina', 'Lamping', 'Female', '2014-04-03', 20, '8483831463');
insert into visitor (visitorId, visitor_username, visitor_password, SSN, first_name, last_name, sex, dob, addrId, phone_number) values (21, 'ldinisk', 'ZTFFC765r%^Z', '607-18-0341', 'Lissi', 'Dinis', 'Other', '1935-01-25', 21, '1283339292');
insert into visitor (visitorId, visitor_username, visitor_password, SSN, first_name, last_name, sex, dob, addrId, phone_number) values (22, 'vollenbuttell', 'G*7g8g97g98((8', '117-32-0888', 'Vladimir', 'Ollenbuttel', 'Male', '2016-12-17', 22, '8806029156');
insert into visitor (visitorId, visitor_username, visitor_password, SSN, first_name, last_name, sex, dob, addrId, phone_number) values (23, 'lbarbierm', '!@YGuy2@', '782-51-3226', 'Lorri', 'Barbier', 'Female', '1983-11-16', 23, '6751701450');
insert into visitor (visitorId, visitor_username, visitor_password, SSN, first_name, last_name, sex, dob, addrId, phone_number) values (24, 'mclampn', '*&g87*78!@#^f', '179-12-7481', 'Marianne', 'Clamp', 'Other', '1983-02-01', 24, '6221724997');
insert into visitor (visitorId, visitor_username, visitor_password, SSN, first_name, last_name, sex, dob, addrId, phone_number) values (25, 'skeightleyo', 'I&Y87y8Ughg', '864-30-2427', 'Salem', 'Keightley', 'Female', '1957-09-23', 25, '8437583944');
insert into visitor (visitorId, visitor_username, visitor_password, SSN, first_name, last_name, sex, dob, addrId, phone_number) values (26, 'abaakep', 'JHhgiug(*79&87gyb', '356-40-5259', 'Amberly', 'Baake', 'Other', '1953-11-12', 26, '6482176598');
insert into visitor (visitorId, visitor_username, visitor_password, SSN, first_name, last_name, sex, dob, addrId, phone_number) values (27, 'vguildq', '%^&BNAI&Gy8fy', '678-42-6122', 'Vanya', 'Guild', 'Female', '1944-06-16', 27, '7668208281');
insert into visitor (visitorId, visitor_username, visitor_password, SSN, first_name, last_name, sex, dob, addrId, phone_number) values (28, 'epearler', '@#$%^fcgvb', '379-72-4705', 'Earl', 'Pearle', 'Other', '2022-05-26', 28, '6255886267');
insert into visitor (visitorId, visitor_username, visitor_password, SSN, first_name, last_name, sex, dob, addrId, phone_number) values (29, 'jharsums', 'KHVYHFCGV786547ghn*&', '803-08-5006', 'Joelie', 'Harsum', 'Male', '1959-05-17', 29, '2286717124');
insert into visitor (visitorId, visitor_username, visitor_password, SSN, first_name, last_name, sex, dob, addrId, phone_number) values (30, 'vblacktint', 'UYG75f6YT^F', '355-08-7732', 'Van', 'Blacktin', 'Male', '1960-06-06', 30, '1292856407');
