

	CREATE TABLE sales (
    product_id INT,
    category VARCHAR(50),
    quantity INT
);
INSERT INTO sales (product_id, category, quantity) VALUES
(1, 'Electronics', 10),
(2, 'Clothing', 20),
(3, 'Electronics', 15),
(4, 'Books', 30),
(5, 'Clothing', 25),
(6, 'Electronics', 20),
(7, 'Books', 35),
(8, 'Clothing', 40);

select * from sales;

select category, sum(quantity) from sales
group  by category