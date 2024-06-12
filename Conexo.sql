update produtosprincipal set relacao1_6 = 0.75; -- Altera relação todos itens para 0.75 

SELECT a.id,
       a.id_produto,

-- Custo Real -----------------------------------------------

      a.custoreal as Real_Calculado,

-- Lucro do Produto -----------------------------------------
      
       coalesce(b.lucro_venda_p1,0)   as lucro,
       
       
-- Relação do Produto -----------------------------------------       

       coalesce(b.relacao1_6,0)   as relacao6
      

into "memory\custos"

FROM PROCUSTOSEMP a, PRODUTOSPRINCIPAL b
WHERE a.id_produto = b.id
;

select id,
       id_produto,
       Real_Calculado,
       relacao6,
         
       round((Real_calculado * (1 + lucro/100)),2) as Precovenda6_Calculado
       
                                                                                                                                                                                                       
into "memory\novos_precos"
from "memory\custos"

where id_produto = 5
;

select id,
       id_produto,
       Precovenda6_Calculado,

       round((Precovenda6_Calculado - (Precovenda6_Calculado * (1 - relacao6))), 2) as Precovenda6_NOVO

       
                                                                                                                                                                                                       
into "memory\novos_precos_teste"
from "memory\novos_precos"

where id_produto = 5
;

update produtosprincipal a set 

                               a.precovenda6 = Precovenda6_NOVO
from produtosprincipal a

inner join "memory\novos_precos_teste" b on b.id_produto = a.id
where b.id_produto = 5
   