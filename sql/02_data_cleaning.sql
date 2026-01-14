DROP TABLE IF EXISTS clean_telco;

CREATE TABLE clean_telco AS
SELECT
  customerID,
  ...
  CASE WHEN TRIM(TotalCharges) = '' THEN NULL ELSE CAST(TotalCharges AS DECIMAL(10,2)) END AS TotalCharges,
  Churn
FROM raw_telco;

