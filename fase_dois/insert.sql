insert into cliente(id_cliente) values 
	(001),(002),(003),(004),(005),(006),(007),(008),(009),(010),
	(011),(012),(013),(014),(015),(016),(017),(018),(019),(020);
	
insert into pessoa_fisica(id_cliente, nome, cpf) values
		(001, 'João da silva', 00011122200),
		(002, 'Pedro Leite Bezerra', 11011122211),
		(003, 'Paulo Ferreira', 22011122222),
		(004, 'Beatriz Fernanda Souza', 33011122233),
		(005, 'JupterBr da Silva', 44011122244),
		(006, 'Zuleide Sobral Marques Souza Da Silva Neta', 55011122255),
		(007, 'Mônica Vasconcelos', 66011122266),
		(008, 'Jair Leite', 77011122277),
		(009, 'José da Silva', 88011122288),
		(010, 'Daise de França Martins', 99011122299);
		
insert into endereco(id_endereco,cep, cidade, bairro, rua, numero, estado, complemento, id_cliente) values
		(501, 5563666, 'Recife', 'Centro', 'Vila Izabel', 1010, 'Pernambuco', 'Apto', 001),
		(502, 5563666, 'Garanhuns', 'Boa Vista', 'Av Santo Antônio', 512, 'Pernambuco', 'Casa', 002),
		(503, 5563666, 'São João', 'Centro', 'Augusto Peixoto', 256, 'Pernambuco','Apto', 003),
		(504, 5563666, 'Capoeiras', 'Parque Vila Nova', 'Pedro Lira de Melo', 0245, 'Pernambuco', 'Condomínio', 004),
		(505, 5563666, 'Angelim', 'Centro', 'Vila Izabel', 56, 'Pernambuco', 'Casa', 005),
		(506, 5563666, 'Palmeirina', 'Centro', 'Rua 01', 10, 'Pernambuco', 'Casa', 006),
		(507, 5563666, 'Caruaru', 'Centro', 'Pimentel de Almeida Barros', 6598, 'Pernambuco', 'Apto', 007),
		(508, 5563666, 'Salvador', 'Centro', 'Rua Beira Mar', 5698, 'Bahia', 'Apto', 008),
		(509, 5563666, 'Garanhuns', 'Heliopólis', 'Rui Barbosa', 269, 'Pernambuco', 'Casa', 009),
		(510, 5563666, 'Recife', 'Centro', 'Nova Izabel', 6539, 'Pernambuco', 'Apto', 0010),
		
		(511, 5563666, 'Recife', 'Casa Amarela', 'Rua da Casa Verde', 1010, 'Pernambuco', 'Casa Preta', 011),
		(514, 5563666, 'Capoeiras', 'Alvorada', 'Rua Alvorada Sem Fim', 100000, 'Pernambuco', 'Casa', 014),
		(515, 5563666, 'Angelim', 'Centro', 'Rua Única', 6885, 'Pernambuco', 'Casa Única',015),
		(516, 5563666, 'Palmeirina', 'Centro', 'Rua do Centro', 05, 'Pernambuco', 'Casa do Centro', 016),
		(517, 5563666, 'Caruaru', 'Lado Oposto', 'Rua Pedro Honesto', 9899, 'Pernambuco', 'Casa', 017),
		(518, 5563666, 'Salvador', 'Centro', 'Rua Elevador Lacerda', 69855, 'Bahia', 'Apto', 018),
		(519, 5563666, 'Garanhuns', 'Centro', 'Rua do IFPE', 1010, 'Pernambuco', 'Perto do Assái', 019),
		(520, 5563666, 'Recife', 'Centro', 'Casa Verda', 110, 'Pernambuco', 'Casa Alvinegra', 020);
		
insert into endereco(id_endereco,cep, cidade, bairro, rua, numero, estado, id_cliente) values
		(513, 5563666, 'São João', 'Centro', 'Rua Primeiro Do Mês', 001, 'Pernambuco', 013);
		
insert into endereco(id_endereco,cep, cidade, bairro, rua, estado, id_cliente) values
		(512, 5563666, 'Garanhuns', 'Centro', 'Rua Boa Vista', 'Pernambuco', 012);
		
insert into telefone(id_cliente, numero)  values
		(002,98657951),
		(002,98656400),
		(002,37889516),
		(003,98653689),
		(005,99998888),
		(004,98745406),
		(015,98744565),
		(011,56748756),
		(011,32598446),
		(011,98564656),
		(020,65984798),
		(019,66548798),
		(018,65689816),
		(017,66598954),
		(010,65454987),
		(009,65487894),
		(008,65487894),
		(007,65478974);
		
