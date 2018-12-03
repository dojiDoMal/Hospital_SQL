--ENTIDADES
--*O médico é caracterizado pelo nome completo, data de nascimento, CRM único (PRIMARY KEY), usuário único, senha, salário e uma lista de clientes.
--*Um cliente é formado pelo nome completo, data de nascimento e CPF único (PRIMARY KEY).
--*A cirurgia identifica-se pelo médico que a realizou (FOREIGN KEY), pelo cliente atendido (FOREIGN KEY), pela sala em que foi realizada, pela data e hora, e atribui-se feedback.
--*As salas são identificadas pelo andar e pelo número que formam uma combinação única.
--*O Gerente é caracterizado pelo nome completo, data de nascimento, matrícula uníca (PRIMARY KEY), salário, usuário único e senha.

--RELACIONAMENTOS
--*O hospital possuirá pelo menos um médico (1,N). 
--*Um médico pode atender nenhum ou vários clientes (0,N).
--*O hospital possui n salas (N,M).
--*O hospital deve possuir pelo menos um gerente (1,N). 
--*A cirurgia depende da solicitação do cliente (0,N).

