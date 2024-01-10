create table tb_classes (
id bigint auto_increment primary key,
classe varchar(255),
descricao varchar(400)
);

create table tb_personagens(
id bigint auto_increment primary key,
nome varchar(255) not null,
idade int,
ataque int,
defesa int
);
 
insert INTO tb_personagens(nome, idade, ataque, defesa) 
values ("Sakura",12, 2000, 1500);
INSERT INTO tb_personagens(nome, idade, ataque, defesa) 
values ("Hilda",16, 1000, 2000);
INSERT INTO tb_personagens(nome, idade, ataque, defesa) 
values ("Elric",18, 3000, 1700);
INSERT INTO tb_personagens(nome, idade, ataque, defesa) 
values ("Hawise",33, 4000, 2500);
INSERT INTO tb_personagens(nome, idade, ataque, defesa) 
values ("Aerin",25, 3500, 3000);
INSERT INTO tb_personagens(nome, idade, ataque, defesa) 
values ("Cernunnos",37, 2000, 6000);
INSERT INTO tb_personagens(nome, idade, ataque, defesa) 
values ("Damian",48, 5000, 3000);
INSERT INTO tb_personagens(nome, idade, ataque, defesa) 
values ("Maia",29, 5500, 4000);

INSERT INTO tb_classes (classe)
VALUES ("Arqueiro(a)");
INSERT INTO tb_classes (classe)
VALUES ("Druida");
INSERT INTO tb_classes (classe)
VALUES ("Guerreiro(a)");
INSERT INTO tb_classes (classe)
VALUES ("Aprendiz");
INSERT INTO tb_classes (classe)
VALUES ("Bruxo(a)");

ALTER TABLE tb_personagens ADD categoriaid BIGINT;

UPDATE tb_personagens SET categoriaid = 4 WHERE id = 1;
UPDATE tb_personagens SET categoriaid = 1 WHERE id = 2;
UPDATE tb_personagens SET categoriaid = 2 WHERE id = 3;
UPDATE tb_personagens SET categoriaid = 3 WHERE id = 4;
UPDATE tb_personagens SET categoriaid = 1 WHERE id = 5;
UPDATE tb_personagens SET categoriaid = 5 WHERE id = 6;
UPDATE tb_personagens SET categoriaid = 3 WHERE id = 7;
UPDATE tb_personagens SET categoriaid = 2 WHERE id = 8;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
FOREIGN KEY (categoriaid) REFERENCES tb_classes (id);

SELECT * FROM tb_personagens WHERE ataque > 2000

SELECT * FROM tb_personagens WHERE defesa between 1000 and 2000

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT nome, idade, ataque, defesa, tb_classes.classe
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.categoriaid = tb_classes.id;

SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id
WHERE tb_classes = 'Arqueiro';

