USE walmart_db;

SELECT * FROM walmart;

SELECT COUNT(*) FROM walmart;

-- Counting the no.of branches
SELECT COUNT(DISTINCT branch) FROM walmart;

-- Find the minimum quantity sold
SELECT MIN(quantity) FROM walmart;

-- Find the maxium quantity sold
SELECT MAX(quantity) FROM walmart;

-- Counting  payment methods and number of transactions by payment method
SELECT 
    payment_method,
    COUNT(*) AS no_payments
FROM walmart
GROUP BY payment_method;

--  Business Problem Q1: Which Walmart branch generates the highest revenue?
SELECT 
    Branch,
    SUM(total) AS total_revenue,
    SUM(quantity) AS total_quantity_sold,
    COUNT(DISTINCT invoice_id) AS total_transactions,
    ROUND(AVG(total), 2) AS avg_transaction_value
FROM walmart
GROUP BY Branch
ORDER BY total_revenue DESC;

--  Business Problem Q2:Which product categories generate the most revenue?

SELECT 
    category,
    SUM(total) AS total_revenue,
    SUM(quantity) AS total_quantity_sold,
    COUNT(DISTINCT invoice_id) AS total_transactions,
    ROUND(AVG(unit_price), 2) AS avg_unit_price
FROM walmart
GROUP BY category
ORDER BY total_revenue DESC;


--  Business Problem Q3:Which city has the strongest sales performance?
SELECT 
    City,
    SUM(total) AS total_revenue,
    SUM(quantity) AS total_quantity_sold,
    COUNT(DISTINCT invoice_id) AS total_transactions,
    ROUND(AVG(rating), 2) AS avg_customer_rating
FROM walmart
GROUP BY City
ORDER BY total_revenue DESC;


--  Business Problem Q4:What are Walmart's monthly sales trends?
SELECT 
    YEAR(date) AS sales_year,
    MONTH(date) AS sales_month,
    SUM(total) AS total_revenue,
    SUM(quantity) AS total_quantity_sold,
    COUNT(DISTINCT invoice_id) AS total_transactions
FROM walmart
GROUP BY YEAR(date), MONTH(date)
ORDER BY sales_year, sales_month;


--  Business Problem Q5:Which payment method do Walmart customers prefer?
SELECT 
    payment_method,
    COUNT(DISTINCT invoice_id) AS total_transactions,
    SUM(total) AS total_revenue,
    SUM(quantity) AS total_quantity_sold,
    ROUND(AVG(total), 2) AS avg_transaction_value
FROM walmart
GROUP BY payment_method
ORDER BY total_transactions DESC;

--  Business Problem Q6:Which categories have high sales but low profit margins?
SELECT 
    category,
    SUM(total) AS total_revenue,
    SUM(quantity) AS total_quantity_sold,
    ROUND(AVG(profit_margin), 2) AS avg_profit_margin
FROM walmart
GROUP BY category
ORDER BY total_revenue DESC;


--  Business Problem Q7:What are Walmart's peak shopping hours?
SELECT 
    HOUR(time) AS sales_hour,
    COUNT(DISTINCT invoice_id) AS total_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(total) AS total_revenue
FROM walmart
GROUP BY HOUR(time)
ORDER BY total_revenue DESC;


--  Business Problem Q8:Does customer rating relate to sales?
SELECT 
    rating,
    COUNT(DISTINCT invoice_id) AS total_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(total) AS total_revenue,
    ROUND(AVG(total), 2) AS avg_transaction_value
FROM walmart
GROUP BY rating
ORDER BY rating;


--  Business Problem Q9:What are the top 3 product categories in each Walmart branch?
WITH category_sales AS (
    SELECT 
        Branch,
        category,
        SUM(total) AS total_revenue
    FROM walmart
    GROUP BY Branch, category
),
ranked_categories AS (
    SELECT 
        Branch,
        category,
        total_revenue,
        RANK() OVER (
            PARTITION BY Branch
            ORDER BY total_revenue DESC
        ) AS category_rank
    FROM category_sales
)
SELECT 
    Branch,
    category,
    total_revenue,
    category_rank
FROM ranked_categories
WHERE category_rank <= 3
ORDER BY Branch, category_rank;

--  Business Problem Q10:Which branches are underperforming?
WITH branch_sales AS (
    SELECT 
        Branch,
        SUM(total) AS total_revenue,
        SUM(quantity) AS total_quantity_sold,
        ROUND(AVG(profit_margin), 2) AS avg_profit_margin
    FROM walmart
    GROUP BY Branch
)
SELECT 
    Branch,
    total_revenue,
    total_quantity_sold,
    avg_profit_margin
FROM branch_sales
WHERE total_revenue < (
    SELECT AVG(total_revenue)
    FROM branch_sales
)
ORDER BY total_revenue;
