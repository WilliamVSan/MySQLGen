CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT NOT NULL,
disciplina varchar(255),
tipo varchar(255),
pago varchar(255),
PRIMARY KEY(id)
);

INSERT INTO tb_categoria(disciplina, tipo, pago)
VALUES ("Tecnologia", "Semi presencial", "sim") ,("Tecnologia", "Presencial", "sim") ,("Tecnologia", "EAD", "não");

CREATE TABLE tb_curso(
id bigint AUTO_INCREMENT NOT NULL,
nome varchar(255),
vagasTotais int,
preco decimal(8,2),
aceitaBolsa varchar(255),
duracao varchar(255),
categoria_id bigint,
PRIMARY KEY(id),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_curso (nome, vagasTotais, preco, aceitaBolsa, duracao, categoria_id)
VALUES ("Ciência da Computação", 22, 180.00, "não", "6 meses", 1), 
	   ("Engenharia da Computação", 40, 160.00, "sim", "8 meses", 2),
       ("Engenharia de Software", 42, 360.00, "sim", "8 meses", 2),
       ("Jogos Digitais", 32, 280.00, "não", "6 meses", 3),
       ("Sistemas de Informação", 20, 186.00, "sim", "6 meses", 1),
       ("Sistemas para Internet", 32, 160.00, "não", "6 meses", 3),
       ("Engenharia de Controle e Automação", 32, 196.00, "não", "6 meses", 2),
       ("Análise e Desenvolvimento de Sistemas", 36, 480.00, "sim", "16 meses", 1);

SELECT * FROM tb_curso WHERE preco > 50;

SELECT * FROM tb_curso WHERE preco BETWEEN 3 AND 60;

SELECT * FROM tb_curso WHERE nome LIKE "%C%";

SELECT * FROM tb_curso INNER JOIN tb_categoria
ON tb_curso.categoria_id = tb_categoria.id;

SELECT nome, preco, duracao, tb_categoria.pago FROM tb_curso INNER JOIN tb_categoria
ON tb_curso.categoria_id = tb_categoria.id
WHERE tb_categoria.pago = "sim";
