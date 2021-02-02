SELECT properties.*, AVG(rating) AS average_rating
FROM property_reviews
JOIN properties ON property_id = properties.id
WHERE city LIKE '%ancouv%'
GROUP BY properties.id
HAVING avg(rating) >= 4
ORDER BY cost_per_night 
LIMIT 10;
