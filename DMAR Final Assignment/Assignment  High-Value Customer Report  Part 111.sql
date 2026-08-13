SELECT

    S.Student_ID,

    S.Student_Name,

    S.Age,

    S.City,

    SUM(P.Purchase_Amount) AS Total_Spending

FROM STUDENT S

JOIN PURCHASE P
    ON S.Student_ID = P.Student_ID

GROUP BY

    S.Student_ID,

    S.Student_Name,

    S.Age,

    S.City

HAVING SUM(P.Purchase_Amount) >= 3000

ORDER BY
    Total_Spending DESC;
GO