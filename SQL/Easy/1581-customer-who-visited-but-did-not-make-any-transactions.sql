-- Problem: 1581. Customer Who Visited but Did Not Make Any Transactions
-- Difficulty: Easy
-- Topics: LEFT JOIN, WHERE, IS NULL, COUNT, GROUP BY

SELECT
    V.customer_id,
    COUNT(*) AS count_no_trans
FROM Visits V
LEFT JOIN Transactions T
    ON V.visit_id = T.visit_id
WHERE T.transaction_id IS NULL
GROUP BY V.customer_id;