-- Join relevant tables to find the category-wise distribution of pizzas.


SELECT 
    category, COUNT(name) AS total_pizzas
FROM
    pizza_types
GROUP BY category;