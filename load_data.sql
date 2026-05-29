USE ClinicManagement;

-- =========================
-- CLEAN OLD DATA (Prevents duplicate errors)
-- =========================

DELETE FROM Appointment;
DELETE FROM Patient;
DELETE FROM Doctor;
DELETE FROM Clinic;
DELETE FROM Department;

-- =========================
-- INSERT Department
-- =========================
INSERT INTO Department (Dept_ID, Dept_Name) VALUES
(1,'Cardiology'),
(2,'Neurology'),
(3,'Dermatology'),
(4,'Orthopedics'),
(5,'Pediatrics'),
(6,'Oncology'),
(7,'ENT'),
(8,'Urology'),
(9,'Psychiatry'),
(10,'Internal Medicine');

-- =========================
-- INSERT Clinic
-- =========================
INSERT INTO Clinic (Clinic_ID, Clinic_Name, Address, Dept_ID) VALUES
(1,'Heart Clinic','Cairo',1),
(2,'Brain Clinic','Giza',2),
(3,'Skin Clinic','Alexandria',3),
(4,'Bone Clinic','Mansoura',4),
(5,'Kids Clinic','Tanta',5),
(6,'Cancer Clinic','Aswan',6),
(7,'ENT Clinic','Zagazig',7),
(8,'Urology Clinic','Luxor',8),
(9,'Mental Clinic','Sohag',9),
(10,'Internal Clinic','Fayoum',10);

-- =========================
-- INSERT Doctor
-- =========================
INSERT INTO Doctor (Doctor_ID, Doctor_Name, Phone_Number, Address, Specialization, Dept_ID) VALUES
(101,'Ahmed Ali','01011111111','Cairo','Cardiology',1),
(102,'Sara Mohamed','01022222222','Giza','Neurology',2),
(103,'Omar Hassan','01033333333','Alexandria','Dermatology',3),
(104,'Mona Adel','01044444444','Mansoura','Orthopedics',4),
(105,'Youssef Khaled','01055555555','Tanta','Pediatrics',5),
(106,'Nour Samy','01066666666','Aswan','Oncology',6),
(107,'Ali Ibrahim','01077777777','Zagazig','ENT',7),
(108,'Laila Fathy','01088888888','Luxor','Urology',8),
(109,'Karim Mostafa','01099999999','Sohag','Psychiatry',9),
(110,'Heba Salah','01012121212','Fayoum','Internal Medicine',10);

-- =========================
-- INSERT Patient
-- =========================
INSERT INTO Patient (Patient_ID, Patient_Name, Phone_Number, Address, Birth_Date, Job) VALUES
(201,'Mohamed Tarek','01111111111','Cairo','1999-05-10','Engineer'),
(202,'Aya Samir','01122222222','Giza','2000-07-15','Teacher'),
(203,'Khaled Mahmoud','01133333333','Alexandria','1995-03-20','Doctor'),
(204,'Salma Ahmed','01144444444','Mansoura','2001-11-01','Student'),
(205,'Mostafa Adel','01155555555','Tanta','1998-09-25','Accountant'),
(206,'Nadine Ali','01166666666','Aswan','1997-06-18','Pharmacist'),
(207,'Hassan Yasser','01177777777','Zagazig','1996-12-30','Lawyer'),
(208,'Mariam Fathy','01188888888','Luxor','2002-02-14','Designer'),
(209,'Adham Nabil','01199999999','Sohag','1994-08-08','Programmer'),
(210,'Farah Gamal','01110101010','Fayoum','2003-01-01','Student');

-- =========================
-- INSERT Appointment
-- =========================
INSERT INTO Appointment (Appointment_ID, Appointment_Date, Start_Time, End_Time, Cost, Status, Diagnosis, Patient_ID, Doctor_ID) VALUES
(301,'2026-06-01','10:00:00','10:30:00',300,'Scheduled','Heart Disease',201,101),
(302,'2026-06-02','11:00:00','11:30:00',250,'Completed','Migraine',202,102),
(303,'2026-06-03','12:00:00','12:30:00',200,'Scheduled','Skin Allergy',203,103),
(