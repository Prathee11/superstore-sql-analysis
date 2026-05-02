SELECT
    sub_category,
    ROUND(SUM(sales),2)  AS revenue,
    ROUND(SUM(profit),2) AS profit,
    CASE
        WHEN SUM(sales) > 50000 AND SUM(profit) > 5000 THEN 'Star'
        WHEN SUM(sales) > 50000 AND SUM(profit) <= 0 THEN 'Hidden Leakage'
        WHEN SUM(sales) < 50000 AND SUM(profit) > 0 THEN 'Niche Opportunity'
        ELSE 'Drop Candidate'
    END AS segment
FROM vw_orders
GROUP BY sub_category
ORDER BY segment;