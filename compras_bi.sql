/* VISAO COMPRAS - Movto de Entrada */

select
b.id,
a.id_empresa AS CodEmpresa,
f.fantasia as Empresa,
a.data_entrada AS DataEntrada,
extract( year from data_entrada) as  ano,
extract( month from data_entrada) as  mes,
extract( day from data_entrada) as  dia,
a.serie,
a.numero as NumeroNota,
a.id_fornec AS CodFornec,
c.nome as NomeFornecedor,
c.cidade as Cidade,
c.uf as UF,
b.item,
b.id_produto as CodigoProd,
d.descricao as DescricaoProd,
d.uncompra AS UnCompra,
b.Mov_Estoque as MovtoEstoque,
coalesce(d.marca,'SEM MARCA') as Marca,
e.descricao as Classe,
round((b.qtdade),3) as Quantidade,  
round((b.custo_contabil),3) as ValorTotalProd

from EntradasM a
left join EntradasProdutos b on b.id_nf = a.id 
left join Pessoas c on c.id = a.id_fornec
left join ProdutosPrincipal d on d.id = b.id_produto
left join ProdutosPersonal h on h.id_produto = d.id 
left join ProdutosClasse e on e.classe = d.classe
left join Empresas f on f.id = a.id_empresa



where 
(a.data_entrada > (current_date - 365)) and
a.id_empresa = 1 and
a.cancelado <> 'S' and
b.mov_estoque = 'S' and
d.tipo <> 'H' and
d.tipo <> 'G' and

h.venda_casada <> true  /* não lista os produtos com flag marcada no personalizado*/

group by b.id
order by data_entrada,serie,numero
;
