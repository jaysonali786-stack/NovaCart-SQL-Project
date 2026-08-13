SELECT
    Rating,

    COUNT(Review_ID) AS Number_of_Reviews

FROM REVIEW

GROUP BY Rating

ORDER BY Rating DESC;
GO

/* This shows how many customers gave 1-star, 2-star, 3-star, 4-star, and 5-star ratings. */