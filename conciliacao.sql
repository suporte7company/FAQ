Select
  OfxL.Id as Id_Lancamento,
  Cx.Id as Id_Caixa,
  Current_Timestamp as Conciliado_Em,
  CASE
    WHEN(Cx.Link_Tp='OX') THEN 'NV'
    WHEN(Cx.Link_Tp<>'OX') THEN 'VS'
  END AS Tipo,
  OfxL.Id_Fit as Id_Fit
Into
  "MemoryOfx"
From
  Ofx_Lancamentos OfxL
Inner Join
  Caixas Cx
On
  OfxL.Id_Fit = Cx.fitid
Where
  Situacao = 'C'
;

Insert Into Ofx_Conciliados (Id_Lancamento, Id_Caixa, Conciliado_Em, Tipo, Id_Fit) Select * From "MemoryOfx";
