-- Create Database

CREATE DATABASE Health_Care_Predictive_Model; 

USE Health_Care_Predictive_Model;

--- Import Dataset for our Database
SELECT * 
FROM [dbo].[Health_care_patient_Dataset];

SELECT * 
FROM [dbo].[predicted_output];

SELECT SERVERPROPERTY('MachineName') AS ServerName;