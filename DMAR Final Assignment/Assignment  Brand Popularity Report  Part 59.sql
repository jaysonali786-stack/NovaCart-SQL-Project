SELECT
    PR.Brand,

    COUNT(PU.Purchase_ID) AS Total_Purchases,

    SUM(PU.Purchase_Amount) AS Total_Revenue

FROM PRODUCT PR

JOIN PURCHASE PU
    ON PR.Product_ID = PU.Product_ID

GROUP BY PR.Brand

ORDER BY Total_Purchases DESC;
GO

/*This identifies the brands most frequently purchased by students. */