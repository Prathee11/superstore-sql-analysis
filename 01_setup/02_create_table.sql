CREATE TABLE orders (
    order_id NVARCHAR(50),
    order_date DATE,
    region NVARCHAR(50),
    state NVARCHAR(100),
    city NVARCHAR(100),
    category NVARCHAR(50),
    sub_category NVARCHAR(50),
    sales FLOAT,
    profit FLOAT,
    discount FLOAT,
    quantity INT,
    profit_margin FLOAT,
    discount_flag NVARCHAR(20),
    loss_flag NVARCHAR(20)
);