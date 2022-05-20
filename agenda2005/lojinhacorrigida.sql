/**
	LojinhaJefferson2
    @author Jefferson Cruz
    @version 1.0
*/
create database lojinhajefferson2;
use lojinhajefferson2;
create table produtos (
	codigo int primary key auto_increment,
	produto varchar(255) not null,
    quantidade int not null, 
    valor decimal(10,5)
);
describe produtos;
insert into produtos (produto,quantidade,valor)
values ('Livro USE A CABEÇA! PYTHON — 2ª EDIÇÃO',50,109.90);
insert into produtos (produto,quantidade,valor)
values ('Lógica e design de programação: Introdução',20,152.44);
insert into produtos (produto,quantidade,valor)
values ('O MAR DE MONSTROS - CAPA NOVA',50,54.90);
insert into produtos (produto,quantidade,valor)
values ('TEMPESTADE PERFEITA',25,59.60);
insert into produtos (produto,quantidade,valor)
values ('O HERÓI PERDIDO',75,64.90);
insert into produtos (produto,quantidade,valor)
values ('BOX MAGNUS CHASE E OS DEUSES DE ASGARD',66,194.70);
select * from produtos;
select produto from produtos order by produto;
update produtos set produto='USE A CABEÇA! PYTHON — 2ª EDIÇÃO' where codigo=1;
update produtos set valor=60.90 where codigo=5;
delete from produtos where codigo=6

