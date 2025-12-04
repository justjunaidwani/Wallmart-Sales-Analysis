# Walmart Sales Analysis

This project analyzes Walmart sales data to better understand sales trends, customer behavior, and payment method performance.  
The goal is to move beyond basic summaries and use statistical testing to confirm whether observed differences are meaningful.

---

## What this project covers
- Sales analysis across categories, branches, and cities
- Yearly sales trends from 2019 to 2023
- Comparison of payment methods (Cash, Credit Card, E-wallet)
- Data visualization using Python
- Hypothesis testing to validate insights

---

## Dataset
The dataset contains transaction-level sales records, including:
- Date and time of purchase  
- Product category and quantity  
- Total sales value  
- Payment method  
- Customer rating  

Time range: **2019–2023**

> Note: Category data after 2019 appears partially incomplete and is addressed during analysis.

---

## Tools Used
- Python (Pandas, NumPy)
- SQL
- Matplotlib & Seaborn
- SciPy / Statsmodels (for hypothesis testing)

---

## Key Analysis
- Explored sales distribution and trends over time
- Compared performance across product categories, branches, and cities
- Analyzed customer payment behavior across frequency and transaction value
- Applied **one-way ANOVA** to test whether average sales differ by payment method
- Used **Tukey HSD** to identify which payment methods differ

---

## Main Insights
- **Overall sales decline sharply after 2019**, with no strong recovery in later years
- Post-2019 sales are increasingly concentrated in **Home and Lifestyle** and **Fashion Accessories**
- Several categories show **no recorded sales after 2019**, likely due to incomplete data coverage
- These category-level changes help explain the observed downward sales trend
- Cash transactions have the **lowest usage frequency** but the **highest average sales per transaction**
- Credit card and e-wallet transactions exhibit similar average purchasing behavior
- Differences in average transaction value by payment method are **statistically significant** (ANOVA)

---

## Project Structure

Walmart-Sales-Analysis/
├── walmart_sales_analysis.ipynb
├── walmart_sales_sql_queries.sql
├── README.md
├── requirements.txt
