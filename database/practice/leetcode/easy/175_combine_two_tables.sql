-- LeetCode 175: Combine Two Tables
-- Difficulty: Easy
-- Topics: LEFT JOIN, NULL handling
-- Database: PostgreSQL

SELECT
    p.firstName,
    p.lastName,
    a.city,
    a.state
FROM
    Person p
LEFT JOIN
    Address a ON p.personId = a.personId;
