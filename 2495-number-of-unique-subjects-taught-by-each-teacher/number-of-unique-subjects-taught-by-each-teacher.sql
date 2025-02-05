-- Write your PostgreSQL query statement below
SELECT 
teacher_id,
COUNT(DISTINCT subject_id) AS cnt 
FROM
Teacher
group by
teacher_id
order by
teacher_id asc