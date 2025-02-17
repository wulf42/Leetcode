-- Write your PostgreSQL query statement below
SELECT
    user_id,
    Concat(
        Upper(substring(name, 1, 1)),
        Lower(substring(name, 2, length(name)))
    ) as name  
FROM
    Users
ORDER BY
    user_id;