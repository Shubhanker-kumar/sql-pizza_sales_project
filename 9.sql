-- Group the orders by date and calculate the average number of pizzas ordered per day.

SELECT 
    ROUND(AVG(quantity_per_day), 0) AS average_pizzas_per_day
FROM
    (SELECT 
        orders.date, SUM(order_details.quantity) AS quantity_per_day
    FROM
        orders
    JOIN order_details ON orders.order_id = order_details.order_id
    GROUP BY orders.date) AS daily_orders;