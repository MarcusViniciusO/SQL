-- Criando o servidor
create database db_rh2;
-- Acessando o server
use db_rh2;
-- Criando a tabela de Cargos
create table tb_cargo (
id bigint(2) auto_increment,
cargo varchar (20) not null,
setor varchar(20),
salario decimal (10,2),
primary key (id)
);
-- Populando a tabela de Cargos
insert into tb_cargo (cargo,setor,salario) values ("Analista de RH","RH",5000);
insert into tb_cargo (cargo,setor,salario) values ("Vendedor","Comercial",2500);
insert into tb_cargo (cargo,setor,salario) values ("Marketeiro","Marketing",3000);
insert into tb_cargo (cargo,setor,salario) values ("Analista de compras","Compras",2500);
insert into tb_cargo (cargo,setor,salario) values ("Programador","TI",5000);
-- Criando a tabela de funcionarios
create table tb_funcionarios (
id bigint (20) auto_increment,
nome varchar(20) not null,
cpf bigint(11),
rg bigint(9),
tempo_casa int,
cargo_id bigint (20) not null,
primary key (id),
foreign key (cargo_id) references tb_cargo(id)
);
-- Populando a tabela de Funcionário
insert into tb_funcionarios (nome,cpf,rg,tempo_casa,cargo_id) values ("Jose de Moura",12552488223,562534568,2,2);
insert into tb_funcionarios (nome,cpf,rg,tempo_casa,cargo_id) values ("Hayla Chaves Frade",12552488223,562534568,5,1);
insert into tb_funcionarios (nome,cpf,rg,tempo_casa,cargo_id) values ("Kyle Saraiva Alencar",12552488223,562534568,10,3);
insert into tb_funcionarios (nome,cpf,rg,tempo_casa,cargo_id) values ("Mohammad Rios",12552488223,562534568,6,5);
insert into tb_funcionarios (nome,cpf,rg,tempo_casa,cargo_id) values ("íris Alves Salomão",12552488223,562534568,7,4);
insert into tb_funcionarios (nome,cpf,rg,tempo_casa,cargo_id) values ("Aline Parracho",12552488223,562534568,8,1);
insert into tb_funcionarios (nome,cpf,rg,tempo_casa,cargo_id) values ("Alicia Carvalhoso",12552488223,562534568,2,3);
insert into tb_funcionarios (nome,cpf,rg,tempo_casa,cargo_id) values ("Pérola Mourão",12552488223,562534568,4,2);
insert into tb_funcionarios (nome,cpf,rg,tempo_casa,cargo_id) values ("Angelina Vilante",12552488223,562534568,6,1);
insert into tb_funcionarios (nome,cpf,rg,tempo_casa,cargo_id) values ("Johnny Lameiras",12552488223,562534568,25,2);
insert into tb_funcionarios (nome,cpf,rg,tempo_casa,cargo_id) values ("Timóteo Rangel",12552488223,562534568,23,3);
insert into tb_funcionarios (nome,cpf,rg,tempo_casa,cargo_id) values ("Taísa Torres Simões",12552488223,562534568,5,4);
insert into tb_funcionarios (nome,cpf,rg,tempo_casa,cargo_id) values ("Nélson Pardo Prada",12552488223,562534568,16,3);
insert into tb_funcionarios (nome,cpf,rg,tempo_casa,cargo_id) values ("Jael Picão Telinhos",12552488223,562534568,19,2);
insert into tb_funcionarios (nome,cpf,rg,tempo_casa,cargo_id) values ("Cosmo de Leal",12552488223,562534568,22,1);

select * from tb_cargo where salario > 2000;
-- ou
select * from tb_funcionarios where cargo_id = 1 or 2 or 3 or 4 or 5;

select * from tb_cargo where salario > 1000 and salario < 2000;

select * from tb_funcionarios where nome like "c%";
