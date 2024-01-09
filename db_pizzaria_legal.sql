create database db_pizzaria_legal

use db_pizzaria_legal;

create table tb_categorias (
id bigint auto_increment primary key,
categoria varchar(255),
descricao varchar(255)
);
create table tb_pizzas (
id bigint auto_increment primary key,
nome varchar(255) not null,
quantidade int,
datavalidade date,
preco decimal(6,2) not null
);

INSERT INTO tb_pizzas(nome, quantidade, datavalidade, preco) 
values ("Mussarela",50, "2024-01-15", 30);
INSERT INTO tb_pizzas(nome, quantidade, datavalidade, preco) 
values ("Calabresa",50, "2024-01-15", 30);
INSERT INTO tb_pizzas(nome, quantidade, datavalidade, preco) 
values ("Frango com Catupiry",25, "2024-01-15", 45);
INSERT INTO tb_pizzas(nome, quantidade, datavalidade, preco) 
values ("Portuguesa",20, "2024-01-15", 50);
INSERT INTO tb_pizzas(nome, quantidade, datavalidade, preco) 
values ("Atum",10, "2024-01-15", 50);
INSERT INTO tb_pizzas(nome, quantidade, datavalidade, preco) 
values ("Toscana",15, "2024-01-15", 55);
INSERT INTO tb_pizzas(nome, quantidade, datavalidade, preco) 
values ("Quatro Queijos",30, "2024-01-15", 60);
INSERT INTO tb_pizzas(nome, quantidade, datavalidade, preco) 
values ("Mix Cogumelos",5, "2024-01-15", 70);
INSERT INTO tb_pizzas(nome, quantidade, datavalidade, preco) 
values ("Banana",20, "2024-01-15", 40);

INSERT INTO tb_categorias (categoria)
VALUES ("Premium");
INSERT INTO tb_categorias (categoria)
VALUES ("Comum");

UPDATE tb_produtos SET categoriaid = 3 WHERE id = 1;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 2;

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias 
FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

INSERT INTO tb_categorias (categoria)
VALUES ("Vegetariana");
INSERT INTO tb_categorias (categoria)
VALUES ("Vegana");
INSERT INTO tb_categorias (categoria)
VALUES ("Doce");

UPDATE tb_pizzas SET categoriaid = 4 and 1 WHERE id =7;
UPDATE tb_pizzas SET categoriaid = 5 WHERE id = 9;
UPDATE tb_produtos SET categoriaid = 6 WHERE id = 10;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT nome, tb_categorias.categoria
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoriaid = tb_categorias.id;
