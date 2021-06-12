CREATE TABLE `dz_11`.`logs` (
  `date` DATETIME NOT NULL,
  `table` VARCHAR(45) NOT NULL,
  `id` INT NULL,
  `name` VARCHAR(255) NULL DEFAULT NULL)
ENGINE = ARCHIVE;

DROP TRIGGER IF EXISTS `dz_11`.`catalogs_AFTER_INSERT`;

DELIMITER $$
USE `dz_11`$$
CREATE DEFINER = CURRENT_USER TRIGGER `dz_11`.`catalogs_AFTER_INSERT` AFTER INSERT ON `catalogs` FOR EACH ROW
BEGIN
	IF NEW.id IS NOT NULL and NEW.name IS NOT NULL THEN
    INSERT INTO `logs` (`date`, `table`, `id`, `name`) 
    VALUES (NOW(), 'catalogs', NEW.id, NEW.name);
    END IF;
END$$
DELIMITER ;

DROP TRIGGER IF EXISTS `dz_11`.`products_AFTER_INSERT`;

DELIMITER $$
USE `dz_11`$$
CREATE DEFINER = CURRENT_USER TRIGGER `dz_11`.`products_AFTER_INSERT` AFTER INSERT ON `products` FOR EACH ROW
BEGIN
	IF NEW.id IS NOT NULL and NEW.name IS NOT NULL and NEW.created_at IS NOT NULL THEN
    INSERT INTO `logs` (`date`, `table`, `id`, `name`) 
    VALUES (NEW.created_at, 'products', NEW.id, NEW.name);
    END IF;
END$$
DELIMITER ;

DROP TRIGGER IF EXISTS `dz_11`.`users_AFTER_INSERT`;

DELIMITER $$
USE `dz_11`$$
CREATE DEFINER = CURRENT_USER TRIGGER `dz_11`.`users_AFTER_INSERT` AFTER INSERT ON `users` FOR EACH ROW
BEGIN
	IF NEW.id IS NOT NULL and NEW.name IS NOT NULL and NEW.created_at IS NOT NULL THEN
    INSERT INTO `logs` (`date`, `table`, `id`, `name`) 
    VALUES (NEW.created_at, 'users', NEW.id, NEW.name);
    END IF;
END$$
DELIMITER ;