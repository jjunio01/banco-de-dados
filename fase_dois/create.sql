create table cliente (
id_cliente integer,
constraint cliente_pk primary key(id_cliente)
);

create table usuario (
senha varchar(20) not null,
login varchar(45),
id_cliente integer not null,
constraint usuario_pk primary key(login),
constraint usuario_cliente_fk foreign key (id_cliente) 
	references cliente(id_cliente) on delete cascade,
constraint usuario_cliente_unique unique(id_cliente)
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
cep varchar(45) not null,
estado varchar(45) not null,
numero varchar(45),
rua varchar(45) not null,
id_venda integer not null,
constraint entrega_pk primary key(id_entrega),
constraint entrega_venda_fk foreign key (id_venda) 
	references venda(id_venda)
);
alter table entrega add column bairro varchar(45) not null;


create table pagamento(
dinheiro decimal,
valor_pago decimal,
numero varchar(45),
cvv varchar(45),
validade date, 
bandeira varchar(30),
nome varchar(45),
id_venda integer not null,
constraint pagamento_venda_fk foreign key (id_venda) references venda(id_venda)
);
alter table pagamento add column id_pagamento integer;
alter table pagamento add constraint pagamento_pk primary key(id_pagamento);

create table carrinho_produto (
id_carrinho_produto integer,
quantidade integer not null,
id_carrinho integer not null,
constraint carrinho_produto_pk primary key(id_carrinho_produto)
);
alter table carrinho_produto add constraint carinho_produto_carrinho_fk 
	foreign key(id_carrinho) references carrinho(id_carrinho);
	
create table produto (
ean integer,
nome varchar(45) not null,
preco decimal not null,
descricao varchar(45),
unidade_de_medida varchar(20) not null,
id_carrinho_produto integer,
constraint produto_pk primary key(ean),
constraint produto_carrinho_produto_fk foreign key 
	(id_carrinho_produto) references carrinho_produto(id_carrinho_produto)
);

create table telefone (
numero1 integer,
numero2 varchar(15),
numero3 varchar(15),
id_cliente integer not null,
constraint telefone_pk primary key(numero1),
constraint telefone_cliente_fk foreign key (id_cliente) references cliente(id_cliente)
);

create table pessoa_fisica (
cpf char(11) not null,
nome varchar(45) not null,
id_cliente integer,
constraint pessoa_fisica_pk primary key(id_cliente),
constraint pessoa_fisica_cliente_fk 
	foreign key (id_cliente) references cliente(id_cliente)
);

create table pessoa_juridica (
cnjp char(14),
nome_social varchar(45) not null,
nome_fantasia varchar(45) not null,
id_cliente integer,
constraint pessoa_juridica_pk primary key(id_cliente),
constraint pessoa_juridica_cliente_fk foreign key (id_cliente)
	references cliente(id_cliente)
);