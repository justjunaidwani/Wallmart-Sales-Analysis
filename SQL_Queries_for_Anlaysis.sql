
USE wallmart_db
 
SHOW TABLES;

SELECT * FROM wallmart_sales;





#                   ------------ BASic Analysis    -------------


************************************************************************************************************************

-- Payment Method types and number of transactions per Method type.

SELECT payment_method Payment_Method, count(*) Total_Tarnsactions FROM
wallmart_sales
GROUP BY
payment_method


-- Total Wallmarts in the DatASet.

SELECT count(distinct branch) AS Total_Wallmarts FROM wallmart_sales


-- Maximum Quantity Sold
SELECT max(quantity) AS Max_Sold FROM wallmart_sales

************************************************************************************************************************





#                  ----------  Advance Analysis  -----------


-----------------------------------------------------------------------------------------------------------------------------


-- Payment methods, Number of Transactions, and Quantity sold by each Payment Method

SELECT payment_method AS Payment_Method, count(*) AS Total_Transaction, sum(quantity) AS Quantity_Sold
FROM wallmart_sales
GROUP BY payment_method

-----------------------------------------------------------------------------------------------------------------------------


-- Highest-rated category in each branch, Display the branch, category, and avg rating

SELECT Branch, Category, Average_Rating, RANKing FROM 

(
	SELECT branch, category, round(avg(rating),2) AS Average_Rating,
	RANK() over(partition by branch order by avg(rating) desc) AS RANKing
	FROM wallmart_sales
	GROUP BY branch, category
    
) AS RANKing_Table

WHERE RANKing = 1


-----------------------------------------------------------------------------------------------------------------------------


-- Busiest day for each Branch bASed on the Number of Transactions

SELECT Branch, Days, Total_Transactions,RANKings
FROM
	(
		SELECT
			branch AS Branch,
			day(date) AS Days,
			count(*) AS Total_Transactions,
			RANK() over(partition by branch order by count(*) DESC) AS RANKings
		FROM wallmart_sales
		GROUP BY
		branch, Days
	) AS RANKing
WHERE RANKings = 1

#              --- Same query using CTE   ---

WITH RANKing_Column AS
(
SELECT
	branch AS Branch,
    day(date) AS Days,
    count(*) AS Total_Transactions,
    RANK() over(partition by branch order by count(*) DESC) AS RANKings
FROM wallmart_sales
GROUP BY
branch, Days
)
SELECT Branch, Days, Total_Transactions, RANKings
FROM RANKing_Column
WHERE RANKings = 1


-----------------------------------------------------------------------------------------------------------------------------


-- Average, Minimum, and Maximum Rating of Categories for each City

SELECT
	city AS City,
    category AS Category,
    ROUND(avg(rating),2) Average_Rating, min(rating) Minimum_Rating, max(rating) AS Maximum_Rating
FROM wallmart_sales
GROUP BY city, category
ORDER BY City, Maximum_Rating DESC


-----------------------------------------------------------------------------------------------------------------------------


-- Total Profit for each Category

SELECT
	category AS Category,
	round(sum((total_sales * profit_margin)),2) AS Total_Profit
FROM wallmart_sales
GROUP BY 
category
ORDER BY
Total_Profit DESC


-----------------------------------------------------------------------------------------------------------------------------


-- Most common Payment Method for each Branch

With RANKing_table AS
(
	SELECT 
    branch AS Branch, 
    payment_method AS Payment_Method,
    count(*) AS Total_Transactions,
	RANK() over(partition by branch order by count(*) desc) AS RANKings
	FROM wallmart_sales
	GROUP BY branch, payment_method
)
SELECT 
    Branch, 
    Payment_Method,
    Total_Transactions,
    RANKings
FROM RANKing_table
WHERE RANKings = 1;

-----------------------------------------------------------------------------------------------------------------------------


-- Categorise Sales into Morning, Afternoon, and Evening shifts.




