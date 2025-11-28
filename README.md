README.md - Student Learning Center Tutoring Database

Student Learning Center – Tutoring Database
Quarterly Database Project – Part 3
Fall 2025

Overview
This project implements a relational database for the Student Learning Center (SLC). It tracks Students, Tutors, Subjects, Tutoring Sessions, and Attendance. The database supports scheduling, attendance tracking, tutor workload analysis, and academic reporting.

Database Design
The project includes five entities:
1. Students
2. Tutors
3. Subjects
4. Sessions
5. Attendance (bridge table)

Relationships
- A Tutor teaches many Sessions
- A Subject is linked to many Sessions
- A Session can include many Students
- A Student can attend many Sessions
- The Attendance table implements the many-to-many relationship between Students and Sessions.

How to Run the Scripts
1. Run schema.sql  
Creates all tables:
SOURCE schema.sql;

2. Run sample_data.sql  
Loads CSV data:
SOURCE sample_data.sql;

3. Run queries.sql  
Executes query tests:
SOURCE queries.sql;

4. Run views.sql  
Creates useful reporting views:
SOURCE views.sql;

Key Queries and Their Purpose

1. Sessions with tutor and subject details
SELECT 
    s.Session_ID,
    t.Name AS Tutor,
    sub.Subject_Name,
    s.Session_Date,
    s.Session_Time,
    s.Location
FROM Sessions s
JOIN Tutors t ON s.Tutor_ID = t.Tutor_ID
JOIN Subjects sub ON s.Subject_ID = sub.Subject_ID;

2. Attendance count per session
SELECT 
    Session_ID,
    COUNT(*) AS Total_Attended
FROM Attendance
WHERE Status = 'Present'
GROUP BY Session_ID;

3. Tutor workload report
SELECT 
    t.Name,
    COUNT(s.Session_ID) AS Total_Sessions
FROM Tutors t
LEFT JOIN Sessions s ON t.Tutor_ID = s.Tutor_ID
GROUP BY t.Tutor_ID;

4. Student attendance history
SELECT 
    st.Student_Name,
    a.Session_ID,
    a.Status,
    a.Comments
FROM Students st
JOIN Attendance a ON st.Student_ID = a.Student_ID
ORDER BY st.Student_Name;

Views Included
Two views were created:
- Tutor_Workload
- Student_Attendance

Repository Structure
README.md
schema.sql
sample_data.sql
queries.sql
views.sql
csv/
   students_sample_v2.csv
   tutors_sample_v2.csv
   subjects_sample_v2.csv
   sessions_sample_v2.csv
   attendance_sample_v2.csv

Conclusion
This project demonstrates the design and implementation of a complete database supporting tutoring operations at the Student Learning Center. It includes a normalized schema, sample data files, SQL queries, and reusable views for reporting.

