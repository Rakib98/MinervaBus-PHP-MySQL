DROP DATABASE if EXISTS bus_db;
CREATE DATABASE bus_db;
USE bus_db;

CREATE TABLE  employees (
  employee_id VARCHAR(6) PRIMARY KEY NOT NULL,
  title VARCHAR(5) NOT NULL,
  first_name VARCHAR(25) NOT NULL,
  last_name VARCHAR(25) NOT NULL,
  date_of_birth DATE,
  house_num INT NOT NULL,
  street VARCHAR(45) NOT NULL,
  city VARCHAR(25),
  post_code VARCHAR(7),
  phone VARCHAR(11),
  country VARCHAR(15),
  gender VARCHAR(6),
  job_title VARCHAR(30),
  email VARCHAR(45),
  NI_num VARCHAR(9),
  hired_date DATE
  ) ENGINE = InnoDB;

INSERT INTO employees VALUES ('NR1538', 'Mr', 'Nigel', 'Roberts', '1975-04-26',  1, 'Mocks Road',  'Walsall', 'WS1 1PM', '07725489212', 'UK',  'Male' , 'Driver', 'nigelro@gmail.com', 'ST238215D', '2010-11-22');

INSERT INTO employees VALUES ('KB3352',	'Mrs', 'Kathy', 'Baker', '1972-02-14',	24,	'Baker Road',	'Birmingham', 'B46 7DE', '07825837112', 'UK', 'Female', 'Admin', 'kathy@gmail.com', 'BS123514A', '2013-05-12' );

INSERT INTO employees VALUES ('CP4434',	'Mr', 'Chris', 'Perry', '1972-01-05',	187, 'Cole Avenue',	'Birmingham', 'B36 0UI', '07829192513',	'UK', 'Male', 'Driver', 'chrisperry@outlook.com', 'AZ159214R', '2009-06-23');

INSERT INTO employees VALUES ('JW9989', 'Ms', 'Jenny', 'Ward', '1979-08-07', 276, 'Lancaster Way', 'Walsall', 'WS1 1TY', '07725489212', 'UK', 'Female', 'Driver', 'jenny123@gmail.com', 'BF229514K', '2012-08-09');

INSERT INTO employees VALUES ('SS129T', 'Miss', 'Sandeep', 'Singh', '1981-11-05', 8, 'Rover Drive', 'Birmingham', 'B46 1TR', '07715419999', 'UK', 'Female', 'Driver', 'singh81@outlook.com', 'TL123575O', '2015-02-10');

INSERT INTO employees VALUES ('JE1221', 'Mr', 'Jacob', 'Edwards', '1980-04-22', 233, 'Pool Street', 'Walsall', 'WS1 7UY', '01922458745', 'UK', 'Male', 'Driver', 'eddy@gmail.com', 'LK128145Y', '2016-02-02');

INSERT INTO employees VALUES ('MF0091',	'Mr', 'Mohammed', 'Faisel', '1965-07-17', 77, 'Maxtor Road', 'Walsall', 'WS1 9KL', '07725489212', 'UK', 'Male', 'Admin', 'faisel@gamil.com', 'RD124596L', '2012-04-09');

INSERT INTO employees VALUES ('BV3743',	'Mr', 'Daniel', 'Smith', '1985-02-14', 10, 'Fawkes Road', 'Birmingham', 'B12 6XT', '07734765232', 'UK', 'Male', 'Driver', 'dan85@outlook.com', 'OP957432O', '2014-12-11');

INSERT INTO employees VALUES ('AA1000', 'Mr', 'Micheal', 'Keaton', '1976-05-12', 10, 'Knight Road', 'Birmingham', 'B47 7LO', '01556220942', 'UK', 'Male', 'Driver', 'keaton@gmail.com', 'ST103020T', '2015-10-10');

INSERT INTO employees VALUES ('AA1001', 'Mrs', 'Brie', 'Larson', '1990-02-02', 30, 'Marvel Road', 'Birmingham', 'C45 1HO', '01556278871', 'UK', 'Female', 'Driver', 'capmarvel@gmail.com', 'OL147852E', '2017-10-10');

INSERT INTO employees VALUES ('AA1002', 'Mr', 'Samuel L.', 'Jackson', '1968-12-12', 25, 'Ezekiel Road', 'Birmingham', 'L25 17O', '01595523702', 'UK', 'Male', 'Driver', 'fury@outlook.com', 'PK298742P', '2017-07-07');

