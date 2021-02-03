/*listar o endereço dos clientes ordenado pela cidade e bairro em ordem alfabética*/
select * from endereco
order by endereco.cidade, endereco.bairro

/*listar o endereço dos clientes que residem em caruaru*/
select * from endereco where cidade ='Caruaru'

/*listar o login dos clientes que residem em Garanhuns*/
select e.cidade, u.login
from  endereco as e, usuario as u
where  e.id_cliente = u.id_cliente and e.cidade ='Garanhuns'
order by  u.login

/*listar o login e cpf dos clientes que residem em Garanhuns e são pessoa física*/
select e.cidade, u.login, p.cpf
from  endereco as e, usuario as u, pessoa_fisica as p
where  e.id_cliente =u.id_cliente and e.cidade ='Garanhuns' and p.id_cliente=u.id_cliente
order by  u.login


/*listar os produtos que estejam na faixa de preço entre R$2.99 e R$25,
que tenham descrição e que sua unidade de medida esteja em Kg*/ 
select * from produto as pr
where pr.preco >= 1.99 and pr.preco<= 25
group by pr.unidade_de_medida, pr.ean
having  pr.descricao != 'null' and pr.unidade_de_medida = 'kilograma';