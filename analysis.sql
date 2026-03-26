
---Top 10 Customers by Revenue
SELECT TOP 10 
    CustomerID,
    SUM(Revenue) AS TotalRevenue
FROM online_retail_clean
GROUP BY CustomerID;

---Monthly Revenue Trend
SELECT 
    FORMAT(InvoiceDate,'yyyy-MM') AS YearMonth,
	YEAR(InvoiceDate) * 100 + MONTH(InvoiceDate) AS SortKey,
    SUM(Revenue) AS MonthlyRevenue
FROM online_retail_clean
WHERE InvoiceDate IS NOT NULL
GROUP BY FORMAT(InvoiceDate,'yyyy-MM'),
YEAR(InvoiceDate) * 100 + MONTH(InvoiceDate);

---Top 10 Products by Revenue
SELECT TOP 10 
    Description,
    SUM(Revenue) AS TotalRevenue
FROM online_retail_clean
GROUP BY Description
ORDER BY TotalRevenue DESC;