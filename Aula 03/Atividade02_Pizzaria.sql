-- Criar Banco
CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

-- Criar tabela
CREATE TABLE tb_categorias(
id bigint auto_increment,
categoria varchar(100),
tipo_massa varchar(100),
PRIMARY KEY (id));

-- Inserção de dados
INSERT INTO tb_categorias(categoria, tipo_massa)
VALUES ("Salgada", "siciliana"),
("Salgada", "massa napolitana"),
("Doce", "Coco"),
("Doce", "Chocolate");

-- Criar tabela
CREATE TABLE tb_pizzas(
id bigint auto_increment,
nome varchar(50),
ingredientes varchar(400),
valor decimal(4,2),
categoria_id bigint,
PRIMARY KEY(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id));

-- Inserção de dados
INSERT INTO tb_pizzas(nome, ingredientes, valor, categoria_id)
VALUES ("Cinco Queijos", "Muçarela, provolone, catupiry, gorgonzola, parmesão, tomate", 49.59, 1),
("Escarola com Tomate Seco", "Escarola, muçarela e tomate seco", 49.59, 2),
("Nordestina", "Carne seca e muçarela", 54.00, 1),
("Portuguesa", "Presunto, ervilha, palmito, muçarela, ovo e cebola", 50.00, 2),
("Brigadeiro Branco", "Creme de chocolate branco com granulado branco", 43.00 , 4),
("Romeu e Julieta", "Goiabada e muçarela", 45.00, 3),
("Paçoca", "Doce leite paçoca", 47.00, 4),
("Chocolate com morango", "Creme de chocolate com morango", 50.00, 3);

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;

-- Exibir pizzas com o valor acima de R$:45,00.
SELECT nome, ingredientes, valor, tb_categorias.categoria, tb_categorias.tipo_massa
FROM tb_pizzas
INNER JOIN  tb_categorias ON categoria_id = tb_categorias.id WHERE tb_pizzas.valor > 45.00;

-- Exibir pizzas com o valor entre R$:50,00 e R$:100,00
SELECT nome, ingredientes, valor, tb_categorias.categoria, tb_categorias.tipo_massa
FROM tb_pizzas
INNER JOIN tb_categorias ON categoria_id = tb_categorias.id WHERE tb_pizzas.valor BETWEEN 50.00 and  100.00;

-- Exibir pizzas que possuem a letra M
SELECT nome, ingredientes, valor, tb_categorias.categoria, tb_categorias.tipo_massa
FROM tb_pizzas
INNER JOIN tb_categorias ON categoria_id = tb_Categorias.id WHERE nome LIKE "%m%" ORDER BY nome;

-- Exibir todos os dados
SELECT nome, ingredientes, valor, tb_categorias.categoria, tb_categorias.tipo_massa
FROM tb_pizzas
INNER JOIN tb_categorias ON categoria_id = tb_categorias.id ORDER BY nome;

-- Exibir todos os dados de uma determinada categoria
SELECT nome, ingredientes, valor, tb_categorias.categoria, tb_categorias.tipo_massa
FROM tb_pizzas
INNER JOIN tb_categorias ON categoria_id = tb_categorias.id WHERE tb_categorias.categoria = "Doce" ORDER BY valor;