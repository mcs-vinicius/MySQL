-- Criar Banco
CREATE DATABASE db_generation_game_online; 
USE db_generation_game_online;

-- Criando tabela classes
CREATE TABLE tb_classes (
id bigint auto_increment,
categoria varchar(255) NOT NULL,
dano_fisico bigint NOT NULL,
dano_magico bigint NOT NULL,
PRIMARY KEY(id));

-- Inserção de dados
-- Maximo de Dano fisico 3.000 | Maximo de Dano Magico 3.000
INSERT INTO tb_classes(categoria, dano_fisico, dano_magico)
VALUES ("Druida", 1500, 700),
("Mago", 0, 3000),
("Necromante", 300, 2700),
("Arqueiro", 3000, 0),
("Barbaro", 1500, 0),
("Assassino", 2700, 300),
("Paladino", 700, 700),
("Bardo", 300, 300);

-- Criando tabela Personagens
CREATE TABLE tb_personagens (
id bigint auto_increment,
nome varchar(255),
raca varchar(100),
vida bigint,
defesa_fisica bigint,
defesa_magica bigint,
armamento varchar(100),
nivel int,
classe_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes(id));

-- Inserção de dados
-- Maximo de Dano fisico 3.000 | Maximo de Dano Magico 3.000 | Maximo nivel 100 | Maximo vida 5000
INSERT INTO tb_personagens (nome, raca, vida, defesa_fisica, defesa_magica, armamento, nivel, classe_id)
VALUES ("Pablo","Vampiro", 800 , 300, 700,"Cajado", 37, 2 ),
("Sponja","Gnomo", 800 , 300, 700,"CoguJado", 37, 2 ),
("Felipe","Andromeda",900 , 400, 800,"Foice-Do-Capiroto", 57, 3 ),
("Venis","Elfo", 900 , 600, 300,"Arco", 37, 4 ),
("Gabriel","Globin", 4800 , 2900, 1800 ,"Marreta", 50, 7 ),
("Rafael","Bardo", 5000 , 3000, 3000, "Flauta", 70, 8 ),
("Luluiza","Gnomo", 1400 , 800, 800, "Adagas-Hippie", 100, 6 ),
("Amandinha","Humano", 4300 , 1900, 1200, "Cutelo-Negro", 100, 5 );

-- Visualizar dados das tabelas tb_classes e tb_personagens.
SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

-- Exibir todos os personagens com o poder de ataque (fisico/magico).
SELECT nome, tb_classes.dano_fisico, tb_classes.dano_magico
FROM tb_personagens
INNER JOIN tb_classes ON classe_id = tb_classes.id WHERE tb_classes.dano_fisico > 2000 OR tb_classes.dano_magico > 2000 ORDER BY nome;

-- Personagens cujo o pode de ataque (fisico/magico) esteja entre 1000 e 2000.
SELECT nome, tb_classes.dano_fisico, tb_classes.dano_magico
FROM tb_personagens
INNER JOIN tb_classes ON classe_id = tb_classes.id WHERE tb_classes.dano_fisico BETWEEN 1000 and 2000 OR tb_classes.dano_magico BETWEEN 1000 and 2000;

-- Personagens cujo possuem uma letra "c" no nome. 
SELECT nome, raca, vida, armamento, nivel, tb_classes.categoria, tb_classes.dano_fisico, tb_classes.dano_magico, defesa_fisica, defesa_magica 
FROM tb_personagens
INNER JOIN tb_classes ON classe_id = tb_classes.id 
WHERE nome LIKE "%c%" ORDER BY nome; 

-- Exibir todos os personagens.
SELECT nome, raca, vida, armamento, nivel, tb_classes.categoria, tb_classes.dano_fisico, tb_classes.dano_magico, defesa_fisica, defesa_magica 
FROM tb_personagens
INNER JOIN tb_classes ON classe_id = tb_classes.id ORDER BY nome; 

-- Exibir todos os personagens da classe Mago.
SELECT nome, raca, vida, armamento, nivel, tb_classes.categoria, tb_classes.dano_fisico, tb_classes.dano_magico, defesa_fisica, defesa_magica 
FROM tb_personagens
INNER JOIN tb_classes ON classe_id = tb_classes.id 
WHERE tb_classes.categoria = "Mago" ORDER BY nome; 