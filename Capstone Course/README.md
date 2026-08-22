![Python](https://img.shields.io/badge/Python-Modeling-blue?logo=python)
![Logistic%20Regression](https://img.shields.io/badge/Model-Logistic%20Regression-purple)
![AUC](https://img.shields.io/badge/Performance-AUC%200.81-success)
![Tableau](https://img.shields.io/badge/Tableau-Dashboard-orange?logo=tableau)
![Excel](https://img.shields.io/badge/Excel-Scenario%20Analysis-green?logo=microsoft-excel)

# Marketing Analytics Capstone Project

**Customer Churn Prediction & Strategic Retention Insights**

**Course:** Marketing Analytics Capstone

**Program:** Master of Science in Marketing Analytics

**Institution:** California State University, East Bay

---

## Project Overview

This capstone project focuses on identifying and predicting **customer churn** using an end-to-end marketing analytics workflow. The objective was to analyze customer data, uncover key churn drivers, and translate analytical findings into **actionable retention strategies** for marketing and business decision-makers.

The project integrates **data preparation, exploratory analysis, predictive modeling, and visualization** to support evidence-based marketing recommendations. All data used in this project is anonymized and intended for academic purposes only.

---

## Research Objectives

The primary goals of this project were to:

* Identify key customer characteristics and behaviors associated with churn
* Build and evaluate predictive models to estimate churn likelihood
* Assess model performance using appropriate evaluation metrics
* Translate analytical results into actionable marketing and retention insights

---

## Data Description

* **Dataset:** IBM Telco Customer Churn (via Kaggle)
* **Data Type:** Customer-level behavioral and account data
* **Observations:** 7,043 customer records
* **Variables:** Demographics, service usage, contract attributes, billing and payment behaviors
* **Target Variable:** Customer churn (binary outcome)

All brand identifiers and proprietary references have been removed or anonymized to ensure academic and ethical use.

---

## Methodology & Analysis

This project followed a structured end-to-end analytics framework:

### 1. Data Preparation

* Data cleaning and validation
* Handling missing values and categorical encoding
* Feature selection and transformation

### 2. Exploratory Data Analysis (EDA)

* Descriptive statistics and distribution analysis
* Churn rate comparison across customer segments
* Visualization of key relationships and patterns

### 3. Predictive Modeling

* Logistic regression modeling for churn prediction
* Model evaluation using ROC curves and AUC scores
* Interpretation of model coefficients to identify churn drivers

### 4. Visualization & Reporting

* Excel-based scenario analysis and pivot tables
* Interactive Tableau dashboard highlighting churn trends, risk segments, and predictors

---

## Tools & Technologies

* **Python:** Pandas, NumPy, Scikit-learn
* **Excel:** Pivot tables, scenario modeling
* **Tableau:** Interactive dashboard with churn risk matrix, progress bar charts, and demographic breakdowns

---

## Key Insights & Findings

* **Month-to-month + Fiber Optic** is the highest-risk segment — 55% churn rate, more than 18× higher than two-year contract customers
* Customers in their **first year** churn at 47% — early tenure is the strongest behavioral signal for retention intervention
* **Electronic check** users represent 57% of all churned customers, suggesting a billing friction point
* **Two-year contracts** reduce churn by up to 22× regardless of internet service type
* Logistic regression achieved an **AUC score of 0.81**, indicating strong predictive performance

---

## 📊 Live Dashboard

![Telecommunications Churn Dashboard](Tableau%20/dashboard-preview.png)

**[Telecommunications Churn Dashboard →](https://public.tableau.com/app/profile/cmunoz/viz/TelecommunicationChurnDashboard_17648219257350/Dashboard)**

Rebuilt interactive Tableau dashboard covering:

* **6 KPI tiles** — churn rate, revenue at risk, customers at risk, avg monthly charge, total charges, avg CLV
* **Churn Risk Matrix** — Contract Type × Internet Service heatmap identifying the highest-risk customer segments
* **Churn Rate by Contract Type & Tenure** — progress bar charts showing churn rate within each segment
* **Internet Service & Payment Method breakdowns** — identifying service and billing patterns among churned customers
* **Customer Demographics** — senior citizen, partner, dependents, and paperless billing rates among churned customers
* **Interactive filters** — Contract Type and Internet Service filters update all charts simultaneously

---

## Deliverables

| Deliverable | Description |
|---|---|
| Python notebooks | EDA and logistic regression modeling |
| Excel analysis files | Scenario modeling and pivot tables |
| Tableau dashboard | Interactive churn risk visualization |

---

## Marketing & Business Implications

Insights from this analysis can support:

* Targeted retention campaigns for month-to-month fiber optic subscribers — the highest-risk segment
* Incentive strategies to transition customers from month-to-month to annual or two-year contracts
* Personalized onboarding for early-tenure customers (0–12 months) to reduce first-year churn
* Payment method interventions for electronic check users to reduce billing-related churn
* Data-driven prioritization of retention spend toward highest-CLV at-risk customers

---

## Future Improvements

* Incorporating additional behavioral or interaction data
* Testing alternative machine learning models (e.g., random forest, gradient boosting)
* Implementing real-time churn scoring for campaign activation
* Evaluating uplift modeling for targeted retention offers

---

## 📌 Disclaimer

*This capstone project was completed for academic purposes as part of a graduate program.*
*All analyses, datasets, and insights are intended solely for educational use and do not represent real-world business outcomes.*

