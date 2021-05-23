UPDATE `users`
SET
	created_at = NOW(),
    updated_at = NOW()
WHERE id >= 1;

SELECT
*
FROM `users`