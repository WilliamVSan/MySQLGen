CREATE DATABASE db_e_commerce;

USE db_e_commerce;

CREATE TABLE tb_produtos (
id bigint AUTO_INCREMENT,
produto varchar(255) NOT NULL,
marca varchar(255),
preco decimal(9,2) NOT NULL,
quantidade int,
ultimaverificacao date NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_produtos (produto, marca, preco, quantidade, ultimaverificacao)
VALUES ("Camisa de Jaré", "Jaré Edition's", 669.99, 6, "2022-03-17");

INSERT INTO tb_produtos (produto, marca, preco, quantidade, ultimaverificacao)
VALUES ("Camisa regata Jaré", "Jaré Edition's", 799.99, 2, "2022-03-10");

INSERT INTO tb_produtos (produto, marca, preco, quantidade, ultimaverificacao)
VALUES ("Chinelo de Jaré", "Jaré Edition's", 229.99, 2, "2022-03-18");

INSERT INTO tb_produtos (produto, marca, preco, quantidade, ultimaverificacao)
VALUES ("Camisa com gatinhos", "Cat'Is'Life", 179.99, 1, "2022-03-15");

INSERT INTO tb_produtos (produto, marca, preco, quantidade, ultimaverificacao)
VALUES ("Boné de Jaré", "Jaré Edition's", 339.99, 2, "2022-02-27");

INSERT INTO tb_produtos (produto, marca, preco, quantidade, ultimaverificacao)
VALUES ("Camisa Animes unidos por um bem maior", "Animer Style", 259.99, 4, "2022-03-01");

INSERT INTO tb_produtos (produto, marca, preco, quantidade, ultimaverificacao)
VALUES ("Pingente de Jaré - Edição limitadíssima", "Jaré Edition's", 1779.99, 0, "2022-03-12");

INSERT INTO tb_produtos (produto, marca, preco, quantidade, ultimaverificacao)
VALUES ("Blusa com gatinhos", "Cat'Is'Life", 849.99, 1, "2022-03-16");

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET quantidade = 0, ultimaverificacao = "2022-03-18" WHERE id = 8;
