create database flights
use flights
create table USER
(
ID INT NOT NULL AUTO_INCREMENT,
FIRST_NAME VARCHAR(20),
LAST_NAME VARCHAR(20),
EMAIL VARCHAR(20),
PASSWORD VARCHAR(256),
PRIMARY KEY (ID),
UNIQUE KEY(EMAIL)
)
select *from user

CREATE TABLE FLIGHT
(
ID INT NOT NULL AUTO_INCREMENT,
FLIGHT_NUMBER VARCHAR(20) NOT NULL,
OPERATING_AIRLINES VARCHAR(20) NOT NULL,
DEPARTURE_CITY VARCHAR(20) NOT NULL,
ARRIVAL_CITY VARCHAR(20) NOT NULL,
DATE_OF_DEPARTURE DATE NOT NULL,
ESTIMATED_DEPARTURE_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (ID)
)
select * from flight

CREATE TABLE PASSENGER
(
ID INT NOT NULL AUTO_INCREMENT,
FIRST_NAME VARCHAR(20),
LAST_NAME VARCHAR(20),
MIDDLE_NAME VARCHAR(20),
EMAIL VARCHAR(50),
PHONE VARCHAR(10),
PRIMARY KEY(ID)
)
select * from passenger

CREATE TABLE RESERVATION
(
ID INT NOT NULL AUTO_INCREMENT,
CHECKED_IN TINYINT(1),
NUMBER_OF_BAGS INT,
PASSENGER_ID INT,
FLIGHT_ID INT,
CREATED TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (ID),
FOREIGN KEY(PASSENGER_ID)  REFERENCES PASSENGER(ID) ON DELETE CASCADE,
FOREIGN KEY(FLIGHT_ID) REFERENCES FLIGHT(ID)
)
select *from reservation
drop table FLIGHT
drop table PASSENGER
drop table RESERVATION

insert into flight values(1,'IND1','Indigo','BNG',
'MUM',STR_TO_DATE('10-01-2021','%m-%d-%Y'),'2021-10-01 03:14:07')

insert into flight values(2,'IND2','Indigo','HYD',
'CHN',STR_TO_DATE('10-01-2021','%m-%d-%Y'),'2021-10-01 05:14:07')

insert into flight values(3,'SPJ1','SpiceJet','BNG',
'HYD',STR_TO_DATE('10-01-2021','%m-%d-%Y'),'2021-10-01 06:14:07')

insert into flight values(4,'SPJ2','SpiceJet','MUM',
'BNG',STR_TO_DATE('10-01-2021','%m-%d-%Y'),'2021-10-01 07:14:07')

insert into flight values(5,'AI1','Air India','HYD',
'BNG',STR_TO_DATE('10-01-2021','%m-%d-%Y'),'2021-10-01 10:14:07')

insert into flight values(6,'AI2','Air India','BNG',
'GOA',STR_TO_DATE('10-01-2021','%m-%d-%Y'),'2021-10-01 11:14:07')

insert into flight values(7,'IND1','Indigo','BNG',
'MUM',STR_TO_DATE('02-10-2021','%m-%d-%Y'),'2021-10-02 03:14:07')

insert into flight values(8,'IND2','Indigo','HYD',
'CHN',STR_TO_DATE('02-10-2021','%m-%d-%Y'),'2021-10-02 05:14:07')

insert into flight values(9,'SPJ1','SpiceJet','BNG',
'HYD',STR_TO_DATE('02-10-2021','%m-%d-%Y'),'2021-10-02 06:14:07')

insert into flight values(10,'SPJ2','SpiceJet','MUM',
'BNG',STR_TO_DATE('02-10-2021','%m-%d-%Y'),'2021-10-02 07:14:07')

insert into flight values(11,'AI1','Air India','HYD',
'BNG',STR_TO_DATE('02-10-2021','%m-%d-%Y'),'2021-10-02 10:14:07')

insert into flight values(12,'AI2','Air India','BNG',
'GOA',STR_TO_DATE('02-10-2021','%m-%d-%Y'),'2021-10-02 11:14:07')

insert into flight values(13,'IND1','Indigo','BNG',
'MUM',STR_TO_DATE('03-10-2021','%m-%d-%Y'),'2021-10-03 03:14:07')

insert into flight values(14,'IND2','Indigo','HYD',
'CHN',STR_TO_DATE('03-10-2021','%m-%d-%Y'),'2021-10-03 05:14:07')

