SELECT 
id,
name,
birthday_at,
str_to_date(created_at, '%Y-%m-%d %H:%i:%s') as created_at,
str_to_date(updated_at, '%Y-%m-%d %H:%i:%s') as updated_at
FROM dz5.users;