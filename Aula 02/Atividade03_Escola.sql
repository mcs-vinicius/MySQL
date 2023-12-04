-- Criando Banco de Dados
CREATE DATABASE db_escola_atividade03;

-- Criação da tabela
CREATE TABLE tb_alunos(
id bigint auto_increment,
nome varchar(255),
idade int,
sexo char,
periodo varchar(5),
serie varchar(5),
nota decimal (3,1),
PRIMARY KEY (id));

-- Inserção de dados
INSERT INTO tb_alunos(nome, idade, sexo, periodo, serie, nota)
VALUES ("Vinicius", 13, "M", "Manhã", "6° B", 9.5),
("Sponja", 13, "M", "Manhã", "6° B", 9.0),
("Braia", 12, "M", "Manhã", "6° B", 5.0), 
("Luiza", 13, "F", "Manhã", "6° B", 10.0),
("Amanda", 13, "F", "Manhã", "6° B", 10.0),
("Gabriel", 12, "M", "Manhã", "6° B", 4.0),
("GOAT", 12, "M", "Manhã", "6° B", 8.0),
("Natan", 12, "M", "Manhã", "6° B", 03.0);

-- Atualização de dados
UPDATE tb_alunos SET nota=10.0 WHERE id=6;

-- Exibição de dados
SELECT * FROM tb_alunos;
SELECT * FROM tb_alunos WHERE nota>7;
SELECT * FROM tb_alunos WHERE nota<7;