-- Primeiro Raio: Executa tudo -- Segundo Raio (I): Executa linha selecionada -- Ponto e virgula (;): Indica o final de um comando

-- DDL: 
-- create database db_nome: Cria uma base de dados
-- drop database db_nome: Apaga a base de dados selecionada.
-- drop table tb_nome: Apaga a tabela
-- create table tb_nome: Cria tabela

CREATE DATABASE db_quitanda;
USE db_quitanda; -- Indica qual banco de dados usar para criar a tabela abaixo

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT,
datavalidade DATE,
preco DECIMAL NOT NULL,
PRIMARY KEY (id)
);

-- Se caso não definir as casas decimais, o SQL automaticamente irá arredondar o valor ex: 2.99 -> 3

-- Para ver a estrutura da tabela
DESCRIBE tb_produtos;

-- DML: Manipulação de dados
-- INSERT INTO tb_nome: insere dados na tabela

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco)
VALUES ("tomate", 100, "2023-12-15", 8.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco)
VALUES ("maçã", 20, "2023-12-15", 5.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco)
VALUES ("laranja", 50, "2023-12-15", 10.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco)
VALUES ("banana", 200, "2023-12-15", 12.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco)
VALUES ("uva", 1200, "2023-12-15", 30.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco)
VALUES ("pêra", 500, "2023-12-15", 2.99);

-- Outra forma de inserir os mesmos dados acima: (não executado para não duplicar os dados)
	-- INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco)
	-- VALUES ("tomate", 100, "2023-12-15", 8.00),
	-- ("maçã", 20, "2023-12-15", 5.00),
	-- ("laranja", 50, "2023-12-15", 10.00),
	-- ("banana", 200, "2023-12-15", 12.00),
	-- ("uva", 1200, "2023-12-15", 30.00),
	-- ("pêra", 500, "2023-12-15", 2.99);


-- Para ver a tabela:
select * from tb_produtos;

-- Busca para retornar somente nome e preco:
select nome, preco from tb_produtos;

-- Busca retorna algo especifico:
select * from tb_produtos where nome = "maçã";
select * from tb_produtos where preco = 8;

-- Busca por ID:
select * from tb_produtos where id = 2;
select nome from tb_produtos where id = 2;

-- Busca por vários IDs:
select * from tb_produtos where id in (2, 4);

-- Busca por produtos valor abaixo de 5.00: 
select * from tb_produtos where preco < 5.00;

-- Selecionando dados com Operadores Lógicos: and(&), or(|), or(^)
select * from tb_produtos where preco > 5 and quantidade < 100; -- Preço maior que 5.00 e quantidade menor que 100

-- --------------------------------------------------------------------------------------------------------------------
DESCRIBE tb_produtos;
SELECT * FROM tb_produtos;

-- Adicionando coluna descrição a tabela produtos:
ALTER TABLE tb_produtos ADD descricao VARCHAR(255); 

-- Código para desativar erro apresentado quando não se usa o WHERE: "SET SQL_SAFE_UPDATES = 0", para travar novamente é o mesmo código + "= 1"

-- Inserindo na tabela produtos uma alteração no preço do id 1 (tomate - preco 8.0):
UPDATE tb_produtos SET preco = 2.99 WHERE id = 1;

-- Apaga a coluna descricao
ALTER TABLE tb_produtos DROP descricao;

-- Deleta o produto com o ID = 7:
DELETE FROM tb_produtos WHERE id = 7;

-- Muda nome da coluna "nome" para "nome_produto":
ALTER TABLE tb_produtos CHANGE nome nome_produto VARCHAR(255);
ALTER TABLE tb_produtos CHANGE nome_produto nome VARCHAR(255);
ALTER TABLE tb_produtos CHANGE datavalidade data_validade VARCHAR(255);

-- Alterando casas decimais (quantidade total de casas, quantidade depois do ponto) 6,2: (ex: 5000.95) - 8,2(500000.95)
ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2);