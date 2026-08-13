SELECT
    YEAR(Purchase_Date) AS Purchase_Year,

    MONTH(Purchase_Date) AS Purchase_Month,

    COUNT(Purchase_ID) AS Total_Purchases,

    SUM(Purchase_Amount) AS Total_Revenue

FROM PURCHASE

GROUP BY
    YEAR(Purchase_Date),
    MONTH(Purchase_Date)

ORDER BY
    Purchase_Year,
    Purchase_Month;
GO

/* This can be used to create a monthly sales line chart in Power BI, Tableau, or Excel.*/