create schema livraria;
use livraria;
create table cliente(
id_cliente  int auto_increment primary key not null,
cpf  varchar (11) not null,
nome varchar  (100) not null, 
nascimento  date not null,
rg  varchar(9) not null,
idade  int  not null,
endereco varchar(100) not null,
telefone varchar(10) not null,
e_mail varchar(100) not null

);


insert into cliente ( cpf,nome, nascimento,rg, idade, endereco, telefone , e_mail ) values

('15333174919',' silvana','2007-12-5','307445550',18,'rua das floes, 235','4399588675','gab@domini.com'),
('15333172919','califa','2007-12-1','307410550',18,'rua das lores, 235','4399788775','gab@domini.com'),
('15333171919','miguel','2007-12-25','307419550',18,'rua das flore, 235','4399588275','gab@domini.com'),
('15333198919','dasa ','2007-12-23','307415650',18,'rua das floes, 235','4399588475','gab@domini.com'),
('15333170919','silva','2007-12-3','307415250',18,'rua das ores, 235','4399588575','gab@domini.com');









select * from tabela_de_produtos where sabor = 'Manga' and tamanho = '3 ml';

select * from tabela_de_produtos where sabor = 'Manga' and not (tamanho = '470 ml');
select * from tabela_de_produtos where sabor = 'Manga' or not (tamanho = '470 ml');
select * from tabela_de_produtos where sabor in ('Manga', 'Laranja');

select * from tabela_de_clientes where cidade in ('Rio de Janeiro', 'São Paulo') and idade >= 20;

#USO DA CONDIÇÃO DISTINCT

select embalagem, tamanho from tabela_de_produtos;

select distinct embalagem, tamanho from tabela_de_produtos;

select distinct embalagem, tamanho, sabor from tabela_de_produtos where sabor = 'Laranja';


select distinct bairro, estado , cidade
from tabela_de_clientes
where cidade = 'rio de janeiro';
#uso da condicao limitada
select * from tabela_de_produtos limit 30;

# obtenha as 10 primeras vendas
# do dia 01/01/2017
select * from  notas_fiscais  
where DATA_VENDA = '2017-01-10'  limit 5,10 ;
 #utilizando order by
 select sabor, EMBALAGEM from tabela_de_produtos;
 select * from tabela_de_produtos order by PRECO_DE_LISTA , EMBALAGEM;
 select *from tabela_de_produtos order by PRECO_DE_LISTA desc;
 
 # qual ou quais foram as maiores vendas 
 # do produto "linha refrescante - 1 litro - morango/limao
 # em quantidade e preco
 
 select * from  tabela_de_produtos where NOME_DO_PRODUTO=
 'linha refrescante - 1 litro - morango/limao';

select * from itens_notas_fiscais
where CODIGO_DO_PRODUTO='1101035'
order by quantidade desc , preco desc limiT 6;
#agrupar os resultados
select estado, sum(limite_de_credito) as LIMITE_TOTAL
FROM tabela_de_clientes group by estado;