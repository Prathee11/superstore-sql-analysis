CREATE OR ALTER VIEW vw_region_summary AS
SELECT
    region,
    SUM(sales)  AS revenue,
    SUM(profit) AS profit,
    SUM(profit) * 100.0 / NULLIF(SUM(sales),0) AS margin_pct
FROM vw_orders
GROUP BY region;