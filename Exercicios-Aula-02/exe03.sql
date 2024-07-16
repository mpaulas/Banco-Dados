CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
email VARCHAR(255),
data_nascimento date,
nota_final DECIMAL,
genero ENUM("Masculino", "Feminino", "Outro")
);
ALTER TABLE tb_estudantes MODIFY nota_final DECIMAL(4,2);

INSERT INTO tb_estudantes(nome, email, data_nascimento, nota_final, genero)
VALUES ("Marcia Chaves", "marcinhapoderosa@gmail.com", "2000-07-15", 8.75, "Feminino"),
("Mauricio de Souza", "turmadamonica.mauricio@gmail.com", "1935-10-27", 10.00, "Masculino"),
("Pollyana Nery", "polly_ana@hotmail.com", "1997-12-02", 9.80, "Feminino"),
("Carla Regina", "carla_reg2001@gmail.com", "2001-08-29", 5.00, "Outro"),
("Marcelo Fontoura", "fontoura_marcelo@gmail.com", "2000-09-14", 4.70, "Outro"),
("Clara Campos", "camposclara@hotmail.com", "2003-05-20", 8.50, "Feminino"),
("Geovana Ramos", "gi_ramos@yahoo.com", "1995-03-28", 3.15, "Outro"),
("Marcia de Souza", "soumarcia@gmail.com", "2005-08-27", 10.00, "Feminino");

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota_final > 7.00;
SELECT * FROM tb_estudantes WHERE nota_final < 7.00;

UPDATE tb_estudantes SET nota_final = 10.00 WHERE id = 3;
SELECT * FROM tb_estudantes WHERE id = 3;
