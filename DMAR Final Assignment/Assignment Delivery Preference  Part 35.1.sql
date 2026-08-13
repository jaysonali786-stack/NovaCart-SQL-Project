SELECT

    Delivery_Preference,

    COUNT(Purchase_ID) AS Total_Orders,

    SUM(Purchase_Amount) AS Total_Revenue

FROM PURCHASE

GROUP BY
    Delivery_Preference

ORDER BY
    Total_Orders DESC;
GO