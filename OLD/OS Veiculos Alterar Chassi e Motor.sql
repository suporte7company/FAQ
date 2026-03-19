update OSVEICULOSCLIENTES
set motor = osveiculos.motor
from OSVEICULOSCLIENTES
left JOIN osveiculos ON osveiculos.id = OSVEICULOSCLIENTES.id_veiculo;   -- sintaxe para alterar um valor buscando dados de outra tabela.
