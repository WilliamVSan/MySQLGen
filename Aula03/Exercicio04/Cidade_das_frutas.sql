CREATE DATABASE db_cidade_das_frutas;

USE db_cidade_das_frutas;

CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT NOT NULL,
descricao varchar(255) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_categoria(descricao)
VALUES ("Fruta") ,("Verdura") ,("Legume");

CREATE TABLE tb_produto(
id bigint AUTO_INCREMENT NOT NULL,
nome varchar(255),
quantidade int,
preco decimal(8,2),
validade DATE,
promocao varchar(255),
categoria_id bigint,
PRIMARY KEY(id),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produto (nome, quantidade, preco, validade, promocao, categoria_id)
VALUES ("Maçã", 89, 6.59, "2022-04-01", "não", 1);

INSERT INTO tb_produto (nome, quantidade, preco, validade, promocao, categoria_id)
VALUES ("Banana", 689, 4.50, "2022-03-29", "sim", 1);

INSERT INTO tb_produto (nome, quantidade, preco, validade, promocao, categoria_id)
VALUES ("Alface", 23, 8.99, "2022-03-25", "não", 2);

INSERT INTO tb_produto (nome, quantidade, preco, validade, promocao, categoria_id)
VALUES ("Couve", 33, 9.49, "2022-03-26", "não", 2);

INSERT INTO tb_produto (nome, quantidade, preco, validade, promocao, categoria_id)
VALUES ("Laranja", 56, 5.39, "2022-04-01", "sim", 1);

INSERT INTO tb_produto (nome, quantidade, preco, validade, promocao, categoria_id)
VALUES ("Cebola", 48, 3.69, "2022-04-06", "não", 3);

INSERT INTO tb_produto (nome, quantidade, preco, validade, promocao, categoria_id)
VALUES ("Cenoura", 63, 4.99, "2022-04-10", "sim", 3);

INSERT INTO tb_produto (nome, quantidade, preco, validade, promocao, categoria_id)
VALUES ("Manga", 59, 8.99, "2022-04-08", "sim", 1);

SELECT * FROM tb_produto WHERE preco > 50;

SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE nome LIKE "%C%";

SELECT * FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id;

SELECT nome, preco, tb_categoria.descricao FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id
WHERE tb_categoria.descricao = "Fruta";
