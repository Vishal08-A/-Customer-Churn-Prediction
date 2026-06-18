-- Select Database
USE churn_project;

-- View Tables
SHOW TABLES;

-- Describe Table Structure
DESCRIBE dataset_churn;

-- Check for NULL values
SELECT
SUM(CASE WHEN customerID IS NULL THEN 1 ELSE 0 END) AS customerID_nulls,
SUM(CASE WHEN gender IS NULL THEN 1 ELSE 0 END) AS gender_nulls,
SUM(CASE WHEN Churn IS NULL THEN 1 ELSE 0 END) AS churn_nulls
FROM dataset_churn;

-- Check duplicate customer IDs
SELECT customerID, COUNT(*)
FROM dataset_churn
GROUP BY customerID
HAVING COUNT(*) > 1;

-- View complete dataset
SELECT *
FROM dataset_churn;