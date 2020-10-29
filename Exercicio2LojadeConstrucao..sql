-- Criando o db
create database db_construindo_a_nossa_vida;
-- Usando o db
use db_construindo_a_nossa_vida;
-- Criando tabelas
create table tb_categoria(
id bigint auto_increment,
eletrica varchar(255),
hidraulica varchar(255),
alvenaria varchar(255),
primary key (id)
);
-- Criando tabelas
create table tb_produto(
id bigint auto_increment,
marca varchar (255) not null,
nome varchar (255) not null,
preco decimal (10,2),
estoque bigint,
ativo boolean,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);
-- Populando
insert into tb_categoria (eletrica,hidraulica,alvenaria) values ("Fios","Canos","Tijolos");
insert into tb_categoria (eletrica,hidraulica,alvenaria) values ("Disjuntor","Registros","Argamassa");
insert into tb_categoria (eletrica,hidraulica,alvenaria) values ("Tomadas","Bombas d'água","Cerâmicas");
insert into tb_categoria (eletrica,hidraulica,alvenaria) values ("Interruptores","Mangueiras","Blocos");
insert into tb_categoria (eletrica,hidraulica,alvenaria) values ("Para raios","Hidrantes","Telhas");
-- Populando a tabela produto
insert into tb_produto (marca,nome,preco,estoque,ativo,categoria_id) values ("Intelbras","Aquecedor",250.50,500,true,1);
insert into tb_produto (marca,nome,preco,estoque,ativo,categoria_id) values ("Tramontina","Disjuntor p/ chuveiro",100,1000,true,2);
insert into tb_produto (marca,nome,preco,estoque,ativo,categoria_id) values ("Votorantim","Cimento",25.80,100,true,2);
insert into tb_produto (marca,nome,preco,estoque,ativo,categoria_id) values ("Lorenzetti","Chuveiror",150.50,800,true,5);
insert into tb_produto (marca,nome,preco,estoque,ativo,categoria_id) values ("Eucatex","Tijolo",0.50,400,true,4);
insert into tb_produto (marca,nome,preco,estoque,ativo,categoria_id) values ("Deca","Pia p/ Banheiro",50.0,1200,true,3);
insert into tb_produto (marca,nome,preco,estoque,ativo,categoria_id) values ("Docol","Vaso Sanitário",50.50,1500,true,3);
insert into tb_produto (marca,nome,preco,estoque,ativo,categoria_id) values ("ELITE","Fio 10 A",150.50,36500,true,1);
-- select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where preco > 50;
-- select trazendo os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where preco > 3 and preco <= 60;
-- select utilizando LIKE buscando os Produtos com as letras CO.
select * from tb_produto where nome like "%Ci%";
-- select com Inner join entre tabela categoria e produto.
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
-- Select trazendo todos os Produtos de uma categoria específica.
select tb_produto.nome,tb_produto.marca,tb_produto.preco,tb_categoria.alvenaria
from tb_produto 
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.alvenaria like "Argamassa" and tb_produto.marca != "Tramontina";