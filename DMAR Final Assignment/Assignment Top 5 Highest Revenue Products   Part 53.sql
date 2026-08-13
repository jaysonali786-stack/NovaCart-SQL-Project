SELECT TOP 5

PR.Product_Name,

SUM(P.Purchase_Amount) AS Revenue

FROM PRODUCT PR

JOIN PURCHASE P

ON PR.Product_ID=P.Product_ID

GROUP BY PR.Product_Name

ORDER BY Revenue DESC;

GO