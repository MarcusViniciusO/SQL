-- Criando o db
create database db_cidade_das_carnes;
-- Usando o db
use db_cidade_das_carnes;
-- Criando tabelas
create table tb_categoria(
id bigint auto_increment,
avicola varchar(255),
suino varchar (255),
bovino varchar (255),
primary key (id)
);
-- Criando tabelas
create table tb_produto(
id bigint auto_increment,
peso float,
preco_kg decimal,
tipo varchar(255),
carne_processada boolean,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);
-- Populando
insert into tb_categoria (avicola,suino,bovino) values ("Frango","Porco","Boi");
insert into tb_categoria (avicola,suino,bovino) values ("Frango","Porco","Boi");
insert into tb_categoria (avicola,suino,bovino) values ("Frango","Porco","Boi");
insert into tb_categoria (avicola,suino,bovino) values ("Galinha","Baby porco","vaca");
insert into tb_categoria (avicola,suino,bovino) values ("Pato","Porca","Bezerro");
-- Analisando a tabela
select * from tb_categoria;
-- Corrigindo o erro de populamento ;)
update tb_categoria set suino = "Javali" where id = 3;
update tb_categoria set suino = "Porco Selvagem" where id = 2;
update tb_categoria set avicola = "Galinha da angola" where id = 3;
update tb_categoria set avicola = "Peru" where id = 2;
update tb_categoria set bovino = "Bufalo" where id = 2;
update tb_categoria set bovino = "Angus" where id = 3;
-- Populando a tabela produto
insert into tb_produto (peso,preco_kg,tipo,carne_processada,categoria_id) values (190,23.80,"Lombo",false,1);
insert into tb_produto (peso,preco_kg,tipo,carne_processada,categoria_id) values (60,50,"Picanha",false,1);
insert into tb_produto (peso,preco_kg,tipo,carne_processada,categoria_id) values (150,22.50,"Coxão mole",false,2);
insert into tb_produto (peso,preco_kg,tipo,carne_processada,categoria_id) values (100,25,"Coxão duro",false,3);
insert into tb_produto (peso,preco_kg,tipo,carne_processada,categoria_id) values (100,12.80,"Coxa da asa",false,4);
insert into tb_produto (peso,preco_kg,tipo,carne_processada,categoria_id) values (75,25,"Pernil",false,5);
insert into tb_produto (peso,preco_kg,tipo,carne_processada,categoria_id) values (250,18.90,"Fraldinha",false,3);
insert into tb_produto (peso,preco_kg,tipo,carne_processada,categoria_id) values (150,6.50,"Hamburguer",true,5);
-- Analisando a tabela
select * from tb_produto;
-- Incluindo valor maior que R$50,00
update tb_produto set preco_kg = 80 where id = 2;
-- select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where preco_kg > 50;
-- select trazendo os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where preco_kg > 3 and preco_kg <= 60;
-- select utilizando LIKE buscando os Produtos com as letras CO.
select * from tb_produto where tipo like "%Co%";
-- select com Inner join entre tabela categoria e produto.
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
-- Select trazendo todos os Produtos de uma categoria específica.
select tb_produto.tipo,tb_produto.preco_kg,tb_produto.peso,tb_categoria.bovino 
from tb_produto 
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.bovino like "Boi" and tb_produto.preco_kg < 50;