/* VISAO VENDAS - Movto de Saída */
/* Considera Venda + Venda Futura - Devolucoes */

select
b.id,
a.id_empresa as CodEmpresa,
g.fantasia as Empresa,
a.geracao_data AS DataEmissao,
extract( year from geracao_data) as  ano,
extract( month from geracao_data) as  mes,
extract( day from geracao_data) as  dia,
Case
when a.tipo_op = '1' THEN 'VENDA'
when a.tipo_op = '2' THEN 'DEVOLUCAO'
when a.tipo_op = '6' THEN 'VENDAFUTURA'
ELSE 'NaoDefinido'
END Operacao,
a.serie,
a.numero as NumeroNota,
d.id AS CodCliente,
d.nome as NomeCliente,
d.cidade as Cidade,
d.uf as UF,
a.id_vendedor AS CodVendedor,
c.apelido AS NomeVendedor,
b.item,
b.id_produto as CodigoProd,
e.descricao as DescricaoProd,
e.unvenda AS UnVenda,
coalesce(e.marca,'SEM MARCA') as Marca,
f.descricao as Classe,
round(sum(b.qtdade * if(a.entradasaida='S',1,-1)),3) as Quantidade,  
round(sum(b.valor_contabil * if(a.entradasaida='S',1,-1)),3) as ValorVendaLiquida,
coalesce(sum(b.descontos + b.descontos_rateio* if(a.entradasaida='S',1,-1)),0) as ValorDesconto,
round(sum(b.custo_real*(qtdade * if(a.entradasaida='S',1,-1))),3) as ValorCusto,  
round((sum(b.valor_contabil* if(a.entradasaida='S',1,-1))-sum(b.custo_real*( b.qtdade * if(a.entradasaida='S',1,-1)) )),2) as ValorLucro,
round((sum(b.valor_contabil* if(a.entradasaida='S',1,-1))-sum(b.custo_real*( b.qtdade * if(a.entradasaida='S',1,-1)) ))/sum(b.valor_contabil* if(a.entradasaida='S',1,-1))*100,2) as PercLucro

from Nfmestre a

left join Nfprodutos b on b.id_nf = a.id 
left join Vendedores c on c.id = a.id_vendedor
left join Pessoas d on d.id = a.id_cliente
left join ProdutosPrincipal e on e.id = b.id_produto
left join ProdutosClasse f on f.classe = e.classe
left join Empresas g on g.id = a.id_empresa
left join ProdutosPersonal h on h.id_produto = e.id 


where 
(a.geracao_data > (current_date - 365)) and
a.id_empresa = 1 and
a.serie <> 'SV2' and
(a.tipo_op = '1'  or a.tipo_op = '2' or a.tipo_op = '6') and
a.cancelado <> 'S' and
e.tipo <> 'H' and
e.tipo <> 'G' and

h.venda_casada <> true  /* não lista os produtos com flag marcada no personalizado*/

group by b.id
order by geracao_data,serie,numero
;
