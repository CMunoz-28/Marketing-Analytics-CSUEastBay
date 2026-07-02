![Conjoint](https://img.shields.io/badge/Method-Conjoint%20Analysis-purple)
![Market%20Research](https://img.shields.io/badge/Market-Research-blue)
![Python](https://img.shields.io/badge/Python-Analysis-blue?logo=python)
![Excel](https://img.shields.io/badge/Excel-Insights-green?logo=microsoft-excel)

# New Venture Marketing – Conjoint Analysis Project

**Course:** New Venture Marketing

**Program:** Master of Science in Marketing Analytics

**Institution:** California State University, East Bay

---

## Project Overview

This project applies **consumer survey analysis** to support **new venture decision-making** for **Needly.AI**, a hypothetical AI-driven smart subscription service for household essentials. The objective was to evaluate consumer adoption intent, feature preferences, and hesitation factors across different shopper segments, and to translate those findings into product and marketing recommendations.

The analysis demonstrates how **data-driven insights** can inform early-stage product design, pricing considerations, and positioning strategies for a new venture.

---

## Research Objectives

* Identify the relative importance of product attributes
* Estimate customer utility for different attribute levels
* Evaluate preferred product configurations
* Translate analytical findings into actionable venture insights

---

## Project Architecture

```
New Venture Marketing/
├── Data/
│   ├── raw.xlsx              # Original conjoint survey data
│   └── processed.xlsx        # Cleaned and transformed dataset
│
├── Notebooks/
│   └── conjoint_analysis.ipynb
│
├── Outputs/
│   └── Findings.xlsx         # Summary tables and results
│
└── README.md
```

---

## Data Description

* **Data Type:** Conjoint survey data
* **Raw Data:** Original survey responses prior to cleaning
* **Processed Data:** Prepared dataset used for modeling and analysis
* **Outputs:** Aggregated findings and analytical summaries

All data has been anonymized and is used strictly for academic purposes.

---

## Methodology & Analysis

The analysis followed a structured conjoint workflow:

1. **Data Preparation**

   * Data cleaning and validation
   * Encoding of attributes and levels

2. **Conjoint Analysis**

   * Estimation of part-worth utilities
   * Calculation of attribute importance scores

3. **Result Interpretation**

   * Identification of high-value feature combinations
   * Evaluation of trade-offs between attributes

4. **Reporting**

   * Export of summarized findings and tables for decision-making

---

## Tools & Technologies

* **Python:** Pandas, NumPy
* **Jupyter Notebook:** Analytical workflow and modeling
* **Excel:** Data preparation and output reporting

---

## Key Insights & Findings

Analysis was conducted on **Needly.AI**, a hypothetical AI-driven smart subscription service for household essentials, using **37 survey respondents**.

* **Overall interest was positive:** mean likelihood to use = **3.49/5**, likelihood to recommend = **3.46/5**
* **Daily shoppers showed strongest adoption intent** (likelihood to use = **4.5/5**), making them the primary target segment
* **Top appealing features:** product recommendations and automated order bundles dominated across most shopper segments
* **#1 adoption barrier:** subscription cost, cited across all occupation and frequency groups; data & privacy concerns were the second most common hesitation (~43% of occasional shoppers)
* **AI perception:** majority of frequent shoppers found AI-driven restocking predictions useful; skepticism was concentrated among infrequent shoppers
* **Recommended go-to-market:** tiered/freemium pricing model + transparent data privacy messaging to address the two dominant barriers

(See `Outputs/Findings.xlsx` for detailed results.)

---

## Venture Implications

Insights from this analysis can be used to:

* Inform product feature prioritization
* Support pricing and bundling decisions
* Guide go-to-market and positioning strategies
* Strengthen venture pitches with empirical evidence

---

## 📌 Disclaimer

*This project was completed for academic purposes as part of graduate coursework.*
*All analyses, datasets, and findings are for educational use only and do not represent real-world business outcomes.*
