use master
go

if(exists(select * from sys.databases where name = 'ExemploSenai'))
drop database ExemploSenai
go

CREATE DATABASE ExemploSenai
go

use ExemploSenai
go

CREATE TABLE Usuario (
ID int identity primary key,
Nome varchar(200) not null,
Senha varchar (1000) not null
)
go

create table Post(
 ID int identity primary key,
 Publicante int references Usuario(ID),
 Conteudo varchar(MAX) not null
 )
 go
