--1. How many unique types of pizzas are there on the menu?
select * from order_details

select * from orders

select distinct pizza_type_id from pizzas

-- ANS - There are 32 unique types of pizzas on the menu

-- 2.Which category (e.g., Chicken, Vegetarian) has the most number of pizza varieties?

select * from pizza_types

select category, count(category) as category_count from pizza_types
group by category
order by category_count desc

-- ANS - The pizza categories 'veggies' and 'supreme' have the most number
-- of pizza varieties amounting to 9 each

-- 3. How many orders were placed? And how many pizzas were ordered in total?

select order_id, sum(quantity) as quantity_per_id from order_details
group by order_id


select sum(quantity) from order_details

-- ANS - A total of 21,350 orders were placed encompassing 49,574 pizzas.

--4. What is the average number of pizzas ordered in a single transaction?

SELECT AVG(total_pizzas) AS average_pizzas_per_order
FROM (
    SELECT order_id, SUM(quantity) AS total_pizzas
    FROM order_details
    GROUP BY order_id
) AS order_totals;

-- The answer is 2.3220. We can safely say on average there were 2 pizzas ordered per transaction.

-- 5.Which pizza has been ordered the most in terms of quantity?

select pizza_id, sum(quantity) as sum_quantity from order_details
group by pizza_id 
order by sum_quantity desc

-- ANS -The pizza with the pizza_id "big_meat_s" has been ordered the most, with a total quantity of 1,914

-- 6.What is the distribution of quantity of pizza ordered by pizza size (small, medium, large)?

select pz.size, count(pz.size) as total_count  from order_details as od
join pizzas as pz
on od.pizza_id = pz.pizza_id
group by pz.size
order by total_count desc

-- The distribution of the quantity of pizzas 
-- ordered by pizza size is as follows:Large: 18526 | Medium: 15385 | Small: 14137

--7. How many orders contain more than one type of pizza?

select count(order_id) from(
	select order_id, count(pizza_id) as pizza_type_count from order_details
	group by order_id)
	where pizza_type_count > 1

-- There are 13,149 orders out of 21,350 that contain more than one type of pizza.


