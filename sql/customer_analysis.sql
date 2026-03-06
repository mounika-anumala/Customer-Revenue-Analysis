-- Customer Revenue Analysis SQL Queries

-- Query 1: Total Revenue by Year
SELECT strftime('%Y', "Order Date") AS Year, ROUND(SUM(Sales), 2) AS Total_Revenue FROM sales GROUP BY Year ORDER BY Year;

-- Query 2: Top 10 Customers by Revenue
SELECT "Customer Name", ROUND(SUM(Sales), 2) AS Total_Revenue FROM sales GROUP BY "Customer Name" ORDER BY Total_Revenue DESC LIMIT 10;

-- Query 3: Revenue by Region
SELECT Region, ROUND(SUM(Sales), 2) AS Total_Revenue FROM sales GROUP BY Region ORDER BY Total_Revenue DESC;

-- Query 4: Revenue by Category
SELECT Category, ROUND(SUM(Sales), 2) AS Total_Revenue FROM sales GROUP BY Category ORDER BY Total_Revenue DESC;

-- Query 5: Revenue by Customer Segment
SELECT Segment, ROUND(SUM(Sales), 2) AS Total_Revenue, COUNT(DISTINCT "Customer ID") AS Total_Customers FROM sales GROUP BY Segment ORDER BY Total_Revenue DESC;