-- 570. Managers with at Least 5 Direct Reports
-- Difficulty: Medium
-- Link: https://leetcode.com/problems/managers-with-at-least-5-direct-reports/
-- Pattern: GROUP BY + HAVING (+ Self Join)


SELECT e1.name
FROM Employee e1
JOIN Employee e2
  ON e1.id = e2.managerId
GROUP BY e1.id, e1.name
HAVING COUNT(*) >= 5;