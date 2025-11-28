USE slc;

-- 1. List sessions with tutor and subject info
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

-- 2. Count students attending each session
SELECT 
    Session_ID,
    COUNT(*) AS Total_Attended
FROM Attendance
WHERE Status = 'Present'
GROUP BY Session_ID;

-- 3. Tutor workload report
SELECT 
    t.Name,
    COUNT(s.Session_ID) AS Total_Sessions
FROM Tutors t
LEFT JOIN Sessions s ON t.Tutor_ID = s.Tutor_ID
GROUP BY t.Tutor_ID;

-- 4. Student attendance history
SELECT 
    st.Student_Name,
    a.Session_ID,
    a.Status,
    a.Comments
FROM Students st
JOIN Attendance a ON st.Student_ID = a.Student_ID
ORDER BY st.Student_Name;
