SELECT

    COUNT(DISTINCT Student_ID) AS Total_Students,

    COUNT(*) AS Total_Purchases,

    SUM(Purchase_Amount) AS Total_Revenue,

    AVG(Purchase_Amount) AS Average_Order_Value,

    AVG(CAST(Rating AS DECIMAL(10,2))) AS Average_Rating

FROM VW_Customer_Purchase_Analysis;
GO