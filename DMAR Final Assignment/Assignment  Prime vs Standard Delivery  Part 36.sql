SELECT
Delivery_Preference,
COUNT(*) AS Total
FROM PURCHASE
GROUP BY Delivery_Preference;
GO