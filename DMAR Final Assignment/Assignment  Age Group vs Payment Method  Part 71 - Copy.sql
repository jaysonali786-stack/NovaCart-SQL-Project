SELECT
    CASE
        WHEN S.Age BETWEEN 16 AND 18 THEN '16-18'
        WHEN S.Age BETWEEN 19 AND 21 THEN '19-21'
        WHEN S.Age BETWEEN 22 AND 24 THEN '22-24'
        ELSE '25-35'
    END AS Age_Group,

    P.Payment_Method,

    COUNT(P.Purchase_ID) AS Total_Transactions

FROM STUDENT S

JOIN PURCHASE P
    ON S.Student_ID = P.Student_ID

GROUP BY
    CASE
        WHEN S.Age BETWEEN 16 AND 18 THEN '16-18'
        WHEN S.Age BETWEEN 19 AND 21 THEN '19-21'
        WHEN S.Age BETWEEN 22 AND 24 THEN '22-24'
        ELSE '25-35'
    END,

    P.Payment_Method

ORDER BY
    Age_Group,
    Total_Transactions DESC;
GO