UPDATE produtosreferencia pr
SET pr.cod_fornec = 'pacote ' + CAST(pp.PAC AS VARCHAR(50)) + ' caixa ' + CAST(pp.caixa AS VARCHAR(50))
FROM produtosreferencia pr
LEFT JOIN produtospersonal pp ON pr.id_produto = pp.id_produto
WHERE pr.cod_fornec is null;
