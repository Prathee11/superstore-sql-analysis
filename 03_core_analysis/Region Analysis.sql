SELECT
    region,
    ROUND(SUM(sales), 2) AS revenue,
    ROUND(SUM(profit), 2) AS profit,
    ROUND(SUM(profit) * 100.0 / NULLIF(SUM(sales),0), 2) AS margin_pct
FROM vw_orders
GROUP BY region;