insert into flight values(15,'SPJ1','SpiceJet','BNG',
'HYD',STR_TO_DATE('03-10-2021','%m-%d-%Y'),'2021-10-03 06:14:07')

insert into flight values(16,'SPJ2','SpiceJet','MUM',
'BNG',STR_TO_DATE('03-10-2021','%m-%d-%Y'),'2021-10-03 07:14:07')

insert into flight values(17,'AI1','Air India','HYD',
'BNG',STR_TO_DATE('03-10-2021','%m-%d-%Y'),'2021-10-03 10:14:07')

insert into flight values(18,'AI2','Air India','BNG',
'GOA',STR_TO_DATE('03-10-2021','%m-%d-%Y'),'2021-10-03 11:14:07')

insert into flight values(19,'IND1','Indigo','BNG',
'MUM',STR_TO_DATE('04-10-2021','%m-%d-%Y'),'2021-10-04 03:14:07')

insert into flight values(20,'IND2','Indigo','HYD',
'CHN',STR_TO_DATE('04-10-2021','%m-%d-%Y'),'2021-10-04 05:14:07')

insert into flight values(21,'SPJ1','SpiceJet','BNG',
'HYD',STR_TO_DATE('04-10-2021','%m-%d-%Y'),'2021-10-04 06:14:07')

insert into flight values(22,'SPJ2','SpiceJet','MUM',
'BNG',STR_TO_DATE('04-10-2021','%m-%d-%Y'),'2021-10-04 07:14:07')

insert into flight values(23,'AI1','Air India','HYD',
'BNG',STR_TO_DATE('04-10-2021','%m-%d-%Y'),'2021-10-04 10:14:07')

insert into flight values(24,'AI2','Air India','BNG',
'GOA',STR_TO_DATE('04-10-2021','%m-%d-%Y'),'2021-10-04 11:14:07')

insert into flight values(25,'IND1','Indigo','BNG',
'MUM',STR_TO_DATE('05-10-2021','%m-%d-%Y'),'2021-10-05 03:14:07')

insert into flight values(26,'IND2','Indigo','HYD',
'CHN',STR_TO_DATE('05-10-2021','%m-%d-%Y'),'2021-10-05 05:14:07')

insert into flight values(27,'SPJ1','SpiceJet','BNG',
'HYD',STR_TO_DATE('05-10-2021','%m-%d-%Y'),'2021-10-05 06:14:07')

insert into flight values(28,'SPJ2','SpiceJet','MUM',
'BNG',STR_TO_DATE('05-10-2021','%m-%d-%Y'),'2021-10-05 07:14:07')

insert into flight values(29,'AI1','Air India','HYD',
'BNG',STR_TO_DATE('05-10-2021','%m-%d-%Y'),'2021-10-05 10:14:07')

insert into flight values(30,'AI2','Air India','BNG',
'GOA',STR_TO_DATE('05-10-2021','%m-%d-%Y'),'2021-10-05 11:14:07')

insert into flight values(31,'IND1','Indigo','BNG',
'MUM',STR_TO_DATE('06-10-2021','%m-%d-%Y'),'2021-10-06 03:14:07')

insert into flight values(32,'IND2','Indigo','HYD',
'CHN',STR_TO_DATE('06-10-2021','%m-%d-%Y'),'2021-10-06 05:14:07')

insert into flight values(33,'SPJ1','SpiceJet','BNG',
'HYD',STR_TO_DATE('06-10-2021','%m-%d-%Y'),'2021-10-06 06:14:07')

insert into flight values(34,'SPJ2','SpiceJet','MUM',
'BNG',STR_TO_DATE('06-10-2021','%m-%d-%Y'),'2021-10-06 07:14:07')

insert into flight values(35,'AI1','Air India','HYD',
'BNG',STR_TO_DATE('06-10-2021','%m-%d-%Y'),'2021-10-06 10:14:07')

insert into flight values(36,'AI2','Air India','BNG',
'GOA',STR_TO_DATE('06-10-2021','%m-%d-%Y'),'2021-10-06 11:14:07')

insert into flight values(37,'IND1','Indigo','BNG',
'MUM',STR_TO_DATE('07-10-2021','%m-%d-%Y'),'2021-10-07 03:14:07')

insert into flight values(38,'IND2','Indigo','HYD',
'CHN',STR_TO_DATE('07-10-2021','%m-%d-%Y'),'2021-10-07 05:14:07')

insert into flight values(39,'SPJ1','SpiceJet','BNG',
'HYD',STR_TO_DATE('07-10-2021','%m-%d-%Y'),'2021-10-07 06:14:07')

