SELECT TOP 5

    PR.Product_ID,

    PR.Product_Name,

    PR.Brand,

    COUNT(P.Purchase_ID) AS Purchase_Count,

    SUM(P.Purchase_Amount) AS Revenue

FROM PRODUCT PR

JOIN PURCHASE P
    ON PR.Product_ID = P.Product_ID

GROUP BY

    PR.Product_ID,

    PR.Product_Name,

    PR.Brand

ORDER BY
    Purchase_Count DESC;
GO