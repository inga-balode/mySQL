SELECT
from_user_id, 
to_user_id,
IF (from_user_id = 31, to_user_id, from_user_id) as conversation_with,
count(*)
FROM vk_1.message
WHERE from_user_id = 31 or to_user_id = 31
GROUP BY from_user_id, to_user_id