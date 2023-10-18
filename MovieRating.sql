# Write your MySQL query statement below
(SELECT U.name as results
FROM Users U 
LEFT JOIN MovieRating R 
ON U.user_id = R.user_id
GROUP BY U.name
ORDER BY COUNT(R.movie_id) DESC, U.name LIMIT 1)

UNION ALL

(SELECT M.title as results
FROM MovieRating R LEFT JOIN Movies M 
ON  R.movie_id = M.movie_id
WHERE R.created_at like "2020-02-%"
GROUP BY M.title
ORDER BY AVG(R.rating) DESC, M.title LIMIT 1)