insert into flight values(40,'SPJ2','SpiceJet','MUM',
'BNG',STR_TO_DATE('07-10-2021','%m-%d-%Y'),'2021-10-07 07:14:07')

insert into flight values(41,'AI1','Air India','HYD',
'BNG',STR_TO_DATE('07-10-2021','%m-%d-%Y'),'2021-10-07 10:14:07')

insert into flight values(42,'AI2','Air India','BNG',
'GOA',STR_TO_DATE('07-10-2021','%m-%d-%Y'),'2021-10-07 11:14:07')

insert into flight values(43,'IND1','Indigo','BNG',
'MUM',STR_TO_DATE('08-10-2021','%m-%d-%Y'),'2021-10-08 03:14:07')

insert into flight values(44,'IND2','Indigo','HYD',
'CHN',STR_TO_DATE('08-10-2021','%m-%d-%Y'),'2021-10-08 05:14:07')

insert into flight values(45,'SPJ1','SpiceJet','BNG',
'HYD',STR_TO_DATE('08-10-2021','%m-%d-%Y'),'2021-10-08 06:14:07')

insert into flight values(46,'SPJ2','SpiceJet','MUM',
'BNG',STR_TO_DATE('08-10-2021','%m-%d-%Y'),'2021-10-08 07:14:07')

insert into flight values(47,'AI1','Air India','HYD',
'BNG',STR_TO_DATE('08-10-2021','%m-%d-%Y'),'2021-10-08 10:14:07')

insert into flight values(48,'AI2','Air India','BNG',
'GOA',STR_TO_DATE('08-10-2021','%m-%d-%Y'),'2021-10-08 11:14:07')

insert into flight values(49,'IND1','Indigo','BNG',
'MUM',STR_TO_DATE('09-10-2021','%m-%d-%Y'),'2021-10-09 03:14:07')

insert into flight values(50,'IND2','Indigo','HYD',
'CHN',STR_TO_DATE('09-10-2021','%m-%d-%Y'),'2021-10-09 05:14:07')

insert into flight values(51,'SPJ1','SpiceJet','BNG',
'HYD',STR_TO_DATE('09-10-2021','%m-%d-%Y'),'2021-10-09 06:14:07')

insert into flight values(52,'SPJ2','SpiceJet','MUM',
'BNG',STR_TO_DATE('09-10-2021','%m-%d-%Y'),'2021-10-09 07:14:07')

insert into flight values(53,'AI1','Air India','HYD',
'BNG',STR_TO_DATE('09-10-2021','%m-%d-%Y'),'2021-10-09 10:14:07')

insert into flight values(54,'AI2','Air India','BNG',
'GOA',STR_TO_DATE('09-10-2021','%m-%d-%Y'),'2021-10-09 11:14:07')

insert into flight values(55,'IND1','Indigo','BNG',
'MUM',STR_TO_DATE('10-10-2021','%m-%d-%Y'),'2021-10-10 03:14:07')

insert into flight values(56,'IND2','Indigo','HYD',
'CHN',STR_TO_DATE('10-10-2021','%m-%d-%Y'),'2021-10-10 05:14:07')

insert into flight values(57,'SPJ1','SpiceJet','BNG',
'HYD',STR_TO_DATE('10-10-2021','%m-%d-%Y'),'2021-10-10 06:14:07')

insert into flight values(58,'SPJ2','SpiceJet','MUM',
'BNG',STR_TO_DATE('10-10-2021','%m-%d-%Y'),'2021-10-10 07:14:07')

insert into flight values(59,'AI1','Air India','HYD',
'BNG',STR_TO_DATE('10-10-2021','%m-%d-%Y'),'2021-10-10 10:14:07')

insert into flight values(60,'AI2','Air India','BNG',
'GOA',STR_TO_DATE('10-10-2021','%m-%d-%Y'),'2021-10-10 11:14:07')

insert into flight values(61,'IND1','Indigo','BNG',
'MUM',STR_TO_DATE('11-10-2021','%m-%d-%Y'),'2021-10-11 03:14:07')

insert into flight values(62,'IND2','Indigo','HYD',
'CHN',STR_TO_DATE('11-10-2021','%m-%d-%Y'),'2021-10-11 05:14:07')

insert into flight values(63,'SPJ1','SpiceJet','BNG',
'HYD',STR_TO_DATE('11-10-2021','%m-%d-%Y'),'2021-10-11 06:14:07')

