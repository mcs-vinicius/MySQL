-- Criando Banco de Dados
CREATE DATABASE db_ecommerce_atividade02;

-- Criação da tabela
CREATE TABLE tb_produtos (
id bigint auto_increment,
nome_produto varchar(255) NOT NULL,
marca varchar(50) NOT NULL,
tipo varchar(50),
preco decimal(5,2) NOT NULL,
quantidade int NOT NULL,
PRIMARY KEY (id));

-- Inserção de dados
INSERT INTO tb_produtos(nome_produto, marca, tipo, preco, quantidade)
VALUES ("Casaco de Pele", "PRADA", "Vestuario", 850.99, 23),
("Jaqueta de Couro", "PRADA", "Vestuario", 999.99, 31),
("Bota", "Gucci", "Calçado", 731.23, 12),
("Tenis", "Nike", "Calçado", 430.10, 19),
("Papete do Senninha", "Senninha", "Calçado", 730.10, 10),
("Chapéu do seu Jorge", "Seu Jorge", "Vestuario", 230.10, 8),
("Papete do Guga", "Guga", "Calçado", 350.10, 9),
("LapTop da Xuxa", "Xuxa inc", "Informatica", 120.10, 2);

-- Atualização de dados
UPDATE tb_produtos SET quantidade = 100 WHERE id=8;
 
 -- Exibição de dados
SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;
