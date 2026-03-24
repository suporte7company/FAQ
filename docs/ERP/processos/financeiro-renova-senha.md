# 🧾 Renovação de Senha do Cliente (Bloqueio Financeiro)

## 📌 Objetivo

Orientar o procedimento para **renovação manual de senha de cliente** quando a renovação automática estiver bloqueada pelo financeiro devido a atraso no pagamento.

---

## 🧭 Quando utilizar

Utilize este procedimento nos seguintes cenários:

* 🔓 Cliente teve liberação **temporária pelo financeiro**
* 📅 Foi definida uma **quantidade específica de dias para liberação**
* 🚫 Cliente está com renovação automática bloqueada por inadimplência

---

## 🛠️ Passo a passo

### 🔐 1. Acessar a Área Interativa

* Acesse: [Interativo BM](http://bmsoft.ddns.net:7579/)
* No menu superior, clique em **Cliente**
* No campo **Nome/Fantasia**, digite o nome do cliente
* Clique em **Buscar**

---

### 📂 2. Desbloquear temporariamente o cliente

* Acesse a aba **Serial**
* No canto inferior direito, clique em **Bloquear/Desbloquear**
* No campo **Motivo**, informe:

  * Exemplo: *“5 dias”*
* Clique em **OK**

---

### 🔑 3. Gerar nova senha de renovação

* Clique em **Renovar Senha**
* No campo **Validade**, informe a quantidade de dias liberados
* Clique em **Renovar**
* 📋 **Copie a senha gerada**

---

### 💻 4. Aplicar a senha no sistema do cliente

* No computador do cliente, abra o sistema (`master.exe`)
* Clique em **Renovar Senha**
* Insira a senha gerada anteriormente
* Clique em **OK**

---

### 🔒 5. Reaplicar o bloqueio financeiro

* Retorne à **Área Interativa**
* Clique novamente em **Bloquear/Desbloquear**
* No campo **Motivo**, informar:

  * *“Financeiro”* (padrão)
* Clique em **OK**

---

## ⚠️ Pontos de atenção

* ❗ **Etapa crítica:** reativar o bloqueio após aplicar a senha
* Caso o bloqueio não seja reaplicado:

  * O cliente poderá **renovar automaticamente**
  * Continuará utilizando o sistema **mesmo inadimplente**

---

## 💡 Boas práticas

* Sempre valide com o financeiro antes da liberação
* Registre o atendimento no card "A Fazer"(Trello), quando tiver card direcionado ao cliente.
---