INSERT INTO employees VALUES ('AA1003', 'Mr', 'Jack', 'Nicholson', '1968-10-11', 51, 'Joker Road', 'Birmingham', 'L15 12O', '01555983702', 'UK', 'Male', 'Driver', 'jack@outlook.com', 'QW254394A', '2014-07-07');

CREATE TABLE bus_driver(
  employee_id_fk VARCHAR(6) PRIMARY KEY NOT NULL,
  license_num VARCHAR(9) NOT NULL,
  expiry_date DATE NOT NULL,
  aquired_date DATE NOT NULL,
  penalty_point INT NULL,
  FOREIGN KEY (employee_id_fk) REFERENCES employees (employee_id) ON DELETE CASCADE ON UPDATE CASCADE
  ) ENGINE = InnoDB;

INSERT INTO bus_driver VALUES ('NR1538', 'JH3454555', '2025-05-01',	'1975-05-01', '0');

INSERT INTO bus_driver VALUES ('CP4434', 'HG676765', '2031-08-01', '1981-08-01', '0');

INSERT INTO bus_driver VALUES ('JW9989', 'KL867656', '2045-03-01', '1995-03-01', '3');

INSERT INTO bus_driver VALUES ('SS129T', 'TY4355510', '2051-01-01',	'2001-01-01', '6');

INSERT INTO bus_driver VALUES ('JE1221', 'OI5676900', '2019-07-01', '1969-07-01', '0');


CREATE TABLE bus (
  bus_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  bus_num VARCHAR(11) NOT NULL,
  bus_reg VARCHAR(8) NULL,
  model VARCHAR(20),
  manufacturere VARCHAR(20),
  facilities VARCHAR(20),
  KEY (bus_num)
  ) ENGINE = InnoDB;

INSERT INTO bus VALUES (1, '1',  'S337 DJW', 'Saltire', 'Scania', 'Bathroom');

INSERT INTO bus VALUES (null, '1 (Reverse)', 'S337 DJW','LK21675P', 'Scania', 'Bathroom');

INSERT INTO bus VALUES (null, '1',  'JE1221', 'OM46619A', 'Mercedes', 'None');

INSERT INTO bus VALUES (null, '1 (Reverse)', 'G455 HGT', 'OM46619A', 'Mercedes', 'None');

INSERT INTO bus VALUES (null, '1',  'SS129T', 'Axle Coach', 'Scania', 'Bathroom');


CREATE TABLE route (
  route_num VARCHAR(3) PRIMARY KEY NOT NULL,
  route_name VARCHAR(25) NULL,
  stops TEXT NULL
  ) ENGINE = InnoDB;

INSERT INTO route VALUES ('1', 'Old Birchills', 'The Drive, Abbey Drive, Abbey Square, The Glades, Red River Road, Roberts Road, Muirfield Close, Chandlers Keep, The Granary, The Green, Wingate Road, Wisemore, Wolverhampton Road,  Wolverhampton Road West');

INSERT INTO route VALUES ('2', 'Walsall Road Via Bloxwich', 'Abingdon Road, Chapel Avenue, The Downs, The Grove, The Leasow, Mulberry Road, Myatt Way, Redbourn Road, Wolverhampton Street, Wolverson Road, Wood Common Grange, Chapel Drive, Mulberry Place, The Maltings, The Meadows, The Nook, Mouse Hill');

INSERT INTO route VALUES ('19', 'Birmingham Road', 'Acacia Avenue, Chapel Avenue, Murdoch Way, Woodall Street, Wood Green, Reedswood Gardens, Reedswood Lane, The Cloisters, The Cutting, Wood Lane, Woodbridge Close, Achilles Close');

