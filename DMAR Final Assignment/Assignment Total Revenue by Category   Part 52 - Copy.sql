SELECT

PC.Category_Name,

SUM(P.Purchase_Amount) AS Revenue

FROM PRODUCT_CATEGORY PC

JOIN PRODUCT PR

ON PC.Category_ID=PR.Category_ID

JOIN PURCHASE P

ON PR.Product_ID=P.Product_ID

GROUP BY PC.Category_Name

ORDER BY Revenue DESC;

GO