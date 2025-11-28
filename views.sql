USE slc;

-- View 1: Tutor Workload Summary
CREATE OR REPLACE VIEW Tutor_Workload AS
SELECT 
    t.Tutor_ID,
    t.Name,
    COUNT(s.Session_ID) AS Total_Sessions
FROM Tutors t
LEFT JOIN Sessions s ON t.Tutor_ID = s.Tutor_ID
GROUP BY t.Tutor_ID;

-- View 2: Student Attendance Summary
CREATE OR REPLACE VIEW Student_Attendance AS
SELECT 
    st.Student_ID,
    st.Student_Name,
    SUM(a.Status = 'Present') AS Days_Present,
    SUM(a.Status = 'Absent') AS Days_Absent
FROM Students st
LEFT JOIN Attendance a ON st.Student_ID = a.Student_ID
GROUP BY st.Student_ID;