INSERT INTO route VALUES ('31', 'Alumwell Circular', 'Addenbrooke Street, The Butts, Ajax Street, The Bridge, The Orchard, Woodend Road, Woodhaven, The Chartway, Woodland Drive, Chapel Drive, Jesson Road, Jordan Way, Muxloe Close,
	The Berkshire, Chapel Square');

INSERT INTO route VALUES ('50', 'Goscote Road', 'Jessie Road, The Parkway, Johns Lane, Woodlands Avenue, Woodlands Crescent, Aldis Road, Chapel Street, Regina Drive, The Alcove, The Pinfold, Charlemont Close, Chase Road, Reeves Street, The Arboretum, The Arcade, The Pines, Chatsworth Crescent, Myatt Avenue ');

INSERT INTO route VALUES ('52A', 'Moseley Circular','Central Close, Central Drive, Remington Road, Reservoir Street, Telford Road, Tenbury Close, Woodruff Way,  Wrekin View, Wrexham Avenue, Wych Elm Road, Wye Road');

CREATE TABLE timetable (
  timetable_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  employee_id_fk VARCHAR(6) NOT NULL,
  bus_num_fk VARCHAR(11) NOT NULL,
  route_num_fk VARCHAR(3) NOT NULL,
  departure_time TIME NOT NULL,
  departure_date DATE,
  FOREIGN KEY (employee_id_fk) REFERENCES bus_driver (employee_id_fk),
  FOREIGN KEY (bus_num_fk) REFERENCES bus (bus_num),
  FOREIGN KEY (route_num_fk) REFERENCES route (route_num)
   ) ENGINE = InnoDB;

INSERT INTO timetable VALUES (1, 'NR1538', '1', '1', '06:00', '2018-02-01');

INSERT INTO timetable VALUES (2, 'NR1538', '1 (Reverse)', '1', '07:30', '2018-02-01');

INSERT INTO timetable VALUES (3, 'JE1221', '1', '1', '07:00', '2018-01-29');

INSERT INTO timetable VALUES (4, 'JE1221', '1 (Reverse)', '1', '08:30', '2018-01-30');

INSERT INTO timetable VALUES (5, 'SS129T', '1', '1', '08:00', '2018-01-30');


SELECT * FROM employees WHERE city = 'Walsall';

SELECT * FROM bus_driver WHERE penalty_point <= '3';

SELECT bus_num, bus_reg, facilities FROM bus WHERE facilities = 'Bathroom';
SELECT route_num, route_name FROM route WHERE route_num IN ('1', '2', '50');
SELECT * FROM employees WHERE gender = 'Female' AND job_title = 'Driver';
SELECT * FROM timetable WHERE departure_time = '06:00' OR departure_time = '07:00';
SELECT * FROM timetable WHERE departure_time BETWEEN '08:00' AND '08:30';

SELECT employees.title, employees.first_name, employees.last_name, employees.city, bus_driver.license_num, bus_driver.penalty_point FROM bus_driver
	INNER JOIN employees ON employee_id = employee_id_fk  WHERE penalty_point < '4';

CREATE TABLE audit (
 employee_id_fk VARCHAR(6) NOT NULL,
 license_num VARCHAR(9),
 expiry_date DATE NOT NULL,
 aquired_date DATE NOT NULL,
 penalty_point INT NULL,
 action VARCHAR(20) NOT NULL,
 action_date DATE NOT NULL
) ENGINE=InnoDB;

DELIMITER $$   /* FOR INSERT */
USE `bus_db`$$
CREATE TRIGGER `after_insert`
 AFTER INSERT ON `bus_driver` FOR EACH ROW
 BEGIN
 INSERT INTO audit (employee_id_fk, license_num, expiry_date, aquired_date, penalty_point, action, action_date)
 VALUES (NEW.employee_id_fk, NEW.license_num, NEW.expiry_date, NEW.aquired_date,  NEW.penalty_point, 'INSERT', NOW());
 END
$$
DELIMITER ;

DELIMITER $$ /* FOR DELETE */
USE `bus_db`$$
CREATE TRIGGER `after_delete`
 After DELETE ON `bus_driver` FOR EACH ROW
 BEGIN
 INSERT INTO audit (employee_id_fk, license_num,expiry_date, aquired_date, penalty_point, action, action_date)
 VALUES (OLD.employee_id_fk, OLD.license_num, OLD.expiry_date, OLD.aquired_date, OLD.penalty_point,  'DELETE', NOW());
 END
$$
DELIMITER ;

DELIMITER $$ /* FOR UPDATE */
USE `bus_db`$$
CREATE TRIGGER `after_update`
 After UPDATE ON `bus_driver` FOR EACH ROW
 BEGIN
 INSERT INTO audit (employee_id_fk, license_num,expiry_date, aquired_date, penalty_point, action, action_date)
 VALUES (OLD.employee_id_fk, OLD.license_num, OLD.expiry_date, OLD.aquired_date,  OLD.penalty_point, 'UPDATE', NOW());
 END
$$
DELIMITER ;

INSERT INTO bus_driver VALUES ('BV3743', 'SE8156344', '2020-02-01', '2000-02-01', '2');
UPDATE bus_driver SET expiry_date = '2025-02-03', aquired_date = '2018-02-03', penalty_point = '5' WHERE employee_id_fk = 'BV3743';
DELETE FROM bus_driver WHERE employee_id_fk = 'BV3743';
SELECT * FROM audit;