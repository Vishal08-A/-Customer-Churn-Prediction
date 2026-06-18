# Customer Churn Prediction

## Project Overview

This project predicts whether a telecom customer is likely to churn (leave the company) using Machine Learning techniques.

## Dataset

* Telco Customer Churn Dataset
* 7043 customer records
* 30 features after preprocessing

## Technologies Used

* SQL (MySQL Workbench)2
* Python
* Pandas
* NumPy
* Matplotlib
* Seaborn
* Scikit-Learn
* SMOTE
* Joblib

## Project Workflow

SQL Data Analysis
↓
Data Cleaning
↓
Exploratory Data Analysis (EDA)
↓
Feature Engineering
↓
Binary Encoding
↓
One-Hot Encoding
↓
Train-Test Split
↓
Feature Scaling
↓
Model Building
↓
Model Evaluation
↓
SMOTE for Class Imbalance
↓
Final Model Selection

## Models Used

### Logistic Regression

* Accuracy: 82%
* Precision (Churn=1): 69%
* Recall (Churn=1): 60%

### Decision Tree

* Accuracy: 71%

### Random Forest

* Accuracy: 80%

### SMOTE + Logistic Regression

* Accuracy: 76%
* Recall (Churn=1): 83%

## Project Structure

Customer-Churn-Prediction/

├── data/

├── images/

├── models/

│ ├── logistic_model.pkl

│ └── scaler.pkl

├── notebook/

│ └── churn_analysis.ipynb

├── sql/

│ ├── data_cleaning.sql

│ └── churn_queries.sql

├── README.md

├── requirements.txt

└── .gitignore

## Key Insights

* Customers with month-to-month contracts are more likely to churn.
* High monthly charges increase churn probability.
* Longer tenure customers are less likely to churn.
* SMOTE improved recall for churn detection from 60% to 83%.

## Future Improvements

* Feature Importance Analysis
* ROC-AUC Curve
* Hyperparameter Tuning
* XGBoost
* Streamlit Deployment

## Author

Vishal Mani

Aspiring Data Analyst | Machine Learning Enthusiast
