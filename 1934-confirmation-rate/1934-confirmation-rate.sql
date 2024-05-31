-- Write your PostgreSQL query statement below
-- MySQL.ver
-- SELECT s.user_id, round(avg(if(c.action == 'confirmed',1,0)),2) as confirmation_rate FROM Signups as s LEFT JOIN Confirmations as c USING(user_id) GROUP BY user_id 

SELECT s.user_id, round(avg(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END), 2) as confirmation_rate 
FROM Signups as s 
LEFT JOIN Confirmations as c USING(user_id) 
GROUP BY s.user_id;
