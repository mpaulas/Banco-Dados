CREATE DATABASE db_mercadinho;
USE db_mercadinho;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT,
data_validade DATE,
preco DECIMAL NOT NULL,
descricao VARCHAR(255),
PRIMARY KEY (id)
);
ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco, descricao)
VALUES ("Leite", 48, "2025-02-20", 343.20, "Leite Zero Lactose"),
("Pão de Forma", 50, "2026-08-25", 600.00, "Pão de Forma - Marca Pullman"),
("Café", 25, "2024-12-02", 348.75, "Café - Marca Três Corações"),
("Toddy", 15, "2027-08-20", 105.00, "Achocolatado - Marca Toddy"),
("Nescau", 11, "2026-12-25", 76.67, "Achocolatado - Marca Nescau"),
("Cereal", 18, "2024-10-20", 283.50, "Cereal - Marca Nescau"),
("Pão Francês", 120, "2025-06-27", 120.00, "Pão Francês - Pão Francês Integral"),
("Bolo", 22, "2025-11-03", 515.68, "Bolo Caseiro - Vários Sabores");

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500.00;
SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET descricao = "Somente Pão Francês Integral" WHERE id = 7;
SELECT * FROM tb_produtos WHERE id = 7;
