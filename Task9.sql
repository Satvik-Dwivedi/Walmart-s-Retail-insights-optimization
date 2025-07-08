SELECT 
    Customer_ID,
    SUM(Total) AS Total_Sales
FROM walmart_sales
GROUP BY Customer_ID
ORDER BY Total_Sales DESC
LIMIT 5;
