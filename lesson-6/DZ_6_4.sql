SELECT 
(SELECT gender FROM `profile` WHERE `profile`.user_id = `like`.user_id) as gender,
COUNT(*)
FROM `like`
GROUP BY gender