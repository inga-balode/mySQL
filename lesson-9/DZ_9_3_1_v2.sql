USE `dz_9`;
DROP function IF EXISTS `hello_2`;

DELIMITER $$
USE `dz_7`$$
CREATE FUNCTION `hello_2` ()
RETURNS TINYTEXT
    READS SQL DATA
    DETERMINISTIC
BEGIN
	DECLARE now INT;
    SET now = HOUR(NOW());
    IF now between 6 and 12 THEN
		RETURN "Доброе утро!";
	ELSEIF now between 12 and 18 THEN
		RETURN "Добрый день!";
	ELSEIF now between 18 and 24 THEN
		RETURN "Добрый вечер!";
	ELSE 
		RETURN "Доброй ночи!";
	END IF;
END$$

DELIMITER ;
