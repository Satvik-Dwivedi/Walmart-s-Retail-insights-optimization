WITH RankedPurchases AS (
  SELECT Customer_ID,Date,
         LEAD(Date) OVER (PARTITION BY Customer_ID ORDER BY Date) AS next_purchase_date
  FROM walmart_sales
)
SELECT DISTINCT Customer_ID
FROM RankedPurchases
WHERE next_purchase_date IS NOT NULL
  AND DATEDIFF(next_purchase_date, Date) <= 30;
