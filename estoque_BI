SELECT 
I.ID_PRODUTO,
    SUM(I.QTDADE) AS QTDADE_TOTAL,
    SUM(I.QTDADE - COALESCE(K.QTDADE, 0)) AS QUANTIDADE_PEDIDO

INTO "memory\PEDIDOS"

FROM PEDIDOSP I 

LEFT JOIN PEDIDOSM J ON J.ID = I.ID_PED
LEFT JOIN PEDIDOSPE K ON K.ID_PEDP = I.ID

WHERE 
(J.SITUACAO = 'A' OR (J.SITUACAO = 'R' AND J.SITCAP = 'P')) AND
I.OK <> TRUE 

GROUP BY ID_PRODUTO
ORDER BY I.ID_PRODUTO ;


select 
c.id_empresa as CodEmpresa,
f.fantasia as Empresa,
a.id as CodigoProd,
a.descricao as DescricaoProd,
a.unvenda as UnVenda,
coalesce(a.marca,'SEM MARCA') as Marca,
d.descricao as Classe,
/* para calculo, prazo de reposição considerado 7 dias */
7 leadtimeforn,

CASE 
    WHEN g.leadtime IS NULL THEN 7
    ELSE g.leadtime
  END AS leadtime, /* SINTAXE PARA SE CASO PRODUTO NÃO TIVER MARCAR ELE INFORME 7 DEFAULT */
  
coalesce(a.multiplo_venda,0) as lotemultiplo,
coalesce(c.estoque_maximo,0) as EstoqueMax,
coalesce(c.estoque_minimo,0) as EstoqueMin,
c.estoque as Estoque,
(coalesce(c.resv_dav,0) + coalesce(c.resv_os,0) + coalesce(c.resv_pv,0) + coalesce(c.resv_ef,0)) as Reservado,
c.estoque - (coalesce(c.resv_dav,0) + coalesce(c.resv_os,0) + coalesce(c.resv_pv,0) + coalesce(c.resv_ef,0)) as EstoqueDisponivel,
x.QUANTIDADE_PEDIDO as Qtd_Pedidos_Compra,
round(e.custoreal, 4) as CustoReal


from ProdutosPrincipal a
left join ProdutosReferencia b on b.id_produto = a.id
left join ProdutosRefEmpresa c on c.id_ref = b.id
left join ProdutosClasse d on d.classe = a.classe
left join ProCustosEmp e on e.id_produto = a.id
left join Empresas f on f.id = c.id_empresa
left join MarcasSite g on g.desc_marca = a.marca  
left join ProdutosPersonal h on h.id_produto = a.id
left join "MEMORY\PEDIDOS" x on x.id_produto = a.id


where
c.id_empresa = 1 and
e.id_empresa = 1 and
a.tipo <> 'H' and
a.tipo <> 'G' and
h.venda_casada <> true  /* não lista os produtos com flag marcada no personalizado*/

;
