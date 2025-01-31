SELECT 
    P.product_id,
    COALESCE(
        ROUND(
            SUM(P.price * US.Units) / NULLIF(SUM(US.Units), 0)::DECIMAL, 
            2
        ), 0
    ) AS average_price
FROM 
    Prices AS P
LEFT JOIN 
    UnitsSold AS US 
    ON P.product_id = US.product_id
    AND US.purchase_date BETWEEN P.start_date AND P.end_date  
GROUP BY 
    P.product_id;
