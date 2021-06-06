SELECT 
flights.* ,
cf.name as cf_name,
ct.name as ct_name
FROM dz_7.flights
LEFT JOIN `cities` cf ON flights.`from` = cf.`label`
LEFT JOIN `cities` ct ON flights.`to` = ct.`label`
