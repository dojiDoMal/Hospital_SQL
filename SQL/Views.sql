CREATE VIEW vw_CLIENTES (Nome_Completo, Data_de_Nascimento) 
AS SELECT nome, dataNascCli FROM CLIENTES;

CREATE VIEW vw_MEDICOS (Nome_Completo, Data_de_Nascimento, CRM)
AS SELECT nome, dataNascMed, crm FROM MEDICOS;