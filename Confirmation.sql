# Write your MySQL query statement below
SELECT sign.user_id,
      ROUND((AVG(CASE
                    WHEN action='confirmed' THEN 1
                    ELSE 0
                    END)),2) AS confirmation_rate
FROM Signups sign
LEFT JOIN Confirmations c ON sign.user_id=c.user_id
GROUP BY user_id
