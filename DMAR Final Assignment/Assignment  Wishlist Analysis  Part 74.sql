SELECT
    PR.Product_Name,

    PR.Brand,

    COUNT(W.Wishlist_ID) AS Wishlist_Count

FROM WISHLIST W

JOIN PRODUCT PR
    ON W.Product_ID = PR.Product_ID

GROUP BY
    PR.Product_Name,
    PR.Brand

ORDER BY Wishlist_Count DESC;
GO