/*Seta bloco x como X para nao acusar pendencia caso tenha sido desabilidatao e nao rodado*/
update PAFEnvWS set Status='X' where Status='A' ;      

/*Seta todas OS com status do PAF OK para nao ficar saindo na ECF/NFCe as OS em aberto ate a data informada*/
update OSM set paf_status='F' where geracao_data<'2025-01-01' ; 

/*Seta a lista dos xml de nfce e cte como OK ate a data, e junto com a config exibe so NAO OK, deixa lista de pendentes apenas*/
update xml_lista set OK=True where dataemissao<'2024-12-01' and OK<>True ;

/*Destrava todos documtos caso possua algum*/
update orcamentom set alterando = False where alterando = true;
update osm set alterando = False where alterando = true;
update prevendam set alterando = False where alterando = true;
update nfmestre set alterando = False where alterando = true;
update pedidosm set alterando = False where alterando = true;

/*Preenche 100% na partilha de ICMS*/
update ConfigGlobal set Perc_Partilha_ICMS = 100;

/*SQL referente Beneficio Fiscal*/
Update NFProdutos Set Exprops =
       If(Id_BeneficioFiscal Is Null, 
               Exprops+#13+#10+'SOMA_PIS_COFINS_TOTAL_NOTA=False'
                      +#13+#10+'IND_DESC_DESON=False'
                      ,
                      Exprops+#13+#10+'SOMA_PIS_COFINS_TOTAL_NOTA=False'
                      +#13+#10+'IND_DESC_DESON=False'
                      +#13+#10+'cCredPresumido='
                      +#13+#10+'pCredPresumido=0'
                      +#13+#10+'vCredPresumido=0'
                      ) 
Where 
    Exprops Is Not Null
;
