SELECT
birthday_at,
dayname(concat(year(now()), right(birthday_at, 6))) as dayname,
count(birthday_at)
FROM dz5.users
group by(dayname)