# Editar data de vencimento do boleto

## 📌 Objetivo

Alterar a data de vencimento de boletos gerados no módulo financeiro.

---

## 🧭 Quando utilizar

* Quando houver necessidade de alterar o vencimento de um ou mais boletos.
* Quando o cliente solicitar prorrogação ou ajuste de vencimento.
* Quando houver erro na data informada durante a geração do título.

---

## 🛠️ Passo a passo

### 1️⃣ Acessar o módulo Financeiro

* Abrir o módulo financeiro `Financ.exe`
* Clicar na seta ⬇️ ao lado de `Contas a Receber`
* Selecionar a opção `Listar`

---

### 2️⃣ Localizar os títulos

* Informar o `ID do cliente` para facilitar a busca
* Selecionar o período inicial e final desejado
  ou clicar em `T` para listar todos os títulos do cliente
* Clicar em `F12 - Filtrar`

---

### 3️⃣ Editar o vencimento do boleto

* Localizar o título desejado
* Selecionar o título
* Manter a tecla `SHIFT` pressionada e clicar em `Editar`
* No campo `Vencimento`, informar a nova data
* Clicar em `F12 - Gravar`

> Repetir o processo caso existam outros títulos que necessitem da mesma alteração.

---

## ⚠️ Observações

* Caso os títulos já tenham sido enviados ao banco, é recomendado gerar um novo arquivo de remessa e reenviá-lo com as informações atualizadas.
* A alteração realizada no sistema não garante atualização automática no banco caso a remessa anterior já tenha sido processada.
* Sistema retorna Alerta ao gravar título novamente, após alteração da data de vencimento, de titulo ja enviado ao banco anteriormente.
<img width="820" height="501" alt="Captura de tela 2026-05-20 160124" src="https://github.com/user-attachments/assets/df8fd2b6-ef8f-49d5-9af5-10fd458298d6" />

