-- Write your PostgreSQL query statement below
SELECT 
P.project_id, round(avg(E.experience_years),2) as average_years
FROM
Project AS P
JOIN 
Employee AS E
on E.employee_id=P.employee_id
group by P.project_id   
