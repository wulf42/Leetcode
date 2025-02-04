-- Write your PostgreSQL query statement below
WITH FirstOrders AS (
  SELECT 
    customer_id,
    min(order_date) AS order_date,
    min(customer_pref_delivery_date) AS customer_pref_delivery_date
  FROM 
  Delivery
  GROUP BY 
  customer_id
)
SELECT 
ROUND(
COUNT ( * ) FILTER (WHERE order_date=customer_pref_delivery_date ) *100.0
/ COUNT (*) 
,2)
as immediate_percentage 
FROM
FirstOrders;