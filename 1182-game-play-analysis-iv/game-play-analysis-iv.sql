WITH FirstLogins AS (
    SELECT
        player_id,
        MIN(event_date) AS firstLogin
    FROM 
        Activity
    GROUP BY 
        player_id
)
SELECT 
    ROUND(
        COUNT(*) FILTER (
            WHERE FirstLogins.firstLogin + 1 = Activity.event_date
        ) * 1.0 / 
        (SELECT COUNT(*) FROM FirstLogins),
    2) AS fraction
FROM 
    FirstLogins
JOIN 
    Activity
ON 
    Activity.player_id = FirstLogins.player_id;
