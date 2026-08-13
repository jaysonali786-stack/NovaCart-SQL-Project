SELECT

    S.Student_ID,

    S.Student_Name,

    PR.Product_Name,

    PR.Brand,

    PR.Price,

    W.Date_Added

FROM WISHLIST W

JOIN STUDENT S
    ON W.Student_ID = S.Student_ID

JOIN PRODUCT PR
    ON W.Product_ID = PR.Product_ID

ORDER BY
    W.Date_Added DESC;
GO