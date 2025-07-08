SELECT 
    Customer_ID,
    SUM(Total) AS Total_Spending,
    CASE 
        WHEN SUM(Total) >= 21000 THEN 'High'
        WHEN SUM(Total) BETWEEN 18000 AND 19999 THEN 'Medium'
        ELSE 'Low'
    END AS Spending_Tier
FROM walmart_sales
GROUP BY Customer_ID;
