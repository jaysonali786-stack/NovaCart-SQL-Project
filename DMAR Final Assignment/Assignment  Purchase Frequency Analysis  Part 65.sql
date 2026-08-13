SELECT
    Purchase_Frequency,

    COUNT(Purchase_ID) AS Total_Purchases,

    SUM(Purchase_Amount) AS Total_Spending,

    AVG(Purchase_Amount) AS Average_Spending

FROM PURCHASE

GROUP BY Purchase_Frequency

ORDER BY Total_Purchases DESC;
GO