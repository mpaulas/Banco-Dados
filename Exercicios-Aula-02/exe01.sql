CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
funcao VARCHAR(255),
data_contratacao date,
departamento VARCHAR(255),
salario DECIMAL NOT NULL,
PRIMARY KEY (id)
);
ALTER TABLE tb_colaboradores MODIFY salario DECIMAL(6,2);

INSERT INTO tb_colaboradores(nome, funcao, data_contratacao, departamento, salario)
VALUES ("Jonas Brother", "Auxiliar de Escritorio", "2023-12-15", "Recursos Humanos", 2500.00),
("Judas Iscariotes", "Estagiario", "2024-01-06", "Financeiro", 1300.00),
("Lorena Marcela", "Atendente", "2022-12-15", "Recepção", 2390.77),
("Joana Alves", "Atendente", "2022-10-15", "Recepção", 2390.77),
("Maria de Loudes", "Auxiliar de Escritorio", "2024-05-15", "Recursos Humanos", 2500.00);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET nome = "Maria de Lurdes" WHERE id = 5;
SELECT * FROM tb_colaboradores WHERE id = 5;
