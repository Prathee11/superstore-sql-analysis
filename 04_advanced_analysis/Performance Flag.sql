SELECT
    region,
    sub_category,
    ROUND(SUM(profit),2) AS total_profit,
    CASE 
        WHEN SUM(profit) < 0 THEN 'Critical'
        WHEN SUM(profit) < 500 THEN 'Low'
        ELSE 'Healthy'
    END AS performance_flag
FROM vw_orders
GROUP BY region, sub_category;