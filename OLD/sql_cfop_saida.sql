/* Apurar CFOP's de Saida utilizadas no ultimo ano */

select
cfop,
count(cfop) as qtd
from nfmestre
where
serie <> 'CF' and
(geracao_data > (current_date - 360)) and
id_empresa = 1
group by cfop
order by qtd desc
;