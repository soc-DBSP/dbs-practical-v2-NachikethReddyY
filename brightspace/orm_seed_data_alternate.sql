-- Insert data into the course (with column list)
INSERT INTO course (crse_code, crse_name, offered_By, crse_fee)
VALUES
   ('DBA', 'Diploma in Business Administration', 'SB', 500.00),
   ('DFI', 'Diploma in Financial Informatics', 'SB', 800.00);
 
-- Insert data into the course (without column list)
INSERT INTO course
VALUES
   ('DBIT', 'Diploma in Business and Information Technology', 'SOC', 700.00, 100.00),
   ('DAAA', 'Diploma in Applied AI and Analytics', 'SOC', 1000.00, 900.00),
   ('DCS', 'Diploma in Cybersecurity', 'SOC', 900.00, 300.00),
   ('DIT', 'Diploma in Information Technology', 'SOC', 650.00, 450.00);

-- Insert data into department
INSERT INTO department
VALUES
   ('SOC', 'School of Computing', 'S001', 82, 92, 90000, 45000, '2009-04-01'),
   ('SB', 'School of Business', 'S006', 86, 90, 80000, 88000, '1996-10-01'),
   ('PO', 'Principal''s office', 'T001', 4, 4, 7500, NULL, '2008-01-01'),
   ('DPO', 'Deputy Principal''s Office', 'T002', 3, 3, 6000, NULL, NULL);

-- Insert statements to populate Staff Relation.
INSERT INTO staff
VALUES 
   ('S001', 'Anita', 'T002', '1950-01-21', 'L1', 'M', 7070, 1000, NULL, 'F', 'Singapore', '1996', 'SOC', 'FT', 'Phd', 'Director'),
   ('S002', 'Apple', 'S001', '1952-08-30', 'L1', 'S', 6660, 700, NULL, 'F', 'Korea', '1980', 'SOC', 'FT', 'BSc', 'Deputy Director'),
   ('S003', 'Charles', 'S001', '1954-11-05', 'L2', 'M', 5890, 600, NULL, 'M', 'Malaysia', '1990', 'SOC', 'FT', 'BComp', 'Deputy Director'),
   ('S004', 'Dawn', 'S002', '1956-02-21', 'L2', 'S', 5200, 200, NULL, 'F', 'Singapore', '1982', 'SOC', 'FT', 'MTech', 'Section Head'),
   ('S005', 'Edison', 'S002', '1958-08-06', 'L3', 'W', 4970, 100, NULL, 'M', 'Taiwan', '1988', 'SOC', 'FT', 'MBA', 'Section Head'),
   ('S006', 'Fann', 'T002', '1960-09-18', 'L1', 'M', 7600, 900, NULL, 'F', 'Malaysia', '1978', 'SB', 'FT', 'ACA', 'Director'),
   ('S007', 'Gideon', 'S006', '1962-10-10', 'L2', 'M', 6000, 600, NULL, 'M', 'Malaysia', '1995', 'SB', 'FT', 'MPA', 'Deputy Director'),
   ('S008', 'Lionel', 'S007', '1968-01-19', 'L3', 'M', 5100, 100, NULL, 'M', 'Singapore', '1989', 'SB', 'FT', 'CFA', 'Section Head'),
   ('S009', 'Lee', 'S008', '1965-01-26', 'L5A', 'S', NULL, NULL, 120, 'F', 'India', '1997', 'SB', 'PT', 'CPA', 'Lecturer'),
   ('S010', 'Jason', 'S008', '1968-11-30', 'L5', 'M', NULL, NULL, 100, 'M', 'China', '1999', 'SB', 'PT', 'BBA', 'Lecturer'),
   ('S011', 'Andy', 'S007', '1970-11-08', 'L3', 'M', 5340, 150, NULL, 'M', 'Thailand', '2000', 'SB', 'FT', 'BA', 'Section Head'),
   ('S012', 'Edwin', 'S011', '1975-09-09', 'L4', 'M', 4950, NULL, NULL, 'M', 'Hong Kong', '2001', 'SB', 'FT', 'MA', 'Lecturer'),
   ('S017', 'Titus', 'S004', '1960-03-19', 'L4A', 'S', 2000, NULL, NULL, 'M', 'Singapore', '1985', 'SOC', 'FT', 'MBIT', 'Lecturer'),
   ('S018', 'Derrick', 'S005', '1971-09-05', 'L5A', 'S', 3000, NULL, NULL, 'M', 'Singapore', '2007', 'SOC', 'FT', 'MCM', 'Senior Lecturer'),
   ('S019', 'Eleanor', 'S004', '1965-01-01', 'L4', 'S', NULL, NULL, 120, 'F', 'China', '2008', 'SOC', 'PT', 'BSE', 'Lecturer'),
   ('S020', 'Florence', 'S005', '1968-01-01', 'L4', 'S', NULL, NULL, 100, 'F', 'China', '2008', 'SOC', 'PT', 'BDM', 'Lecturer'),
   ('T001', 'Bruce', NULL, '1960-05-15', 'SSD', 'S', 9000, 2000, NULL, 'M', 'Singapore', '2008', 'PO', 'FT', 'BComp', 'Principal'),
   ('T002', 'Ruth', 'T001', '1949-07-25', 'SSE', 'M', 8500, 1500, NULL, 'F', 'Singapore', '1974', 'DPO', 'FT', 'BSc', 'Deputy Principal');

-- Insert data from the old table into staff_backup table
INSERT INTO staff_backup SELECT * FROM staff;

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

-- user role
INSERT INTO user_role (id, name) VALUES (1, 'USER');
INSERT INTO user_role (id, name) VALUES (2, 'ADMIN');

-- user account
INSERT INTO user_account (id, account_no, role, password) VALUES (1, 'S001', 2, '$2b$10$OWFU1rsz3qW5bHFSV3W83.bk4KFDg33LpmCRkawTYkTYxR3TFiAXS');
INSERT INTO user_account (id, account_no, role, password) VALUES (2, 'S002', 1, '$2b$10$OWFU1rsz3qW5bHFSV3W83.bk4KFDg33LpmCRkawTYkTYxR3TFiAXS');

