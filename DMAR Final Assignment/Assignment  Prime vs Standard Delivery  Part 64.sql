SELECT
    Delivery_Preference,

    COUNT(Purchase_ID) AS Total_Orders,

    SUM(Purchase_Amount) AS Total_Revenue,

    AVG(Purchase_Amount) AS Average_Order_Value

FROM PURCHASE

GROUP BY Delivery_Preference

ORDER BY Total_Orders DESC;
GO