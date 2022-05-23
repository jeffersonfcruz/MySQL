/**
	LojinhaJefferson
    @author Jefferson Cruz
*/

create database lojinhajefferson;
use lojinhajefferson;
create table produtos (
	id int primary key auto_increment,
    produto varchar(255) not null,
    categoria varchar(255) not null,
    valor decimal not null,
    estoque int not null
);
show databases

