CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT NOT NULL,
area varchar(255),
tipo varchar(255),
material varchar(255),
PRIMARY KEY(id)
);

INSERT INTO tb_categoria(area, tipo, material)
VALUES ("Banheiro", "Janela", "Alumínio") ,("Banheiro", "Porta", "Madeira") ,("Banheiro", "Pias", "Porcelana");

CREATE TABLE tb_produto(
id bigint AUTO_INCREMENT NOT NULL,
nome varchar(255),
quantidade int,
preco decimal(8,2),
marca varchar(255),
promocao varchar(255),
categoria_id bigint,
PRIMARY KEY(id),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produto (nome, quantidade, preco, marca, promocao, categoria_id)
VALUES ("Janela Maxim-ar", 13, 244.54, "Riobras", "não", 1);

INSERT INTO tb_produto (nome, quantidade, preco, marca, promocao, categoria_id)
VALUES ("Janela com Grade Mosaico", 2, 182.54, "Riobras", "sim", 1);

INSERT INTO tb_produto (nome, quantidade, preco, marca, promocao, categoria_id)
VALUES ("janela com Grade Quadriculada", 6, 180.40, "MGM", "sim", 1);

INSERT INTO tb_produto (nome, quantidade, preco, marca, promocao, categoria_id)
VALUES ("Porta com batente de giro", 22, 9.49, "Concrem Wood", "não", 2);

INSERT INTO tb_produto (nome, quantidade, preco, marca, promocao, categoria_id)
VALUES ("Porta de madeira lisa", 9, 200.35, "2022-04-01", "PORTAS A PARTE", 2);

INSERT INTO tb_produto (nome, quantidade, preco, marca, promocao, categoria_id)
VALUES ("Pia com espelho", 30, 80.69, "Viva Pias", "não", 3);

INSERT INTO tb_produto (nome, quantidade, preco, marca, promocao, categoria_id)
VALUES ("Gabinete suspenso com cuba", 1, 180.40, "Viva Pias", "sim", 3);

INSERT INTO tb_produto (nome, quantidade, preco, marca, promocao, categoria_id)
VALUES ("Conjunto gabinete com pia", 4, 259.40, "Viva Pias", "não", 3);

SELECT * FROM tb_produto WHERE preco > 50;

SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE nome LIKE "%C%";

SELECT * FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id;

SELECT nome, preco, marca, tb_categoria.tipo FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id
WHERE tb_categoria.tipo = "Janela";
