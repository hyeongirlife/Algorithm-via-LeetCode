-- Write your PostgreSQL query statement below
SELECT c.name FROM Customer as c where referee_id != 2 or referee_id is null