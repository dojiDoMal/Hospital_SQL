-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 03-Dez-2018 às 20:35
-- Versão do servidor: 8.0.13
-- versão do PHP: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meubanco2018`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`dojidomal`@`%` PROCEDURE `DataDaCirurgia` (IN `_andar` VARCHAR(2), IN `_numero` INT, IN `_cpf` VARCHAR(11), IN `_crm` INT, IN `_dataCir` DATETIME, IN `_feedback` VARCHAR(255))  BEGIN
    
    IF _dataCir > NOW() THEN
    	INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback) 
        VALUES (_andar, _numero, _cpf, _crm, _dataCir, _feedback);
    END IF;

END$$

CREATE DEFINER=`dojidomal`@`%` PROCEDURE `LimiteDeCirugiaPorMedico` (IN `_andar` VARCHAR(2), IN `_numero` INT, IN `_cpf` VARCHAR(11), IN `_crm` INT, IN `_dataCir` DATETIME, IN `_feedback` VARCHAR(255))  BEGIN

	SET @dia = DATE(_dataCir);    
    SET @numCirurgias = (SELECT COUNT(crm) FROM CIRURGIAS WHERE crm = _crm AND DATE(dataCir) = @dia);
    
    IF @numCirurgias < 3 THEN
    	INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback) 
        VALUES (_andar, _numero, _cpf, _crm, _dataCir, _feedback);
    END IF;

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `CIRURGIAS`
--

CREATE TABLE `CIRURGIAS` (
  `dataCir` datetime NOT NULL,
  `feedback` varchar(255) NOT NULL,
  `crm` int(11) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `andar` varchar(2) NOT NULL,
  `numero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `CIRURGIAS`
--

