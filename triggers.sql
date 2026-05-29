USE ClinicManagement;

DROP TRIGGER IF EXISTS Prevent_Overlapping_Appointments;

DELIMITER $$

CREATE TRIGGER Prevent_Overlapping_Appointments
BEFORE INSERT ON Appointment
FOR EACH ROW
BEGIN

    IF EXISTS (
        SELECT 1
        FROM Appointment
        WHERE Doctor_ID = NEW.Doctor_ID
          AND Appointment_Date = NEW.Appointment_Date
          AND NEW.Start_Time < End_Time
          AND NEW.End_Time > Start_Time
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: overlapping appointment';
    END IF;

END$$

DELIMITER ;department
