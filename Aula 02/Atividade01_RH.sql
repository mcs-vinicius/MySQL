-- Criando Banco de Dados
CREATE DATABASE db_rh_Atividade01;

-- Criação da tabela
CREATE TABLE tb_funcionarios(
id bigint auto_increment,
nome varchar(255) NOT NULL,
idade int,
sexo char,
cpf varchar(14) NOT NULL,
data_admissao date,
cargo varchar(30),
salario decimal(7,2) NOT NULL,
setor varchar(30),
PRIMARY KEY (id));
 
 -- Inserção de dados
INSERT INTO tb_funcionarios (nome, idade, sexo, cpf, data_admissao, cargo, salario, setor)
VALUES ("Geriscleuso", 31, 'M', "841.159.710-53", "2019-03-12", "DBA Senior", 16500.50, "Data Center"),
("Clariosvaldo", 43, 'M', "607.926.170-70", "2017-01-04", "DBA Especialista", 28800.90, "Data Center"),
("Gertrudes", 49, 'F', "083.265.660-71", "2015-01-30", "C.O", 43500.40, "Administrador"),
("Mariscleusa", 28, 'F', "042.491.290-20", "2022-12-12", "Desenvolvedor Junior", 3950.30, "Desenvolvimento"),
("Claudinei", 23, 'M', "976.790.000-42", "2020-09-10", "Desenvolvedor Pleno", 8300.70, "Data Center"), 
("Goat", 29, 'M', "144.332.800-62", "2022-07-01", "Estagiario", 1500.50, "Desenvolvimento");

-- Atualização de dados
UPDATE tb_funcionarios SET salario=1999.99 WHERE id=6;

 -- Exibição de dados
SELECT * FROM tb_funcionarios;
SELECT * FROM tb_funcionarios WHERE salario > 2000.00;
SELECT * FROM tb_funcionarios WHERE salario < 2000.00;