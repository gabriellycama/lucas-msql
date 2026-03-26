## atividade 1 
select * from tabela_de_vendedores where NOME = 'Cláudia Morais' and bairro = 'Jardins';
## resposa: Sim ela está de férias

#QUESTÃO 2
select * from tabela_de_vendedores where PERCENTUAL_COMISSAO > 0.10 and DE_FERIAS = 1;
#RESPOSTA: Sim ela está de férias

#QUESTÃO 3
select * from notas_fiscais where NUMERO = '00237' or DATA_VENDA= 12-01-2015;
# pelo cpf poder comprar varias coisas por isso ele nao e conciderado nesse caso.

#questao 4 
select * from itens_notas_fiscais
 where QUANTIDADE >= 99 and PRECO >44;
 ## o maior produto e o  o numero e  "81959" ja o codigo e "1022450"
 
 #questao 5
 
 select * from notas_fiscais where NUMERO= 102;
 select * from tabela_de_clientes where CPF = "8502682733";
 select * from  itens_notas_fiscais  where QUANTIDADE  = 84  AND CODIGO_DO_PRODUTO = "1101035" AND NUMERO = 192;
 select * from 
 
 
 
 
 
 