INSERT INTO `CIRURGIAS` (`dataCir`, `feedback`, `crm`, `cpf`, `andar`, `numero`) VALUES
('2015-11-05 14:29:36', 'Medico muito atencioso e prestativo.', 8334, '19887295524', '2', 16),
('2016-02-10 15:24:59', 'Me sinto muito bem após a cirurgia. Equipe de médicos excelente.', 11402, '55580009372', '3', 11),
('2016-12-13 11:19:27', 'Péssimo serviço, não resolveu meu problema!', 32011, '12419068319', '1', 7),
('2017-05-09 17:12:20', 'Péssimo atendimento, mais de uma hora no aguardo pra ser chamado, com febre, 3 dias sem comer nada e não conseguindo respirar direito!', 12199, '88723417310', '1', 9),
('2017-05-09 17:58:02', 'Não gostei da desorganização e da burocracia', 12199, '57688940935', '2', 16),
('2016-04-02 15:09:24', 'Como um plano faz uma criança especial esperar um cateterismo em jejum e depois liga dizendo que não tem vaga na UTI pediátrica?', 34558, '34559068319', '2', 10),
('2017-05-09 16:09:13', 'Sugestão: Expandir o numero de Centros Integrados de Atendimento para os bairros periféricos.', 12199, '24845737310', '2', 12),
('2016-02-12 14:10:47', 'Atendimento Administrativo Financeiro de Péssimo Qualidade!', 8312, '36765068319', 'T', 2),
('2015-10-17 13:09:40', 'Rede ampla e com todas as especialidades e Hospitais Padrão Ouro', 11006, '57688940935', 'T', 3),
('2016-09-25 15:33:21', 'Sinceramente plano carissimo quando é um simples procedimento tem q se deslocar bastante pra pegar autorização', 10199, '66980834935', 'T', 4),
('2017-08-16 15:41:59', 'Sou cliente já há um bom tempo, sempre que precisei fui muito bem atendida. Graças a Deus!', 11402, '90101292333', 'T', 5),
('2015-06-10 11:32:20', 'Burocrática, tem um péssimo atendimento e comunicação interna.', 11027, '19887295524', '3', 11),
('2017-10-29 12:29:01', 'Atendimento fraquíssimo, especialmente aos sábados.', 8334, '49023068319', '3', 8),
('2017-10-01 10:30:05', 'Excelente profissional.', 8334, '34559068319', 'T', 2),
('2017-10-02 11:42:41', 'Gostei do atendimento. Foram muito simpáticos.', 8334, '23299009372', 'T', 3),
('2017-10-03 12:52:19', 'Apesar de não estar 100%, tudo correu bem.', 8334, '68319771091', 'T', 4),
('2017-10-05 13:19:10', 'Procedimento muito bem conduzido.', 8334, '36765068319', '1', 3),
('2017-10-07 14:10:05', 'Alguns equipamentos estavam desgastados.', 8334, '23496432390', '1', 3),
('2017-10-08 15:22:14', 'Graças a deus deu tudo certo! Muito Obrigado.', 8334, '55580009372', '2', 12),
('2017-10-08 16:18:20', 'Me senti muito confiante antes e durante a cirurgia :)', 8334, '12419068319', '2', 12),
('2017-10-09 17:03:11', 'Pouca gente na recepção', 8334, '88723417310', '3', 8),
('2017-10-11 10:17:45', 'Mais uma vez fui mal atendido, pra variar...', 8334, '12419068319', '3', 11),
('2017-10-23 11:34:28', 'Atendimento ótimo, mesmo sendo um sábado.', 8334, '24845737310', '3', 13),
('2017-05-11 12:46:44', 'ODIEI a demora', 15011, '52585662349', '3', 5),
('2017-05-22 12:51:40', 'A máquina estava com defeito, precisou trocar', 15011, '52585662349', '3', 5),
('2018-10-14 14:12:42', 'O médico soube conduzir o procedimento de forma exemplar', 1019, '36765068319', 'D', 14),
('2018-10-15 17:13:34', 'Muito bom', 11402, '52585662349', 'D', 14),
('2018-10-16 15:07:25', 'Médica top!!! Exemplo de profissional', 3455, '90101292333', 'D', 14),
('2018-10-17 16:28:08', 'Muito cuidadosa, gostei!', 10199, '12419068319', 'D', 14),
('2018-10-18 11:47:20', 'Tirei todas as minha dúvidas, que alívio', 32011, '66980834935', 'D', 14),
('2018-11-14 14:12:42', 'teste', 12199, '36382058432', 'D', 14),
('2018-09-17 14:09:51', 'Nada a reclamar', 11011, '23496432390', '2', 18),
('2018-09-18 11:16:41', 'hospital confortável', 11011, '11009647628', '2', 10),
('2018-09-19 13:27:20', 'equipe capacitada', 11011, '11149443600', '1', 9),
('2018-09-20 16:34:48', 'pago o plano de saúde pra ter esse atendimento lixo...', 11011, '36382058432', 'T', 5),
('2018-09-21 10:52:34', 'médico confiável', 11011, '71594300429', '3', 8),
('2018-09-22 17:13:33', 'não vou com a cara desse pessoal...', 11011, '90101292333', '1', 7),
('2018-09-23 14:25:10', 'só tive aborrecimentos!', 11011, '55580009372', '3', 8),
('2018-09-24 15:18:50', 'deviam fechar essa merda, não presta!', 11011, '23299009372', 'T', 4),
('2018-09-25 14:19:48', 'só tenho a agradecer.', 11011, '34559068319', '3', 11),
('2018-09-26 15:52:18', 'ocorreu normalmente.', 11011, '29981452390', '2', 10),
('2018-12-01 07:34:21', 'top', 3455, '24845737310', '1', 9),
('2018-12-01 09:30:44', 'muito bom', 3455, '88723417310', '3', 8),
('2018-12-01 14:30:08', 'gostei', 3455, '49023068319', '2', 16),
('2018-12-02 19:47:06', 'legal', 3455, '34559068319', '3', 11),
('2018-12-02 04:50:33', 'agradavel', 3455, '42589224125', '3', 13),
('2018-12-02 23:25:13', 'nada a reclamar', 3455, '34990774325', 'T', 5),
('2018-12-03 06:23:51', 'não gostei', 3455, '24845737310', '1', 7),
('2018-12-03 17:09:22', 'graças a deus uma médica decente', 3455, '29981452390', 'D', 14),
('2018-12-03 18:18:44', 'nada top', 3455, '43630106889', '3', 8),
('2018-12-04 15:24:14', 'dahora', 3455, '36765068319', '3', 13),
('2018-12-04 21:19:35', 'tem insta?', 3455, '11149443600', '2', 16),
('2018-12-04 07:50:30', 'entendi foi nada', 3455, '23496432390', '2', 12),
('2018-12-05 09:19:26', 'obrigado pela atenção', 3455, '49023068319', '3', 13),
('2018-12-05 11:09:42', 'não sei mais o q fazer', 3455, '94915740935', '3', 8),
('2018-12-05 14:52:26', 'ela disse pra remarcar', 3455, '55580009372', 'D', 14),
('2018-12-06 15:18:43', 'como assim', 3455, '94915114325', '2', 12),
('2018-12-06 17:14:46', 'tudo ok', 3455, '66980834935', '3', 8),
('2018-12-06 21:13:44', 'não tem luva nessa bagaça?', 3455, '52585662349', '3', 11),
('2018-12-07 23:51:08', 'quase desmaiei meu deus', 3455, '49023068319', '2', 10),
('2018-12-07 16:22:59', 'me sinto um mancebo', 3455, '90101292333', '2', 18),
('2018-12-07 21:35:08', 'que ótimo', 3455, '43630106889', '2', 12),
('2018-12-08 07:54:24', 'esqueceu da receita', 3455, '12419068319', '3', 13),
('2018-12-08 17:24:44', 'o pior aconteceu', 3455, '88723417310', '2', 16),
('2018-12-08 23:22:59', 'gostei da senhora', 3455, '19887295524', '1', 7),
('2018-12-09 12:08:30', 'nunca nem vi', 3455, '57990840935', 'T', 3),
('2018-12-09 09:41:56', 'de ponta grossa para o mundo heheh', 3455, '90101292333', '2', 10),
('2018-12-09 19:20:45', 'da próxima vez vou levar uma marmita e um travesseiro', 3455, '52585662349', '1', 7),
('2018-12-10 11:56:23', 'sei lá', 3455, '66980834935', '3', 11),
('2018-12-10 19:11:40', 'não concordei', 3455, '49023068319', '3', 11),
('2018-12-10 19:22:46', 'perfeito', 3455, '57688940935', '2', 18),
('2018-10-01 14:30:08', 'gostei', 15011, '49023068319', '2', 16),
('2018-10-02 19:47:06', 'legal', 15011, '94915114325', '3', 5),
('2018-10-02 04:50:33', 'agradavel', 15011, '42589224125', '3', 5),
('2018-10-02 23:25:13', 'nada a reclamar', 15011, '34990774325', 'T', 5),
('2018-10-03 17:09:22', 'graças a deus uma médica decente', 15011, '29981452390', '2', 16),
('2018-10-03 18:18:44', 'nada top', 15011, '43630106889', '3', 5),
('2018-10-04 15:24:14', 'dahora', 15011, '36765068319', '3', 5),
('2018-10-04 21:19:35', 'tem insta?', 15011, '11149443600', '2', 16),
('2018-10-04 07:50:30', 'entendi foi nada', 15011, '23496432390', '2', 12),
('2018-10-05 09:19:26', 'obrigado pela atenção', 15011, '49023068319', '3', 5),
('2018-10-06 15:18:43', 'como assim', 15011, '94915114325', '2', 12),
('2018-10-06 17:14:46', 'tudo ok', 15011, '66980834935', '3', 5),
('2018-10-06 21:13:44', 'não tem luva nessa bagaça?', 15011, '52585662349', '3', 5),
('2018-10-07 23:51:08', 'quase desmaiei meu deus', 15011, '49023068319', '2', 10),
('2018-10-07 16:22:59', 'me sinto um mancebo', 15011, '90101292333', '2', 18),
('2018-10-07 21:35:08', 'que ótimo', 15011, '43630106889', '2', 12),
('2018-10-08 23:22:59', 'gostei da senhora', 15011, '19887295524', '1', 7),
('2018-10-09 12:08:30', 'nunca nem vi', 15011, '57990840935', 'T', 3),
('2018-10-09 09:41:56', 'de ponta grossa para o mundo heheh', 15011, '90101292333', '2', 10),
('2018-10-09 19:20:45', 'da próxima vez vou levar uma marmita e um travesseiro', 15011, '52585662349', '1', 7),
('2018-10-10 11:56:23', 'sei lá', 15011, '66980834935', '3', 5),
('2018-10-10 19:11:40', 'não concordei', 15011, '49023068319', '3', 5),
('2018-10-10 19:22:46', 'perfeito', 15011, '57688940935', '2', 18),
('2018-11-01 07:34:21', 'top', 8334, '24845737310', '1', 9),
('2018-11-01 09:30:44', 'muito bom', 8334, '88723417310', '3', 8),
('2018-11-01 14:30:08', 'gostei', 8334, '49023068319', '2', 16),
('2018-11-02 19:47:06', 'legal', 8334, '94915114325', '3', 11),
('2018-11-02 04:50:33', 'agradavel', 8334, '42589224125', '3', 13),
('2018-11-02 23:25:13', 'nada a reclamar', 8334, '34990774325', 'T', 5),
('2018-11-03 06:23:51', 'não gostei', 8334, '24845737310', '1', 7),
('2018-11-03 17:09:22', 'graças a deus uma médica decente', 8334, '29981452390', 'D', 14),
('2018-11-03 18:18:44', 'nada top', 8334, '43630106889', '3', 8),
('2018-11-04 15:24:14', 'dahora', 8334, '36765068319', '3', 13),
('2018-11-04 21:19:35', 'tem insta?', 8334, '11149443600', '2', 16),
('2018-11-04 07:50:30', 'entendi foi nada', 8334, '23496432390', '2', 12),
('2018-11-05 09:19:26', 'obrigado pela atenção', 8334, '49023068319', '3', 13),
('2018-11-05 11:09:42', 'não sei mais o q fazer', 8334, '94915740935', '3', 8),
('2018-11-05 14:52:26', 'ela disse pra remarcar', 8334, '55580009372', 'D', 14),
('2018-11-06 15:18:43', 'como assim', 8334, '94915114325', '2', 12),
('2018-11-06 17:14:46', 'tudo ok', 8334, '66980834935', '3', 8),
('2018-11-06 21:13:44', 'não tem luva nessa bagaça?', 8334, '52585662349', '3', 11),
('2018-11-07 23:51:08', 'quase desmaiei meu deus', 8334, '49023068319', '2', 10),
('2018-11-07 16:22:59', 'me sinto um mancebo', 8334, '90101292333', '2', 18),
('2018-11-07 21:35:08', 'que ótimo', 8334, '43630106889', '2', 12),
('2018-11-08 07:54:24', 'esqueceu da receita', 8334, '12419068319', '3', 13),
('2018-11-08 17:24:44', 'o pior aconteceu', 8334, '88723417310', '2', 16),
('2018-11-08 23:22:59', 'gostei da senhora', 8334, '19887295524', '1', 7),
('2018-11-09 12:08:30', 'nunca nem vi', 8334, '57990840935', 'T', 3),
('2018-11-09 09:41:56', 'de ponta grossa para o mundo heheh', 8334, '90101292333', '2', 10),
('2018-11-09 19:20:45', 'da próxima vez vou levar uma marmita e um travesseiro', 8334, '52585662349', '1', 7),
('2018-11-10 11:56:23', 'sei lá', 8334, '66980834935', '3', 11),
('2018-11-10 19:11:40', 'não concordei', 8334, '49023068319', '3', 11),
('2018-11-10 19:22:46', 'perfeito', 8334, '57688940935', '2', 18),
('2018-08-01 07:34:21', 'top', 8312, '24845737310', '1', 9),
('2018-08-01 09:30:44', 'muito bom', 8312, '88723417310', '3', 8),
('2018-08-01 14:30:08', 'gostei', 8312, '49023068319', '2', 16),
('2018-08-02 19:47:06', 'legal', 8312, '94915114325', '3', 11),
('2018-08-02 04:50:33', 'agradavel', 8312, '42589224125', '3', 13),
('2018-08-02 23:25:13', 'nada a reclamar', 8312, '34990774325', 'T', 5),
('2018-08-03 06:23:51', 'não gostei', 8312, '24845737310', '1', 7),
('2018-08-03 17:09:22', 'graças a deus uma médica decente', 8312, '29981452390', 'D', 14),
('2018-08-03 18:18:44', 'nada top', 8312, '43630106889', '3', 8),
('2018-08-04 15:24:14', 'dahora', 8312, '36765068319', '3', 13),
('2018-08-04 21:19:35', 'tem insta?', 8312, '11149443600', '2', 16),
('2018-08-04 07:50:30', 'entendi foi nada', 8312, '23496432390', '2', 12),
('2018-08-05 09:19:26', 'obrigado pela atenção', 8312, '49023068319', '3', 13),
('2018-08-05 11:09:42', 'não sei mais o q fazer', 8312, '94915740935', '3', 8),
('2018-08-05 14:52:26', 'ela disse pra remarcar', 8312, '55580009372', 'D', 14),
('2018-08-06 15:18:43', 'como assim', 8312, '94915114325', '2', 12),
('2018-08-06 17:14:46', 'tudo ok', 8312, '66980834935', '3', 8),
('2018-08-06 21:13:44', 'não tem luva nessa bagaça?', 8312, '52585662349', '3', 11),
('2018-08-07 23:51:08', 'quase desmaiei meu deus', 8312, '49023068319', '2', 10),
('2018-08-07 16:22:59', 'me sinto um mancebo', 8312, '90101292333', '2', 18),
('2018-08-07 21:35:08', 'que ótimo', 8312, '43630106889', '2', 12),
('2018-08-08 07:54:24', 'esqueceu da receita', 8312, '12419068319', '3', 13),
('2018-08-08 17:24:44', 'o pior aconteceu', 8312, '88723417310', '2', 16),
('2018-08-08 23:22:59', 'gostei da senhora', 8312, '19887295524', '1', 7),
('2018-08-09 12:08:30', 'nunca nem vi', 8312, '57990840935', 'T', 3),
('2018-08-09 09:41:56', 'de ponta grossa para o mundo heheh', 8312, '90101292333', '2', 10),
('2018-08-09 19:20:45', 'da próxima vez vou levar uma marmita e um travesseiro', 8312, '52585662349', '1', 7),
('2018-08-10 11:56:23', 'sei lá', 8312, '66980834935', '3', 11),
('2018-08-10 19:11:40', 'não concordei', 8312, '49023068319', '3', 11),
('2018-08-10 19:22:46', 'perfeito', 8312, '57688940935', '2', 18),
('2018-07-01 07:34:21', 'top', 1019, '24845737310', '1', 9),
('2018-07-01 09:30:44', 'muito bom', 1019, '88723417310', '3', 8),
('2018-07-01 14:30:08', 'gostei', 1019, '49023068319', '2', 16),
('2018-07-02 19:47:06', 'legal', 1019, '94915114325', '3', 11),
('2018-07-02 04:50:33', 'agradavel', 1019, '42589224125', '3', 13),
('2018-07-02 23:25:13', 'nada a reclamar', 1019, '34990774325', 'T', 5),
('2018-07-03 06:23:51', 'não gostei', 1019, '24845737310', '1', 7),
('2018-07-03 17:09:22', 'graças a deus uma médica decente', 1019, '29981452390', 'D', 14),
('2018-07-03 18:18:44', 'nada top', 1019, '43630106889', '3', 8),
('2018-07-04 15:24:14', 'dahora', 1019, '36765068319', '3', 13),
('2018-07-04 21:19:35', 'tem insta?', 1019, '11149443600', '2', 16),
('2018-07-04 07:50:30', 'entendi foi nada', 1019, '23496432390', '2', 12),
('2018-07-05 09:19:26', 'obrigado pela atenção', 1019, '49023068319', '3', 13),
('2018-07-05 11:09:42', 'não sei mais o q fazer', 1019, '94915740935', '3', 8),
('2018-07-05 14:52:26', 'ela disse pra remarcar', 1019, '55580009372', 'D', 14),
('2018-07-06 15:18:43', 'como assim', 1019, '94915114325', '2', 12),
('2018-07-06 17:14:46', 'tudo ok', 1019, '66980834935', '3', 8),
('2018-07-06 21:13:44', 'não tem luva nessa bagaça?', 1019, '52585662349', '3', 11),
('2018-07-07 23:51:08', 'quase desmaiei meu deus', 1019, '49023068319', '2', 10),
('2018-07-07 16:22:59', 'me sinto um mancebo', 1019, '90101292333', '2', 18),
('2018-07-07 21:35:08', 'que ótimo', 1019, '43630106889', '2', 12),
('2018-07-08 07:54:24', 'esqueceu da receita', 1019, '12419068319', '3', 13),
('2018-07-08 17:24:44', 'o pior aconteceu', 1019, '88723417310', '2', 16),
('2018-07-08 23:22:59', 'gostei da senhora', 1019, '19887295524', '1', 7),
('2018-07-09 12:08:30', 'nunca nem vi', 1019, '57990840935', 'T', 3),
('2018-07-09 09:41:56', 'de ponta grossa para o mundo heheh', 1019, '90101292333', '2', 10),
('2018-07-09 19:20:45', 'da próxima vez vou levar uma marmita e um travesseiro', 1019, '52585662349', '1', 7),
('2018-07-10 11:56:23', 'sei lá', 1019, '66980834935', '3', 11),
('2018-07-10 19:11:40', 'não concordei', 1019, '49023068319', '3', 11),
('2018-07-10 19:22:46', 'perfeito', 1019, '57688940935', '2', 18),
('2018-10-20 12:18:44', 'nada a reclamar até agora', 12199, '52585662349', 'D', 14),
('2018-10-27 19:21:06', 'gostei do médico', 8334, '98414347509', 'D', 14),
('2018-10-30 16:49:32', 'muito show adorei', 34558, '66980834935', 'D', 14),
('2018-10-22 19:11:36', 'excelente :))))', 11006, '49023068319', 'D', 14),
('2018-10-08 18:25:16', 'gostei de tudo hahah', 11027, '29981452390', 'D', 14),
('2018-05-01 07:34:21', 'top', 19860, '24845737310', '1', 9),
('2018-05-01 09:30:44', 'muito bom', 19860, '88723417310', '3', 8),
('2018-05-01 14:30:08', 'gostei', 19860, '49023068319', '2', 16),
('2018-05-02 19:47:06', 'legal', 19860, '94915114325', '3', 11),
('2018-05-02 04:50:33', 'agradavel', 19860, '42589224125', '3', 13),
('2018-05-02 23:25:13', 'nada a reclamar', 19860, '34990774325', 'T', 5),
('2018-05-03 06:23:51', 'não gostei', 19860, '24845737310', '1', 7),
('2018-05-03 17:09:22', 'graças a deus uma médica decente', 19860, '29981452390', 'D', 14),
('2018-05-03 18:18:44', 'nada top', 19860, '43630106889', '3', 8),
('2018-05-04 15:24:14', 'dahora', 19860, '36765068319', '3', 13),
('2018-05-04 21:19:35', 'tem insta?', 19860, '11149443600', '2', 16),
('2018-05-04 07:50:30', 'entendi foi nada', 19860, '23496432390', '2', 12),
('2018-05-05 09:19:26', 'obrigado pela atenção', 19860, '49023068319', '3', 13),
('2018-05-05 11:09:42', 'não sei mais o q fazer', 19860, '94915740935', '3', 8),
('2018-05-05 14:52:26', 'ela disse pra remarcar', 19860, '55580009372', 'D', 14),
('2018-05-06 15:18:43', 'como assim', 19860, '94915114325', '2', 12),
('2018-05-06 17:14:46', 'tudo ok', 19860, '66980834935', '3', 8),
('2018-05-06 21:13:44', 'não tem luva nessa bagaça?', 19860, '52585662349', '3', 11),
('2018-05-07 23:51:08', 'quase desmaiei meu deus', 19860, '49023068319', '2', 10),
('2018-05-07 16:22:59', 'me sinto um mancebo', 19860, '90101292333', '2', 18),
('2018-05-07 21:35:08', 'que ótimo', 19860, '43630106889', '2', 12),
('2018-05-08 07:54:24', 'esqueceu da receita', 19860, '12419068319', '3', 13),
('2018-05-08 17:24:44', 'o pior aconteceu', 19860, '88723417310', '2', 16),
('2018-05-08 23:22:59', 'gostei da senhora', 19860, '19887295524', '1', 7),
('2018-05-09 12:08:30', 'nunca nem vi', 19860, '57990840935', 'T', 3),
('2018-05-09 09:41:56', 'de ponta grossa para o mundo heheh', 19860, '90101292333', '2', 10),
('2018-05-09 19:20:45', 'da próxima vez vou levar uma marmita e um travesseiro', 19860, '52585662349', '1', 7),
('2018-05-10 11:56:23', 'sei lá', 19860, '66980834935', '3', 11),
('2018-05-10 19:11:40', 'não concordei', 19860, '49023068319', '3', 11),
('2018-05-10 19:22:46', 'perfeito', 19860, '57688940935', '2', 18),
('2017-05-01 07:34:21', 'top', 15698, '24845737310', '1', 9),
('2017-05-01 09:30:44', 'muito bom', 15698, '88723417310', '3', 8),
('2017-05-01 14:30:08', 'gostei', 15698, '49023068319', '2', 16),
('2017-05-02 19:47:06', 'legal', 15698, '94915114325', '3', 11),
('2017-05-02 04:50:33', 'agradavel', 15698, '42589224125', '3', 13),
('2017-05-02 23:25:13', 'nada a reclamar', 15698, '34990774325', 'T', 5),
('2017-05-03 06:23:51', 'não gostei', 15698, '24845737310', '1', 7),
('2017-05-03 17:09:22', 'graças a deus uma médica decente', 15698, '29981452390', 'D', 14),
('2017-05-03 18:18:44', 'nada top', 15698, '43630106889', '3', 8),
('2017-05-04 15:24:14', 'dahora', 15698, '36765068319', '3', 13),
('2017-05-04 21:19:35', 'tem insta?', 15698, '11149443600', '2', 16),
('2017-05-04 07:50:30', 'entendi foi nada', 15698, '23496432390', '2', 12),
('2017-05-05 09:19:26', 'obrigado pela atenção', 15698, '49023068319', '3', 13),
('2017-05-05 11:09:42', 'não sei mais o q fazer', 15698, '94915740935', '3', 8),
('2017-05-05 14:52:26', 'ela disse pra remarcar', 15698, '55580009372', 'D', 14),
('2017-05-06 15:18:43', 'como assim', 15698, '94915114325', '2', 12),
('2017-05-06 17:14:46', 'tudo ok', 15698, '66980834935', '3', 8),
('2017-05-06 21:13:44', 'não tem luva nessa bagaça?', 15698, '52585662349', '3', 11),
('2017-05-07 23:51:08', 'quase desmaiei meu deus', 15698, '49023068319', '2', 10),
('2017-05-07 16:22:59', 'me sinto um mancebo', 15698, '90101292333', '2', 18),
('2017-05-07 21:35:08', 'que ótimo', 15698, '43630106889', '2', 12),
('2017-05-08 07:54:24', 'esqueceu da receita', 15698, '12419068319', '3', 13),
('2017-05-08 17:24:44', 'o pior aconteceu', 15698, '88723417310', '2', 16),
('2017-05-08 23:22:59', 'gostei da senhora', 15698, '19887295524', '1', 7),
('2017-05-09 12:08:30', 'nunca nem vi', 15698, '57990840935', 'T', 3),
('2017-05-09 09:41:56', 'de ponta grossa para o mundo heheh', 15698, '90101292333', '2', 10),
('2017-05-09 19:20:45', 'da próxima vez vou levar uma marmita e um travesseiro', 15698, '52585662349', '1', 7),
('2017-05-10 11:56:23', 'sei lá', 15698, '66980834935', '3', 11),
('2017-05-10 19:11:40', 'não concordei', 15698, '49023068319', '3', 11),
('2017-05-10 19:22:46', 'perfeito', 15698, '57688940935', '2', 18),
('2016-05-01 07:34:21', 'top', 15698, '24845737310', '1', 9),
('2016-05-01 09:30:44', 'muito bom', 15698, '88723417310', '3', 8),
('2016-05-01 14:30:08', 'gostei', 15698, '49023068319', '2', 16),
('2016-05-02 19:47:06', 'legal', 15698, '94915114325', '3', 11),
('2016-05-02 04:50:33', 'agradavel', 15698, '42589224125', '3', 13),
('2016-05-02 23:25:13', 'nada a reclamar', 15698, '34990774325', 'T', 5),
('2016-05-03 06:23:51', 'não gostei', 15698, '24845737310', '1', 7),
('2016-05-03 17:09:22', 'graças a deus uma médica decente', 15698, '29981452390', 'D', 14),
('2016-05-03 18:18:44', 'nada top', 15698, '43630106889', '3', 8),
('2016-05-04 15:24:14', 'dahora', 15698, '36765068319', '3', 13),
('2016-05-04 21:19:35', 'tem insta?', 15698, '11149443600', '2', 16),
('2016-05-04 07:50:30', 'entendi foi nada', 15698, '23496432390', '2', 12),
('2016-05-05 09:19:26', 'obrigado pela atenção', 15698, '49023068319', '3', 13),
('2016-05-05 11:09:42', 'não sei mais o q fazer', 15698, '94915740935', '3', 8),
('2016-05-05 14:52:26', 'ela disse pra remarcar', 15698, '55580009372', 'D', 14),
('2014-05-06 15:18:43', 'como assim', 10326, '94915114325', '2', 12),
('2014-05-06 17:14:46', 'tudo ok', 10326, '66980834935', '3', 8),
('2014-05-06 21:13:44', 'não tem luva nessa bagaça?', 10326, '52585662349', '3', 11),
('2014-05-07 23:51:08', 'quase desmaiei meu deus', 10326, '49023068319', '2', 10),
('2014-05-07 16:22:59', 'me sinto um mancebo', 10326, '90101292333', '2', 18),
('2014-05-07 21:35:08', 'que ótimo', 10326, '43630106889', '2', 12),
('2014-05-08 07:54:24', 'esqueceu da receita', 10326, '12419068319', '3', 13),
('2014-05-08 17:24:44', 'o pior aconteceu', 10326, '88723417310', '2', 16),
('2014-05-08 23:22:59', 'gostei da senhora', 10326, '19887295524', '1', 7),
('2014-05-09 12:08:30', 'nunca nem vi', 10326, '57990840935', 'T', 3),
('2014-05-09 09:41:56', 'de ponta grossa para o mundo heheh', 10326, '90101292333', '2', 10),
('2014-05-09 19:20:45', 'da próxima vez vou levar uma marmita e um travesseiro', 10326, '52585662349', '1', 7),
('2014-05-10 11:56:23', 'sei lá', 10326, '66980834935', '3', 11),
('2014-05-10 19:11:40', 'não concordei', 10326, '49023068319', '3', 11),
('2014-05-10 19:22:46', 'perfeito', 10326, '57688940935', '2', 18),
('2015-05-01 07:34:21', 'top', 10326, '24845737310', '1', 9),
('2015-05-01 09:30:44', 'muito bom', 10326, '88723417310', '3', 8),
('2015-05-01 14:30:08', 'gostei', 10326, '49023068319', '2', 16),
('2015-05-02 19:47:06', 'legal', 10326, '94915114325', '3', 11),
('2015-05-02 04:50:33', 'agradavel', 10326, '42589224125', '3', 13),
('2015-05-02 23:25:13', 'nada a reclamar', 10326, '34990774325', 'T', 5),
('2015-05-03 06:23:51', 'não gostei', 10326, '24845737310', '1', 7),
('2015-05-03 17:09:22', 'graças a deus uma médica decente', 10326, '29981452390', 'D', 14),
('2015-05-03 18:18:44', 'nada top', 10326, '43630106889', '3', 8),
('2015-05-04 15:24:14', 'dahora', 10326, '36765068319', '3', 13),
('2015-05-04 21:19:35', 'tem insta?', 10326, '11149443600', '2', 16),
('2015-05-04 07:50:30', 'entendi foi nada', 10326, '23496432390', '2', 12),
('2015-05-05 09:19:26', 'obrigado pela atenção', 10326, '49023068319', '3', 13),
('2015-05-05 11:09:42', 'não sei mais o q fazer', 10326, '94915740935', '3', 8),
('2015-05-05 14:52:26', 'ela disse pra remarcar', 10326, '55580009372', 'D', 14),
('2015-05-06 15:18:43', 'como assim', 10326, '94915114325', '2', 12),
('2015-05-06 17:14:46', 'tudo ok', 10326, '66980834935', '3', 8),
('2015-05-06 21:13:44', 'não tem luva nessa bagaça?', 10326, '52585662349', '3', 11),
('2015-05-07 23:51:08', 'quase desmaiei meu deus', 10326, '49023068319', '2', 10),
('2015-05-07 16:22:59', 'me sinto um mancebo', 10326, '90101292333', '2', 18),
('2015-05-07 21:35:08', 'que ótimo', 10326, '43630106889', '2', 12),
('2015-05-08 07:54:24', 'esqueceu da receita', 10326, '12419068319', '3', 13),
('2015-05-08 17:24:44', 'o pior aconteceu', 10326, '88723417310', '2', 16),
('2015-05-08 23:22:59', 'gostei da senhora', 10326, '19887295524', '1', 7),
('2015-05-09 12:08:30', 'nunca nem vi', 10326, '57990840935', 'T', 3),
('2015-05-09 09:41:56', 'de ponta grossa para o mundo heheh', 10326, '90101292333', '2', 10),
('2015-05-09 19:20:45', 'da próxima vez vou levar uma marmita e um travesseiro', 10326, '52585662349', '1', 7),
('2015-05-10 11:56:23', 'sei lá', 10326, '66980834935', '3', 11),
('2015-05-10 19:11:40', 'não concordei', 10326, '49023068319', '3', 11),
('2015-05-10 19:22:46', 'perfeito', 10326, '57688940935', '2', 18),
('2018-07-11 16:24:14', 'bom médico', 11011, '98414347509', '2', 12),
('2018-03-11 09:47:30', 'competente', 11011, '91441753109', 'T', 5),
('2010-05-01 07:21:34', 'ok', 1019, '24845737310', '2', 16),
('2010-05-01 09:44:30', 'mediocre', 1019, '88723417310', '3', 13),
('2010-05-01 14:08:30', 'não tinha outro não', 1019, '49023068319', 'T', 5),
('2010-05-02 19:06:47', 'só marquei com ele porque não tinha outro', 1019, '94915114325', 'D', 14),
('2010-05-02 04:37:50', 'adorável', 1019, '42589224125', '2', 12),
('2010-05-02 23:13:25', 'até que achei ele fofo', 1019, '34990774325', '2', 10),
('2010-05-03 06:51:23', 'quando sai o resultado', 1019, '24845737310', 'T', 5),
('2010-05-03 17:22:09', 'arrume outro médico', 1019, '29981452390', '1', 7),
('2010-05-03 18:44:18', 'ô dr chato viu', 1019, '43630106889', '3', 13),
('2010-05-04 15:14:24', 'pense num cara q se garante', 1019, '36765068319', '3', 8),
('2010-05-04 21:35:19', 'aí sim', 1019, '11149443600', '2', 12),
('2010-05-04 07:30:50', '5 estrelas', 1019, '23496432390', '3', 13),
('2010-05-05 09:26:19', 'normal', 1019, '49023068319', '2', 16),
('2010-05-05 11:42:09', 'até que foi bom', 1019, '94915740935', 'D', 14),
('2010-05-05 14:06:52', 'até que não foi ruim', 1019, '55580009372', '3', 8),
('2010-05-06 15:43:18', 'deu pra quebrar um galho', 1019, '94915114325', '3', 11),
('2010-05-06 17:46:14', 'tudo ok', 1019, '66980834935', '2', 12),
('2010-05-06 21:44:13', 'lixo', 1019, '52585662349', '2', 12),
('2010-05-07 23:08:51', 'ruim demais da conta', 1019, '49023068319', '2', 18),
('2010-05-07 16:59:22', 'rejuvenesci', 1019, '90101292333', '3', 11),
('2010-05-07 21:08:35', 'me sinto uma nova pessoa', 1019, '43630106889', '3', 11),
('2010-05-08 07:24:54', 'que deus lhe abençoe', 1019, '12419068319', '1', 7),
('2010-05-08 17:44:24', 'equipe qualificada', 1019, '88723417310', '2', 10),
('2010-05-08 23:59:22', 'bons profissionais', 1019, '19887295524', 'T', 3),
('2010-05-09 12:30:29', 'primeira vez', 1019, '57990840935', 'T', 3),
('2010-05-09 09:56:41', 'devia avisar que demora né', 1019, '90101292333', '2', 10),
('2010-05-09 19:45:20', 'muito demorado', 1019, '52585662349', '1', 7),
('2010-05-10 11:23:56', 'filas enormes', 1019, '66980834935', '3', 11),
('2010-05-10 19:40:11', 'não me agradou', 1019, '49023068319', '3', 11),
('2010-05-10 22:19:46', 'perfeito', 1019, '57688940935', '2', 18),
('2009-05-01 07:21:34', 'ok', 1019, '24845737310', '2', 16),
('2009-05-01 09:44:30', 'DETESTEI', 1019, '71594300429', '3', 13),
('2009-05-01 14:08:30', 'equipe bacana', 1019, '42589224125', 'T', 5),
('2009-05-02 19:06:47', 'foi ok', 1019, '36765068319', 'D', 14),
('2009-05-02 04:37:50', 'acima das expectativas', 1019, '36382058432', '2', 12),
('2009-05-02 23:13:25', 'cumpriu com o esperado', 1019, '34990774325', '2', 10),
('2009-05-03 06:51:23', 'não me deu um pirulito no final', 1019, '34559068319', 'T', 5),
('2009-05-03 17:22:09', 'péssimo diagnóstico', 1019, '29981452390', '1', 7),
('2009-05-03 18:44:18', 'nada legal', 1019, '24845737310', '3', 13),
('2009-05-04 15:14:24', 'HORRÍVEL com todas as letras', 1019, '23496432390', '3', 8),
('2009-05-04 21:35:19', 'aí não da', 1019, '23299009372', '2', 12),
('2009-05-04 07:30:50', '3 estrelas', 1019, '19887295524', '3', 13),
('2009-05-05 09:26:19', 'foi tudo normal', 1019, '12419068319', '2', 16),
('2009-05-05 11:42:09', 'até que doeu', 1019, '11149443600', 'D', 14),
('2009-05-05 14:06:52', 'até que eu gostei', 1019, '11009647628', '3', 8);

