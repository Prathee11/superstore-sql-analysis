SELECT
    category,
    ROUND(SUM(sales),2) AS revenue,
    ROUND(SUM(sales) * 100.0 / SUM(SUM(sales)) OVER(), 2) AS contribution_pct
FROM vw_orders
GROUP BY category;