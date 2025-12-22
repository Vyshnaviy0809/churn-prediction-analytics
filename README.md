# 📊 Customer Churn Prediction & Retention Analytics

An end-to-end **data analytics and machine learning project** focused on predicting customer churn, identifying high-risk segments, and quantifying revenue at risk to support proactive retention strategies.

This project demonstrates the full analytics lifecycle from raw data ingestion and SQL-based data engineering to machine learning modelling and executive-ready dashboarding.

---

## 🎯 Project Objective

- Predict customer churn using historical customer, service, and billing data  
- Identify **key churn drivers** (contract type, tenure, pricing, services)
- Segment customers by **churn risk bands**
- Quantify **revenue at risk** from high-risk churn segments
- Deliver actionable insights via an interactive Tableau dashboard

---

## 💡 Why This Project

I built this project to simulate how a data analyst would approach a real-world
customer retention problem end to end starting from messy raw data, validating
assumptions with SQL, applying predictive modelling, and finally translating results
into business-facing insights that decision-makers can act on.

---

## 🧰 Tools & Technologies

- **Python**: Pandas, NumPy, Scikit-learn, SQLAlchemy
- **SQL (MySQL)**: Data validation, cleaning, feature engineering
- **Machine Learning**: Logistic Regression, Random Forest
- **Visualization**: Tableau Public
- **Version Control**: Git & GitHub

---

## 📁 Project Structure

```text
churn-etl-project/
├── data/
│   └── telco_churn.csv
├── sql/
│   ├── churn_data_validation.sql
│   ├── churn_data_cleaning.sql
│   └── churn_feature_engineering.sql
├── notebooks/
│   ├── 01_load_csv_to_mysql.ipynb
│   └── 02_churn_modeling_pipeline.ipynb
├── output/
│   ├── predictions_for_powerbi.csv
│   ├── logreg_model.joblib
│   ├── rf_model.joblib
│   └── scaler.joblib
└── README.md
```

## 🧪 Data Understanding & Preparation (SQL)

### Raw Data Validation
- Verified row counts and unique customer IDs
- Checked missing values, blanks, and invalid formats
- Validated categorical domains (Contract, PaymentMethod, InternetService)
- Identified non-numeric and blank values in billing fields

### Data Cleaning
- Converted `TotalCharges` from text to numeric with NULL handling
- Normalised categorical fields (trimming, standardising values)
- Ensured correct data types for numerical columns
- Mapped churn labels (`Yes/No → 1/0`)

### Feature Engineering (SQL)
- Tenure buckets (0, 1–12, 13–24, 25–48, 49+)
- Contract duration in months
- Auto-pay indicator
- Service-level flags (streaming, security, support)
- Aggregated service counts:
- Total services
- Support services count
- Streaming services count

This produced a **clean, modelling-ready table** (`clean_telco_v3`).

---

## 🤖 Machine Learning Modelling (Python)

### Models Built
- **Logistic Regression**
- Interpretable baseline model
- Used feature scaling
- **Random Forest Classifier**
- Captures non-linear relationships
- Stronger predictive performance

### Evaluation Metrics
- Accuracy
- Precision
- Recall
- ROC-AUC
- Confusion Matrix
- ROC Curve comparison (LR vs RF)

### Key Results
- Random Forest achieved **ROC-AUC ≈ 0.85**
- Contract length, tenure, monthly charges, and auto-pay were top churn drivers
- Short-tenure, month-to-month customers showed highest churn probability

### Outputs Generated
- Trained models and scaler saved as `.joblib`
- Prediction dataset with churn probability and risk deciles exported for dashboarding

---

## 📊 Tableau Dashboard

### Dashboard Pages

1. **Overall Churn KPIs**
   - Churn rate
   - Customer count
   - Average churn risk

2. **Churn Risk Distribution**
   - Customers segmented into churn risk bands
   - Clear identification of high-risk population

3. **Revenue at Risk**
   - Monthly revenue exposure by churn risk band

4. **High-Risk Churn Drivers**
   - Churn risk by contract duration
   - Churn risk by tenure
   - Impact of pricing and services

5. **Key Insights & Recommendations**
   - Business-ready insights
   - Actionable retention strategies

### Design Principles
- Minimal visual noise
- Clear hierarchy and alignment
- Business-friendly language
- Consistent colour palette for risk interpretation

---

## 🔍 Key Business Insights

- Month-to-month contracts drive significantly higher churn risk
- Longer tenure strongly reduces churn probability
- Auto-pay customers are less likely to churn
- High monthly charges increase churn risk when combined with short tenure
- A small segment of customers accounts for a disproportionate share of revenue at risk

---

## 📈 End-to-End Data Flow

CSV → MySQL (SQL validation & feature engineering)
→ Python (ML modelling & evaluation)
→ Tableau (Predictive churn & revenue insights)

---

## 🔮 Future Improvements

- Incorporate time-based validation to better reflect real-world churn prediction
- Experiment with XGBoost or LightGBM for improved recall on high-risk churners
- Integrate cost-sensitive modelling to prioritise retention spend
- Automate the pipeline using scheduled jobs or orchestration tools

---

## 💼 Skills Demonstrated

- SQL data validation & transformation
- Feature engineering for predictive modelling
- Supervised machine learning (classification)
- Model evaluation & interpretability
- Business-focused dashboard design
- End-to-end analytical thinking

---

## 🚀 Outcome

This project showcases the ability to **bridge data engineering, machine learning, and business storytelling**, delivering insights that directly support customer retention and revenue protection strategies.


