SELECT DISTINCT

    S.Student_ID,

    S.Student_Name,

    C.Category_Name,

    PR.Product_Name,

    PR.Brand,

    PR.Price

FROM STUDENT S

JOIN PURCHASE P
    ON S.Student_ID = P.Student_ID

JOIN PRODUCT Purchased_Product
    ON P.Product_ID = Purchased_Product.Product_ID

JOIN PRODUCT_CATEGORY C
    ON Purchased_Product.Category_ID = C.Category_ID

JOIN PRODUCT PR
    ON PR.Category_ID = C.Category_ID

WHERE PR.Product_ID NOT IN
(
    SELECT Product_ID
    FROM PURCHASE
    WHERE Student_ID = S.Student_ID
)

ORDER BY
    S.Student_ID,
    C.Category_Name;
GO

/* Purpose

If a student previously purchased an Electronics product, the system can recommend other Electronics products that the student has not purchased.*/