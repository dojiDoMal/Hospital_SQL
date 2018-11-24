--Populacao_Da_Tabela_Medicos

INSERT INTO MEDICOS(nome, usuario, senha, salario, dataNascMed, crm)
VALUES('Felipe Kauê Gomes', 'feGomes2018', 'Rpo3SWle', 5470.90, 19930622, 11402);
INSERT INTO MEDICOS(nome, usuario, senha, salario, dataNascMed, crm)
VALUES('Mário Gustavo Jesus', 'gugaJESUS', 'u8dtW9AA', 4961.90, 19931215, 8334);
INSERT INTO MEDICOS(nome, usuario, senha, salario, dataNascMed, crm)
VALUES('Andreia Rebeca Peixoto', 'rebeca_peixoto93', 'r2CO7OZ2', 4960.00, 19930123, 11027);
INSERT INTO MEDICOS(nome, usuario, senha, salario, dataNascMed, crm)
VALUES('Sueli Melissa Costa', 'sueli-top', 'PqXbd0Eq', 5000.00, 19851020, 11006);
INSERT INTO MEDICOS(nome, usuario, senha, salario, dataNascMed, crm)
VALUES('Silvana Giovanna Luiza da Luz', 'LUZ_silvana989', '4iQJYGOf', 5020.00, 19900911, 32011);
INSERT INTO MEDICOS(nome, usuario, senha, salario, dataNascMed, crm)
VALUES('Mário Lucas Iago Moreira', 'lukas.mario10', 'uRrELtEc', 3298.20, 19910810, 12199);
INSERT INTO MEDICOS(nome, usuario, senha, salario, dataNascMed, crm)
VALUES('Rita Isabelle Alícia', 'ritinhaBELA', 't9ee1234', 4500.00, 19940216, 8312);
INSERT INTO MEDICOS(nome, usuario, senha, salario, dataNascMed, crm)
VALUES('Ricardo Erick Kevin Caldeira', 'kelvin_cal', 'CX0rKtBl', 5020.00, 19910517, 15011);
INSERT INTO MEDICOS(nome, usuario, senha, salario, dataNascMed, crm)
VALUES('Rosângela Betina Antônia', 'rosa2222BA', 'ytalgtGT', 3298.20, 19800909, 10199);
INSERT INTO MEDICOS(nome, usuario, senha, salario, dataNascMed, crm)
VALUES('Henry Thiago Caldeira', 'henry.TT2018', 'esC12rpx', 4500.00, 19810422, 34558);

--Populacao_Da_Tabela_Clientes

