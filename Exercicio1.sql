-- criando o banco de dados
create database db_ecommerce;
​
-- acessando banco de dados
use db_ecommerce;
​
-- criando a tabela
create table tb_produtos(
id bigint auto_increment,
produto varchar(255) not null,
marca varchar(255),
codigodebarras bigint,
preco float,
estoque bigint,
primary key(id)
);

-- cadastrando produtos
insert into tb_produtos (produto, marca, codigodebarras, preco, estoque) values ("Shampoo","Clear",123456789,12.99,200);
insert into tb_produtos (produto, marca, codigodebarras, preco, estoque) values ("Sabonete","Dove",123456789,5,1000);
insert into tb_produtos (produto, marca, codigodebarras, preco, estoque) values ("Creme Dental","Sensodine",123456789,3.50,30);
insert into tb_produtos (produto, marca, codigodebarras, preco, estoque) values ("Condicionador","Palmolive",123456789,9.99,500);
insert into tb_produtos (produto, marca, codigodebarras, preco, estoque) values ("Espuma de Barbear","Gilette",123456789,15,0);
insert into tb_produtos (produto, marca, codigodebarras, preco, estoque) values ("Gel de cabelo","Super fix",123456789,6,53);
insert into tb_produtos (produto, marca, codigodebarras, preco, estoque) values ("Perfume importado","212",123456789,250.50,10);
insert into tb_produtos (produto, marca, codigodebarras, preco, estoque) values ("Creme pós barba","Gilette",123456789,16.90,23);​

--  buscando produtos maior e menor que R$500
​
select * from tb_produtos where produtos<500;
select * from tb_produtos where produtos>500;
​
-- atualizar
update tb_produtos set estoque = "100" where id = 5;
