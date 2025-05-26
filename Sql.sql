create database tarefasdb character set utf8mb4
collate utf8mb4_unicode_ci;

use tarefasdb;

create table usuario (
id int primary key auto_increment,
nome varchar(100) not null,
login varchar(100) not null,
email varchar(100) not null,
senha varchar(200) not null
); 

create table tarefa(
id_tarefa int primary key auto_increment,
titulo varchar(100) not null,
descricao varchar(200) not null,
andamento varchar(18) not null,
entrega_dia varchar(11),
id_usuario int not null,
foreign key (id_usuario) references usuario(id)
);

select * from usuario; 
select * from tarefa;


