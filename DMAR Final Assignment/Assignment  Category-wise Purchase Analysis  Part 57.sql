SELECT
    PC.Category_Name,

    COUNT(PU.Purchase_ID) AS Total_Purchases,

    SUM(PU.Purchase_Amount) AS Total_Revenue,

    AVG(PU.Purchase_Amount) AS Average_Purchase

FROM PRODUCT_CATEGORY PC

JOIN PRODUCT PR
    ON PC.Category_ID = PR.Category_ID

JOIN PURCHASE PU
    ON PR.Product_ID = PU.Product_ID

GROUP BY PC.Category_Name

ORDER BY Total_Purchases DESC;
GO

/* Purpose

This identifies the most popular product category among students. */