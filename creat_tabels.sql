CREATE DATABASE IF NOT EXISTS ClinicManagement;
USE ClinicManagement;

CREATE TABLE IF NOT EXISTS Department (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Clinic (
    Clinic_ID INT PRIMARY KEY,
    Clinic_Name VARCHAR(100) NOT NULL,
    Address VARCHAR(200),
    Dept_ID INT,
    FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
);

CREATE TABLE IF NOT EXISTS Doctor (
    Doctor_ID INT PRIMARY KEY,
    Doctor_Name VARCHAR(100) NOT NULL,
    Phone_Number VARCHAR(20),
    Address VARCHAR(200),
    Specialization VARCHAR(100),
    Dept_ID INT,
    FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
);

CREATE TABLE IF NOT EXISTS Patient (
    Patient_ID INT PRIMARY KEY,
    Patient_Name VARCHAR(100) NOT NULL,
    Phone_Number VARCHAR(20),
    Address VARCHAR(200),
    Birth_Date DATE,
    Job VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Appointment (
    Appointment_ID INT PRIMARY KEY,
    Appointment_Date DATE,
    Start_Time TIME,
    End_Time TIME,
    Cost DECIMAL(10,2),
    Status VARCHAR(50),
    Diagnosis VARCHAR(200),
    Patient_ID INT,
    Doctor_ID INT,
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID)
);