insert into flight values(64,'SPJ2','SpiceJet','MUM',
'BNG',STR_TO_DATE('11-10-2021','%m-%d-%Y'),'2021-10-11 07:14:07')

insert into flight values(65,'AI1','Air India','HYD',
'BNG',STR_TO_DATE('11-10-2021','%m-%d-%Y'),'2021-10-11 10:14:07')

insert into flight values(66,'AI2','Air India','BNG',
'GOA',STR_TO_DATE('11-10-2021','%m-%d-%Y'),'2021-10-11 11:14:07')

insert into flight values(67,'IND1','Indigo','BNG',
'MUM',STR_TO_DATE('12-10-2021','%m-%d-%Y'),'2021-10-12 03:14:07')

insert into flight values(68,'IND2','Indigo','HYD',
'CHN',STR_TO_DATE('12-10-2021','%m-%d-%Y'),'2021-10-12 05:14:07')

insert into flight values(69,'SPJ1','SpiceJet','BNG',
'HYD',STR_TO_DATE('12-10-2021','%m-%d-%Y'),'2021-10-12 06:14:07')

insert into flight values(70,'SPJ2','SpiceJet','MUM',
'BNG',STR_TO_DATE('12-10-2021','%m-%d-%Y'),'2021-10-12 07:14:07')

insert into flight values(71,'AI1','Air India','HYD',
'BNG',STR_TO_DATE('12-10-2021','%m-%d-%Y'),'2021-10-12 10:14:07')

insert into flight values(72,'AI2','Air India','BNG',
'GOA',STR_TO_DATE('12-10-2021','%m-%d-%Y'),'2021-10-12 11:14:07')

insert into flight values(73,'IND1','Indigo','BNG',
'MUM',STR_TO_DATE('13-10-2021','%m-%d-%Y'),'2021-10-13 03:14:07')

insert into flight values(74,'IND2','Indigo','HYD',
'CHN',STR_TO_DATE('13-10-2021','%m-%d-%Y'),'2021-10-13 05:14:07')

insert into flight values(75,'SPJ1','SpiceJet','BNG',
'HYD',STR_TO_DATE('13-10-2021','%m-%d-%Y'),'2021-10-13 06:14:07')

insert into flight values(76,'SPJ2','SpiceJet','MUM',
'BNG',STR_TO_DATE('13-10-2021','%m-%d-%Y'),'2021-10-13 07:14:07')

insert into flight values(77,'AI1','Air India','HYD',
'BNG',STR_TO_DATE('13-10-2021','%m-%d-%Y'),'2021-10-13 10:14:07')

insert into flight values(78,'AI2','Air India','BNG',
'GOA',STR_TO_DATE('13-10-2021','%m-%d-%Y'),'2021-10-13 11:14:07')

insert into flight values(79,'IND1','Indigo','BNG',
'MUM',STR_TO_DATE('14-10-2021','%m-%d-%Y'),'2021-10-14 03:14:07')

insert into flight values(80,'IND2','Indigo','HYD',
'CHN',STR_TO_DATE('14-10-2021','%m-%d-%Y'),'2021-10-14 05:14:07')

insert into flight values(81,'SPJ1','SpiceJet','BNG',
'HYD',STR_TO_DATE('14-10-2021','%m-%d-%Y'),'2021-10-14 06:14:07')

insert into flight values(82,'SPJ2','SpiceJet','MUM',
'BNG',STR_TO_DATE('14-10-2021','%m-%d-%Y'),'2021-10-14 07:14:07')

insert into flight values(83,'AI1','Air India','HYD',
'BNG',STR_TO_DATE('14-10-2021','%m-%d-%Y'),'2021-10-14 10:14:07')

insert into flight values(84,'AI2','Air India','BNG',
'GOA',STR_TO_DATE('14-10-2021','%m-%d-%Y'),'2021-10-14 11:14:07')

insert into flight values(85,'IND1','Indigo','BNG',
'MUM',STR_TO_DATE('15-10-2021','%m-%d-%Y'),'2021-10-15 03:14:07')

insert into flight values(86,'IND2','Indigo','HYD',
'CHN',STR_TO_DATE('15-10-2021','%m-%d-%Y'),'2021-10-15 05:14:07')

insert into flight values(87,'SPJ1','SpiceJet','BNG',
'HYD',STR_TO_DATE('15-10-2021','%m-%d-%Y'),'2021-10-15 06:14:07')

insert into flight values(88,'SPJ2','SpiceJet','MUM',
'BNG',STR_TO_DATE('15-10-2021','%m-%d-%Y'),'2021-10-15 07:14:07')

