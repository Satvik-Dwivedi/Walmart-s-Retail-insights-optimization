SELECT 
    DATE_FORMAT(Date, '%Y-%m') AS Month,
    Gender,
    SUM(Total) AS Total_Sales
FROM walmart_sales
GROUP BY Month, Gender
ORDER BY Month, Gender;
