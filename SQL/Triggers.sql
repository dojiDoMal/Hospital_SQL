
--SIGNAL SQLSTATE FUNCIONA COMO RETURN

DELIMITER //

CREATE TRIGGER MedicoAtingiuLimite BEFORE INSERT
ON CIRURGIAS
FOR EACH ROW
BEGIN
	
	SET @totalDeCirurgias = (SELECT COUNT(crm) FROM CIRURGIAS WHERE crm = NEW.crm AND DATE(dataCir) = DATE(NEW.dataCir));
	IF @totalDeCirurgias >= 3 THEN
		SIGNAL SQLSTATE '45000';
	END IF;

END //

DELIMITER ;

DELIMITER//

CREATE TRIGGER `MenorDeIdade` BEFORE INSERT ON `CLIENTES`
FOR EACH ROW BEGIN
	
	SET @anoAtual = YEAR(NOW());
    SET @mesAtual = MONTH(NOW());
    SET @diaAtual = DAY(NOW());
    
    IF @anoAtual - YEAR(NEW.dataNascCli) < 18 THEN
    	SIGNAL SQLSTATE '45000';
    ELSEIF @anoAtual - YEAR(NEW.dataNascCli) = 18 THEN
    	IF @mesAtual < MONTH(NEW.dataNascCli) THEN
        	SIGNAL SQLSTATE '45000';
        ELSEIF @mesAtual = MONTH(NEW.dataNascCli) THEN
        	IF @diaAtual <= DAY(NEW.dataNascCli) THEN
            	SIGNAL SQLSTATE '45000';
            END IF;
        END IF;
    END IF;

END

DELIMITER;