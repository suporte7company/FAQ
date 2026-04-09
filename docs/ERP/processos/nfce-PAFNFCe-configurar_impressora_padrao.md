# 🧾 Configurar impressora no PAF_NFCe

## 📌 Objetivo

Definir ou alterar a impressora padrão utilizada no módulo de caixa PAFNFCe(NFC-e), garantindo a correta impressão de cupons fiscais.

---

## 🧭 Quando utilizar

Utilize este procedimento nos seguintes cenários:

* 🆕 Primeira configuração da impressora no caixa
* 🔄 Troca de impressora padrão
* 🛠️ Reconfiguração após falhas ou alterações no ambiente

---

## 🛠️ Passo a passo

### 🔹 1. Acessar o configurador do PAF_NFCe

1. Feche o módulo **Caixa - PAF_NFCe**, caso esteja aberto
2. Acesse o diretório de instalação:

   ```
   C:\bmsoft\PAF_NFCe
   ```
3. Execute o arquivo:

   ```
   PAFNFCe CONFIG.EXE
   ```
<img width="1157" height="656" alt="paf config" src="https://github.com/user-attachments/assets/6fa0b2a4-7d4a-4dba-b688-feff21aae7ba" />

---

### 🔹 2. Configurar a impressora

1. Acesse a aba **Geral**
2. Localize o campo **Impressora**
3. Selecione a impressora desejada na lista
4. Clique em **OK** para salvar as alterações
<img width="897" height="635" alt="configuração de impressora no paf" src="https://github.com/user-attachments/assets/eebf89d3-f882-4e23-b176-9a8df3b74c09" />

---

## ✅ Validação

Após a configuração:

* Abra novamente o módulo **Caixa - PAF_NFCe**
* Realize uma impressão de teste (cupom)
* Verifique se a impressora selecionada responde corretamente

---

## ⚠️ Observações

* Em algumas versões do sistema, é necessário que a impressora também esteja definida como **impressora padrão no Windows**
* Certifique-se de que a impressora está:

  * Ligada
  * Conectada ao computador/rede
  * Com drivers corretamente instalados

---
