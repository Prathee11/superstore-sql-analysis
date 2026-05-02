CREATE OR ALTER VIEW vw_orders AS
SELECT
    row_id,
    order_id,
    CAST(order_date AS DATE) AS order_date,
    region,
    state_province AS state,
    city,
    category,
    sub_category,
    product_name,
    sales,
    profit,
    discount,
    quantity,
    CASE WHEN discount > 0.20 THEN 'High Risk' ELSE 'Safe' END AS discount_flag,
    CASE WHEN profit < 0 THEN 'Loss' ELSE 'Profit' END AS loss_flag
FROM orders_clean;