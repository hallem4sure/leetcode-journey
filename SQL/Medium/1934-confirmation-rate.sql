-- 1934. Confirmation Rate
-- Difficulty: Medium
-- Link: https://leetcode.com/problems/confirmation-rate/
-- Pattern: LEFT JOIN + AVG(CASE WHEN ...) to compute a ratio


SELECT s.user_id,
       ROUND(AVG(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END), 2) AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c
  ON s.user_id = c.user_id
GROUP BY s.user_id;

-- First attempt (right idea, but the outer CASE condition was wrong:
-- `num1 or num2 = 0` is read as `(num1) OR (num2 = 0)`):
-- count(c.action) AS num1, sum(case when c.action = 'confirmed' then 1 else 0 end) AS num2,
-- then CASE WHEN num1 = 0 THEN 0 ELSE ROUND(num2 / num1, 2) END