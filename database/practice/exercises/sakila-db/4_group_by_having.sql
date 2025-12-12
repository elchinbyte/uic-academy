-- * `SELECT`, `WHERE`, `GROUP BY`, `HAVING`,
-- * aggregates: `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`.

-- Count total number of payments.
-- Find total amount paid (sum of all amounts).
-- Calculate average payment amount.
-- Find the smallest and largest payment amounts.
-- Count how many payments each customer made.
-- Total amount paid by each customer.
-- Average payment amount per customer.
-- Customers who made more than 10 payments.
-- Customers whose total payments exceed 150.
-- Customers whose average payment exceeds 5.
-- Count of payments per staff member.
-- Total amount collected by each staff.
-- Staff who collected more than 1000 in total.
-- Average payment per staff.
-- Number of payments made on each date.

-- ### **Table: rental**

-- Count total rentals.
-- Find the earliest and latest rental dates.
-- Count how many rentals each customer made.
-- Customers with more than 20 rentals.
-- Average number of rentals per day (using `GROUP BY rental_date::date`).
-- Count how many times each staff processed a rental.
-- Staff with more than 100 rentals handled.
-- Count of rentals per return_date (group by return_date).
-- Days where more than 50 rentals occurred.
-- Average rental_id per staff (nonsensical mathematically, but forces use of aggregate).

-- ### **Table: customer**

-- Count total customers.
-- Count customers by `active` status.
-- Count customers by `store_id`.
-- Stores having more than 300 customers.
-- Average customer ID per store (training grouping only).
-- Count customers by `create_date` (group by date).
-- Count how many customers were added per day.
-- Days where more than 5 customers were added.

-- ### **Table: film**

-- Count how many films exist per rating.
-- Ratings that have more than 200 films.
-- Average rental rate per rating.
-- Average length per rating.
-- Ratings with average rental rate above 3.0.
-- Count how many films have the same replacement cost.
-- Replacement cost values that appear in more than 10 films.