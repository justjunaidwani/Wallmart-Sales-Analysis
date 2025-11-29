# 📊 Walmart Sales Data Analysis

## 🛒 Project Overview
This project performs an end-to-end analysis of Walmart sales data to uncover insights related to sales performance, customer behavior, payment methods, and time-based trends. The analysis combines SQL, Python, data visualization, and statistical hypothesis testing to move from descriptive insights to statistically validated conclusions.

---

## 🎯 Objectives
- Analyze sales and revenue trends from 2019 to 2023
- Compare performance across categories, branches, and cities
- Understand customer behavior and payment method preferences
- Apply hypothesis testing to validate business insights
- Visualize results using clear and interpretable charts

---

## 🧾 Dataset Description
The dataset consists of transactional sales data with the following key columns:

- `invoice_id` – Unique transaction ID  
- `date` – Transaction date  
- `time` – Transaction time  
- `branch` – Store branch  
- `city` – Store city  
- `category` – Product category  
- `quantity` – Quantity sold  
- `unit_price` – Price per unit  
- `total_sales` – Total transaction value  
- `profit_margin` – Profit margin per transaction  
- `payment_method` – Cash, Credit Card, Ewallet  
- `rating` – Customer rating  

**Time Period:** 2019 – 2023

---

## 🛠️ Tools & Technologies
- Python (Pandas, NumPy)
- SQL (CTEs, Window Functions, Aggregations)
- Matplotlib & Seaborn
- SciPy & Statsmodels (Hypothesis Testing)

---

## 🔍 Analysis Performed

### ✔ Exploratory Data Analysis
- Sales and transaction distributions
- Category, branch, and city-level performance
- Payment method usage patterns
- Customer rating analysis

### ✔ Time Series Analysis
- Year-wise total sales trends
- Category-wise performance over time
- Transaction volume trends

### ✔ SQL Analysis
- Revenue by branch and category
- Year-over-year sales growth
- Transaction counts by payment method
- Ranking of top-performing branches and categories

### ✔ Hypothesis Testing
**Example:** Impact of payment method on total sales

- **H₀:** Average total sales are equal across payment methods  
- **H₁:** At least one payment method has a different average total sales  

**Tests Used:**
- One-Way ANOVA

**Conclusion:**  
Cash payments have significantly higher average total sales compared to credit card and e-wallet payments, while no significant difference is observed between credit card and e-wallet transactions.

---

## 📊 Visualizations
- Bar and stacked bar charts
- Line charts for yearly trends
- Pie charts for category-wise analysis
- Annotated plots for clear interpretation

---

## 📌 Key Insights
- Cash transactions generate significantly higher average sales
- Sales trends vary across product categories over time
- Some branches consistently outperform others
- Credit card and e-wallet payment behaviors are statistically similar
- Customer ratings remain consistently high across categories

---

## 📂 Project Structure
Walmart-Sales-Analysis/
│
├── README.md
├── walmart_sales_analysis.ipynb
├── walmart_sales_sql_queries.sql
├── requirements.txt/
