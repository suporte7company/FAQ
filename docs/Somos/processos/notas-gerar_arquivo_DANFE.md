# 🧾 Gerar arquivos DANFE (PDF) ao exportar notas para a contabilidade

## 📌 Objetivo

Garantir que, junto aos arquivos XML das notas fiscais, também sejam gerados automaticamente os arquivos em PDF (DANFE/DACTE) para envio à contabilidade.

---

## 🧭 Quando utilizar

Utilize este procedimento nos seguintes cenários:

* Quando a contabilidade solicitar, além dos XMLs, os arquivos em PDF das notas
* Para padronizar o envio mensal de documentos fiscais
* Quando houver necessidade de facilitar a visualização das notas sem uso de sistemas emissores

---

## 🛠️ Passo a passo

### 1️⃣ Acessar as configurações de documentos fiscais

1. Abrir o sistema `retaguarda.exe`
2. Acessar o menu `Sistema`
3. Clicar em `Configurar`
4. Selecionar `Documentos Fiscais`

---

### 2️⃣ Habilitar a geração do DANFE em PDF

1. Acessar a aba `NF-e / NFC-e`
2. Em seguida, abrir a aba `Outras Configurações II`
3. Localizar a opção:
   `Exportar arquivo DANFE/DACTE ao enviar arquivos da nota fiscal por e-mail`
4. Marcar a opção `✔️`
5. Pressionar `F3 - Salvar` para confirmar

![exportar arquivo danfe ao enviar arquivos da nota fiscal por email](https://github.com/user-attachments/assets/0ad9a0b1-a742-43ad-beb3-ca9a24648d5d)

---

## ✅ Resultado esperado

Após a configuração:

* Sempre que os arquivos das notas forem exportados/enviados, o sistema irá gerar automaticamente:

  * Arquivos XML
  * Arquivos PDF (DANFE/DACTE)

---

## ⚠️ Observações

* A geração do PDF depende da correta emissão da nota fiscal
* Verifique se há permissões de gravação na pasta de destino dos arquivos
* Caso os PDFs não sejam gerados, revisar se a configuração foi salva corretamente
* Recomenda-se realizar um teste de exportação após a configuração

---