INSERT INTO CLIENTES(nome, dataNascCli, cpf)
VALUES ('Manuel Arthur Monteiro', 19891120, 94915114325);
INSERT INTO CLIENTES(nome, dataNascCli, cpf)
VALUES ('Cristiane Malu Aragão', 20021004, 24845737310);
INSERT INTO CLIENTES(nome, dataNascCli, cpf)
VALUES ('Mateus Thomas Marcelo Nogueira', 19901002, 94915740935);
INSERT INTO CLIENTES(nome, dataNascCli, cpf)
VALUES ('Jorge Guilherme Dias', 19850629, 57688940935);
INSERT INTO CLIENTES(nome, dataNascCli, cpf)
VALUES ('Flávia Cláudia Luzia Caldeira', 19981017, 88723417310);
INSERT INTO CLIENTES(nome, dataNascCli, cpf)
VALUES ('Benedito Felipe Breno Martins', 20000313, 57990840935);
INSERT INTO CLIENTES(nome, dataNascCli, cpf)
VALUES ('Osvaldo Pietro Geraldo Figueiredo', 19890207, 34990774325);
INSERT INTO CLIENTES(nome, dataNascCli, cpf)
VALUES ('Daiane Luana Alice Teixeira', 19970322, 66980834935);
INSERT INTO CLIENTES(nome, dataNascCli, cpf)
VALUES ('Larissa Carla Milena', 19891216, 52585662349);
INSERT INTO CLIENTES(nome, dataNascCli, cpf)
VALUES ('Caio Kaique Teixeira', 20010305, 12419068319);
INSERT INTO CLIENTES(nome, dataNascCli, cpf)
VALUES ('Levi Thomas Jorge Aparício', 19990701, 90101292333);
INSERT INTO CLIENTES(nome, dataNascCli, cpf)
VALUES ('Rodrigo César Silveira', 20000512, 23496432390);
INSERT INTO CLIENTES(nome, dataNascCli, cpf)
VALUES ('Isaac Juan Silveira', 20000619, 55580009372);
INSERT INTO CLIENTES(nome, dataNascCli, cpf)
VALUES ('Vitor Caleb Cardoso', 20010123, 36765068319);
INSERT INTO CLIENTES(nome, dataNascCli, cpf)
VALUES ('Vitória Laís Ferreira', 19730911, 68319771091);
INSERT INTO CLIENTES(nome, dataNascCli, cpf)
VALUES ('Ester Laura Cláudia', 19991025, 19887295524);
INSERT INTO CLIENTES(nome, dataNascCli, cpf)
VALUES ('Nicole Sebastiana Jesus', 20000303, 29981452390);
INSERT INTO CLIENTES(nome, dataNascCli, cpf)
VALUES ('Rebeca Carolina Rosângela', 20050530, 23299009372);
INSERT INTO CLIENTES(nome, dataNascCli, cpf)
VALUES ('Jennifer Milena Jesus', 19930226, 34559068319);
INSERT INTO CLIENTES(nome, dataNascCli, cpf)
VALUES ('Eduarda Stella Hadassa Vieira', 19800612, 49023068319);

--Mais de 65 anos

INSERT INTO `CLIENTES` (`nome`, `dataNascCli`, `cpf`) 
VALUES ('Filipe Raul Felipe Dias', '1952-05-03', '42589224125'), ('Nelson André Yuri Souza', '1952-02-18', '11149443600'), ('Oliver Eduardo Barros', '1952-05-25', '82147821551'), ('Manoel Osvaldo Alves', '1952-09-04', '98414347509'), ('Osvaldo Luís Melo', '1952-01-08', '71594300429'), ('Rita Alessandra Nicole Lima', '1952-04-11', '91441753109'), ('Agatha Elisa Giovanna', '1952-06-12', '71010155490'), ('Sara Olivia Jesus', '1952-03-18', '11009647628'), ('Raquel Caroline Bianca Pinto', '1952-12-04', '43630106889'), ('Larissa Sophia Julia Lopes', '1952-06-11', '36382058432');


--Populacao_Da_Tabela_Salas

INSERT INTO SALAS (andar, numero)
VALUES ('T', 2);
INSERT INTO SALAS (andar, numero)
VALUES ('T', 3);
INSERT INTO SALAS (andar, numero)
VALUES ('T', 4);
INSERT INTO SALAS (andar, numero)
VALUES ('T', 5);
INSERT INTO SALAS (andar, numero)
VALUES ('1', 1);
INSERT INTO SALAS (andar, numero)
VALUES ('1', 3);
INSERT INTO SALAS (andar, numero)
VALUES ('1', 5);
INSERT INTO SALAS (andar, numero)
VALUES ('1', 7);
INSERT INTO SALAS (andar, numero)
VALUES ('1', 9);
INSERT INTO SALAS (andar, numero)
VALUES ('2', 10);
INSERT INTO SALAS (andar, numero)
VALUES ('2', 12);
INSERT INTO SALAS (andar, numero)
VALUES ('2', 14);
INSERT INTO SALAS (andar, numero)
VALUES ('2', 16);
INSERT INTO SALAS (andar, numero)
VALUES ('2', 18);
INSERT INTO SALAS (andar, numero)
VALUES ('3', 2);
INSERT INTO SALAS (andar, numero)
VALUES ('3', 5);
INSERT INTO SALAS (andar, numero)
VALUES ('3', 8);
INSERT INTO SALAS (andar, numero)
VALUES ('3', 11);
INSERT INTO SALAS (andar, numero)
VALUES ('3', 13);

--Populacao_Da_Tabela_Cirurgias

INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('2', 16, 19887295524, 8334, '2015-11-05 14:29:36', 'Medico muito atencioso e prestativo.');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('3', 11, 23299009372, 15011, '2017-10-01 10:32:40', 'Não gostei da demora na sala de preparação, me deixou ansiosa.');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('3', 11, 55580009372, 11402, '2016-02-10 15:24:59', 'Me sinto muito bem após a cirurgia. Equipe de médicos excelente.');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('1', 7, 12419068319, 32011, '2016-12-13 11:19:27', 'Péssimo serviço, não resolveu meu problema!');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('1', 9, 88723417310, 12199, '2017-05-09 17:12:20', 'Péssimo atendimento, mais de uma hora no aguardo pra ser chamado, com febre, 3 dias sem comer nada e não conseguindo respirar direito!');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('2', 16, 57688940935, 12199, '2017-05-09 17:58:02', 'Não gostei da desorganização e da burocracia');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('2', 10, 34559068319, 34558, '2016-04-02 15:09:24', 'Como um plano faz uma criança especial esperar um cateterismo em jejum e depois liga dizendo que não tem vaga na UTI pediátrica?');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('2', 12, 24845737310, 12199, '2017-05-09 16:09:13', 'Sugestão: Expandir o numero de Centros Integrados de Atendimento para os bairros periféricos.');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('T', 2, 36765068319, 8312, '2016-02-12 14:10:47', 'Atendimento Administrativo Financeiro de Péssimo Qualidade!');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('T', 3, 57688940935, 11006, '2015-10-17 13:09:40', 'Rede ampla e com todas as especialidades e Hospitais Padrão Ouro');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('T', 4, 66980834935, 10199, '2016-09-25 15:33:21', 'Sinceramente plano carissimo quando é um simples procedimento tem q se deslocar bastante pra pegar autorização');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('T', 5, 90101292333, 11402, '2017-08-16 15:41:59', 'Sou cliente já há um bom tempo, sempre que precisei fui muito bem atendida. Graças a Deus!');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('3', 13, 34559068319, 15011, '2016-03-21 10:44:50', 'Horrível, alegaram que não sabem quais os equipamentos que vão precisar pois o médico não especificou.');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('3', 11, 19887295524, 11027, '2015-06-10 11:32:20', 'Burocrática, tem um péssimo atendimento e comunicação interna.');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('3', 8, 49023068319, 8334, '2017-10-29 12:29:01', 'Atendimento fraquíssimo, especialmente aos sábados.');

 --

INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('T', 2, 34559068319, 8334, '2017-10-01 10:30:05', 'Excelente profissional.');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('T', 3, 23299009372, 8334, '2017-10-02 11:42:41', 'Gostei do atendimento. Foram muito simpáticos.');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('T', 4, 68319771091, 8334, '2017-10-03 12:52:19', 'Apesar de não estar 100%, tudo correu bem.');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('1', 3, 36765068319, 8334, '2017-10-05 13:19:10', 'Procedimento muito bem conduzido.');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('1', 3, 23496432390, 8334, '2017-10-07 14:10:05', 'Alguns equipamentos estavam desgastados.');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('2', 12, 55580009372, 8334, '2017-10-08 15:22:14', 'Graças a deus deu tudo certo! Muito Obrigado.');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('2', 12, 12419068319, 8334, '2017-10-08 16:18:20', 'Me senti muito confiante antes e durante a cirurgia :)');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('3', 8, 88723417310, 8334, '2017-10-09 17:03:11', 'Pouca gente na recepção');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('3', 11, 12419068319, 8334, '2017-10-11 10:17:45', 'Mais uma vez fui mal atendido, pra variar...');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('3', 13, 24845737310, 8334, '2017-10-23 11:34:28', 'Atendimento ótimo, mesmo sendo um sábado.');

--

