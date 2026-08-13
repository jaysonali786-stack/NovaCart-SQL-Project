SELECT

    S.Student_ID,

    S.Student_Name,

    S.Age,

    CASE
        WHEN S.Age BETWEEN 16 AND 18 THEN '16-18'
        WHEN S.Age BETWEEN 19 AND 21 THEN '19-21'
        WHEN S.Age BETWEEN 22 AND 24 THEN '22-24'
        ELSE '25-35'
    END AS Age_Group,

    S.Gender,

    S.College,

    S.City,

    COUNT(P.Purchase_ID) AS Total_Purchases,

    SUM(P.Purchase_Amount) AS Total_Spending,

    AVG(P.Purchase_Amount) AS Average_Order_Value

FROM STUDENT S

LEFT JOIN PURCHASE P
    ON S.Student_ID = P.Student_ID

GROUP BY

    S.Student_ID,

    S.Student_Name,

    S.Age,

    S.Gender,

    S.College,

    S.City;
GO