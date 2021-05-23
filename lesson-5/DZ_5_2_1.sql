SELECT
ROUND(AVG(timestampdiff(Year, birthday_at, NOW()))) as age_avg
FROM dz5.users;
