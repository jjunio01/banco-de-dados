insert into cliente(id_cliente) values 
	(01),(02),(03),(04),(05),(06),(07),(08),(09),(10),
	(11),(12),(13),(14),(15),(16),(17),(18),(19),(20);
	
insert into pessoa_fisica(id_cliente, nome, cpf) values
		(01, 'João da silva', 00011122200),
		(02, 'Pedro Leite Bezerra', 11011122211),
		(03, 'Paulo Ferreira', 22011122222),
		(04, 'Beatriz Fernanda Souza', 33011122233),
		(05, 'JupterBr da Silva', 44011122244),
		(06, 'Zuleide Sobral Marques Souza Da Silva Neta', 55011122255),
		(07, 'Mônica Vasconcelos', 66011122266),
		(08, 'Jair Leite', 77011122277),
		(09, 'José da Silva', 88011122288),
		(10, 'Daise de França Martins', 99011122299);
		
insert into telefone(id_cliente, numero)  values
		(01,99998888),
		(02,77776666),
		(03,55554444);
		
insert into usuario(id_cliente, login, senha) values
		(01, 'Joao012', 'joao123'),
		(02, 'Pedro112', 'pedro123'),
		(03, 'Paulo212', 'paulo123');
		
insert into pessoa_juridica(id_cliente, razao_social, nome_fantasia, cnjp) values
		(11, 'INSTITUTO FEDERAL', 'IFPE Campus Garanhuns', 1076723900145),
		(12, 'SENDAS DISTRIBUIDORA S/A', 'ASSAI ATACADISTA', 06057223000171),
		(13, 'MAKRO ATACADISTA S A', 'PT 32 - Sao Luis', 47427653011907);
		
insert into produto(ean, nome, preco, descricao, unidade_de_medida) values 
		(58417706, 'Arroz', 4.89, 'Arroz Tio João 100% Grãos Nobres', 'kilograma'),
		(58410056, 'Feijão', 9.09, 'Feijão Carioca Caldo Bom', 'kilograma'),
		(58416697, 'Leite Condensado', 162.00, 'Leite de extraordinaria qualidade', 'gramas');

insert into venda(id_venda, status_venda, data_venda, data_entrega, id_cliente) values
		(202101,'efetivada', '27-01-2021', '28-01-2021', 01),
		(202102, 'cancelada', '26-01-2020','01-01-0001' , 02),
		(202103, 'em análise', '01-01-2021','01-01-2021',03),
		(202104, 'estornada', '23-12-2020', '24-12-2020',11),
		(202105, 'efetivada', '28-01-2021','28-01-2021',15);
		
insert into carrinho(id_carrinho, valor_total,id_venda, data_pedido, id_cliente) values
		(001,1000.00,202101,'01-01-2021',01),
		(002,2000.00,202102,'30-12-2018',02),
		(003,3000.00,202103,'16-03-2019',03),
		(004,4000.00,202104,'30-01-2020',11),
		(005,5000.00,202105,'28-01-2021',15);
		
insert into entrega(id_entrega, status_entrega, cep, estado, numero, rua,bairro, id_venda) values
		(101,'entregue', 5522, 'PE', 23, 'Jose de Lira', 'Centro', 202101),
		(102, 'cancelada', 0023, 'RJ', 65, 'Rua Copacabana', 'Copacabana',202102),
		(103, 'entregue', 6699, 'DF', 100, 'Av Palácio do Planalto','Alvorada', 202103),
		(104, 'recolhida', 3265, 'CE', 65986, 'Valadares de Almeida','Vila Velha', 202104),
		(105, 'entregue', 0013,'PE', 007,'Rua James Bond do Assaí','Heliópolis', 202105);
		
insert into pagamento(id_pagamento, id_venda, dinheiro, valor_pago) values
		(301, 202101,1000.00, 1000.00),
		(302,202102,0.00,0.00),
		(303,202103,3000.00,3000.00),
		(304,202104,0.00,0.00);
		
insert into pagamento(id_pagamento, id_venda, dinheiro, valor_pago, numero, cvv, validade, bandeira, nome) values
		(305,202105,5000.00,0.00,40043,693,'01-11-2030','ELO', 'IFPE Garanhuns');
