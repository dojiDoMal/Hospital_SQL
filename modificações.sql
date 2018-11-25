
--inserção de consultas do carlos para clientes com mais de 65 anos

INSERT INTO `CIRURGIAS` (`dataCir`, `feedback`, `crm`, `cpf`, `andar`, `numero`) VALUES ('2018-09-17 14:09:51', 'Nada a reclamar', '11011', '23496432390', '2', '18'), ('2018-09-18 11:16:41', 'hospital confortável', '11011', '11009647628', '2', '10'), ('2018-09-19 13:27:20', 'equipe capacitada', '11011', '11149443600', '1', '9'), ('2018-09-20 16:34:48', 'pago o plano de saúde pra ter esse atendimento lixo...', '11011', '36382058432', 'T', '5'), ('2018-09-21 10:52:34', 'médico confiável', '11011', '71594300429', '3', '8'), ('2018-09-22 17:13:33', 'não vou com a cara desse pessoal...', '11011', '90101292333', '1', '7'), ('2018-09-23 14:25:10', 'só tive aborrecimentos!', '11011', '55580009372', '3', '8'), ('2018-09-24 15:18:50', 'deviam fechar essa merda, não presta!', '11011', '23299009372', 'T', '4'), ('2018-09-25 14:19:48', 'só tenho a agradecer.', '11011', '34559068319', '3', '11'), ('2018-09-26 15:52:18', 'ocorreu normalmente.', '11011', '29981452390', '2', '10');

--query para o item c

SELECT CLIENTES.nome FROM CLIENTES, CIRURGIAS WHERE CLIENTES.cpf = CIRURGIAS.cpf AND YEAR(CLIENTES.dataNascCli) < 1953 AND CIRURGIAS.crm = 11011;

--query para o item d

SELECT MEDICOS.nome FROM MEDICOS, CIRURGIAS WHERE MEDICOS.crm = CIRURGIAS.crm AND MEDICOS.salario > 10000.00 AND MONTH(CIRURGIAS.dataCir) = 05 GROUP BY CIRURGIAS.crm HAVING COUNT(CIRURGIAS.crm) = 45;
