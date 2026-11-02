-- LeetCode 1378: Replace Employee ID With The Unique Identifier
-- Difficulty: Easy
-- Approach: LEFT JOIN

SELECT eu.unique_id, em.name
FROM Employees em
LEFT JOIN EmployeeUNI eu
    ON em.id = eu.id; 
