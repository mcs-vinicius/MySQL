-- Criar banco de dados
CREATE DATABASE db_quitanda;

-- Informar o db onde será criado a tabela, e execute...
USE db_quitanda;

-- Criar uma tabela
CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(255) NOT NULL,
quantidade int,
data_validade date,
preco decimal NOT NULL,
PRIMARY KEY(id)
);

-- Inserir dados de um produto na tabela
INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("Tomate", 100, "2023-12-20", 8.00);

-- Inserir varios dados na tabela
INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("Tomate", 100, "2023-12-20", 8.00),
("Maça", 100, "2023-12-20", 11.00),
("Laranja", 100, "2023-12-10", 15.00),
("Banana", 100, "2023-12-15", 11.00),
("Uva", 100, "2023-12-09", 3.00),
("Melancia", 100, "2023-12-23", 20.00);

-- O "6,2" informa que eu terei 6 digitos e 2 decimais "123456.12"
ALTER TABlE tb_produtos MODIFY preco decimal(6,2);
-- Atualizar dados
UPDATE tb_produtos SET preco = 11.90 WHERE id=4;

-- Apaga a tabela
DROP TABLE tb_produtos;
-- Apaga Banco de dados
DROP DATABASE db_quitanda;

-- Delete
DELETE FROM tb_produtos WHERE id=1;

-- ADD um novo atributo
ALTER TABLE tb_produtos ADD descricao varchar(255);
-- Remove um novo atributo
ALTER TABLE tb_produtos DROP descricao;
-- Alterar nome do atributo da tabela.
ALTER TABLE tb_produtos CHANGE nome nome_produto varchar(255);

-- Exibir informações
SELECT * FROM tb_produtos;
-- Especificando somente os dados que quero ver
SELECT nome_produto, preco FROM tb_produtos;
SELECT * FROM tb_produtos WHERE id=2;
SELECT * FROM tb_produtos WHERE data_validade="2023-12-20";
-- Operadores Logicos
SELECT * FROM tb_produtos WHERE preco > 15.00;
SELECT * FROM tb_produtos WHERE preco > 10.00 AND nome_produto = "Maça";
SELECT * FROM tb_produtos WHERE NOT id=2;
-- Formatação
SELECT nome_produto, CONCAT ('R$:',FORMAT(preco, 2, 'pt-br')) AS preco FROM tb_produtos;
SELECT nome_produto, DATE_FORMAT(data_validade,'%d/%m/%Y') AS data_validade FROM tb_produtos;

SELECT @@collation_database;
