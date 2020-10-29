-- Criando o db
create database db_cursoDaMinhaVida;
-- Usando o db
use db_cursoDaMinhaVida;
-- Criando tabelas
create table tb_categoria(
id bigint auto_increment,
professor varchar(255),
especializacao varchar(255),
primary key (id)
);
-- Criando tabelas
create table tb_curso(
id bigint auto_increment,
nome varchar (255) not null,
preco decimal,
ativo boolean,
cargahoraria varchar (255),
categoria_id bigint not null,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);
-- Populando
insert into tb_categoria (professor,especializacao) values ("Luis","Java");
insert into tb_categoria (professor,especializacao) values ("Vagner","Scrum");
insert into tb_categoria (professor,especializacao) values ("Thiago","Angular");
insert into tb_categoria (professor,especializacao) values ("Marcelo","HTML E CSS");
insert into tb_categoria (professor,especializacao) values ("Lucas","Banco de Dados");
-- Populando a tabela produto
insert into tb_curso (nome,preco,ativo,cargahoraria,categoria_id) values ("JAVA Lógica I",50,true,"58h",1);
insert into tb_curso (nome,preco,ativo,cargahoraria,categoria_id) values ("JAVA Lógica II",50,true,"58h",1);
insert into tb_curso (nome,preco,ativo,cargahoraria,categoria_id) values ("JAVA POO",50,true,"58h",1);
insert into tb_curso (nome,preco,ativo,cargahoraria,categoria_id) values ("Metodologias ágeis",50,true,"58h",2);
insert into tb_curso (nome,preco,ativo,cargahoraria,categoria_id) values ("Estilização",100,true,"58h",4);
insert into tb_curso (nome,preco,ativo,cargahoraria,categoria_id) values ("Funcionalidades",100,true,"58h",3);
insert into tb_curso (nome,preco,ativo,cargahoraria,categoria_id) values ("Bancos não relacionais",100,false,"58h",5);
insert into tb_curso (nome,preco,ativo,cargahoraria,categoria_id) values ("Bancos relacionais",100,true,"58h",5);
-- select que retorne os cursos com o valor maior do que 50 reais.
select * from tb_curso where preco > 50;
-- select trazendo os Produtos com valor entre 3 e 60 reais.
select * from tb_curso where preco > 3 and preco <= 60;
-- select utilizando LIKE buscando os Produtos com as letras CO.
select * from tb_curso where nome like "%JAV%";
-- select com Inner join entre tabela categoria e produto.
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;
-- Select trazendo todos os Produtos de uma categoria específica.
select tb_curso.nome,tb_curso.preco,tb_categoria.professor
from tb_curso 
inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id
where tb_categoria.professor like "Luis" and tb_curso.preco < 50;