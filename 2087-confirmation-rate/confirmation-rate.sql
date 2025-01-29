SELECT 
    S.user_id,
    ROUND(
        COALESCE(SUM(CASE WHEN C.action = 'confirmed' THEN 1 ELSE 0 END), 0) * 1.0 
        / 
        COALESCE(NULLIF(COUNT(C.action), 0), 1), 2) AS confirmation_rate
FROM 
    Signups S
LEFT JOIN 
    Confirmations C 
ON 
    S.user_id = C.user_id
GROUP BY 
    S.user_id;
