-- Write your PostgreSQL query statement below
SELECT distinct(v.author_id) as id FROM Views as v where (v.author_id = v.viewer_id)