SELECT

    PR.Product_Name,

    PR.Brand,

    COUNT(P.Purchase_ID) AS Purchase_Count

FROM PRODUCT PR

JOIN PURCHASE P
    ON PR.Product_ID = P.Product_ID

GROUP BY

    PR.Product_Name,

    PR.Brand

ORDER BY
    Purchase_Count DESC;
GO