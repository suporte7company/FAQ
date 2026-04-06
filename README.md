# 🛠️ Base de Conhecimento - Suporte Company

Repositório destinado ao registro de problemas, soluções e procedimentos técnicos do dia a dia.

---

## 📑 Índice

- [📌 Sobre](#-sobre)
- [⚡ Soluções Rápidas](#-soluções-rápidas)
- [🧠 FAQ](#-faq)
- [📂 Categorias](#-categorias)
- [📚 Documentação](https://github.com/suporte7company/FAQ/tree/42620c24208ef8f70638770dac0c505ff3780d1c/docs)
- [📋 Formulários](#-formulários)
- [🚀 Como contribuir](#-como-contribuir)

---

## 📌 Sobre

Este repositório funciona como uma base de conhecimento técnica.

---

### 🧩 Estrutura de conteúdo

* 🐞 **Issues**
  Utilizadas para registrar problemas, análises e respectivas soluções.

* ✅ **README**
  Contém soluções já validadas, organizadas para consulta rápida.

* 📚 **Diretório `docs`**
  Responsável pela documentação dos sistemas, organizada por contexto.

---

### 📂 Organização da documentação `/docs`

* Cada sistema possui um diretório próprio dentro de `docs`.
* Em cada diretório, há um arquivo `README.md` que funciona como **índice principal**, contendo:

  * Direcionamentos
  * Explicações dos processos por módulo

---

### 📝 Padrão de nomenclatura

Para manter a consistência dos arquivos:

* O nome dos documentos deve iniciar com o **módulo ou ambiente**, seguido da ação:

  `modulo-acao-descricao.md`

* Exemplo:
  `cadastros-criar-novo_usuario.md`

---

### 🔗 Estrutura interna dos módulos

* Arquivos principais de cada módulo (na raiz do diretório) funcionam como **índices internos**, contendo:

  * Lista de processos relacionados
  * Referências para **Issues** vinculadas ao módulo

---

## ⚡ Soluções Rápidas

> Acesso direto para soluções comumente usadas

- [🖥️ Erro ao acessar pastas de rede no Windows 11](https://github.com/suporte3company/FAQ_PILOT/issues/1)
- [🚫 Bloqueio ao tentar abrir o sistema ERP/BMsoft](https://github.com/suporte7company/FAQ/issues/82)
- [🔴 Erro ao verificar sincronização de DLL´s ](https://github.com/suporte7company/FAQ/issues/81)
- [🪟 Desconectar usuário conectado as pastas de rede](https://github.com/suporte7company/FAQ/blob/08232c7feec1e67fa45f7385d39ad31ddab844fe/docs/ERP/processos/infra-desconect-conex-rede_ativa-WinExplorer.md)
- [❌ Inativar acesso de usuário no ERP](https://github.com/suporte7company/FAQ/blob/1311e99ba6e9d3859f3406e2e55a4d4989c28c34/docs/ERP/processos/cadastros-inativar_usuario.md)
- [❌ Sistema ou PAF não carregam por estouro de acessos(DBISAM)](https://github.com/suporte7company/FAQ/issues/87)
- [🚫 Erro de conexão ao abrir o sistema - Não encontra pasta da BM](https://github.com/suporte7company/FAQ/issues/88)
- [🚫 Erro ao abrir Configurador - BMSoft](https://github.com/suporte7company/FAQ/issues/89)

---
## 📝 Formulários

> Acesso direto para padrões de formulários

- [Cadastro de Operações](https://github.com/suporte7company/FAQ/blob/6ad488bdfb263c5a257deac9fbc97e3f097be033/docs/ERP/processos/cadastros-formul%C3%A1rio_cadastro-de-opera%C3%A7%C3%B5es.md)

---

## 🧠 FAQ

### ❓ Erro ao acessar pastas de rede no Windows 11 (24H2 / 25H2)

📌 **Sintoma:**  
`Falha ao conectar via SMB, mesmo com credenciais corretas.`

📎 **Solução completa:**  
👉 *[Solução](https://github.com/suporte7company/FAQ/issues/79)*

🧩 **Resumo da solução:**
- Ajuste via PowerShell
- Liberação de logon inseguro
- Revisão de usuário remoto

---

### ❓Erro ao gerar NFCE - XML não pode ser nulo

📌 **Sintoma:**  
`Ao tentar emitir cupom nfce no caixa retorna a mensagem de "xmlnode não pode ser nulo".` 

📎 **Solução completa:**  
👉 [Solução](https://github.com/suporte7company/FAQ/issues/84)

🧩 **Resumo da solução:**
- Ajuste via alocação de arquivos dll(libintl-8.dll)
- Colocar dll na pasta do PAF_NFCE `/bmSoft/PAF_NFCe`

---

### ❓Erro de DLL ao tentar abrir o sistema(ERP) em clientes que usam no datacenter

📌 **Sintoma:**  
`Ao tentar abrir sistema via solução goglobal o sistema retorna o erro.` 

📎 **Solução completa:**  
👉 [Solução](https://github.com/suporte7company/FAQ/issues/81)

🧩 **Resumo da solução:**
- Renomear a pasta "DLL" dentro dos arquivos do sistema no datacenter.

---

## 📂 Categorias

### 🖥️ Windows / Rede

- [Erro SMB Windows 11](https://github.com/suporte3compoany/FAQ_PILOT/issues/1)

---

### 📧 Pré-Venda(ERP)

- [Pré-venda travada e não permite edição](https://github.com/suporte7company/FAQ/issues/86)

---

### 📝 Notas(ERP)

- [Inconsistência no cálculo do ICMS ao emitir nota "Pro emprego" ](https://github.com/suporte7company/FAQ/issues/85)

---

### 🤳 NFC-e(ERP)

- [Rejeição: NFC-e de entrega a domicilio sem a identificação do destinatário](https://github.com/suporte7company/FAQ/issues/83)

---

---

## 🚀 Como contribuir

### 🐞 Para soluções de problemas (via **Issues**)

1. Crie uma **Issue** descrevendo o problema identificado.

2. Documente obrigatoriamente:

   * **Título**
   * **Ambiente**
   * **Erro encontrado**
   * **Sintomas**
   * **Possível causa** (quando aplicável)
   * **Solução aplicada**
   * **Status**
   * **Observações**

3. Após validação da solução:

   * Consolidar a informação no `README`, em:

     * **Soluções rápidas**, ou
     * **Categorias específicas**

---

### 📚 Para documentação de processos/configurações

1. Crie um arquivo `.md` no diretório correspondente:

   ```
   /docs/<sistema>/processos
   ```

2. Siga o padrão de estrutura:

   * **Título**
   * **Objetivo**
   * **Quando utilizar**
   * **Passo a passo**

     * 1. Etapa principal

       * 1.1 Subetapa
       * 1.2 Subetapa
   * **Resultado esperado**
   * **Observações**

3. Utilize o padrão de nomenclatura:

   ```
   modulo-acao-descricao.md
   ```

   **Exemplo:**
   `cadastros-criar-novo_usuario.md`

4. Atualize o índice do módulo:

   * Adicione o novo processo no arquivo `modulo.md`, localizado na raiz do diretório do sistema
   * Isso garante organização e facilita a busca por conteúdo relacionado ao módulo

---


---

## 💡 Padrão de Issues (recomendado)

Use esse modelo ao abrir uma Issue: [Template Padrão](https://github.com/suporte7company/FAQ/issues/79)

