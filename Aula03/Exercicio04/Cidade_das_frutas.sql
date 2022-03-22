CREATE DATABASE db_cidade_das_frutas;

USE db_cidade_das_frutas;

CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT NOT NULL,
descricao varchar(255) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_categoria()
VALUES ("Fruta") ,("Verdura") ,("Legume");


