-- Write your PostgreSQL query statement below
WITH min_year AS (SELECT 
    product_id,
    min(year) AS first_year
FROM 
    Sales
GROUP BY 
    product_id)
SELECT 
    S.product_id,
    S.year as first_year,
    S.quantity,
    S.price 
FROM
    SALES as S
join 
    min_year as M
on 
    S.product_id = M.product_id AND M.first_year = S.year 
