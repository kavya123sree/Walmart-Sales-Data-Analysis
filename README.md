# Walmart Sales Data Analysis

## 📌 Project Overview

This project analyzes Walmart sales data using **Python, Pandas, and
MySQL** to identify sales trends, customer preferences, branch
performance, and product-category performance.

**Workflow:** Data Cleaning → Exploratory Data Analysis → MySQL Analysis
→ Business Insights

## 🎯 Objectives

-   Clean and prepare Walmart sales data using Python.
-   Explore the dataset using Pandas.
-   Import the cleaned data into MySQL.
-   Solve real-world business questions using SQL.
-   Identify sales trends, customer preferences, branch performance, and
    product performance.
-   Generate useful business insights from the data.

## 🛠️ Technologies Used

-   Python
-   Pandas
-   Jupyter Notebook
-   MySQL
-   MySQL Workbench
-   SQL
-   CSV

## 📂 Project Structure

``` text
Walmart-Sales-Data-Analysis/
│
├── Data/
│   ├── Walmart.csv
│   └── cleaned_data.csv
│
├── Python/
│   └── Python.ipynb
│
├── Reports/
│
├── SQL/
│   └── MySQL Queries.sql
│
├── README.md
└── libraries.txt
```

## 🔄 Project Workflow

### 1. Set Up the Environment

- **Tools Used:** Visual Studio Code (VS Code), Python, Jupyter Notebook, MySQL, and MySQL Workbench
- **Goal:** Create a structured workspace for data cleaning, analysis, and SQL-based business analysis.

### 2. Load Walmart Sales Data

- **Data Source:** Walmart sales dataset in CSV format.
- **Storage:** The original dataset is stored in the `Data/` folder.
- **Input File:** `Walmart.csv`

### 3. Data Cleaning Using Python

Python and Pandas were used to prepare the dataset for analysis.

- Check the dataset structure and data types.
- Check for duplicate records.
- Identify null/missing values.
- Clean the data.
- Create a new column required for analysis.
- Export the cleaned dataset.

The cleaned dataset is saved as: Data/cleaned_data.csv

### 4. Exploratory Data Analysis

The cleaned data was explored using Python and Pandas to understand:

Sales data
Product categories
Branches
Cities
Payment methods
Customer ratings
Quantity sold
Revenue
Profit margins
Date and time patterns

The Python analysis is available in:

Python/Python.ipynb


### 5. Import Cleaned Data into MySQL

The cleaned CSV file was imported into MySQL for business analysis.

Create the MySQL database and table.
Import the cleaned Walmart data.
Verify the imported records.
Use SQL queries to analyze the data.

### 6. Perform Business Analysis Using SQL

The following business problems were analyzed using MySQL:

1.  **Which Walmart branch generates the highest revenue?**
2.  **Which product categories generate the most revenue?**
3.  **Which city has the strongest sales performance?**
4.  **What are Walmart's monthly sales trends?**
5.  **Which payment method do Walmart customers prefer?**
6.  **Which categories have high sales but low profit margins?**
7.  **What are Walmart's peak shopping hours?**
8.  **Does customer rating relate to sales?**
9.  **What are the top 3 product categories in each Walmart branch?**
10. **Which branches are underperforming?**

The SQL queries are available in:

SQL/MySQL Queries.sql

### 7. Generate Business Insights

The SQL analysis helps identify:

The highest-revenue Walmart branches.
The best-performing product categories.
Strong-performing cities.
Monthly sales trends.
Customer payment preferences.
Categories with high sales but lower profit margins.
Peak shopping hours.
Sales patterns across customer ratings.
Top-performing categories within each branch.
Branches performing below the average revenue level.


## 🧠 SQL Concepts Used

-   `SELECT`
-   `WHERE`
-   `GROUP BY`
-   `HAVING`
-   `ORDER BY`
-   `SUM()`
-   `COUNT()`
-   `AVG()`
-   `ROUND()`
-   `YEAR()`
-   `MONTH()`
-   `HOUR()`
-   Subqueries
-   Common Table Expressions (CTEs)
-   Window functions
-   `RANK()`

## 📁 Dataset Columns

-   `invoice_id`
-   `Branch`
-   `City`
-   `category`
-   `unit_price`
-   `quantity`
-   `date`
-   `time`
-   `payment_method`
-   `rating`
-   `profit_margin`
-   `amount`

## 💡 Business Value

The analysis helps identify: - High-performing branches. - High-revenue
product categories. - Strong and weak markets. - Customer payment
preferences. - Monthly and hourly sales patterns. - Categories with
lower profitability. - Branches that may require additional attention.

## ▶️ How to Run

### Python

1.  Open `Python/Python.ipynb`.
2.  Install the libraries listed in `libraries.txt`.
3.  Run the notebook cells sequentially.
4.  Review the cleaning and analysis steps.

### MySQL

1.  Open MySQL Workbench.
2.  Import `Data/cleaned_data.csv`.
3.  Create the required table.
4.  Open `SQL/MySQL Queries.sql`.
5.  Run the SQL queries to reproduce the analysis.

## 👩‍💻 Author

**Kavya Sree**

A practical data analysis project using Python, Pandas, SQL, and MySQL.
