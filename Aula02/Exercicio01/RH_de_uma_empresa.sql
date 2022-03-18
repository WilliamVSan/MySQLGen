CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios (
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
idade int,
setor varchar(255),
funcao varchar(255),
salario decimal(8,2) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_funcionarios (nome, idade, setor, funcao, salario)
VALUES ("Mario", 37, "Setor Comercial", "Representante Comercial", 3551.00);

INSERT INTO tb_funcionarios (nome, idade, setor, funcao, salario)
VALUES ("Antonio", 33, "Setor Financeiro", "Auxiliar Administrativo", 1440.00);

INSERT INTO tb_funcionarios (nome, idade, setor, funcao, salario)
VALUES ("Ana", 29, "Setor Administrativo", "Assistente Administrativo", 1920.00);

INSERT INTO tb_funcionarios (nome, idade, setor, funcao, salario)
VALUES ("Rebeca", 41, "Recursos Humanos", "Gestora de Recursos Humanos", 4200.00);

INSERT INTO tb_funcionarios (nome, idade, setor, funcao, salario)
VALUES ("Izadora", 26, "Recursos Humanos", "Assistente de Recursos Humanos", 1800.00);

SELECT * FROM tb_funcionarios WHERE salario > 2000.00;

SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

UPDATE tb_funcionarios SET salario = 2100.00 WHERE id = 3;
