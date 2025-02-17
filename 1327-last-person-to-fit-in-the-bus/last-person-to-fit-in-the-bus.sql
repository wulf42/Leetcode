-- Write your PostgreSQL query statement below
WITH TotalWeight AS (
    SELECT
        person_id,
        person_name,
        weight,
        turn,
        SUM(weight) OVER (ORDER BY turn) AS totalSum
    FROM 
        Queue
)
SELECT 
    person_name
FROM
    TotalWeight
WHERE
    totalsum <=1000
ORDER BY
    turn desc
LIMIT 1