-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 24-Nov-2018 às 04:57
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
('2017-10-01 10:32:40', 'Não gostei da demora na sala de preparação, me deixou ansiosa.', 15011, '23299009372', '3', 11),
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
('2016-03-21 10:44:50', 'Horrível, alegaram que não sabem quais os equipamentos que vão precisar pois o médico não especificou.', 15011, '34559068319', '3', 13),
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
('2017-10-23 11:34:28', 'Atendimento ótimo, mesmo sendo um sábado.', 8334, '24845737310', '3', 13);

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
('Caio Kaique Teixeira', '2001-03-05', '12419068319'),
('Ester Laura Cláudia', '1999-10-25', '19887295524'),
('Rebeca Carolina Rosângela', '2005-05-30', '23299009372'),
('Rodrigo César Silveira', '2000-05-12', '23496432390'),
('Cristiane Malu Aragão', '2002-10-04', '24845737310'),
('Nicole Sebastiana Jesus', '2000-03-03', '29981452390'),
('Jennifer Milena Jesus', '1993-02-26', '34559068319'),
('Osvaldo Pietro Geraldo Figueiredo', '1989-02-07', '34990774325'),
('Vitor Caleb Cardoso', '2001-01-23', '36765068319'),
('Eduarda Stella Hadassa Vieira', '1980-06-12', '49023068319'),
('Larissa Carla Milena', '1989-12-16', '52585662349'),
('Isaac Juan Silveira', '2000-06-19', '55580009372'),
('Jorge Guilherme Dias', '1985-06-29', '57688940935'),
('Benedito Felipe Breno Martins', '2000-03-13', '57990840935'),
('Daiane Luana Alice Teixeira', '1997-03-22', '66980834935'),
('Vitória Laís Ferreira', '1973-09-11', '68319771091'),
('Flávia Cláudia Luzia Caldeira', '1998-10-17', '88723417310'),
('Levi Thomas Jorge Aparício', '1999-07-01', '90101292333'),
('Manuel Arthur Monteiro', '1989-11-20', '94915114325'),
('Mateus Thomas Marcelo Nogueira', '1990-10-02', '94915740935');

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
('Rita Isabelle Alícia', 'ritinhaBELA', 't9ee1234', '4500.00', '1994-02-16', 8312),
('Mário Gustavo Jesus', 'gugaJESUS', 'u8dtW9AA', '4961.90', '1993-12-15', 8334),
('Rosângela Betina Antônia', 'rosa2222BA', 'ytalgtGT', '3298.20', '1980-09-09', 10199),
('Sueli Melissa Costa', 'sueli-top', 'PqXbd0Eq', '5000.00', '1985-10-20', 11006),
('Andreia Rebeca Peixoto', 'rebeca_peixoto93', 'r2CO7OZ2', '4960.00', '1993-01-23', 11027),
('Felipe Kauê Gomes', 'feGomes2018', 'Rpo3SWle', '5470.90', '1993-06-22', 11402),
('Mário Lucas Iago Moreira', 'lukas.mario10', 'uRrELtEc', '3298.20', '1991-08-10', 12199),
('Ricardo Erick Kevin Caldeira', 'kelvin_cal', 'CX0rKtBl', '5020.00', '1991-05-17', 15011),
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
