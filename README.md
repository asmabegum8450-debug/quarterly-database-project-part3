# Student Learning Center – Tutoring Database  
Quarterly Database Project – Part 3  
Fall 2025

## Overview
This project implements a relational database for the Student Learning Center (SLC).  
It tracks:

- Students
- Tutors
- Subjects
- Tutoring Sessions
- Attendance per session

The system supports reporting, scheduling, tutor workload analysis, and tracking student participation.

---

## Database Design
The project uses five entities:

1. **Students**
2. **Tutors**
3. **Subjects**
4. **Sessions**
5. **Attendance** (bridge table)

### Relationship Overview
- A Tutor teaches many Sessions  
- A Subject belongs to many Sessions  
- A Session can have many Students  
- A Student can attend many Sessions  

### Many-to-Many
Student ↔ Session is handled by **Attendance**.

---

##  How to Run the Scripts

### **1. Run schema.sql**
Creates all tables:
```sql
SOURCE schema.sql;
