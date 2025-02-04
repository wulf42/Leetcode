-- Write your PostgreSQL query statement below
SELECT
    R.contest_id,
    round((
    COUNT(R.user_id)::numeric 
    /
    ( SELECT COUNT(*) FROM Users )*100
    ),2)as  percentage 
    
FROM
Users AS U
JOIN
Register AS R
ON U.user_id=R.user_id
group by R.contest_id
order by percentage desc, R.contest_id asc
