select
id,
descricao,
b.descricao as classe,
CASE
 WHEN tipo = 'A' THEN 'Materia Prima'
 WHEN tipo = 'B' THEN 'Embalagem' 
 WHEN tipo = 'C' THEN 'Produto em Prcesso'
 WHEN tipo = 'D' THEN 'Produto Acabado'
 WHEN tipo = 'E' THEN 'SubProduto'
 WHEN tipo = 'F' THEN 'Produto Intermediario'
 WHEN tipo = 'G' THEN 'Material Uso e Consumo'
 WHEN tipo = 'H' THEN 'Ativo Imobilizado'
 WHEN tipo = 'I' THEN 'Outros Insumos'
 WHEN tipo = 'J' THEN 'Outras'
 WHEN tipo = 'R' THEN 'Revenda'
 WHEN tipo = 'S' THEN 'Servico'
ELSE
 'Indefinido'
end as TipoProduto,
sintegra_ncm,
c.descricao as tributacao

from ProdutosPrincipal
left join ProdutosClasse b on b.classe = classe
left join ImpostoTrib c on c.id = id_trib


where
ativo = 'S'
order by c.descricao,id