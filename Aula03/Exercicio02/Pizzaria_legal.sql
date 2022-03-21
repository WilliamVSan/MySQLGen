CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT,
tipo varchar(255),
PRIMARY KEY(id)
);

INSERT INTO tb_categoria (tipo)
VALUES ("Pizza");

INSERT INTO tb_categoria (tipo)
VALUES ("Salgado");

INSERT INTO tb_categoria (tipo)
VALUES ("Bebida");

SELECT * FROM tb_categoria;

CREATE TABLE tb_pizza(
id bigint AUTO_INCREMENT,
sabor varchar(255),
tamanho varchar(255),
preco decimal(5,2),
entrega varchar(255),
vegano varchar(255),
categoria_id bigint,
PRIMARY KEY(id),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_pizza (sabor, tamanho, preco, entrega, vegano, categoria_id)
VALUES ("Portuguesa", "Grande", 55.50, "sim", "não", 1);

INSERT INTO tb_pizza (sabor, tamanho, preco, entrega, vegano, categoria_id)
VALUES ("Mussarela", "Médio", 39.99, "sim", "não", 1);

INSERT INTO tb_pizza (sabor, tamanho, preco, entrega, vegano, categoria_id)
VALUES ("Coxinha de Carne", "Pequeno", 4.50, "não", "não", 2);

INSERT INTO tb_pizza (sabor, tamanho, preco, entrega, vegano, categoria_id)
VALUES ("Pastel de Frango", "Pequeno", 5.50, "não", "não", 2);

INSERT INTO tb_pizza (sabor, tamanho, preco, entrega, vegano, categoria_id)
VALUES ("Pizza de chocolate", "Médio", 45.00, "sim", "sim", 1);

INSERT INTO tb_pizza (sabor, tamanho, preco, entrega, vegano, categoria_id)
VALUES ("Mix de frutas", "Pequeno", 6.50, "não", "sim", 3);

INSERT INTO tb_pizza (sabor, tamanho, preco, entrega, vegano, categoria_id)
VALUES ("Suco de Manga", "Pequeno", 4.80, "não", "sim", 3);

INSERT INTO tb_pizza (sabor, tamanho, preco, entrega, vegano, categoria_id)
VALUES ("Salgado de Presunto", "Pequeno", 4.50, "não", "não", 1);

SELECT * FROM tb_pizza;

SELECT * FROM tb_pizza WHERE preco > 45;

SELECT * FROM tb_pizza WHERE preco BETWEEN 29 AND 60;

SELECT * FROM tb_pizza WHERE sabor LIKE "%c%";

SELECT sabor, preco, tb_categoria.tipo
FROM tb_pizza INNER JOIN tb_categoria
ON tb_pizza.categoria_id = tb_categoria.id;

SELECT sabor, preco, tb_categoria.tipo
FROM tb_pizza INNER JOIN tb_categoria
ON tb_pizza.categoria_id = tb_categoria.id
WHERE tb_categoria.tipo = "Pizza";
