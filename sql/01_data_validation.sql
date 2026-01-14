USE churn_db;

SHOW COLUMNS FROM raw_telco;
SELECT COUNT(*) FROM raw_telco;

-- missing value checks
SELECT
  SUM(CASE WHEN customerID IS NULL OR TRIM(customerID) = '' THEN 1 ELSE 0 END) AS customerID_missing,
  ...
FROM raw_telco;

-- distinct checks
SELECT DISTINCT Contract FROM raw_telco;
SELECT DISTINCT PaymentMethod FROM raw_telco;

-- churn analysis
SELECT Contract, COUNT(*), AVG(Churn='Yes') FROM raw_telco GROUP BY Contract;

