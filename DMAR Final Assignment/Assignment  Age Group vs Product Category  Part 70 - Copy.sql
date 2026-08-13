SELECT
    CASE
        WHEN S.Age BETWEEN 16 AND 18 THEN '16-18'
        WHEN S.Age BETWEEN 19 AND 21 THEN '19-21'
        WHEN S.Age BETWEEN 22 AND 24 THEN '22-24'
        ELSE '25-35'
    END AS Age_Group,

    PC.Category_Name,

    COUNT(PU.Purchase_ID) AS Total_Purchases,

    SUM(PU.Purchase_Amount) AS Total_Spending

FROM STUDENT S

JOIN PURCHASE PU
    ON S.Student_ID = PU.Student_ID

JOIN PRODUCT PR
    ON PU.Product_ID = PR.Product_ID

JOIN PRODUCT_CATEGORY PC
    ON PR.Category_ID = PC.Category_ID

GROUP BY
    CASE
        WHEN S.Age BETWEEN 16 AND 18 THEN '16-18'
        WHEN S.Age BETWEEN 19 AND 21 THEN '19-21'
        WHEN S.Age BETWEEN 22 AND 24 THEN '22-24'
        ELSE '25-35'
    END,

    PC.Category_Name

ORDER BY
    Age_Group,
    Total_Purchases DESC;
GO