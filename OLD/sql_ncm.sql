/*gera o sql e salvar com nome de tabela NCM_2025*/
select
sintegra_ncm,
count(sintegra_ncm) as qtd

INTO "memory\NCM_2025" 
from produtosprincipal

group by sintegra_ncm
order by qtd desc
;

/*entao esse para limpar tabela e fazer insert*/

EMPTY table impostoncm;
INSERT INTO IMPOSTONCM
 (NCM)
 SELECT sintegra_NCM FROM NCM_2025;
 
update impostoncm set IPI_ALIQ=3.25; 
update impostoncm set IPI_CST='50';
update impostoncm set IPI_ENQ='999';