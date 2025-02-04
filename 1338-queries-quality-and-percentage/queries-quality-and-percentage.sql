-- Write your PostgreSQL query statement below
SELECT
query_name, 
round(
sum(rating::numeric/position) 
/
count(rating)
,2) as quality,

round(
count(rating) FILTER (WHERE rating < 3)::numeric 
/ 
count(rating)*100
,2) as poor_query_percentage

FROM
Queries
group by 
query_name;