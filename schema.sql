CREATE DATABASE IF NOT EXISTS slc;
USE slc;

-- ============================
-- Students Table
-- ============================
CREATE TABLE Students (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE
);

-- ============================
-- Tutors Table
-- ============================
CREATE TABLE Tutors (
    Tutor_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Subject_Expertise VARCHAR(100)
);

-- ============================
-- Subjects Table
-- ============================
CREATE TABLE Subjects (
    Subject_ID INT PRIMARY KEY,
    Subject_Name VARCHAR(100) NOT NULL,
    Course_Code VARCHAR(20)
);

-- ============================
-- Sessions Table
-- ============================
CREATE TABLE Sessions (
    Session_ID INT PRIMARY KEY,
    Tutor_ID INT NOT NULL,
    Subject_ID INT NOT NULL,
    Session_Date DATE NOT NULL,
    Session_Time TIME NOT NULL,
    Location VARCHAR(100),

    FOREIGN KEY (Tutor_ID) REFERENCES Tutors(Tutor_ID),
    FOREIGN KEY (Subject_ID) REFERENCES Subjects(Subject_ID)
);

-- ============================
-- Attendance Table
-- ============================
CREATE TABLE Attendance (
    Attendance_ID INT PRIMARY KEY,
    Session_ID INT NOT NULL,
    Student_ID INT NOT NULL,
    Status VARCHAR(20) CHECK (Status IN ('Present','Absent')),
    Comments VARCHAR(255),

    FOREIGN KEY (Session_ID) REFERENCES Sessions(Session_ID),
    FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID)
);
