CREATE DATABASE db_registro_escola;

USE db_registro_escola;

CREATE TABLE tb_estudantes (
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
idade int,
disciplina varchar(255),
avaliacao decimal(4,2) NOT NULL,
periodo varchar(255) NOT NULL, 
PRIMARY KEY(id)
);

INSERT INTO tb_estudantes (nome, idade, disciplina, avaliacao, periodo)
VALUES ("Flavio", 12, "Artes", 10.0, "Tarde");

INSERT INTO tb_estudantes (nome, idade, disciplina, avaliacao, periodo)
VALUES ("Marcia", 13, "Matemática", 6.7, "Dia");

INSERT INTO tb_estudantes (nome, idade, disciplina, avaliacao, periodo)
VALUES ("Sergio", 10, "Matemática", 8.0, "Dia");

INSERT INTO tb_estudantes (nome, idade, disciplina, avaliacao, periodo)
VALUES ("Alice", 15, "História", 6.0, "Tarde");

INSERT INTO tb_estudantes (nome, idade, disciplina, avaliacao, periodo)
VALUES ("Matheus", 12, "Português", 9.1, "Dia");

INSERT INTO tb_estudantes (nome, idade, disciplina, avaliacao, periodo)
VALUES ("Camila", 10, "Geografia", 4.3, "Dia");

SELECT * FROM tb_estudantes WHERE avaliacao > 7.0;

SELECT * FROM tb_estudantes WHERE avaliacao < 7.0;

UPDATE tb_estudantes SET disciplina = "Português" WHERE id = 2;
