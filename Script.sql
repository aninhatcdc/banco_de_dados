create database tropa_do_cc

alter database tropa_do_cc rename to tropa_cc

create table minha_tabela (
	id SERIAL primary key,
	nome VARCHAR(100),
	idade INT
);

alter table minha_tabela rename to pessoa; 

create table enderecos (
	id SERIAL primary key,
	id_pessoa INT references pessoa(id) on delete cascade,
	rua VARCHAR(100),
	cidade VARCHAR(50),
	estado VARCHAR(50),
	cep VARCHAR(10)
);

select * from enderecos

insert into pessoa (nome, idade) values ('João Silva', 30);
insert into pessoa (nome,idade) values ('Maria Oliveira', 24);
insert into pessoa (nome,idade) values ('Carlos Souza', 40);
insert into pessoa (nome,idade) values ('Ana Costa', 35);

insert into enderecos (rua,cidade,estado,cep) values ('Rua Verde','João Pessoa','Paraíba',54604879);
insert into enderecos (rua,cidade,estado,cep) values ('Rua Vermelha','João Pessoa','Paraíba',90604579);
insert into enderecos (rua,cidade,estado,cep) values ('Rua Azul','João Pessoa','Paraíba',12374879);
insert into enderecos (rua,cidade,estado,cep) values ('Rua Amarela','João Pessoa','Paraíba',45604879);

