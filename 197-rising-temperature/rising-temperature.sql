-- Write your PostgreSQL query statement below
SELECT 
T1.id
FROM 
Weather T1, Weather T2
WHERE 
T1.recordDate-1 = T2.recordDate AND T1.temperature > T2.temperature ;
