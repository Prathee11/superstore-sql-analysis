SELECT
    sub_category,
    ROUND(SUM(profit),2) AS total_profit,
    RANK() OVER (ORDER BY SUM(profit) DESC) AS profit_rank
FROM vw_orders
GROUP BY sub_category;