SELECT 
products.* ,
catalogs.name
FROM dz_7.products
JOIN catalogs ON catalog_id = catalogs.id