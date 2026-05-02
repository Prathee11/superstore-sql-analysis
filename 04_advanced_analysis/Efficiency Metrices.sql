/* Average Order Value */
SELECT
    ROUND(SUM(sales) * 1.0 / COUNT(DISTINCT order_id), 2) AS avg_order_value
FROM vw_orders;

/* Profit per Order */
SELECT
    ROUND(SUM(profit) * 1.0 / COUNT(DISTINCT order_id), 2) AS profit_per_order
FROM vw_orders;