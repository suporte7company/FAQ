# 🧾 Destravar Pedido de Compra

## 📌 Objetivo

Liberar a edição de um pedido de compra que tenha permanecido travado, permitindo a continuidade do processo.

---

## 🧭 Quando utilizar

* Quando um pedido de compra estiver bloqueado e não puder ser aberto para edição.
* Quando o pedido permanecer marcado como "em edição" após uma interrupção inesperada.
* Após travamento do computador durante a edição do pedido.
* Após fechamento inesperado do módulo de pedidos.
* Em situações de queda de energia, falha no sistema ou encerramento forçado da aplicação.

---

## 🛠️ Passo a passo

### 1️⃣ Acessar a base de dados

* Abra o `Master.exe` (BMsoft).
* Clique em `⚙️ Manutenção`.
* Selecione a opção `Dbsys`.
* Informe a senha de acesso, quando solicitada.
* Clique em `📁 Abrir Base`.
* Selecione a base de dados desejada e clique em `OK`.

---

### 2️⃣ Localizar a tabela de pedidos

* No campo de pesquisa, digite `PedidosM`.
* Abra a tabela correspondente.

---

### 3️⃣ Identificar o pedido travado

* Localize o pedido de compra que está bloqueado.
* Navegue horizontalmente até encontrar a coluna `Alterando`.

---

### 4️⃣ Remover o bloqueio

* Na linha correspondente ao pedido, apague o conteúdo existente no campo `Alterando`.
* Após excluir a informação, utilize as teclas de seta (`↑` ou `↓`) para mover para outro registro.
* Essa ação gravará automaticamente a alteração realizada.

> **Importante:** Certifique-se de alterar apenas o campo `Alterando` do pedido correto.
<img width="1278" height="730" alt="destravar pedido de compra 2" src="https://github.com/user-attachments/assets/5c6e99e4-db06-4972-bdcc-e65d50fa7a4f" />
---

### 5️⃣ Validar a liberação no módulo de pedidos

* Abra o módulo de pedidos.
* Localize o pedido que estava travado.
* Selecione-o.
* Clique em `✏️ Abrir`.
<img width="1279" height="708" alt="destravar pedido de compra 3" src="https://github.com/user-attachments/assets/6a1b693e-4865-4958-abbe-a42acaa41ece" />

---

## ✅ Validação

* O pedido deverá abrir normalmente para edição.
* Caso o bloqueio persista, repita o procedimento, verificando se o campo `Alterando` foi realmente limpo e salvo.

---

## ⚠️ Observações

* Este procedimento deve ser realizado com atenção, pois envolve alteração direta na base de dados.
* Recomenda-se que apenas usuários autorizados executem esta operação.
* Sempre confirme se o pedido não está sendo utilizado por outro usuário antes de remover o bloqueio.
