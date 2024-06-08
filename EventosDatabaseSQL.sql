create table pessoas (
	cpf serial primary key,
	nome varchar(100) not null,
	email varchar(60),
	fone varchar(60)
)

select * from pessoas

create table tipo_evento (
	id serial primary key,
	tipo varchar (100) not null unique
)

select * from tipo_evento

create table eventos (
	id serial primary key,
	nome varchar(100) not null,
	data_ini date not null,
	data_fim date not null,
	localizacao varchar(180) not null,
	fk_tipo integer not null,
foreign key (fk_tipo) references tipo_evento (id)
	)


select * from eventos

create table ingressos (
	id serial primary key,
	titulo varchar (80) not null,
	lugar varchar (120) not null,
	valor decimal not null,
	quantidade integer not null,
	fk_evento integer not null,
	foreign key (fk_evento) references eventos (id)
)

select * from ingressos

create table programacao (
	id serial primary key,
	nome varchar (120) not null,
	descricao varchar (400) not null,
	data_ini date not null,
	data_fim date not null,
	lugar varchar (200) not null,
	responsavel varchar (60) not null,
	fk_evento integer not null,
	foreign key (fk_evento) references eventos (id)
)

select * from programacao

create table compra (
	id serial primary key,
	fk_pessoa integer not null,
	fk_ingresso integer not null,
	foreign key (fk_pessoa) references pessoas (cpf),
	foreign key (fk_ingresso) references ingressos (id),
	quantidade integer not null
)

select * from programacao

