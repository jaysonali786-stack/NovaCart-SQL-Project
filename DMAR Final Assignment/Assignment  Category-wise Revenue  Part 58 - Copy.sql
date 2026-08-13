SELECT
    PC.Category_Name,
    SUM(PU.Purchase_Amount) AS Total_Revenue

FROM PRODUCT_CATEGORY PC

JOIN PRODUCT PR
    ON PC.Category_ID = PR.Category_ID

JOIN PURCHASE PU
    ON PR.Product_ID = PU.Product_ID

GROUP BY PC.Category_Name

ORDER BY Total_Revenue DESC;
GO