CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT NOT NULL,
tipo varchar(255),
PRIMARY KEY(id)
);

INSERT INTO tb_categoria (tipo)
VALUES ("Higiene");

INSERT INTO tb_categoria (tipo)
VALUES ("Medicamento");

INSERT INTO tb_categoria (tipo)
VALUES ("Cosmético");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
id bigint AUTO_INCREMENT NOT NULL,
nome varchar(255) NOT NULL,
preco varchar(255),
tarja varchar(255) NOT NULL,
estoque int,
categoria varchar(255) NOT NULL,
categoria_id bigint,
PRIMARY KEY(id),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produto (nome, preco, tarja, estoque, categoria, categoria_id)
VALUES ("Sabonete Líquido", 64.89, "sem tarja", 16, "adulto", 1);

INSERT INTO tb_produto (nome, preco, tarja, estoque, categoria, categoria_id)
VALUES ("Cloridrato de Naratriptana", 18.19, "tarja amarela", 49, "adulto", 2);

INSERT INTO tb_produto (nome, preco, tarja, estoque, categoria, categoria_id)
VALUES ("Cloridrato de Fluoxetina", 13.79, "tarja preta", 21, "adulto", 2);

INSERT INTO tb_produto (nome, preco, tarja, estoque, categoria,categoria_id)
VALUES ("Loção hidratante", 68.90, "sem tarja", 11, "adulto", 3);

INSERT INTO tb_produto (nome, preco, tarja, estoque, categoria,categoria_id)
VALUES ("Shampoo Anticaspa", 19.54, "sem tarja", 58, "adulto", 1);

INSERT INTO tb_produto (nome, preco, tarja, estoque, categoria,categoria_id)
VALUES ("Hidratante Corporal", 79.99, "sem tarja", 8, "adulto", 3);

INSERT INTO tb_produto (nome, preco, tarja, estoque, categoria,categoria_id)
VALUES ("Óleo corporal", 75.99, "sem tarja", 9, "adulto", 3);

INSERT INTO tb_produto (nome, preco, tarja, estoque, categoria,categoria_id)
VALUES ("Esfoliante Corporal", 25.79, "sem tarja", 5, "adulto", 3);

SELECT * FROM tb_produto WHERE preco > 50;

SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE nome LIKE "%b%";

SELECT nome, preco, tarja, estoque, tb_categoria.tipo
FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id;

SELECT nome, preco, tarja, estoque, tb_categoria.tipo
FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id
WHERE tb_categoria.tipo = "Cosmético";
