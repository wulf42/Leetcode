-- Write your PostgreSQL query statement below
SELECT 
to_char(trans_date, 'YYYY-MM') as month,
country,
count(state) as trans_count,
count(state) filter (WHERE state = 'approved') as approved_count,
sum(amount) as trans_total_amount,
COALESCE(SUM(amount) FILTER (WHERE state = 'approved'), 0) AS approved_total_amount
FROM 
Transactions
group by month, country;