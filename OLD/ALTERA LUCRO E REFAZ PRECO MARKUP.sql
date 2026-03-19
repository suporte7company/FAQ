SELECT a.id,
       a.id_produto,
-- Custo Contabil --------------------------------------------
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
       coalesce(b.lucro_venda_p3,0)   as lucro_p3,
       coalesce(b.lucro_venda_p4,0)   as lucro_p4,
       coalesce(b.lucro_venda_p5,0)   as lucro_p5,
       coalesce(b.lucro_venda_p6,0)   as lucro_p6

into "memory\custos"

FROM PROCUSTOSEMP a, PRODUTOSPRINCIPAL b
WHERE a.id_produto = b.id
;
select id,
       id_produto,
       PrecoCusto,
       Total_Calculado,
       Real_Calculado,
      
       round((Real_calculado * (1 + lucro_p1/100)),2) as Precovenda1_Calculado,

       round((Real_calculado * (1 + lucro_p2/100)),2) as Precovenda2_Calculado,
         
       round((Real_calculado * (1 + lucro_p3/100)),2) as Precovenda3_Calculado,
       
       round((Real_calculado * (1 + lucro_p4/100)),2) as Precovenda4_Calculado,
         
       round((Real_calculado * (1 + lucro_p5/100)),2) as Precovenda5_Calculado,
         
       round((Real_calculado * (1 + lucro_p6/100)),2) as Precovenda6_Calculado

into "memory\novos_precos"
from "memory\custos"
;

update produtosprincipal a set a.precovenda1 = b.precovenda1_calculado,
                               a.precovenda2 = b.precovenda2_calculado,
                               a.precovenda3 = b.precovenda3_calculado,
                               a.precovenda4 = b.precovenda4_calculado,
                               a.precovenda5 = b.precovenda5_calculado,
                               a.precovenda6 = b.precovenda6_calculado
from produtosprincipal a
inner join "memory\novos_precos" b on b.id_produto = a.id
where b.id_produto = 2
;