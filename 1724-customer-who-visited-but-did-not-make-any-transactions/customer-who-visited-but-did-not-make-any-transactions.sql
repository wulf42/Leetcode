-- Write your PostgreSQL query statement below
SELECT
Visits.customer_id,  COUNT(*) AS count_no_trans
FROM
Visits
LEFT JOIN Transactions as T on Visits.visit_id= T.visit_id
WHERE 
T.transaction_id IS null   
GROUP BY Visits.customer_id;