-- # IN, BETWEEN, LIKE, ILIKE

-- ### **Table: film**

-- Select all films where `rating` IN ('PG', 'PG-13').
-- Select all films where `rental_rate` IN (0.99, 2.99, 4.99).
-- Select films whose `length` BETWEEN 90 AND 120 minutes.
-- Select films with `replacement_cost` BETWEEN 15 AND 20.
-- Select films whose `title` LIKE 'A%'.
-- Select films whose `title` LIKE '%Love%'.
-- Select films whose `title` LIKE '%Man%'.
-- Select films whose `title` LIKE '_A%'.
-- Select films whose `description` ILIKE '%adventure%'.
-- Select films whose `description` ILIKE '%police%' AND `rating` = 'R'.

-- ### **Table: customer**

-- Select customers whose `first_name` LIKE 'A%'.
-- Select customers whose `last_name` LIKE '%son'.
-- Select customers whose `first_name` ILIKE 'm%'.
-- Select customers whose `email` LIKE '%@sakilacustomer.org'.
-- Select customers whose `create_date` BETWEEN '2006-01-01' AND '2006-06-30'.
-- Select customers whose `store_id` IN (1, 2).
-- Select customers whose `last_name` ILIKE '%LL%'.
-- Select customers whose `first_name` LIKE 'J%' AND `active` = 1.
-- Select customers whose `email` ILIKE '%example%'.
-- Select customers whose `first_name` IN ('MARY', 'PATRICIA', 'LINDA').

-- ### **Table: payment**

-- Select payments whose `amount` BETWEEN 5 AND 8.
-- Select payments whose `payment_date` BETWEEN '2005-07-01' AND '2005-07-15'.
-- Select payments whose `amount` IN (0.99, 2.99, 4.99).
-- Select payments where `amount` NOT IN (0.99, 2.99).
-- Select payments whose `payment_date::text` LIKE '2005-07%'.
-- Select payments whose `amount` BETWEEN 8 AND 10 AND `staff_id` = 1.
-- Select payments whose `payment_date` BETWEEN '2005-06-01' AND '2005-06-30' AND `amount` > 5.
-- Select payments where `customer_id` IN (1, 2, 3, 4, 5).
-- Select payments whose `amount` BETWEEN 1 AND 3 OR `amount` BETWEEN 8 AND 10.
-- Select payments whose `payment_date::text` ILIKE '%2005-07-3%'.