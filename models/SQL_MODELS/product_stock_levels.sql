CREATE VIEW inventory.product_stock_levels AS
SELECT
    p.product_id,
    p.product_name,
    sl.warehouse_id,
    sl.stock_quantity
FROM
    inventory.products p
JOIN
    inventory.stock_levels sl ON p.product_id = sl.product_id;
