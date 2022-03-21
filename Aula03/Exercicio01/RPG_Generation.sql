CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
id bigint AUTO_INCREMENT NOT NULL,
classe varchar(255),
subclasse varchar(255),
classeavancada varchar(255),
PRIMARY KEY(id)
);

INSERT INTO tb_classe (classe, subclasse, classeavancada)
VALUES ("Padre", "Curandeiro","Paladino");

INSERT INTO tb_classe (classe, subclasse, classeavancada)
VALUES ("Ladrão", "Traiçoeiro", "Assassino");

INSERT INTO tb_classe (classe, subclasse, classeavancada)
VALUES ("Arqueiro", "Domador", "Mestre das Feras");

INSERT INTO tb_classe (classe, subclasse, classeavancada)
VALUES ("Aprendiz", "Super Aprendiz", "Mago");

INSERT INTO tb_classe (classe, subclasse, classeavancada)
VALUES ("Arruaceiro" , "Brigão", "Punho Elemental");

SELECT * FROM tb_classe; -- Selecionar todas as classes

CREATE TABLE tb_personagem(
id bigint AUTO_INCREMENT NOT NULL,
nome varchar(255) NOT NULL,
nivel int,
ataque decimal(8,2),
defesa decimal(8,2),
magia decimal(8,2),
classe_id bigint,
PRIMARY KEY(id),
FOREIGN KEY(classe_id) REFERENCES tb_classe(id)
);

INSERT INTO tb_personagem (nome, nivel, ataque, defesa, magia, classe_id) -- Arqueiro 
VALUES ("JasonItsMe", 68, 2811.60, 1560.50, 0.0, 3);

INSERT INTO tb_personagem (nome, nivel, ataque, defesa, magia, classe_id) -- Mago
VALUES ("Mago_forte_eu", 99, 6800.50, 980.30, 3800.0, 4);

INSERT INTO tb_personagem (nome, nivel, ataque, defesa, magia, classe_id) -- Arruaceiro
VALUES ("BruninhoBR", 30, 1680.50, 1000.50, 0.0, 5);

INSERT INTO tb_personagem (nome, nivel, ataque, defesa, magia, classe_id) -- Paladinho
VALUES ("Florzinha65", 88, 2500.10, 5500.50, 2500.20, 1);

INSERT INTO tb_personagem (nome, nivel, ataque, defesa, magia, classe_id) -- Ladrão
VALUES ("NoobAndYou", 10, 198.80, 80.50, 0.0, 2);

INSERT INTO tb_personagem (nome, nivel, ataque, defesa, magia, classe_id) -- Assassino
VALUES ("ProAndYou", 99, 8300.60, 1600.50, 0.0, 2);

INSERT INTO tb_personagem (nome, nivel, ataque, defesa, magia, classe_id) -- Mestre das Feras
VALUES ("Arqueira123", 80, 4500.60, 1100.30, 0.0, 3);

SELECT * FROM tb_personagem;

SELECT * FROM tb_personagem WHERE ataque > 2000; -- Seleção ataque maior que 2000

SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000; -- Seleção defesa entre 1000 e 2000 

SELECT * FROM tb_personagem WHERE nome LIKE "%c%";

SELECT nome, nivel, ataque, defesa, magia, tb_classe.classe, tb_classe.subclasse, tb_classe.classeavancada
FROM tb_personagem INNER JOIN tb_classe
ON tb_personagem.classe_id = tb_classe.id;

SELECT nome, tb_classe.classe, tb_classe.classeavancada
FROM tb_personagem INNER JOIN tb_classe
ON tb_personagem.classe_id = tb_classe.id
WHERE tb_classe.classe = "Ladrão";