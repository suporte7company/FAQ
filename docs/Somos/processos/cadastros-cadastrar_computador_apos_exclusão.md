# 🧾 Cadastrar acesso de computador excluído/formatado

## 📌 Objetivo

Permitir o recadastro de um computador no sistema após exclusão prévia ou formatação, garantindo a liberação correta de acesso ao ambiente.

---

## 🧭 Quando utilizar

Utilize este procedimento nos seguintes cenários:

* 💻 Computador previamente cadastrado foi excluído do sistema
* 🔄 Computador foi formatado e perdeu a configuração de acesso
* 🔁 Troca de equipamento utilizado para acesso ao sistema

---

## 🛠️ Passo a passo

### 1️⃣ Identificar computador não cadastrado

* Ao realizar o primeiro acesso no computador, após login no sistema, será exibida automaticamente a tela:
  `Computador não cadastrado. Cadastre para acessar o sistema.`
<img width="973" height="497" alt="Job - computador não cadastrado" src="https://github.com/user-attachments/assets/9c0963ba-9637-4dec-bafa-9605d4e1e890" />


---

### 2️⃣ Realizar cadastro do computador

* Informar o campo `Descrição do Computador`
* Clicar em `✔️ Salvar`

---

### 3️⃣ Tratar bloqueio por cadastro anterior

* Caso a descrição informada já tenha sido utilizada anteriormente (em um computador excluído), o sistema exibirá a mensagem:

  `Este computador já foi cadastrado com a descrição: 'nome do computador' e posteriormente excluído. Para recadastrar, solicite a senha de desbloqueio.`
* Clicar em `OK` para prosseguir
<img width="1002" height="534" alt="JOB - computador ja cadastrado" src="https://github.com/user-attachments/assets/8c2aeded-7c51-417c-a732-07692a853522" />
---

### 4️⃣ Gerar código de liberação

* Na tela de liberação, gerar a senha utilizando o padrão:

  **Fórmula:**
  `ID do cliente × 51 × dia do mês`

* ⚠️ Importante:

  * Caso o dia do mês inicie com zero (ex: 01 a 09), desconsiderar o zero

* ✅ Exemplo:
  `21671 × 51 × 13 = 14.367.873`

* Informar o código gerado na tela para concluir o desbloqueio
* Clicar em F3-Continuar para salvar.

<img width="982" height="502" alt="JOB - informar codigo de liberação" src="https://github.com/user-attachments/assets/a158978d-496a-488a-bce5-a01a097327d2" />

<img width="944" height="457" alt="Captura de tela 2026-04-14 115627" src="https://github.com/user-attachments/assets/ffe95e96-7b15-4af6-b67f-94d85866c199" />

---

## ⚠️ Observações

* A descrição do computador deve ser única para evitar bloqueios recorrentes
* Em caso de dúvida sobre o ID do cliente, validar previamente no sistema
* O processo de liberação deve seguir o padrão definido pela equipe responsável
* Caso o código não funcione, verificar:

  * Data do sistema (dia incorreto)
  * ID do cliente utilizado no cálculo

---
