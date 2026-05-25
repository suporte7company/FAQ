# Cadastrar Fornecedor Genérico

## 📌 Objetivo

Cadastrar um fornecedor genérico para utilização em controles internos do módulo Financeiro.

---

## 🧭 Quando utilizar

* Quando houver necessidade de registrar movimentações financeiras utilizando um fornecedor genérico.
* Quando a empresa desejar centralizar lançamentos internos sem vínculo com um fornecedor específico.
* Para controles administrativos e financeiros internos.

---

## 🛠️ Passo a passo

## 1. Cadastrar a pessoa genérica

* Abrir o módulo Cadastros `Cadastros.exe`
* Acessar o menu `👥 Pessoas`
* Clique em `➕ Incluir`
* No campo `Tipo`, selecionar `F - Pessoa Física`
* No campo `Nome`, informar o nome que será utilizado para o fornecedor genérico
* Marcar a opção `[X] Genérico`
* Clique em `OK` para salvar o cadastro
<img width="952" height="724" alt="Captura de tela 2026-05-25 110021" src="https://github.com/user-attachments/assets/bcd96ff9-2677-4f2b-bae0-6c0b1ad4d071" />

---

## 2. Converter o cadastro em fornecedor genérico

* Abrir o módulo Relatórios `Report.exe`
* Localizar o grupo `00 - Manutenção`
* Selecionar o relatório `CONVERTER EM FORNECEDOR GENERICO`
* No campo `Cliente`, localizar o cadastro:

  * clicando no botão `...`, ou
  * digitando manualmente o ID do cadastro
* Pressione a tecla `Enter` para carregar as informações
* Clique em `Emitir` para realizar a conversão
<img width="644" height="553" alt="Captura de tela 2026-05-25 112122" src="https://github.com/user-attachments/assets/4bd5fcbf-a267-42fa-910f-f1a7b79fb4c1" />

---

## ✅ Resultado esperado

Após a conversão, o sistema exibirá a mensagem:

`Convertido Cliente: ID, Nome em Fornecedor Genérico`
<img width="791" height="392" alt="Captura de tela 2026-05-25 112137" src="https://github.com/user-attachments/assets/ae247c5e-8126-4974-b804-22616bf74348" />

Isso indica que o cadastro foi convertido com sucesso e poderá ser utilizado no controle financeiro.

---

# Observações

* O cadastro deve obrigatoriamente estar marcado como `[X] Genérico` antes da conversão.
* Recomenda-se utilizar nomes padronizados para facilitar futuras consultas e identificações.
* O processo não exclui nem altera outros dados do cadastro original.
