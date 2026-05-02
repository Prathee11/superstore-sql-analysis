SELECT
    sub_category,
    ROUND(SUM(sales),2)  AS revenue,
    ROUND(SUM(profit),2) AS profit
FROM vw_orders
GROUP BY sub_category
HAVING SUM(profit) < 0
ORDER BY profit;