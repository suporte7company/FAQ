# 🧾 Capturar DAV de Pedido no módulo Notas

## 📌 Objetivo

Capturar um pedido já registrado no DAV para gerar uma nota fiscal de forma rápida e prática, evitando retrabalho no lançamento dos itens.

---

## 🧭 Quando utilizar

Utilize este procedimento nos seguintes cenários:

* 🛒 Cliente deseja finalizar uma compra já iniciada no DAV, gerando a nota fiscal
* ⚡ Necessidade de agilizar a emissão da nota a partir de um pedido existente
* 📄 Finalizar e emitir nota de um orçamento previamente aprovado

---

## 🛠️ Passo a passo

### 1️⃣ Localizar o número do DAV

* Abrir o sistema `BMSoft (master.exe)`
* Acessar o módulo `DAV`
* Realizar a pesquisa por **data** ou **cliente**
* Localizar o pedido desejado
* Anotar o **número do DAV** (primeira coluna à esquerda)

---

### 2️⃣ Capturar o DAV no módulo Notas

* Abrir o sistema `BMSoft (master.exe)`
* Acessar o módulo `Notas`
* Clicar em `Incluir` (canto superior esquerdo)
* Clicar em `Capturar` (canto inferior esquerdo)
* No campo **Número**, clicar em `[...]`
* Informar o número do DAV anotado
* Pressionar `Enter` e depois clicar em `OK`
* Após carregar o pedido, pressionar `Enter` novamente
* Selecionar os campos vinculados ao DAV que deseja importar - `Exemplo: [✔️]Duplicatas`
* Clicar em `OK`

---

### 3️⃣ Revisar e finalizar a nota

* Ajustar **quantidades dos itens** ou **informações financeiras**, se necessário
* Clicar em `OK` para gravar a nota fiscal
* Confirmar clicando em `Sim`

---

## ⚠️ Observações

* É possível realizar **captura parcial do DAV**:

  * Alterando a quantidade dos itens
  * Removendo itens que não serão faturados

* Para capturar **orçamentos**, é necessário:

  * Ter a permissão habilitada no **Configurador do sistema**

---
