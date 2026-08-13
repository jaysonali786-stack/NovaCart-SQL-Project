SELECT TOP 5

    PR.Product_Name,

    PR.Brand,

    COUNT(P.Purchase_ID) AS Total_Purchases,

    SUM(P.Purchase_Amount) AS Total_Revenue

FROM PRODUCT PR

JOIN PURCHASE P
    ON PR.Product_ID = P.Product_ID

GROUP BY
    PR.Product_Name,
    PR.Brand

ORDER BY Total_Purchases DESC;
GO