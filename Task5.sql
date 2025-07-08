SELECT 
    City, 
    Payment, 
    COUNT(*) AS Frequency
FROM walmart_sales
GROUP BY City, Payment
ORDER BY City, Frequency DESC;
