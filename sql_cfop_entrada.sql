/* Apurar CFOP's de Entrada utilizadas no ultimo ano */

select
cfop,
count(cfop) as qtd
from EntradasM
where
(data_emissao > (current_date - 360)) and
id_empresa = 1
group by cfop
order by qtd desc
;