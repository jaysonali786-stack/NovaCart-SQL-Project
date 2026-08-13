SELECT
    Delivery_Preference,
    COUNT(*) AS Total_Orders
FROM PURCHASE
GROUP BY Delivery_Preference
ORDER BY Total_Orders DESC;