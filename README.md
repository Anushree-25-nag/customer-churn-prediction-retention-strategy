# customer-churn-prediction-retention-strategy
End-to-end customer churn analysis using SQL, Python, Machine Learning, and Power BI to identify churn drivers and develop retention strategies.
📊 Customer Churn Prediction & Retention Strategy
📌 Project Overview
Customer churn is one of the biggest challenges in subscription-based industries like telecom. Losing customers directly impacts recurring revenue and increases acquisition costs.

This project performs an end-to-end churn analysis using:

SQL for data exploration
Python for cleaning and modeling
Machine Learning for churn prediction
Power BI for interactive dashboarding
The goal is to identify high-risk customers and recommend actionable retention strategies.
🎯 Business Objective
Measure churn rate and revenue impact
Identify high-risk customer segments
Determine key churn drivers
Build a predictive churn model
Develop data-driven retention recommendations
🗂 Dataset Summary
7,043 customer records
33 original features
Customer demographics
Service subscriptions
Billing behavior
Churn indicators
Churn reasons
Target Variable:
text
churn_value (1 = churned, 0 = retained)
 Tools & Technologies
Tool	Purpose
PostgreSQL	SQL analysis
Python (Pandas, Seaborn)	Data cleaning & EDA
Scikit-Learn	Machine learning modeling
Power BI	Interactive dashboard
Joblib	Model saving
 Key Findings (SQL + EDA)
✅ Overall Churn Rate
~26.5% of customers churned.

✅ High-Risk Segments
Month-to-month contracts (42.7% churn)
Senior citizens (41.6% churn)
Electronic check payment users (45% churn)
Fiber optic customers (41.9% churn)
Early tenure customers (0–12 months)
✅ Service-Related Drivers
Customers without:
Tech support
Online security
Device protection
showed higher churn probability.
 Machine Learning Models
Two models were built and compared:

Logistic Regression (Selected Model)
Accuracy: 80%
Precision: 0.64
Recall: 0.57
F1 Score: 0.60
Random Forest
Accuracy: 79%
Precision: 0.62
Recall: 0.52
F1 Score: 0.57
✅ Logistic Regression was selected due to slightly better recall and interpretability.
Power BI Dashboard
The project includes a 3-page interactive dashboard:

📌 Executive Overview
Total Customers
Total Churned
Churn Rate
Revenue Lost
Churn by Contract
Churn by Internet Service
📌 Customer Segmentation
Churn by Payment Method
Churn by Senior Citizen
Churn by Tenure Group
Churn by Monthly Charge Group
📌 Service & Behavioral Drivers
Churn by Tech Support
Churn by Online Security
Churn by Device Protection
Top Churn Reasons
 Business Recommendations
Promote long-term contracts with incentives.
Improve onboarding for early-tenure customers.
Re-evaluate fiber pricing and service reliability.
Encourage auto-pay enrollment.
Bundle value-added services to increase customer stickiness.
Create targeted retention strategies for senior citizens.
Expected Business Impact
Reducing churn by even 5% could significantly increase monthly recurring revenue and improve long-term customer lifetime value.

If you’d like to discuss this project or collaborate, feel free to connect!
