-- Add your sql here

Select  customers.customer_name AS 'Customer', 
PRINTF('$%.2f', SUM((subscriptions.subscription_length * subscriptions.price_per_month))) AS 'Amount Due'
FROM orders
JOIN customers
ON orders.customer_id = customers.customer_id
JOIN subscriptions
ON orders.subscription_id = subsciptions.subscription_id
WHERE order_status = 'unpaid' AND subscriptions.description = 'Fashion Magazine';
GROUP BY customers.customer_name;