insert into flight values(89,'AI1','Air India','HYD',
'BNG',STR_TO_DATE('15-10-2021','%m-%d-%Y'),'2021-10-15 10:14:07')

insert into flight values(90,'AI2','Air India','BNG',
'GOA',STR_TO_DATE('15-10-2021','%m-%d-%Y'),'2021-10-15 11:14:07')

insert into flight values(91,'IND1','Indigo','BNG',
'MUM',STR_TO_DATE('16-10-2021','%m-%d-%Y'),'2021-10-16 03:14:07')

insert into flight values(92,'IND2','Indigo','HYD',
'CHN',STR_TO_DATE('16-10-2021','%m-%d-%Y'),'2021-10-16 05:14:07')

insert into flight values(93,'SPJ1','SpiceJet','BNG',
'HYD',STR_TO_DATE('16-10-2021','%m-%d-%Y'),'2021-10-16 06:14:07')

insert into flight values(94,'SPJ2','SpiceJet','MUM',
'BNG',STR_TO_DATE('16-10-2021','%m-%d-%Y'),'2021-10-16 07:14:07')

insert into flight values(95,'AI1','Air India','HYD',
'BNG',STR_TO_DATE('16-10-2021','%m-%d-%Y'),'2021-10-16 10:14:07')

insert into flight values(96,'AI2','Air India','BNG',
'GOA',STR_TO_DATE('16-10-2021','%m-%d-%Y'),'2021-10-16 11:14:07')

insert into flight values(97,'IND1','Indigo','BNG',
'MUM',STR_TO_DATE('17-10-2021','%m-%d-%Y'),'2021-10-17 03:14:07')

insert into flight values(98,'IND2','Indigo','HYD',
'CHN',STR_TO_DATE('17-10-2021','%m-%d-%Y'),'2021-10-17 05:14:07')

insert into flight values(99,'SPJ1','SpiceJet','BNG',
'HYD',STR_TO_DATE('17-10-2021','%m-%d-%Y'),'2021-10-17 06:14:07')

insert into flight values(100,'SPJ2','SpiceJet','MUM',
'BNG',STR_TO_DATE('17-10-2021','%m-%d-%Y'),'2021-10-17 07:14:07')

insert into flight values(101,'AI1','Air India','HYD',
'BNG',STR_TO_DATE('17-10-2021','%m-%d-%Y'),'2021-10-17 10:14:07')

insert into flight values(102,'AI2','Air India','BNG',
'GOA',STR_TO_DATE('17-10-2021','%m-%d-%Y'),'2021-10-17 11:14:07')

insert into flight values(103,'IND1','Indigo','BNG',
'MUM',STR_TO_DATE('18-10-2021','%m-%d-%Y'),'2021-10-18 03:14:07')

insert into flight values(104,'IND2','Indigo','HYD',
'CHN',STR_TO_DATE('18-10-2021','%m-%d-%Y'),'2021-10-18 05:14:07')

insert into flight values(105,'SPJ1','SpiceJet','BNG',
'HYD',STR_TO_DATE('18-10-2021','%m-%d-%Y'),'2021-10-18 06:14:07')

insert into flight values(106,'SPJ2','SpiceJet','MUM',
'BNG',STR_TO_DATE('18-10-2021','%m-%d-%Y'),'2021-10-18 07:14:07')

insert into flight values(107,'AI1','Air India','HYD',
'BNG',STR_TO_DATE('18-10-2021','%m-%d-%Y'),'2021-10-18 10:14:07')

insert into flight values(108,'AI2','Air India','BNG',
'GOA',STR_TO_DATE('18-10-2021','%m-%d-%Y'),'2021-10-18 11:14:07')

insert into flight values(109,'IND1','Indigo','BNG',
'MUM',STR_TO_DATE('19-10-2021','%m-%d-%Y'),'2021-10-19 03:14:07')

insert into flight values(110,'IND2','Indigo','HYD',
'CHN',STR_TO_DATE('19-10-2021','%m-%d-%Y'),'2021-10-19 05:14:07')

insert into flight values(111,'SPJ1','SpiceJet','BNG',
'HYD',STR_TO_DATE('19-10-2021','%m-%d-%Y'),'2021-10-19 06:14:07')

insert into flight values(112,'SPJ2','SpiceJet','MUM',
'BNG',STR_TO_DATE('19-10-2021','%m-%d-%Y'),'2021-10-19 07:14:07')