--
-- Acionadores `CIRURGIAS`
--
DELIMITER $$
CREATE TRIGGER `MedicoAtingiuLimite` BEFORE INSERT ON `CIRURGIAS` FOR EACH ROW BEGIN
	
	SET @totalDeCirurgias = (SELECT COUNT(crm) FROM CIRURGIAS WHERE crm = NEW.crm AND DATE(dataCir) = DATE(NEW.dataCir));
	IF @totalDeCirurgias >= 3 THEN
		SIGNAL SQLSTATE '45000';
	END IF;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `CLIENTES`
--

CREATE TABLE `CLIENTES` (
  `nome` varchar(50) NOT NULL,
  `dataNascCli` date NOT NULL,
  `cpf` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `CLIENTES`
--

INSERT INTO `CLIENTES` (`nome`, `dataNascCli`, `cpf`) VALUES
('Sara Olivia Jesus', '1952-03-18', '11009647628'),
('Nelson André Yuri Souza', '1952-02-18', '11149443600'),
('Caio Kaique Teixeira', '2001-03-05', '12419068319'),
('Ester Laura Cláudia', '1999-10-25', '19887295524'),
('Rebeca Carolina Rosângela', '2005-05-30', '23299009372'),
('Rodrigo César Silveira', '2000-05-12', '23496432390'),
('Cristiane Malu Aragão', '2002-10-04', '24845737310'),
('Nicole Sebastiana Jesus', '2000-03-03', '29981452390'),
('Jennifer Milena Jesus', '1993-02-26', '34559068319'),
('Osvaldo Pietro Geraldo Figueiredo', '1989-02-07', '34990774325'),
('Larissa Sophia Julia Lopes', '1952-06-11', '36382058432'),
('Vitor Caleb Cardoso', '2001-01-23', '36765068319'),
('Filipe Raul Felipe Dias', '1952-05-03', '42589224125'),
('Raquel Caroline Bianca Pinto', '1952-12-04', '43630106889'),
('Eduarda Stella Hadassa Vieira', '1980-06-12', '49023068319'),
('Larissa Carla Milena', '1989-12-16', '52585662349'),
('Isaac Juan Silveira', '2000-06-19', '55580009372'),
('Jorge Guilherme Dias', '1985-06-29', '57688940935'),
('Benedito Felipe Breno Martins', '2000-03-13', '57990840935'),
('Daiane Luana Alice Teixeira', '1997-03-22', '66980834935'),
('Vitória Laís Ferreira', '1973-09-11', '68319771091'),
('Agatha Elisa Giovanna', '1952-06-12', '71010155490'),
('Osvaldo Luís Melo', '1952-01-08', '71594300429'),
('Oliver Eduardo Barros', '1952-05-25', '82147821551'),
('Flávia Cláudia Luzia Caldeira', '1998-10-17', '88723417310'),
('Levi Thomas Jorge Aparício', '1999-07-01', '90101292333'),
('Rita Alessandra Nicole Lima', '1952-04-11', '91441753109'),
('Manuel Arthur Monteiro', '1989-11-20', '94915114325'),
('Mateus Thomas Marcelo Nogueira', '1990-10-02', '94915740935'),
('Manoel Osvaldo Alves', '1952-09-04', '98414347509');

--
-- Acionadores `CLIENTES`
--
DELIMITER $$
CREATE TRIGGER `MenorDeIdade` BEFORE INSERT ON `CLIENTES` FOR EACH ROW BEGIN
	
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
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `MEDICOS`
--

CREATE TABLE `MEDICOS` (
  `nome` varchar(50) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `senha` varchar(8) NOT NULL,
  `salario` decimal(10,2) NOT NULL,
  `dataNascMed` date NOT NULL,
  `crm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `MEDICOS`
--

INSERT INTO `MEDICOS` (`nome`, `usuario`, `senha`, `salario`, `dataNascMed`, `crm`) VALUES
('Eudes Pontes Bento', 'eu_pb2255', 'iuhIU908', '12000.20', '1980-10-05', 1019),
('Allana Roberta Falcão', 'allana.murd3', 'pijnOPUG', '10005.90', '1975-06-20', 3455),
('Rita Isabelle Alícia', 'ritinhaBELA', 't9ee1234', '4500.00', '1994-02-16', 8312),
('Mário Gustavo Jesus', 'gugaJESUS', 'u8dtW9AA', '4961.90', '1993-12-15', 8334),
('Marcelo Yuri Santos', 'marceloybenja15', 'iLhFox4d', '10050.00', '1986-04-22', 10152),
('Rosângela Betina Antônia', 'rosa2222BA', 'ytalgtGT', '3298.20', '1980-09-09', 10199),
('Kevin Pietro Farias', 'kevinpi314', 'Yibkf5fS', '10200.00', '1986-08-21', 10326),
('Sueli Melissa Costa', 'sueli-top', 'PqXbd0Eq', '5000.00', '1985-10-20', 11006),
('Carlos de Moura Carvalho', 'CARLOS_SOLRAC', 'uygbU432', '11690.30', '1982-04-30', 11011),
('Andreia Rebeca Peixoto', 'rebeca_peixoto93', 'r2CO7OZ2', '4960.00', '1993-01-23', 11027),
('Felipe Kauê Gomes', 'feGomes2018', 'Rpo3SWle', '5470.90', '1993-06-22', 11402),
('Mário Lucas Iago Moreira', 'lukas.mario10', 'uRrELtEc', '3298.20', '1991-08-10', 12199),
('Yago Henrique José Duarte', 'yagohjoseduarte-81', 'KJD85JK8', '11000.00', '1986-05-04', 12600),
('Ricardo Erick Kevin Caldeira', 'kelvin_cal', 'CX0rKtBl', '5020.00', '1991-05-17', 15011),
('Nicole Rebeca Silveira', 'claranicolebeca-97', '0jrplifi', '12000.00', '1986-04-05', 15698),
('Isaac Ricardo da Cruz', 'eeduardois15', 'q3FlrLQs', '11000.00', '1986-05-15', 18456),
('Isadora Isabel Moura', 'isadoraisabel96', '4geiTZ45', '13000.00', '1986-05-16', 19860),
('Elza Isabelly Vieira', 'elzaisabelly', 'qgALFiGT', '10500.00', '1986-01-22', 22103),
('Silvana Giovanna Luiza da Luz', 'LUZ_silvana989', '4iQJYGOf', '5020.00', '1990-09-11', 32011),
('Henry Thiago Caldeira', 'henry.TT2018', 'esC12rpx', '4500.00', '1981-04-22', 34558);

-- --------------------------------------------------------

--
-- Estrutura da tabela `SALAS`
--

CREATE TABLE `SALAS` (
  `andar` varchar(2) NOT NULL,
  `numero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `SALAS`
--

INSERT INTO `SALAS` (`andar`, `numero`) VALUES
('1', 1),
('1', 3),
('1', 5),
('1', 7),
('1', 9),
('2', 10),
('2', 12),
('2', 14),
('2', 16),
('2', 18),
('3', 2),
('3', 5),
('3', 8),
('3', 11),
('3', 13),
('D', 14),
('T', 2),
('T', 3),
('T', 4),
('T', 5);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_CLIENTES`
-- (See below for the actual view)
--
CREATE TABLE `vw_CLIENTES` (
`Nome_Completo` varchar(50)
,`Data_de_Nascimento` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_MEDICOS`
-- (See below for the actual view)
--
CREATE TABLE `vw_MEDICOS` (
`Nome_Completo` varchar(50)
,`Data_de_Nascimento` date
,`CRM` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `vw_CLIENTES`
--
DROP TABLE IF EXISTS `vw_CLIENTES`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dojidomal`@`%` SQL SECURITY DEFINER VIEW `vw_CLIENTES` (`Nome_Completo`, `Data_de_Nascimento`) AS   select `CLIENTES`.`nome` AS `nome`,`CLIENTES`.`dataNascCli` AS `dataNascCli` from `CLIENTES`  ;

-- --------------------------------------------------------

--
-- Structure for view `vw_MEDICOS`
--
DROP TABLE IF EXISTS `vw_MEDICOS`;

CREATE ALGORITHM=UNDEFINED DEFINER=`dojidomal`@`%` SQL SECURITY DEFINER VIEW `vw_MEDICOS` (`Nome_Completo`, `Data_de_Nascimento`, `CRM`) AS   select `MEDICOS`.`nome` AS `nome`,`MEDICOS`.`dataNascMed` AS `dataNascMed`,`MEDICOS`.`crm` AS `crm` from `MEDICOS`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CIRURGIAS`
--
ALTER TABLE `CIRURGIAS`
  ADD KEY `crm` (`crm`),
  ADD KEY `cpf` (`cpf`),
  ADD KEY `andar` (`andar`,`numero`);

--
-- Indexes for table `CLIENTES`
--
ALTER TABLE `CLIENTES`
  ADD PRIMARY KEY (`cpf`);

--
-- Indexes for table `MEDICOS`
--
ALTER TABLE `MEDICOS`
  ADD PRIMARY KEY (`crm`);

--
-- Indexes for table `SALAS`
--
ALTER TABLE `SALAS`
  ADD PRIMARY KEY (`andar`,`numero`);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `CIRURGIAS`
--
ALTER TABLE `CIRURGIAS`
  ADD CONSTRAINT `CIRURGIAS_ibfk_1` FOREIGN KEY (`crm`) REFERENCES `MEDICOS` (`crm`),
  ADD CONSTRAINT `CIRURGIAS_ibfk_2` FOREIGN KEY (`cpf`) REFERENCES `CLIENTES` (`cpf`),
  ADD CONSTRAINT `CIRURGIAS_ibfk_3` FOREIGN KEY (`andar`,`numero`) REFERENCES `SALAS` (`andar`, `numero`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
