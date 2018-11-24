DELIMITER //

CREATE PROCEDURE DataDaCirurgia (
	
	IN _andar varchar(2),
	IN _numero int,
	IN _cpf varchar(11),
	IN _crm int,
	IN _dataCir datetime,
	IN _feedback varchar(255))

BEGIN
    
    IF _dataCir > NOW() THEN
    	INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback) 
        VALUES (_andar, _numero, _cpf, _crm, _dataCir, _feedback);
    END IF;

END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE LimiteDeCirugiaPorMedico (
	
	IN _andar varchar(2),
	IN _numero int,
	IN _cpf varchar(11),
	IN _crm int,
	IN _dataCir datetime,
	IN _feedback varchar(255))

BEGIN

	SET @dia = DATE(_dataCir);    
    SET @numCirurgias = (SELECT COUNT(crm) FROM CIRURGIAS WHERE crm = _crm AND DATE(dataCir) = @dia);
    
    IF @numCirurgias < 3 THEN
    	INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback) 
        VALUES (_andar, _numero, _cpf, _crm, _dataCir, _feedback);
    END IF;

END //

DELIMITER ;