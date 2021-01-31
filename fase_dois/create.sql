/*Para execucão dos demais scripts por favor comentar as linhas 141 e 142 antes da execução desse script,
que se referem ao Drop Table de todas as tabelas, como solicitado no script CREAT.SQL da segunda fase, 
atenciosamente equipe FestFeira*/

create table cliente (
id_cliente integer,
constraint cliente_pk primary key(id_cliente)
);

create table usuario (
senha varchar(20) not null,
login varchar(45),
id_cliente integer,
constraint usuario_pk primary key(login, id_cliente),
constraint usuario_cliente_fk foreign key (id_cliente) 
	references cliente(id_cliente) on delete cascade
);

create table venda (
id_venda integer, 
status_venda varchar(45) not null, 
data_venda timestamp not null,
data_entrega timestamp,
id_cliente integer not null,
constraint venda_pk primary key(id_venda),
constraint venda_cliente_pk foreign key (id_cliente)
	references cliente(id_cliente)
);
create table carrinho (
id_carrinho integer,
valor_total decimal not null,
id_venda integer,
data_pedido timestamp not null,
id_cliente integer not null,
constraint carrinho_pk primary key(id_carrinho),
constraint carrinho_venda_fk foreign key (id_venda)
	references venda(id_venda),
constraint carrinho_cliente_fk foreign key (id_cliente)
	references cliente(id_cliente)
);

create table entrega (
id_entrega integer,
status_entrega varchar(45) not null,
cep varchar(15) not null,
cidade varchar(30) not null,
estado varchar(30) not null,
numero varchar(10),
rua varchar(100) not null,
id_venda integer not null,
constraint entrega_pk primary key(id_entrega, id_venda),
constraint entrega_venda_fk foreign key (id_venda) 
	references venda(id_venda)
);
alter table entrega add column bairro varchar(45) not null;


create table pagamento(
dinheiro decimal,
valor_pago decimal not null,
numero varchar(45),
cvv char(3),
validade date, 
bandeira varchar(30),
nome varchar(45),
id_venda integer not null,
constraint pagamento_venda_fk foreign key (id_venda) references venda(id_venda)
);
alter table pagamento add column id_pagamento integer;
alter table pagamento add constraint pagamento_pk primary key(id_pagamento, id_venda);


create table produto (
ean integer,
nome varchar(45) not null,
preco decimal not null,
descricao varchar(250),
unidade_de_medida varchar(20) not null,
constraint produto_pk primary key(ean)
);

create table telefone (
numero varchar(20),
id_cliente integer,
constraint telefone_pk primary key(numero, id_cliente),
constraint telefone_cliente_fk foreign key (id_cliente) references cliente(id_cliente)
);

create table item_carrinho (
id_carrinho integer,
quantidade integer not null,
id_produto integer,
constraint id_carrinho_pk primary key(id_carrinho, id_produto)
);
alter table item_carrinho add constraint item_carrinho_id_produto_fk 
	foreign key(id_produto) references produto(ean);
alter table item_carrinho add constraint item_carrinho_id_carrinho_fk 
	foreign key(id_carrinho) references carrinho(id_carrinho);

create table pessoa_fisica (
cpf char(11) not null,
nome varchar(45) not null,
id_cliente integer,
constraint pessoa_fisica_pk primary key(id_cliente),
constraint pessoa_fisica_cliente_fk 
	foreign key (id_cliente) references cliente(id_cliente)
);

create table pessoa_juridica (
cnpj char(14),
razao_social varchar(250) not null,
nome_fantasia varchar(250) not null,
id_cliente integer,
constraint pessoa_juridica_pk primary key(id_cliente),
constraint pessoa_juridica_cliente_fk foreign key (id_cliente)
	references cliente(id_cliente)
);

create table endereco (
id_endereco integer,
estado varchar(30) not null,
cidade varchar(30) not null,
bairro varchar(45) not null,
rua varchar (100) not null,
complemento varchar(30),
numero varchar(10),
cep varchar(15) not null,
id_cliente integer not null,
constraint endereco_pk primary key(id_endereco),
constraint endereco_cliente_fk foreign key (id_cliente) references cliente(id_cliente)
);
create table produto_feira(
id_feira integer,
id_produto integer,
constraint produto_feira_pk primary key(id_feira, id_produto),
constraint feira_produto_fk foreign key (id_produto)
				references produto(ean),
constraint produto_feira_produto_fk foreign key (id_feira)
				references produto(ean)
);

DROP TABLE cliente, usuario, venda, carrinho, entrega, pagamento, item_carrinho,
			produto, telefone, pessoa_fisica, pessoa_juridica, endereco, produto_feira;

