SELECT 
    Branch,
    DATE_FORMAT(Date, '%Y-%m') AS Month,
    SUM(Total) AS Total_Sales,
    (SUM(Total) - LAG(SUM(Total)) OVER (PARTITION BY Branch ORDER BY DATE_FORMAT(Date, '%Y-%m'))) /
    LAG(SUM(Total)) OVER (PARTITION BY Branch ORDER BY DATE_FORMAT(Date, '%Y-%m')) * 100 AS Growth_Rate
FROM walmart_sales
GROUP BY Branch, Month
ORDER BY Branch, Month;