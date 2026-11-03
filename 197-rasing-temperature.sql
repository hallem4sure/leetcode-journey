-- 197. Rising Temperature
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/rising-temperature/
-- Pattern: Self Join on date

-- Note: join on recordDate, not on id, because id is not guaranteed
-- to be ordered by date.

SELECT w1.id
FROM Weather w1
INNER JOIN Weather w2
  ON w1.recordDate - INTERVAL 1 DAY = w2.recordDate
WHERE w1.temperature > w2.temperature;