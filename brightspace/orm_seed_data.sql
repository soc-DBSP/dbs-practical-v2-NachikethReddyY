-- staff_dependent table 19 records
INSERT INTO staff_dependent (staff_no, dependent_name, relationship)
VALUES
  ('S003', 'Yan Chin', 'Daughter'),
  ('S003', 'Xiu Mei', 'Wife'),
  ('S003', 'Yang Xi', 'Son'),
  ('S004', 'Min Li', 'Wife'),
  ('S005', 'Candice', 'Wife'),
  ('S005', 'Mei Mei', 'Daughter'),
  ('S005', 'Pamela', 'Daughter'),
  ('S007', 'Judith', 'Wife'),
  ('S008', 'Nelson', 'Son'),
  ('S010', 'Felicia', 'Wife'),
  ('S010', 'Jamie', 'Daughter'),
  ('S010', 'Janet', 'Daughter'),
  ('S010', 'Janny', 'Daughter'),
  ('S010', 'Jerome', 'Son'),
  ('S010', 'Judith', 'Daughter'),
  ('S011', 'Jamie', 'Wife'),
  ('S012', 'Mark', 'Son'),
  ('S012', 'Shyna', 'Wife'),
  ('T002', 'Mike', 'Husband');

-- module table 14 records
INSERT INTO module (mod_code, mod_name, credit_unit, mod_coord)
VALUES
  ('AIP', 'Accounting Informatics Project', 4, 'S018'),
  ('AIS', 'Accounting Information System', 4, 'S019'),
  ('BUAE', 'Business Analysis Using Excel', 3, 'S019'),
  ('CRM', 'Customer Relationship Management', 3, 'S019'),
  ('DBMS', 'Database Management System', 5, 'S020'),
  ('DM', 'Data Mining', 4, 'S018'),
  ('ITOS', 'IT and Office Software', 4, 'S018'),
  ('JPRG', 'Java Programming', 8, 'S017'),
  ('NETF', 'Network Fundamentals', 3, 'S017'),
  ('PM', 'Project Management', 3, 'S018'),
  ('SAD', 'Software Application Development', 8, 'S020'),
  ('SDT', 'Software Development Technique', 5, 'S019'),
  ('WCD', 'Web Client Development', 4, 'S018');

-- pre_requisite table 11 records
INSERT INTO pre_requisite (mod_code, requisite)
VALUES 
('AIP', 'AIS'),
('AIS', 'DBMS'),
('AIS', 'JPRG'),
('AIS', 'SDT'),
('CRM', 'DBMS'),
('DM', 'DBMS'),
('SAD', 'JPRG'),
('SAD', 'NETF'),
('SAD', 'SDT'),
('SAD', 'WCD'),
('SDT', 'DBMS');

-- country table 8 records
INSERT INTO country (country_name, language, region)
VALUES
  ('China', 'Chinese', 'Asia'),
  ('Hong Kong', 'Cantonese', 'Asia'),
  ('India', 'Tamil', 'Asia'),
  ('Korea', 'Korean', 'Asia'),
  ('Malaysia', 'Malay', 'Asia'),
  ('Singapore', 'English', 'Asia'),
  ('Taiwan', 'Chinese', 'Asia'),
  ('Thailand', 'Thai', 'Asia');

-- student table 11 records
INSERT INTO student (adm_no, stud_name, gender, address, mobile_phone, home_phone, dob, nationality, crse_code)
VALUES
  ('A001', 'Janice', 'F', '127 Clementi Ave 4', NULL, '61112211', '2005-12-11', 'Singapore', 'DIT'),
  ('A002', 'Anita', 'F', '326-C Peck Sia Street', '91123321', '64785623', '2004-07-16', 'Malaysia', 'DBIT'),
  ('A004', 'Mike', 'M', '79 Clementi South', '95566003', '63355990', '2004-07-10', 'China', 'DIT'),
  ('A005', 'Heidi', 'F', '88-A Yi Soon Road', NULL, '65577111', '2005-02-26', 'Malaysia', 'DAAA'),
  ('A006', 'Keith', 'M', '239 South Bridge Road', NULL, '64689002', '2005-08-19', 'India', 'DAAA'),
  ('A007', 'Adeline', 'F', '114 Toa Payoh North', '95556600', '62221155', '2004-09-24', 'Singapore', 'DAAA'),
  ('A008', 'Peter', 'M', '66 Tanglin Ave 3', '96343477', '65432122', '2004-10-30', 'Singapore', 'DCS'),
  ('A009', 'Peter', 'M', '53 Dover West', NULL, '66312254', '2004-09-20', 'Malaysia', 'DCS'),
  ('A010', 'Derrick', 'M', '4 Boon Lay Way', '89098889', '64457890', '2005-09-08', 'Korea', 'DFI'),
  ('A011', 'Joshua', 'M', '67 Yew Tee Road', NULL, '62089578', '2005-07-06', 'Hong Kong', 'DFI'),
  ('A012', 'Denise', 'F', '3 Sixth Avenue', '81897685', '67893467', '2005-12-11', 'Thailand', 'DFI');

-- stud_mod_performance table 41 records

-- DFI
INSERT INTO stud_mod_performance VALUES
('A012', 'AIP', 70, 'C+'),
('A012', 'AIS', 81, 'A'),
('A012', 'BUAE', 66, 'C+');

INSERT INTO stud_mod_performance VALUES
('A011', 'AIP', 60, 'C'),
('A011', 'AIS', 41, 'F'),
('A011', 'BUAE', 36, 'F');

INSERT INTO stud_mod_performance VALUES
('A010', 'AIP', 86, 'A'),
('A010', 'AIS', 81, 'A'),
('A010', 'BUAE', 96, 'AD');

-- DCS
INSERT INTO stud_mod_performance VALUES
('A009', 'SDT', 81, 'A'),
('A009', 'NETF', 68, 'C+'),
('A009', 'SAD', 74, 'B');

INSERT INTO stud_mod_performance VALUES
('A008', 'SDT', 11, 'F'),
('A008', 'NETF', 58, 'D+'),
('A008', 'SAD', 64, 'C');

-- DIT
INSERT INTO stud_mod_performance VALUES
('A007', 'PM', 77, 'B+'),
('A007', 'WCD', 78, 'F'),
('A007', 'DBMS', 88, 'A'),
('A007', 'JPRG', 84, 'A'),
('A006', 'PM', 57, 'D+'),
('A006', 'WCD', 61, 'C'),
('A006', 'DBMS', 60, 'C'),
('A006', 'JPRG', 70, 'B'),
('A005', 'PM', 58, 'D+'),
('A005', 'WCD', 64, 'C'),
('A005', 'DBMS', 64, 'C'),
('A005', 'JPRG', 73, 'B'),
('A004', 'DBMS', 80, 'A'),
('A004', 'JPRG', 88, 'A'),
('A004', 'NETF', 73, 'B'),
('A001', 'DBMS', 72, 'B'),
('A001', 'JPRG', 78, 'B+'),
('A001', 'NETF', 87, 'A'),

-- DBIT
('A002', 'DBMS', 72, 'B'),
('A002', 'JPRG', 78, 'B+'),
('A002', 'WCD', 83, 'A'),
('A002', 'SAD', 87, 'A');
