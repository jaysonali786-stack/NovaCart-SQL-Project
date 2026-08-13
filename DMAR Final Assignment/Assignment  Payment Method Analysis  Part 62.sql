SELECT
    Payment_Method,

    COUNT(Purchase_ID) AS Total_Transactions,

    SUM(Purchase_Amount) AS Total_Spending,

    AVG(Purchase_Amount) AS Average_Transaction

FROM PURCHASE

GROUP BY Payment_Method

ORDER BY Total_Transactions DESC;
GO

/*This tells NovaCart which payment methods students prefer.*/