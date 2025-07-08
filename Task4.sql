WITH Stats AS (
    SELECT 
        Product_line,
        AVG(Total) AS Avg_Sales,
        STDDEV(Total) AS StdDev_Sales
    FROM walmart_sales
    GROUP BY Product_line
)
SELECT 
    ws.*,
    s.Avg_Sales,
    s.StdDev_Sales,
    CASE 
        WHEN ws.Total > s.Avg_Sales + 2 * s.StdDev_Sales THEN 'High Anomaly'
        WHEN ws.Total < s.Avg_Sales - 2 * s.StdDev_Sales THEN 'Low Anomaly'
        ELSE 'Normal'
    END AS Anomaly_Flag
FROM walmart_sales ws
JOIN Stats s ON ws.Product_line = s.Product_line;
