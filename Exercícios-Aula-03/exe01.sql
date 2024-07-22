CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_personagens (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
mobilidade INT,
poder_ataque INT,
poder_defesa INT,
classe_id BIGINT,
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, descricao) VALUES
('Guerreiro', 'Especialista em combate corpo a corpo, com alta resistência.'),
('Cavaleiro', 'Defensores habilidosos com armaduras pesadas e escudos.'),
('Arqueiro', 'Especialista em ataques a distância com arcos e flechas.'),
('Mago', 'Usuário de magias, capaz de causar grandes danos a distância.'),
('Curandeiro', 'Especialista em habilidades de cura e suporte.');

INSERT INTO tb_personagens(nome, mobilidade, poder_ataque, poder_defesa, classe_id) VALUES 
("Abaddon", 325, 5000, 1380, 2),
("Bristleback", 295, 530, 3800, 1),
("Chaos Knight", 325, 7800, 5000, 2),
("Dark Willow", 290, 5454, 2000, 4),
("Enchantress", 320, 5387, 4200, 5),
("Faceless Void", 300, 1000, 3200, 1),
("Gyrocopter", 320, 1502, 635, 5),
("Hoodwink", 310, 1999, 4000, 3);


SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes 
FOREIGN KEY (classe_id) REFERENCES tb_classes(id);

SELECT p.nome, p.mobilidade, p.poder_ataque, p.poder_defesa, c.nome AS classe_nome, c.descricao
AS classe_descricao FROM tb_personagens p INNER JOIN tb_classes c ON p.classe_id = c.id;

SELECT p.nome, p.mobilidade, p.poder_ataque, p.poder_defesa, c.nome AS classe_nome, c.descricao 
AS classe_descricao FROM tb_personagens p INNER JOIN tb_classes c ON p.classe_id = c.id
WHERE c.nome = 'Arqueiro';



