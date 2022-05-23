/**
	Agenda de Contatos
    @author Jefferson Cruz
*/
-- Verificar banco de dados 
show databases;
-- Criar um novo banco da dados
create database teste;
create database agendajefferson;
-- Excluir um banco de dados
drop database teste;
-- Selecionar um banco de dados
use agendajefferson;
-- Criando uma Tabela
-- int -> tipo de dados - numeros inteiros
-- decimal (10,2) -> tipo de dados - numeros não inteiros
-- (10,2) 10 digitos com 2 casas decimais
-- primary key (transforma o campo em chave primaria)
-- auto_increment (numeração automatica)
-- varchar (255) -> tipo de dados String (com variação)
-- char (255) -> tipo de dados String (sem variação)
-- (255) -> Maximo de caractere
-- not null -> Obrigatorio o preenchimento
-- ponto(.) é valor, virgula (,) é comando


-- 23/05/2022
-- unique (sem repetição de caractere)
-- para inserir uma senha com criptografia usamos md5 ()
-- acessando o sistema pela tela de login 
-- and (função lógica onde todas as condições devem ser verdadeiras)
select * from usuarios where login='admin' and senha='123456';
-- definir a hora do cadastro (data e hora automatica)
(coluna) timestamp default current_timestamp,
-- tipo de dados relacionado a data (yyyy/mm/dd)
(coluna) date
--


insert into usuarios (usuario,login,senha,perfil)
values ('administrador','admin',md5('admin'),'admin');

create table contatos (
	id int primary key auto_increment,
    nome varchar(255) not null,
    fone varchar(255) not null,
    email varchar(255) 
);
-- Verificar tabela do banco
show tables;
-- Descrever a tabela
describe contatos;
-- Adicionando uma coluna(campo) na tabela
alter table contatos add column obs varchar(255);
-- 
alter table contatos add column fone2 varchar(255);
-- adicionando após uma coluna especifica
alter table contatos add column cel varchar(255) after fone;
-- modificando uma prioridade da coluna na tabela (necessita incluir todos os atributos)
alter table contatos modify column cel varchar(255) not null; 
-- excluir uma coluna (campo) da tabela
alter table contatos drop column obs; 
-- excluir uma tabela
drop table contatos; 

/****** CRUD ******/

-- CRUD CREATE
-- inserir um registro na tabela
-- tipo varchar ou char usar 'aspas simples'

insert into contatos (nome,fone,email)
values ('Jefferson','954545454','jefferson@email.com');
insert into contatos (nome,fone)
values ('Bill Gates','985858585');
insert into contatos (fone,email)
values ('975757575','linux@email.com');
-- Inserção Própria de dados (atividade)
insert into contatos (nome,fone,email)
values ('Severino','977777777','severino@email.com');

insert into contatos (nome,fone,email)
values ('Severino','912121212','veresino@email.com');

insert into contatos (nome,fone,email)
values ('Mateus','963636363','mateus@email.com');

insert into contatos (nome,fone,email)
values ('Antonio','978787878','antonio@email.com');

insert into contatos (nome,fone,email)
values ('Armando','915151515','armando@email.com');

insert into contatos (nome,fone,email)
values ('Augusto','966666666','augusto@email.com');

/******************************************************************/

-- CRUD READ
-- seleção de todos os registros da tabela
-- * (caracter para pesquisar todos os caracteres dentro da coluna)

select * from contatos;
-- seleção de um registro (contato) especifico

select * from contatos where id=2;
select * from contatos where nome='Jefferson';
select * from contatos where nome like 's%';

-- seleção de campos especificos de um registro
select nome,fone from contatos;

-- em ordem alfabetica
select nome,fone,email from contatos order by nome;

-- em ordem alfabetica começando pelo z
select nome,fone,email from contatos order by nome desc;

-- criando apelidos para os campos
select nome as Contato, fone as Telefone, email as Email
from contatos order by nome;

/******************************************************************/

-- CRUD UPDATE
-- update (nome da tabela) set (coluna) where (localização: id ou cod) 

update contatos set email='bill@outlook.com' where id=2;

-- Atualização própria de dados (atividade)

update contatos set nome='Linus Torvalds' where id=3;
update contatos set nome='Robson da Silva',fone='92222-1222',email='vaamonde@hotmail.com' where id=6;

/******************************************************************/

-- CRUD DELETE
-- delete from (nome da tabela) where (localização: id ou cod)

delete from contatos where id=9;


