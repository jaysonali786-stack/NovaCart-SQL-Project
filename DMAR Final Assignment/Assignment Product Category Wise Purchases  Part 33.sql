SELECT
PC.Category_Name,
COUNT(*) AS Total_Purchases
FROM PRODUCT_CATEGORY PC
JOIN PRODUCT PR
ON PC.Category_ID=PR.Category_ID
JOIN PURCHASE P
ON PR.Product_ID=P.Product_ID
GROUP BY PC.Category_Name
ORDER BY Total_Purchases DESC;
GO