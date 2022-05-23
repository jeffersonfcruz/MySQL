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