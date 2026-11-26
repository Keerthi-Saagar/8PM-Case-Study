# The 8 PM Problem – Bengaluru Urban Data Analysis

## Project Overview
This project investigates how weather conditions and air-quality patterns are associated with the frequency and geographical distribution of municipal complaints across Bengaluru.

The study integrates air-quality observations, historical weather records and BBMP grievance data to identify urban stress patterns and support data-driven municipal decision-making.

## Research Question
**How are weather conditions and air-quality patterns associated with the frequency and geographical distribution of municipal complaints across Bengaluru?**

## Data Sources
- **Air Quality:** XKDR India Air Quality Database (CPCB CAAQM)
- **Weather:** Open-Meteo Historical Weather API
- **Municipal Complaints:** BBMP grievance datasets (2023 and 2024)
- **Station Metadata:** XKDR station metadata API

## Technologies Used
- Python
- Pandas and NumPy
- Matplotlib and Seaborn
- PySpark
- SQLite
- Google Colab

## Project Workflow
1. Data collection from APIs and CSV datasets.
2. JSON flattening and data type conversion.
3. Data cleaning and missing-value treatment.
4. Daily aggregation and dataset integration.
5. Exploratory data analysis and visualisation.
6. Relational SQL querying.
7. PySpark-based hourly aggregation and weather integration.
8. Findings and recommendations.

## Key Findings
- PM2.5 concentrations show elevated evening levels, particularly between 7 PM and 10 PM.
- Electrical complaints were the largest BBMP complaint category.
- Solid-waste and road-maintenance complaints were also prominent.
- Rainfall alone does not explain municipal complaint volumes.

## Proposed Solution
An integrated urban monitoring and decision-support dashboard combining weather, air-quality and municipal complaint information to support resource allocation and urban service planning.

## Repository Structure
- `Bengaluru_Urban_Stress_Analysis.ipynb` – Main analysis notebook.
- `report/` – Final project report.
- `sql/` – SQL schema and queries.
- `visualizations/` – Project charts.
- `data/` – Sample datasets and data documentation.

## Team
**DataByte**
- AN Keerthi Saagar
- Ganesh H Veerapur
- Shreyash B Patil

## Note
This is an academic data analysis and decision-support prototype. The proposed integrated dashboard has not been deployed in a municipal environment.
