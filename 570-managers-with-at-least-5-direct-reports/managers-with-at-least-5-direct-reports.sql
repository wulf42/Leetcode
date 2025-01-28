-- Write your PostgreSQL query statement below
WITH TEMP AS (SELECT
E1.id, count(*) 
FROM
Employee as E1
JOIN
Employee AS E2 ON E1.id=E2.managerId 

group by E1.id
HAVING(count(*)>=5))
SELECT E.name 
FROM 
Employee as E
JOIN TEMP AS T ON T.id = E.id
;
