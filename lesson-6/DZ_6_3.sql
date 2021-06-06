SELECT
user_id,
birthday,
CONCAT(firstname, ' ', lastname) as full_name,
(SELECT COUNT(*) FROM `like` WHERE `like`.user_id = `profile`.user_id) as c_like
FROM `profile`
ORDER BY birthday DESC
LIMIT 10 