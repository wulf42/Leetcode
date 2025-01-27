-- Write your PostgreSQL query statement below
SELECT 
W1.id
FROM 
Weather W1
JOIN Weather W2 on W1.recordDate-1 = W2.recordDate 
WHERE W1.temperature > W2.temperature ;