insert into usuario(id_cliente, login, senha) values
		(001, 'Joao012', 'joao123'),
		(002, 'Pedro112', 'pedro123'),
		(003, 'Paulo212', 'paulo123'),
		(004, 'Beatriz012', 'beatriz123'),
		(005, 'JupterBr112', 'jupterBr123'),
		(006, 'Zuleide212', 'zuleide123'),
		(007, 'Monica012', 'monica123'),
		(008, 'Jair112', 'jair123'),
		(009, 'Jose212', 'jose123'),
		(010, 'Daise012', 'daise123'),
		(011, 'Ifpe007', 'ifpe123'),
		(012, 'Assai212', 'assai123'),
		(013, 'Makro012', 'makro123'),
		(014, 'Nestle162', 'nestle123'),
		(015, 'Sadia65', 'sadia123'),
		(016, 'Camil013', 'camil123'),
		(017, 'Garanhuns012', 'garanhuns123'),
		(018, 'SaoJoao123', 'saojoao123'),
		(019, 'Capoeiras', 'capoeiras123'),
		(020, 'SupermercadosPlanalto', 'leitecondensado162');
		
insert into pessoa_juridica(id_cliente, razao_social, nome_fantasia, cnpj) values
		(011, 'INSTITUTO FEDERAL', 'IFPE Campus Garanhuns', 1076723900145),
		(012, 'SENDAS DISTRIBUIDORA S/A', 'ASSAI ATACADISTA', 06057223000171),
		(013, 'MAKRO ATACADISTA S A', 'PT 32 - Sao Luis', 47427653011907),
		(014, 'Nestle Brasil Ltda', 'Nestle', 60409075000152),
		(015, 'Sadia S.A', 'Sadia', 20730099000194),
		(016, 'Camil Alimentos', 'Camil', 64904295000103),
		(017, 'Município de Garanhuns', 'Garanhuns', 11303906000100),
		(018, 'Município de São João', 'São João', 04122551000189),
		(019, 'Município de Capoeiras', 'Capoeiras', 11256088000106),
		(020, 'Supermercados Planaltos Ilimitado', 'Supermercado Menor Preço', 17171171017117);
		
insert into produto(ean, nome, preco, descricao, unidade_de_medida) values 
		(58417701, 'Arroz', 4.89, 'Arroz Tio João 100% Grãos Nobres', 'kilograma'),
		(58417702, 'Feijão', 9.09, 'Feijão Carioca Caldo Bom', 'kilograma'),
		(58417703, 'Leite Condensado', 162.00, 'Leite de extraordinaria qualidade', 'gramas'),
		(58417704, 'Carne Bovina', 23.00, 'Acem sem osso', 'kilograma'),
		(58417705, 'Achocolatado em Pó Nescau',4.99, 'Nescau 2.0', 'gramas'),
		(58417706, 'Polpa Ninho', 3.54, 'Bandeja com 6 unidades', 'gramas'),
		(58417710, 'Leite', 2.10, 'Leite de vaca em natura', 'litro');
		
insert into produto(ean, nome, preco,unidade_de_medida) values 
		(58417707, 'Açucar Refinado União', 3.50, 'kilograma'),
		(58417708, 'Café Torrado 3 S2', 10.90, 'gramas'),
		(58417709, 'Ovos De Galinha', 0.59, 'unidade');
		
insert into venda(id_venda, status_venda, data_venda, data_entrega, id_cliente) values
		(202101,'efetivada', '27-01-2021', '28-01-2021', 001),
		(202102, 'cancelada', '26-01-2020','01-01-0001' , 002),
		(202103, 'em análise', '01-01-2021','01-01-2021',003),
		(202104, 'estornada', '23-12-2020', '24-12-2020',011),
		(202105, 'efetivada', '28-01-2021','28-01-2021',015);
		
insert into carrinho(id_carrinho, valor_total,id_venda, data_pedido, id_cliente) values
		(001,1000.00,202101,'01-01-2021',001),
		(002,2000.00,202102,'30-12-2018',002),
		(003,3000.00,202103,'16-03-2019',003),
		(004,4000.00,202104,'30-01-2020',011),
		(005,5000.00,202105,'28-01-2021',015);
		
insert into entrega(id_entrega, status_entrega,cidade, cep, estado, numero, rua,bairro, id_venda) values
		(101,'entregue','Recife', 5522, 'PE', 23, 'Jose de Lira', 'Centro', 202101),
		(102, 'cancelada','Rio de Janeiro', 0023, 'RJ', 65, 'Rua Copacabana', 'Copacabana',202102),
		(103, 'entregue','Brasília', 6699, 'DF', 100, 'Av Palácio do Planalto','Alvorada', 202103),
		(104, 'recolhida','Fortaleza', 3265, 'CE', 65986, 'Valadares de Almeida','Vila Velha', 202104),
		(105, 'entregue','Garanhuns', 0013,'PE', 007,'Rua James Bond do Assaí','Heliópolis', 202105);
		
insert into pagamento(id_pagamento, id_venda, dinheiro, valor_pago) values
		(301, 202101,1000.00, 1000.00),
		(302,202102,0.00,0.00),
		(303,202103,3000.00,3000.00),
		(304,202104,0.00,0.00);
		
insert into pagamento(id_pagamento, id_venda, dinheiro, valor_pago, numero, cvv, validade, bandeira, nome) values
		(305,202105,5000.00,0.00,40043,693,'01-11-2030','ELO', 'IFPE Garanhuns');
