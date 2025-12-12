-- SQL JOINS

-- Introduction

-- Level 1: Basic INNER JOINs (Single Join)

-- List all film titles and their language names.
    
--     (Join `film` and `language`)
    
-- Show the first and last names of all actors who acted in the film "ACADEMY DINOSAUR".
    
--     (Join `actor`, `film_actor`, `film`)
    
-- Display all customer names and their email addresses.
    
--     (Join `customer` with no other table — warm-up)
    
-- List customer full names and the names of the stores they registered at.
    
--     (Join `customer` and `store`)
    
-- Show all films and their categories.
    
--     (Join `film`, `film_category`, `category`)
    
-- List staff members and their respective store address.
    
--     (Join `staff`, `address`)
    
-- Get the titles of all films rented by customer “MARY SMITH”.
    
--     (Join `customer`, `rental`, `inventory`, `film`)

-- Level 2: Two-table Joins with Filters

-- List the names of all customers who rented at least one film.
    
--     (Join `customer` and `rental` with DISTINCT)
    
-- Show all films that are in the 'Comedy' category.
    
--     (Join `film_category`, `category`, `film` with filter on category name)
    
-- List all payments along with the customer names who made them.
    
--     (Join `payment` and `customer`)
    
-- Get the titles and rental rates of all films longer than 120 minutes.
    
--     (Join `film` only — no join needed — easy confidence builder)
    
-- List the staff who processed each rental transaction.
    
--     (Join `rental` and `staff`)
    
-- Display all customers and the cities they live in.
    
--     (Join `customer`, `address`, `city`)
    

-- Level 3: Multi-table Joins

-- List all customers and the films they have rented, with the film title and rental date.
    
--     (Join `customer`, `rental`, `inventory`, `film`)
    
-- Show film titles, actor names, and categories.
    
--     (Join `film`, `film_actor`, `actor`, `film_category`, `category`)
    
-- Find all rentals and include customer name, staff name, film title, and rental date.
    
--     (Join `rental`, `customer`, `staff`, `inventory`, `film`)
    
-- Display a list of customers, their email, and the store city they are associated with.
    
--     (Join `customer`, `store`, `address`, `city`)
    
-- List the top 10 most rented films with the number of times each was rented.
    
--     (Join `rental`, `inventory`, `film` + `GROUP BY` + `COUNT`)


-- INNER JOIN

-- Basic Level

-- List all films with their language names.
-- Show all actors with their film titles.
-- Display customer names with their corresponding rental dates.
-- Find all staff members and the addresses where they work.
-- List all payments with customer names who made them.

-- Intermediate Level

-- Show film titles and their categories.
-- Display actor names with the number of films they've appeared in.
-- Find customers who rented films from a specific store (store_id = 1).
-- List all films rented in May 2005 with customer names.
-- Show staff members who processed payments over $5.00.

-- Advanced Level

-- Find films rented more than 10 times with their rental counts.
-- Display customers who rented films from multiple categories.
-- List actors who appeared in films from at least 3 different categories.
-- Find films that were never rented but are in inventory.
-- Show customers who rented the same film more than once.

-- Complex Queries

-- Find the most popular film category based on rental count.
-- Display customers who rented all films from a particular actor.
-- List films that were rented on consecutive days by the same customer.
-- Find actors who only appeared in R-rated films.
-- Show customers who rented from both stores (store_id 1 and 2).

-- Business Scenarios

-- Identify the top 5 customers by total spending.
-- Find the most profitable film category.
-- List staff members with their total processed payment amounts.
-- Show films that are consistently rented every month.
-- Find customers who haven't rented in the last 6 months.

-- Challenging Problems

-- Display customers who rented films from all categories.
-- Find actors who have worked together in multiple films.
-- List films with above-average rental rates but below-average replacement costs.
-- Show customers whose rental frequency increased month-over-month.
-- Find the longest gap between rentals for each customer.