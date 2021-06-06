USE `dz_9`;
CREATE  OR REPLACE VIEW `product_view` AS
SELECT
	pr.name AS product_name,
    ct.name AS catal_name
FROM `products` pr
JOIN `catalogs` ct ON ct.id = pr.catalog_id;