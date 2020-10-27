-- Criando o servidor
create database db_ecommerce;
-- Acessando o db
use db_ecommerce;
-- Criando a tabela categoria
create table tb_categoria (
id bigint(20) auto_increment,
departamaneto varchar(255),
secao varchar (255),
primary key (id)
);
-- Populando a tabela de categoria
insert into tb_categoria (departamaneto,secao) values ("Eletronicos","Adulto e infantil");
insert into tb_categoria (departamaneto,secao) values ("Banho e cama","Adulto");
insert into tb_categoria (departamaneto,secao) values ("Cozinha","Adulto");
insert into tb_categoria (departamaneto,secao) values ("Brinquedos","Infantil");
insert into tb_categoria (departamaneto,secao) values ("Cosméticos","Adulto e infantil");
-- Criando a tabela produto
create table tb_produto (
id bigint(20) auto_increment,
marca varchar(50),
preco decimal,
quantidade bigint,
garantia_estendida boolean,
departamento_id bigint,
primary key (id),
foreign key (departamento_id) references tb_categoria(id)
);
-- Populando a tabela de produtos
insert into tb_produto (marca,preco,quantidade,garantia_estendida,departamento_id) values ("SempThosiba",1500,200,true,1);
insert into tb_produto (marca,preco,quantidade,garantia_estendida,departamento_id) values ("Sony",5000,250,true,1);
insert into tb_produto (marca,preco,quantidade,garantia_estendida,departamento_id) values ("LG",2800,260,true,1);
insert into tb_produto (marca,preco,quantidade,garantia_estendida,departamento_id) values ("Philco",1500,270,true,1);
insert into tb_produto (marca,preco,quantidade,garantia_estendida,departamento_id) values ("Samsumg",2500,280,true,1);
insert into tb_produto (marca,preco,quantidade,garantia_estendida,departamento_id) values ("King Star",650,300,true,2);
insert into tb_produto (marca,preco,quantidade,garantia_estendida,departamento_id) values ("MM",250,320,true,2);
insert into tb_produto (marca,preco,quantidade,garantia_estendida,departamento_id) values ("Lorenzetti",150,210,true,2);
insert into tb_produto (marca,preco,quantidade,garantia_estendida,departamento_id) values ("Amanco",15,201,true,2);
insert into tb_produto (marca,preco,quantidade,garantia_estendida,departamento_id) values ("Arno",155,220,true,2);
insert into tb_produto (marca,preco,quantidade,garantia_estendida,departamento_id) values ("Brinox",15,200,true,3);
insert into tb_produto (marca,preco,quantidade,garantia_estendida,departamento_id) values ("Inox",25,20,true,3);
insert into tb_produto (marca,preco,quantidade,garantia_estendida,departamento_id) values ("Candid",150,10,false,4);
insert into tb_produto (marca,preco,quantidade,garantia_estendida,departamento_id) values ("Matell",150,0,false,4);
insert into tb_produto (marca,preco,quantidade,garantia_estendida,departamento_id) values ("Dove",15,22,false,5);

select * from tb_produto where preco > 2000;

select *from tb_produto where preco >= 1000 and preco>= 2000;

select *from tb_produto where marca like "%c%";