SELECT

    S.Student_ID,

    S.Student_Name,

    SUM(P.Purchase_Amount) AS Total_Spending,

    COUNT(P.Purchase_ID) AS Total_Orders,

    CASE

        WHEN SUM(P.Purchase_Amount) >= 3000
            THEN 'High Value'

        WHEN SUM(P.Purchase_Amount) >= 1500
            THEN 'Medium Value'

        ELSE 'Low Value'

    END AS Customer_Segment

FROM STUDENT S

JOIN PURCHASE P
    ON S.Student_ID = P.Student_ID

GROUP BY

    S.Student_ID,

    S.Student_Name

ORDER BY
    Total_Spending DESC;
GO