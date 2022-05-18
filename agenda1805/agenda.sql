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