-- 577. Employee Bonus
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/employee-bonus/
-- Pattern: LEFT JOIN + NULL handling

select e.name, b.bonus
from Employee e
left join Bonus b
on e.empID = b.empID
where b.bonus < 1000
or b.bonus is null;