insert into flight values(113,'AI1','Air India','HYD',
'BNG',STR_TO_DATE('19-10-2021','%m-%d-%Y'),'2021-10-19 10:14:07')

insert into flight values(114,'AI2','Air India','BNG',
'GOA',STR_TO_DATE('19-10-2021','%m-%d-%Y'),'2021-10-19 11:14:07')

insert into flight values(115,'IND1','Indigo','BNG',
'MUM',STR_TO_DATE('20-10-2021','%m-%d-%Y'),'2021-10-20 03:14:07')

insert into flight values(116,'IND2','Indigo','HYD',
'CHN',STR_TO_DATE('20-10-2021','%m-%d-%Y'),'2021-10-20 05:14:07')

insert into flight values(117,'SPJ1','SpiceJet','BNG',
'HYD',STR_TO_DATE('20-10-2021','%m-%d-%Y'),'2021-10-20 06:14:07')

insert into flight values(118,'SPJ2','SpiceJet','MUM',
'BNG',STR_TO_DATE('20-10-2021','%m-%d-%Y'),'2021-10-20 07:14:07')

insert into flight values(119,'AI1','Air India','HYD',
'BNG',STR_TO_DATE('20-10-2021','%m-%d-%Y'),'2021-10-20 10:14:07')

insert into flight values(120,'AI2','Air India','BNG',
'GOA',STR_TO_DATE('20-10-2021','%m-%d-%Y'),'2021-10-20 11:14:07')

insert into flight values(121,'IND1','Indigo','BNG',
'MUM',STR_TO_DATE('21-10-2021','%m-%d-%Y'),'2021-10-21 03:14:07')

insert into flight values(122,'IND2','Indigo','HYD',
'CHN',STR_TO_DATE('21-10-2021','%m-%d-%Y'),'2021-10-21 05:14:07')

insert into flight values(123,'SPJ1','SpiceJet','BNG',
'HYD',STR_TO_DATE('21-10-2021','%m-%d-%Y'),'2021-10-21 06:14:07')

insert into flight values(124,'SPJ2','SpiceJet','MUM',
'BNG',STR_TO_DATE('21-10-2021','%m-%d-%Y'),'2021-10-21 07:14:07')

insert into flight values(125,'AI1','Air India','HYD',
'BNG',STR_TO_DATE('21-10-2021','%m-%d-%Y'),'2021-10-21 10:14:07')

insert into flight values(126,'AI2','Air India','BNG',
'GOA',STR_TO_DATE('21-10-2021','%m-%d-%Y'),'2021-10-21 11:14:07')

insert into flight values(127,'IND1','Indigo','BNG',
'MUM',STR_TO_DATE('22-10-2021','%m-%d-%Y'),'2021-10-22 03:14:07')

insert into flight values(128,'IND2','Indigo','HYD',
'CHN',STR_TO_DATE('22-10-2021','%m-%d-%Y'),'2021-10-22 05:14:07')

insert into flight values(129,'SPJ1','SpiceJet','BNG',
'HYD',STR_TO_DATE('22-10-2021','%m-%d-%Y'),'2021-10-22 06:14:07')

insert into flight values(130,'SPJ2','SpiceJet','MUM',
'BNG',STR_TO_DATE('22-10-2021','%m-%d-%Y'),'2021-10-22 07:14:07')

insert into flight values(131,'AI1','Air India','HYD',
'BNG',STR_TO_DATE('22-10-2021','%m-%d-%Y'),'2021-10-22 10:14:07')

insert into flight values(132,'AI2','Air India','BNG',
'GOA',STR_TO_DATE('22-10-2021','%m-%d-%Y'),'2021-10-22 11:14:07')

insert into flight values(133,'IND1','Indigo','BNG',
'MUM',STR_TO_DATE('23-10-2021','%m-%d-%Y'),'2021-10-23 03:14:07')

insert into flight values(134,'IND2','Indigo','HYD',
'CHN',STR_TO_DATE('23-10-2021','%m-%d-%Y'),'2021-10-23 05:14:07')

insert into flight values(135,'SPJ1','SpiceJet','BNG',
'HYD',STR_TO_DATE('23-10-2021','%m-%d-%Y'),'2021-10-23 06:14:07')

insert into flight values(136,'SPJ2','SpiceJet','MUM',
'BNG',STR_TO_DATE('23-10-2021','%m-%d-%Y'),'2021-10-23 07:14:07')

insert into flight values(137,'AI1','Air India','HYD',
'BNG',STR_TO_DATE('23-10-2021','%m-%d-%Y'),'2021-10-23 10:14:07')

