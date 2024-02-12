
/*Having clause*/
CREATE TABLE orders (
    customer_id INT,
    total_amount DECIMAL(10, 2)
);

INSERT INTO orders (customer_id, total_amount) VALUES
(1, 500.00),
(2, 1200.00),
(3, 800.00),
(1, 700.00),
(2, 1500.00),
(3, 950.00);

select * from orders

select customer_id, sum(total_amount) as total_spent from orders
group by customer_id
having sum(total_amount) > 1000;
