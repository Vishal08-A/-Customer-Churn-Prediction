-- Churn Distribution
SELECT Churn,
       COUNT(*) AS customer_count
FROM dataset_churn
GROUP BY Churn;

-- Gender vs Churn
SELECT gender,
       Churn,
       COUNT(*) AS customer_count
FROM dataset_churn
GROUP BY gender, Churn;

-- Contract vs Churn
SELECT Contract,
       Churn,
       COUNT(*) AS customer_count
FROM dataset_churn
GROUP BY Contract, Churn;

-- Internet Service vs Churn
SELECT InternetService,
       Churn,
       COUNT(*) AS customer_count
FROM dataset_churn
GROUP BY InternetService, Churn;

-- Payment Method vs Churn
SELECT PaymentMethod,
       Churn,
       COUNT(*) AS customer_count
FROM dataset_churn
GROUP BY PaymentMethod, Churn;

-- Monthly Charges Analysis
SELECT
CASE
    WHEN MonthlyCharges < 35 THEN 'Low'
    WHEN MonthlyCharges BETWEEN 35 AND 70 THEN 'Medium'
    ELSE 'High'
END AS Charge_Category,
COUNT(*) AS Customer_Count
FROM dataset_churn
GROUP BY Charge_Category;

-- Tenure Analysis
SELECT
CASE
    WHEN tenure <= 12 THEN '0-12 Months'
    WHEN tenure <= 24 THEN '13-24 Months'
    WHEN tenure <= 48 THEN '25-48 Months'
    ELSE '48+ Months'
END AS Tenure_Group,
COUNT(*) AS Customer_Count
FROM dataset_churn
GROUP BY Tenure_Group;