insert into flight values(138,'AI2','Air India','BNG',
'GOA',STR_TO_DATE('23-10-2021','%m-%d-%Y'),'2021-10-23 11:14:07')

insert into flight values(139,'IND1','Indigo','BNG',
'MUM',STR_TO_DATE('24-10-2021','%m-%d-%Y'),'2021-10-24 03:14:07')

insert into flight values(140,'IND2','Indigo','HYD',
'CHN',STR_TO_DATE('24-10-2021','%m-%d-%Y'),'2021-10-24 05:14:07')

insert into flight values(141,'SPJ1','SpiceJet','BNG',
'HYD',STR_TO_DATE('24-10-2021','%m-%d-%Y'),'2021-10-24 06:14:07')

insert into flight values(142,'SPJ2','SpiceJet','MUM',
'BNG',STR_TO_DATE('24-10-2021','%m-%d-%Y'),'2021-10-24 07:14:07')

insert into flight values(143,'AI1','Air India','HYD',
'BNG',STR_TO_DATE('24-10-2021','%m-%d-%Y'),'2021-10-24 10:14:07')

insert into flight values(144,'AI2','Air India','BNG',
'GOA',STR_TO_DATE('24-10-2021','%m-%d-%Y'),'2021-10-24 11:14:07')

insert into flight values(145,'IND1','Indigo','BNG',
'MUM',STR_TO_DATE('25-10-2021','%m-%d-%Y'),'2021-10-25 03:14:07')

insert into flight values(146,'IND2','Indigo','HYD',
'CHN',STR_TO_DATE('25-10-2021','%m-%d-%Y'),'2021-10-25 05:14:07')

insert into flight values(147,'SPJ1','SpiceJet','BNG',
'HYD',STR_TO_DATE('25-10-2021','%m-%d-%Y'),'2021-10-25 06:14:07')

insert into flight values(148,'SPJ2','SpiceJet','MUM',
'BNG',STR_TO_DATE('25-10-2021','%m-%d-%Y'),'2021-10-25 07:14:07')

insert into flight values(149,'AI1','Air India','HYD',
'BNG',STR_TO_DATE('25-10-2021','%m-%d-%Y'),'2021-10-25 10:14:07')

insert into flight values(150,'AI2','Air India','BNG',
'GOA',STR_TO_DATE('25-10-2021','%m-%d-%Y'),'2021-10-25 11:14:07')

insert into flight values(151,'IND1','Indigo','BNG',
'MUM',STR_TO_DATE('26-10-2021','%m-%d-%Y'),'2021-10-26 03:14:07')

insert into flight values(152,'IND2','Indigo','HYD',
'CHN',STR_TO_DATE('26-10-2021','%m-%d-%Y'),'2021-10-26 05:14:07')

insert into flight values(153,'SPJ1','SpiceJet','BNG',
'HYD',STR_TO_DATE('26-10-2021','%m-%d-%Y'),'2021-10-26 06:14:07')

insert into flight values(154,'SPJ2','SpiceJet','MUM',
'BNG',STR_TO_DATE('26-10-2021','%m-%d-%Y'),'2021-10-26 07:14:07')

insert into flight values(155,'AI1','Air India','HYD',
'BNG',STR_TO_DATE('26-10-2021','%m-%d-%Y'),'2021-10-26 10:14:07')

insert into flight values(156,'AI2','Air India','BNG',
'GOA',STR_TO_DATE('26-10-2021','%m-%d-%Y'),'2021-10-26 11:14:07')

insert into flight values(157,'IND1','Indigo','BNG',
'MUM',STR_TO_DATE('27-10-2021','%m-%d-%Y'),'2021-10-27 03:14:07')

insert into flight values(158,'IND2','Indigo','HYD',
'CHN',STR_TO_DATE('27-10-2021','%m-%d-%Y'),'2021-10-27 05:14:07')

insert into flight values(159,'SPJ1','SpiceJet','BNG',
'HYD',STR_TO_DATE('27-10-2021','%m-%d-%Y'),'2021-10-27 06:14:07')

insert into flight values(160,'SPJ2','SpiceJet','MUM',
'BNG',STR_TO_DATE('27-10-2021','%m-%d-%Y'),'2021-10-27 07:14:07')

insert into flight values(161,'AI1','Air India','HYD',
'BNG',STR_TO_DATE('27-10-2021','%m-%d-%Y'),'2021-10-27 10:14:07')

