SELECT TOP 1

S.Student_Name,

SUM(P.Purchase_Amount) AS Total_Spending

FROM STUDENT S

JOIN PURCHASE P

ON S.Student_ID=P.Student_ID

GROUP BY S.Student_Name

ORDER BY Total_Spending DESC;

GO