INSERT INTO SALAS (andar, numero)
VALUES ('D', 14);
INSERT INTO MEDICOS (nome, dataNascMed, crm, usuario, senha, salario)
VALUES ('Carlos de Moura Carvalho', 19820430, 11011, 'CARLOS_SOLRAC', 'uygbU432', 11690.30);
INSERT INTO MEDICOS(nome, usuario, senha, salario, dataNascMed, crm)
VALUES('Eudes Pontes Bento', 'eu_pb2255', 'iuhIU908', 12000.20, 19801005, 1019);
INSERT INTO MEDICOS(nome, usuario, senha, salario, dataNascMed, crm)
VALUES('Allana Roberta Falcão', 'allana.murd3', 'pijnOPUG', 10005.90, 19750620, 3455);

INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('3', 11, 12419068319, 15011, '2017-05-01 10:10:45', 'Mes sinto muito bem após a a cirurgia');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('3', 11, 88723417310, 15011, '2017-05-02 11:21:33', 'Quero agradecer profundamente aos profissionais que realizaram o procedimento');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('3', 11, 55580009372, 15011, '2017-05-03 12:33:10', 'Muito demorado');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('3', 11, 68319771091, 15011, '2017-05-04 13:15:21', 'Infelizmente vou precisar remarcar a cirurgia');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('3', 11, 23299009372, 15011, '2017-05-05 14:09:13', 'Foi muito doloroso');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('3', 11, 34559068319, 15011, '2017-05-06 15:46:29', 'Esperei um mês pra essa cirurgia');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('3', 11, 94915740935, 15011, '2017-05-07 16:20:04', 'Atendimento muito fraco, precisa melhorar');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('3', 11, 24845737310, 15011, '2017-05-08 17:04:47', 'Precisa de mais enfermeiros');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('3', 11, 68319771091, 15011, '2017-05-09 10:45:28', 'Estrutura da sala estava precária');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('3', 11, 23299009372, 15011, '2017-05-10 11:38:16', 'Muito medo mas deu tudo certo');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('3', 11, 52585662349, 15011, '2017-05-11 12:46:44', 'ODIEI a demora');

INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('3', 11, 12419068319, 15011, '2017-05-12 10:02:26', 'PESSIMO MEDICO, muito ruim');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('3', 11, 88723417310, 15011, '2017-05-13 11:12:59', 'Pago um plano carissimo pra ser mal atendido');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('3', 11, 55580009372, 15011, '2017-05-14 12:00:25', 'Vou processar pelo deserviço que fizeram!');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('3', 11, 68319771091, 15011, '2017-05-15 13:26:41', 'Covardes, pago o plano em dia e depois fazem cobrança');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('3', 11, 23299009372, 15011, '2017-05-16 14:31:14', 'Gosto muito do DR ricardo');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('3', 11, 34559068319, 15011, '2017-05-17 15:35:59', 'Excelente profissional');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('3', 11, 94915740935, 15011, '2017-05-18 16:45:06', 'Muito atencioso o tempo todo');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('3', 11, 24845737310, 15011, '2017-05-19 17:27:47', 'Quando vão liberar meus resultados?');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('3', 11, 68319771091, 15011, '2017-05-20 10:06:22', 'Faltam mais 4');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('3', 11, 23299009372, 15011, '2017-05-21 11:28:18', 'GRAÇAS A DEUS CORREU BEM');
INSERT INTO CIRURGIAS (andar, numero, cpf, crm, dataCir, feedback)
VALUES ('3', 11, 52585662349, 15011, '2017-05-22 12:51:40', 'A máquina estava com defeito, precisou trocar');

INSERT INTO `CIRURGIAS` (`dataCir`, `feedback`, `crm`, `cpf`, `andar`, `numero`) 
VALUES ('2018-10-14 14:12:42', 'O médico soube conduzir o procedimento de forma exemplar', '1019', '36765068319', 'D', '14'), ('2018-10-15 17:13:34', 'Muito bom', '11402', '52585662349', 'D', '14'), ('2018-10-16 15:07:25', 'Médica top!!! Exemplo de profissional', '3455', '90101292333', 'D', '14'), ('2018-10-17 16:28:08', 'Muito cuidadosa, gostei!', '10199', '12419068319', 'D', '14'), ('2018-10-18 11:47:20', 'Tirei todas as minha dúvidas, que alívio', '32011', '66980834935', 'D', '14');