insert into flight values(162,'AI2','Air India','BNG',
'GOA',STR_TO_DATE('27-10-2021','%m-%d-%Y'),'2021-10-27 11:14:07')

insert into flight values(163,'IND1','Indigo','BNG',
'MUM',STR_TO_DATE('28-10-2021','%m-%d-%Y'),'2021-10-28 03:14:07')

insert into flight values(164,'IND2','Indigo','HYD',
'CHN',STR_TO_DATE('28-10-2021','%m-%d-%Y'),'2021-10-28 05:14:07')

insert into flight values(164,'SPJ1','SpiceJet','BNG',
'HYD',STR_TO_DATE('28-10-2021','%m-%d-%Y'),'2021-10-28 06:14:07')

insert into flight values(165,'SPJ2','SpiceJet','MUM',
'BNG',STR_TO_DATE('28-10-2021','%m-%d-%Y'),'2021-10-28 07:14:07')

insert into flight values(166,'AI1','Air India','HYD',
'BNG',STR_TO_DATE('28-10-2021','%m-%d-%Y'),'2021-10-28 10:14:07')

insert into flight values(167,'AI2','Air India','BNG',
'GOA',STR_TO_DATE('28-10-2021','%m-%d-%Y'),'2021-10-28 11:14:07')

insert into flight values(168,'IND1','Indigo','BNG',
'MUM',STR_TO_DATE('29-10-2021','%m-%d-%Y'),'2021-10-29 03:14:07')

insert into flight values(169,'IND2','Indigo','HYD',
'CHN',STR_TO_DATE('29-10-2021','%m-%d-%Y'),'2021-10-29 05:14:07')

insert into flight values(170,'SPJ1','SpiceJet','BNG',
'HYD',STR_TO_DATE('29-10-2021','%m-%d-%Y'),'2021-10-29 06:14:07')

insert into flight values(171,'SPJ2','SpiceJet','MUM',
'BNG',STR_TO_DATE('29-10-2021','%m-%d-%Y'),'2021-10-29 07:14:07')

insert into flight values(172,'AI1','Air India','HYD',
'BNG',STR_TO_DATE('29-10-2021','%m-%d-%Y'),'2021-10-29 10:14:07')

insert into flight values(173,'AI2','Air India','BNG',
'GOA',STR_TO_DATE('29-10-2021','%m-%d-%Y'),'2021-10-29 11:14:07')

insert into flight values(174,'IND1','Indigo','BNG',
'MUM',STR_TO_DATE('30-10-2021','%m-%d-%Y'),'2021-10-30 03:14:07')

insert into flight values(175,'IND2','Indigo','HYD',
'CHN',STR_TO_DATE('30-10-2021','%m-%d-%Y'),'2021-10-30 05:14:07')

insert into flight values(176,'SPJ1','SpiceJet','BNG',
'HYD',STR_TO_DATE('30-10-2021','%m-%d-%Y'),'2021-10-30 06:14:07')

insert into flight values(177,'SPJ2','SpiceJet','MUM',
'BNG',STR_TO_DATE('30-10-2021','%m-%d-%Y'),'2021-10-30 07:14:07')

insert into flight values(178,'AI1','Air India','HYD',
'BNG',STR_TO_DATE('30-10-2021','%m-%d-%Y'),'2021-10-30 10:14:07')

insert into flight values(179,'AI2','Air India','BNG',
'GOA',STR_TO_DATE('30-10-2021','%m-%d-%Y'),'2021-10-30 11:14:07')

insert into flight values(180,'IND1','Indigo','BNG',
'MUM',STR_TO_DATE('31-10-2021','%m-%d-%Y'),'2021-10-31 03:14:07')

insert into flight values(181,'IND2','Indigo','HYD',
'CHN',STR_TO_DATE('31-10-2021','%m-%d-%Y'),'2021-10-31 05:14:07')

insert into flight values(182,'SPJ1','SpiceJet','BNG',
'HYD',STR_TO_DATE('31-10-2021','%m-%d-%Y'),'2021-10-31 06:14:07')

insert into flight values(183,'SPJ2','SpiceJet','MUM',
'BNG',STR_TO_DATE('31-10-2021','%m-%d-%Y'),'2021-10-31 07:14:07')

insert into flight values(184,'AI1','Air India','HYD',
'BNG',STR_TO_DATE('31-10-2021','%m-%d-%Y'),'2021-10-31 10:14:07')

insert into flight values(185,'AI2','Air India','BNG',
'GOA',STR_TO_DATE('31-10-2021','%m-%d-%Y'),'2021-10-31 11:14:07')



