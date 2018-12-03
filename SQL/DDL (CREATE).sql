CREATE TABLE MEDICOS(
    nome varchar(50) not null,
    usuario varchar(30) not null,
    senha varchar(8) not null,
    salario decimal(10,2) not null,
    dataNascMed date not null,
    crm int not null,
    primary key (crm)
);

CREATE TABLE CLIENTES(
    nome varchar(50) not null,
    dataNascCli date not null,
    cpf varchar(11) not null,
    primary key (cpf) 
);

CREATE TABLE SALAS(
    andar varchar(2) not null,
    numero int not null,
    primary key(andar, numero)
);

CREATE TABLE CIRURGIAS(
    dataCir datetime not null,
    feedback varchar(255) not null,
    crm int not null,
    foreign key (crm) references MEDICOS(crm),
    cpf varchar(11) not null,
    foreign key (cpf) references CLIENTES(cpf),
    andar varchar(2) not null,
    numero int not null,
    foreign key (andar, numero) references SALAS(andar, numero)
);