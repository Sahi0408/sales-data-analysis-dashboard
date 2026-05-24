CREATE DATABASE SalesAnalysis;

USE SalesAnalysis;

CREATE TABLE sales (
    Order_ID INT,
    Product VARCHAR(50),
    Category VARCHAR(50),
    Region VARCHAR(50),
    Sales INT,
    Profit INT,
    Month VARCHAR(20)
);

SELECT * FROM sales;

-- Total Sales
SELECT SUM(Sales) AS Total_Sales FROM sales;

-- Total Profit
SELECT SUM(Profit) AS Total_Profit FROM sales;

-- Top Selling Products
SELECT Product, SUM(Sales) AS TotalSales
FROM sales
GROUP BY Product
ORDER BY TotalSales DESC;

-- Region Wise Sales
SELECT Region, SUM(Sales) AS RegionalSales
FROM sales
GROUP BY Region;

-- Monthly Sales Trend
SELECT Month, SUM(Sales) AS MonthlySales
FROM sales
GROUP BY Month;
