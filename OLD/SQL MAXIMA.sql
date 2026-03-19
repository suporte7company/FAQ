update procustosemp set pCOMISSAO_venda = 2;


SELECT a.id,
       a.id_produto,
-- Custo Contábil --------------------------------------------
       a.PrecoCusto,
-- Custo Total ----------------------------------------------
       a.PrecoCusto + (  (a.PrecoCusto*coalesce(a.pIPI_compra,0)/100)
                     + (a.PrecoCusto*coalesce(a.pFRETE_compra,0)/100)
                     + (a.PrecoCusto*coalesce(a.pSEGURO_compra,0)/100)
                     + (a.PrecoCusto*coalesce(a.pDESPESAS_compra,0)/100)
                     - (a.PrecoCusto*coalesce(a.pDESCONTOS_compra,0)/100)
                     + (coalesce(a.STValor_compra,0)) ) as Total_Calculado,

-- Custo Real -----------------------------------------------
      (a.PrecoCusto + (  (a.PrecoCusto*coalesce(a.pIPI_compra,0)/100)
                     + (a.PrecoCusto*coalesce(a.pFRETE_compra,0)/100)
                     + (a.PrecoCusto*coalesce(a.pSEGURO_compra,0)/100)
                     + (a.PrecoCusto*coalesce(a.pDESPESAS_compra,0)/100)
                     - (a.PrecoCusto*coalesce(a.pDESCONTOS_compra,0)/100)
                     + (coalesce(a.STValor_compra,0)) ) )
                       -
                        (round((a.PrecoCusto*coalesce(a.ICMSBase_compra,0)/100) * (coalesce(a.ICMSaliq_compra,0)/100),2)
                         + (a.PrecoCusto*coalesce(a.pPIS_compra,0)/100)
                         + (a.PrecoCusto*coalesce(a.pCOFINS_compra,0)/100)) as Real_Calculado,

-- Encargos de Venda ----------------------------------------
       coalesce(a.ICMSBase_venda,0)   as ICMSBase_venda,
       coalesce(a.ICMSaliq_venda,0)   as ICMSaliq_venda,
       coalesce(a.pDESPESAS_venda,0)  as DESPESAS_venda,
       coalesce(a.pCOMISSAO_venda,0)  as COMISSAO,
       coalesce(a.pPIS_venda,0)       as PIS_venda,
       coalesce(a.pCOFINS_venda,0)    as COFINS_venda,

-- Lucro do Produto -----------------------------------------
       coalesce(b.lucro_venda_p1,0)   as lucro_p1,
       coalesce(b.lucro_venda_p2,0)   as lucro_p2,
       coalesce(b.lucro_venda_p3,0)   as lucro_p3

into "memory\custos"

FROM PROCUSTOSEMP a, PRODUTOSPRINCIPAL b
WHERE a.id_produto = b.id  and a.id_empresa = 3
;
select id,
       id_produto,
       PrecoCusto,
       Total_Calculado,
       Real_Calculado,
       round((Real_calculado * (100 / (100-
         (if(ICMSBase_venda = 0, 0, (ICMSaliq_venda * (ICMSBase_venda/100)))
         +DESPESAS_venda
         +lucro_p1
         +COMISSAO
         +PIS_venda
         +COFINS_venda)))),2) as Precovenda1_Calculado,

       round((Real_calculado * (100 / (100-
         (if(ICMSBase_venda = 0, 0, (ICMSaliq_venda * (ICMSBase_venda/100)))
         +DESPESAS_venda
         +lucro_p2
         +COMISSAO
         +PIS_venda
         +COFINS_venda)))),2) as Precovenda2_Calculado,
         
       round((Real_calculado * (100 / (100-
         (if(ICMSBase_venda = 0, 0, (ICMSaliq_venda * (ICMSBase_venda/100)))
         +DESPESAS_venda
         +lucro_p3
         +COMISSAO
         +PIS_venda
         +COFINS_venda)))),2) as Precovenda3_Calculado


into "memory\novos_precos"
from "memory\custos";

update produtosprincipal a set a.precovenda1 = b.precovenda1_calculado,
                               a.precovenda2 = b.precovenda2_calculado,
                               a.precovenda3 = b.precovenda3_calculado

from produtosprincipal a
inner join "memory\novos_precos" b on b.id_produto = a.id
; 