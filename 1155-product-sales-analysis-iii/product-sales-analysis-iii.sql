-- Write your PostgreSQL query statement below
WITH min_year AS (
    SELECT 
        product_id,
        MIN(year) AS first_year
    FROM Sales
    GROUP BY product_id
)
SELECT 
    S.product_id,
    M.first_year,
    S.quantity,
    S.price
FROM 
    Sales AS S
JOIN 
    min_year AS M
ON 
    S.product_id = M.product_id AND S.year = M.first_year;