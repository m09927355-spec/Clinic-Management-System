USE ClinicManagement;

-- =========================
-- BASIC SELECT QUERIES
-- =========================

-- Get all doctors
SELECT * FROM Doctor;

-- Get all patients
SELECT * FROM Patient;

-- Get all departments
SELECT * FROM Department;

-- Get all appointments
SELECT * FROM Appointment;


-- =========================
-- JOIN QUERIES
-- =========================

-- Doctors with their departments
SELECT 
    d.Doctor_Name,
    dep.Dept_Name
FROM Doctor d
JOIN Department dep
ON d.Dept_ID = dep.Dept_ID;


-- Patients with their appointments
SELECT 
    p.Patient_Name,
    a.Appointment_Date,
    a.Start_Time,
    a.End_Time,
    a.Diagnosis
FROM Patient p
JOIN Appointment a
ON p.Patient_ID = a.Patient_ID;


-- Doctors with their appointments
SELECT 
    d.Doctor_Name,
    a.Appointment_Date,
    a.Start_Time,
    a.End_Time,
    a.Status
FROM Doctor d
JOIN Appointment a
ON d.Doctor_ID = a.Doctor_ID;


-- =========================
-- GROUP BY QUERIES
-- =========================

-- Number of appointments per doctor
SELECT 
    d.Doctor_Name,
    COUNT(a.Appointment_ID) AS Total_Appointments
FROM Doctor d
JOIN Appointment a
ON d.Doctor_ID = a.Doctor_ID
GROUP BY d.Doctor_Name;


-- Number of appointments per patient
SELECT 
    p.Patient_Name,
    COUNT(a.Appointment_ID) AS Total_Appointments
FROM Patient p
JOIN Appointment a
ON p.Patient_ID = a.Patient_ID
GROUP BY p.Patient_Name;


-- =========================
-- AGGREGATE FUNCTIONS
-- =========================

-- Total payment per patient
SELECT 
    Patient_ID,
    SUM(Cost) AS Total_Paid
FROM Appointment
GROUP BY Patient_ID;


-- Total clinic revenue
SELECT 
    SUM(Cost) AS Total_Revenue
FROM Appointment;


-- =========================
-- FILTER QUERIES
-- =========================

-- Patients with specific diagnosis
SELECT Patient_Name
FROM Patient p
JOIN Appointment a
ON p.Patient_ID = a.Patient_ID
WHERE Diagnosis = 'Fatty Liver';


-- Only scheduled appointments
SELECT *
FROM Appointment
WHERE Status = 'Scheduled';