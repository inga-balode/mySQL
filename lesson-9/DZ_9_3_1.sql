USE `dz_9`;
DROP function IF EXISTS `hello`;

DELIMITER $$
USE `dz_7`$$
CREATE FUNCTION `hello` ()
RETURNS TINYTEXT
READS SQL DATA
DETERMINISTIC
BEGIN
	DECLARE now INT;
    SET now = HOUR(NOW());
    CASE
    WHEN now between 6 and 12 THEN
		RETURN "Доброе утро";
	WHEN now between 12 and 18 THEN
		RETURN "Добрый день";
	WHEN now between 18 and 0 THEN
		RETURN "Добрый вечер";
	WHEN now between 0 and 6 THEN
		RETURN "Доброй ночи";
	END CASE;
END$$

DELIMITER ;