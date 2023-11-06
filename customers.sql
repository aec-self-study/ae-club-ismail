SELECT 
customers.id as customer_id,
customers.name as name,
customers.email as email,
MIN(orders.created_at) as first_order_at,
SUM(orders.total) as number_of_orders
FROM `analytics-engineers-club.coffee_shop.customers` as customers
JOIN `analytics-engineers-club.coffee_shop.orders` as orders
ON customers.id = orders.customer_id
GROUP BY 
customer_id,
name,
email
ORDER BY first_order_at LIMIT 5