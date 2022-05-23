/**
	LojinhaJefferson2
    @author Jefferson Cruz
    @version 1.1
*/
create table usuarios (
	idusu int primary key auto_increment,
    usuario varchar(255) not null,
    login varchar(255) not null unique,
    senha varchar(255) not null,
    perfil varchar(255) not null
);
describe usuarios;

insert into usuarios (usuario,login,senha,perfil)
values ('administrador','admin',md5('admin'),'admin');

insert into usuarios (usuario,login,senha,perfil)
values ('Jefferson','jeff',md5('123456'),'user');

select * from usuarios;

select * from usuarios where login='admin' and senha=md5('admin');

drop table produtos; 

create table produtos (
	codigo int primary key auto_increment,
    barcode varchar(255),
	produto varchar(255) not null,
    descricao varchar(255) not null,
    fabricante varchar(255) not null,
    datacad timestamp default current_timestamp,
    dataval date not null,
    estoque int not null,
    estoquemin int not null,
    unidade varchar(255) not null,
    localizacao varchar(255),
    custo decimal (10,2) not null,
    lucro int,
    venda decimal (10,2)
);
describe produtos;

insert into produtos (barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
values ('1234567890','TUDO É RIO','Tudo é rio é o livro de estreia de Carla Madeira. Com uma narrativa madura, precisa e ao mesmo tempo delicada e poética','Livraria Cultura',21220523,3,5,'UN','Setor Livros',54.90,100,50);

insert into produtos (barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
values ('1111111111','PERDAS E GANHOS','Lya Luft é uma mulher de seu tempo, e sobre ele dá seu testemunho em tudo o que escreve, especialmente neste novo livro.','Livraria Cultura',21220523,20,5,'UN','Setor Livros',59.90,100,55);

select * from produtos;