/* Your project specifically focuses on different student age groups, so this is one of the most important queries.
We will divide students into:

16–18
19–21
22–24
25–35 */

SELECT
    CASE
        WHEN S.Age BETWEEN 16 AND 18 THEN '16-18'
        WHEN S.Age BETWEEN 19 AND 21 THEN '19-21'
        WHEN S.Age BETWEEN 22 AND 24 THEN '22-24'
        ELSE '25-35'
    END AS Age_Group,

    COUNT(P.Purchase_ID) AS Total_Purchases,

    SUM(P.Purchase_Amount) AS Total_Spending,

    AVG(P.Purchase_Amount) AS Average_Spending

FROM STUDENT S

LEFT JOIN PURCHASE P
    ON S.Student_ID = P.Student_ID

GROUP BY
    CASE
        WHEN S.Age BETWEEN 16 AND 18 THEN '16-18'
        WHEN S.Age BETWEEN 19 AND 21 THEN '19-21'
        WHEN S.Age BETWEEN 22 AND 24 THEN '22-24'
        ELSE '25-35'
    END

ORDER BY Age_Group;
GO