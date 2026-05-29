USE ClinicManagement;

-- =========================
-- View 1: Doctors with department name
-- =========================
CREATE OR REPLACE VIEW DoctorDetails AS
SELECT 
    d.Doctor_ID,
    d.Doctor_Name,
    d.Specialization,
    dep.Dept_Name
FROM Doctor d
JOIN Department dep
ON d.Dept_ID = dep.Dept_ID;

-- =========================
-- View 2: Patient Appointments Details
-- =========================
CREATE OR REPLACE VIEW PatientAppointments AS
SELECT 
    p.Patient_ID,
    p.Patient_Name,
    a.Appointment_ID,
    a.Appointment_Date,
    a.Start_Time,
    a.End_Time,
    a.Status,
    a.Diagnosis
FROM Patient p
JOIN Appointment a
ON p.Patient_ID = a.Patient_ID;

-- =========================
-- View 3: Clinic Info with Department
-- =========================
CREATE OR REPLACE VIEW ClinicDetails AS
SELECT 
    c.Clinic_ID,
    c.Clinic_Name,
    c.Address,
    dep.Dept_Name
FROM Clinic c
JOIN Department dep
ON c.Dept_ID = dep.Dept_ID;

-- =========================
-- View 4: Doctor Appointment Count
-- =========================
CREATE OR REPLACE VIEW DoctorAppointmentCount AS
SELECT 
    d.Doctor_ID,
    d.Doctor_Name,
    COUNT(a.Appointment_ID) AS Total_Appointments
FROM Doctor d
LEFT JOIN Appointment a
ON d.Doctor_ID = a.Doctor_ID
GROUP BY d.Doctor_ID, d.Doctor_Name;