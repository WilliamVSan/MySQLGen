-- Criando Banco de Dados
CREATE DATABASE db_quitanda;

-- Selecionar o Banco de dados
USE db_quitanda;

-- Criar Tabela tb_produtos
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade int,
data_validade date,
preco decimal NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("arroz", 50, "2023-04-29", 20.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("chuchu", 20, "2022-04-18", 3.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("tomate", 80, "2022-03-19", 16.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("cenoura", 30, "2022-04-29", 13.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("morango", 1, "2022-03-20", 8.50);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("banana", 1000, "2022-03-20", 10.50);

-- Listar todos os produtos

SELECT * FROM tb_produtos; -- Seleciona todos

SELECT nome, preco FROM tb_produtos; -- Seleciona pelo o que quer listar

SELECT * FROM tb_produtos WHERE preco < 10.00; -- Seleciona tudo dentro do critério

SELECT * FROM tb_produtos WHERE preco < 10.00 AND quantidade < 20; -- AND usado para filtar com mais critérios

-- Atualizar os dados da tabela
UPDATE tb_produtos SET preco = 8.50 WHERE id = 5;

DELETE FROM tb_produtos WHERE id = 8; -- Da para estabelecer mais de um id usand o OR: OR id = 3.

/*Alteração na Estrutura da tabela*/

-- Modifica
ALTER TABLE tb_produtos MODIFY preco decimal(8,2);

-- Cria
ALTER TABLE tb_produtos ADD descricao varchar(255);

-- Deleta
ALTER TABLE tb_produtos DROP descricao;

-- Muda o nome
ALTER TABLE tb_produtos CHANGE precov preco decimal(8,2);

UPDATE tb_produtos SET descricao = "teste" WHERE id = 2; 

SELECT nome, CONCAT('R$ ', FORMAT(preco, 2, 'pt_BR')) AS preço FROM tb_produtos; -- Concatene R$, formate preco com 2 casas decimais, no formato pt_BR(com virgula) usando o preço de tb_produtos;


