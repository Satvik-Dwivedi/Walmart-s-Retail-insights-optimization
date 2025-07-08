
SELECT 
    Branch, 
    Product_line, 
    SUM(Gross_Income) AS Total_Profit
FROM walmart_sales
GROUP BY Branch, Product_Line
ORDER BY Branch, Total_Profit DESC;
