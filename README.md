# Indian Startup Ecosystem Analytics (2018–2021)

## About the Dataset

**Source:** Kaggle

**Dataset:** Indian Startups - Funding Data

**Link:** https://www.kaggle.com/datasets/omkargowda/indian-startups-funding-data

---

## Objective

The goal of this project is to clean, standardize, and analyze Indian startup funding data collected between **2018 and 2021**.

The original dataset contained multiple yearly CSV files with inconsistent schemas, company names, currencies, missing values, and duplicate records. This project focuses on preparing a clean and consistent dataset using **Python (Pandas)** and performing business-focused exploratory analysis using **MySQL**.

The analysis answers questions such as:

- How has startup funding changed over the years?
- Which sectors attracted the highest investment?
- Which cities have the largest startup ecosystem?
- Which companies raised the highest funding?
- How does funding vary across different funding stages?
- Are there any outliers influencing the results?

---

## Tools Used

- Python
- Pandas
- NumPy
- MySQL
- Jupyter Notebook

---

## Project Workflow

```text
Raw CSV Files
      ↓
Schema Comparison
      ↓
Data Cleaning
      ↓
Standardization
      ↓
Handling Missing Values
      ↓
Removing Duplicates
      ↓
Feature Engineering
      ↓
Export Clean Dataset
      ↓
Import into MySQL
      ↓
SQL Analysis
      ↓
Insight Report
```

---

## Repository Structure

```text
indian-startup-ecosystem-analytics
│
├── images/
│   ├── 01_total_records.png
│   ├── ...
│   └── 25_nulls_and_blanks.png
│
├── Startup_Data_Cleaning_and_Preprocessing.ipynb
├── Startup_Data_Cleaning_and_Preprocessing.pdf
├── startup_cleaned.csv
├── startup_analysis_queries.sql
├── sql_analysis_insight_report.md
└── README.md
```

---

## Files Included

| File | Description |
|------|-------------|
| `Startup_Data_Cleaning_and_Preprocessing.ipynb` | Complete data cleaning and preprocessing workflow using Pandas |
| `Startup_Data_Cleaning_and_Preprocessing.pdf` | PDF version of the notebook |
| `startup_cleaned.csv` | Final cleaned dataset used for SQL analysis |
| `startup_analysis_queries.sql` | SQL queries used for exploratory analysis |
| `sql_analysis_insight_report.md` | Query outputs, screenshots, observations, and investigation process |
| `images/` | Screenshots of SQL query results used in the insight report |

---

## Current Status

- ✅ Data Cleaning & Preprocessing Completed
- ✅ Dataset Standardized
- ✅ Clean Dataset Generated
- ✅ SQL Exploratory Analysis Completed
- ✅ SQL Insight Report Completed

---

## Key Highlights

- Cleaned and standardized **2,796 funding records**
- Analyzed **2,112 unique startups**
- Explored funding trends across **2018–2021**
- Investigated funding by sector, city, company, and funding stage
- Identified major outliers (e.g., Alteria Capital and Reliance Retail Ventures Ltd.) and analyzed their impact on overall funding patterns

---

## Future Improvements

- Build an interactive Power BI dashboard
- Add visualizations using Python
- Perform statistical analysis on funding trends
