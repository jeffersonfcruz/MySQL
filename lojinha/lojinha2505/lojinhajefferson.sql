create database lojinhajefferson;
use lojinhajefferson;
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
create table usuarios (
	idusu int primary key auto_increment,
    usuario varchar(255) not null,
    login varchar(255) not null unique,
    senha varchar(255) not null,
    perfil varchar(255) not null
);
describe produtos;
select * from produtos;
insert into produtos (barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
values ('1234567890','A Gente Mira No Amor E Acerta Na Solidão','"O livro de Ana Suy é uma delícia para pensar sobre o amor e a solidão. Você pode se interessar por psicanálise ou mal saber quem foi Freud: tenha certeza de que vai aumentar seu repertório e repensar as próprias experiências a partir destas reflexões estimulantes em forma de conversa boa!','Livraria Curitiba',20220523,50,5,'UN','Setor Livros',30.52,100,50);

insert into produtos (barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
values ('1111111111','Comer Intuitivo','Uma revolucionária abordagem anti-dieta que se tornou uma referência sobre o assunto, com 500 mil exemplares vendidos.Faça as pazes com a comida, liberte-se da dieta crônica e redescubra o prazer de comer.','Livraria Curitiba',20220123,50,5,'UN','Setor Livros',56.60,100,60);

insert into produtos (barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
values ('2222222222','Flores Da Morte','Após o inexplicável suicídio da mãe, a ex-jornalista Heather Evans precisa retornar à casa de sua infância e acaba descobrindo algo aterrador','Livraria Curitiba',20220108,70,5,'UN','Setor Livros',49.10,100,50);

insert into produtos (barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
values ('3333333333','Capitão Cueca - Vol 12','Acompanhe Jorge e Haroldo, do passado, presente e futuro, na última e mais importante aventura do Capitão Cueca!','Livraria Curitiba',20220108,65,5,'UN','Setor Livros',49.90,100,50);

insert into produtos (barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
values ('4444444444','Você É Aquilo Que Pensa','James Allen acreditava quando escreveu este livro, que chega agora ao Brasil com nova e completa tradução.','Livraria Curitiba',20500608,1,5,'UN','Setor Livros',29.70,100,50);

insert into produtos (barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
values ('555555555','A Menina Do Outro Lado: Volume 6','Em um mundo em que os humanos são obrigados a viver enclausurados dentro das muralhas sob constante ameaça de uma maldição','Livraria Curitiba',20500608,10,20,'UN','Setor Livros',46.70,100,50);

insert into produtos (barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
values ('6666666666','Luzes Do Norte','Luzes do Norte é o livro de estreia de Giulianna Domingues, uma aventura intensa e cheia de reviravoltas','Livraria Curitiba',20500608,10,20,'UN','Setor Livros',46.70,100,50);

insert into produtos (barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
values ('7777777777','Doutor Estranho - Os Ultimos Dias Da Magia','Somente o Doutor Estranho pode proteger o mundo da escuridão que jaz além... mas todo e qualquer feitiço que ele lança tem seu preço!','Livraria Curitiba',20500608,20,60,'UN','Setor Livros',195.40,100,200);

insert into produtos (barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
values ('8888888888','A Casa Da Bruxa Natural','Bruxas caseiras, bruxas verdes, bruxas da cozinha, todas têm algo em comum: a conexão com a natureza.','Livraria Curitiba',20500608,1000,50,'UN','Setor Livros',49.90,100,60);

insert into produtos (barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
values ('9999999999','Três Irmãs','Novo romance da autora best-seller Heather Morris, de O tatuador de Auschwitz e A viagem de Cilka - mais de 8 milhões de exemplares vendidos!','Livraria Curitiba',20500608,100,50,'UN','Setor Livros',51.10,53,60);

create table clientes (
	idcli int primary key auto_increment,
    nome varchar(255) not null,
    fone varchar(255) not null,
    cpf varchar(255) unique,
    email varchar(255),
    marketing varchar(255) not null,
    cep varchar(255),
    endereco varchar(255),
    numero varchar(255),
    complemento varchar(255),
    bairro varchar(255),
    cidade varchar(255),
    uf char(2)
);
alter table produtos modify column barcode varchar(255) unique; 
alter table clientes add column nascimento date;
describe clientes;
select * from clientes;
insert into clientes (nome,fone,cpf,email,marketing,cep,endereco,numero,complemento,bairro,cidade,uf,nascimento)
values ('Nina Caroline Clara Ramos','99710-1456','353.557.564-84','nina_caroline_ramos@gruppoitalia.com.br','sim','68555-903','Avenida Xingu','359','','Centro','Xinguara','PA',19840508);

insert into clientes (nome,fone,cpf,email,marketing,cep,endereco,numero,complemento,bairro,cidade,uf,nascimento)
values ('Beatriz Isabelly Ramos','98167-4196','901.259.681-59','beatriz.isabelly.ramos@leandroreis.com','não','25961-030','Praça Nilo Peçanha','910','','Alto','Teresópolis','RJ',19880312);

insert into clientes (nome,fone,cpf,email,marketing,cep,endereco,numero,complemento,bairro,cidade,uf,nascimento)
values ('Lívia Cristiane Flávia da Cruz','99110-3507','606.949.631-00','livia.cristiane.dacruz@ynail.com.br','não','69911-122','Rua Rádio Farol','683','','Glória','Rio Branco','AC',19470222);

insert into clientes (nome,fone,cpf,email,marketing,cep,endereco,numero,complemento,bairro,cidade,uf,nascimento)
values ('Raimundo Henry Rodrigues','99570-9759','044.258.771-60','raimundohenryrodrigues@arablock.com.br','sim','74175-130','Rua 1128','965','','Setor Marista','Goiânia','GO',19680522);

insert into clientes (nome,fone,cpf,email,marketing,cep,endereco,numero,complemento,bairro,cidade,uf,nascimento)
values ('Breno Sebastião da Rocha','98946-4438','373.969.786-53','breno.sebastiao.darocha@bzness.com.br','não','49089-447','Rua J','132','','Soledade','Aracaju','SE',19860413);

insert into clientes (nome,fone,cpf,email,marketing,cep,endereco,numero,complemento,bairro,cidade,uf,nascimento)
values ('Vinicius Vinicius Teixeira','99736-4770','771.343.358-95','vinicius_vinicius_teixeira@guiamaritimo.com.br','sim','54325-570','Rua Dona Bela','539','','Guararapes','Jaboatão dos Guararapes','PE',20020321);

update clientes set fone='99451-1212' where idcli=4;

delete from clientes where idcli=1;

select nome as Nome,
fone as Telefone,
email as Email 
from clientes;

select nome as Nome,
nascimento as Data_de_Nascimento
from clientes;

select * from clientes where marketing='Sim';
