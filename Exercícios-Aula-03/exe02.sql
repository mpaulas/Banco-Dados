
CREATE DATABASE db_pizzaria_legal;


USE db_pizzaria_legal;


CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255)
);


CREATE TABLE tb_pizzas (
    id_pizza INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    ingredientes VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    tamanho VARCHAR(20),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);


INSERT INTO tb_categorias (nome, descricao) VALUES 
('Tradicional', 'Pizzas com sabores tradicionais e populares'),
('Especial', 'Pizzas com ingredientes selecionados e receitas exclusivas'),
('Vegetariana', 'Pizzas sem ingredientes de origem animal'),
('Doce', 'Pizzas doces para sobremesas'),
('Premium', 'Pizzas com ingredientes de alta qualidade');


INSERT INTO tb_pizzas (nome, ingredientes, preco, tamanho, id_categoria) VALUES 
('Margarita', 'Tomate, Queijo, Manjericão', 40.00, 'Média', 1),
('Calabresa', 'Calabresa, Cebola, Azeitona, Queijo', 42.00, 'Grande', 1),
('Quatro Queijos', 'Queijo Mozzarella, Queijo Gorgonzola, Queijo Parmesão, Queijo Provolone', 50.00, 'Grande', 2),
('Portuguesa', 'Presunto, Ovo, Queijo, Azeitona, Cebola', 48.00, 'Média', 1),
('Frango com Catupiry', 'Frango, Catupiry, Queijo, Milho', 55.00, 'Grande', 2),
('Vegetariana', 'Tomate, Queijo, Pimentão, Cebola, Azeitona', 45.00, 'Média', 3),
('Chocolate', 'Chocolate, Morango, Chantilly', 38.00, 'Média', 4),
('Trufa Negra', 'Trufa Negra, Queijo, Rúcula', 85.00, 'Grande', 5);


SELECT * FROM tb_pizzas WHERE preco > 45.00;


SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;


SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';


SELECT tb_pizzas.*, tb_categorias.nome AS nome_categoria FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria;



SELECT tb_pizzas.*, tb_categorias.nome AS nome_categoria FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome = 'Doce';
