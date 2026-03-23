# 🧾 Cadastro/Importação de Certificado Digital

## 📌 Objetivo
Orientar o processo de cadastro ou atualização (importação) de certificado digital no sistema, garantindo o correto funcionamento de rotinas fiscais como emissão de documentos eletrônicos.

---

## 🧭 Quando utilizar
Utilize este procedimento nos seguintes cenários:

- 🆕 Primeira configuração do sistema
- 🔄 Renovação de certificado digital (expirado ou substituído)
- 📁 Alteração do caminho/local do certificado
- ❌ Erros relacionados à assinatura digital ou comunicação com SEFAZ

---

## 🛠️ Passo a passo

🔐 1. Obter o certificado digital
  - Certifique-se de que o certificado está disponível:
  - Arquivo .PFX (A1), ou
  - Dispositivo físico (A3 – token/cartão)
  - Tenha em mãos a senha do certificado
  
📂 2. Acessar configuração no sistema
  - BMsoft > Cadastros > Outros > Empresas > Certificado Digital 
  ![instala_certi-1 (2)](https://github.com/user-attachments/assets/fc4e5e17-d105-4749-9e57-cbae20796760)
  ![instala_certi-2 (1)](https://github.com/user-attachments/assets/04831f48-0bcd-4b2b-b520-b0a54117939a)

📥 3. Importar ou selecionar certificado

  Para certificado A1 (arquivo):
  - Clique em Importar/Selecionar certificado
  - Informe o caminho do arquivo (.PFX)
  - Digite a senha do certificado
  - Clique em Ok para salvar
  
    ![instala_certi-3 (1)](https://github.com/user-attachments/assets/6966bfd2-50ac-4ebe-b242-869d939b0205)
  
  Para certificado A1/A3 instadlo no Windows(token/cartão):
  - Instale o arquivo .pfx na sua máquina(A1)
  - Conecte o dispositivo no computador(A3)
  - Selecione o certificado disponível na lista
  - Informe a senha/PIN
  - Clique em Ok para salvar
  
    ![instala-certi-4 (1)](https://github.com/user-attachments/assets/eee63c7a-e4c3-4a72-85e7-135eb6b1ef47)

®️ 4. Registrar DLLs do MSXML
  - Clique no botão Registrar DLLs do MSXML(abaixo do botão Certificado Digital)

---

⚠️ Pontos de atenção
- 🔒 Senha incorreta impede o uso do certificado
- 📅 Verifique a data de validade do certificado
- 🔄 Certificados renovados exigem nova importação
- 💻 Para A3, o driver do dispositivo deve estar instalado
- 🔐 Permissões de usuário podem impedir acesso ao certificado
- 🌐 Problemas de rede podem ser confundidos com erro de certificado

---


