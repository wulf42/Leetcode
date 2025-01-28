-- Write your PostgreSQL query statement below
SELECT
E.name, B.bonus
FROM
Employee as E 
LEFT JOIN 
Bonus AS B ON E.empId = B.empId 
WHERE
B.bonus < 1000 or B.bonus is NULL;