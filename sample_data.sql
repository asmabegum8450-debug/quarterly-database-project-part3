USE slc;

-- Load Students
LOAD DATA INFILE '/path/students_sample_v2.csv'
INTO TABLE Students
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
IGNORE 1 LINES;

-- Load Tutors
LOAD DATA INFILE '/path/tutors_sample_v2.csv'
INTO TABLE Tutors
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
IGNORE 1 LINES;

-- Load Subjects
LOAD DATA INFILE '/path/subjects_sample_v2.csv'
INTO TABLE Subjects
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
IGNORE 1 LINES;

-- Load Sessions
LOAD DATA INFILE '/path/sessions_sample_v2.csv'
INTO TABLE Sessions
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
IGNORE 1 LINES;

-- Load Attendance
LOAD DATA INFILE '/path/attendance_sample_v2.csv'
INTO TABLE Attendance
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
IGNORE 1 LINES;
