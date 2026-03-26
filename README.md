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

- 🐞 Problemas/Solução são registrados como **Issues**
- ✅ Soluções validadas são organizadas aqui no **README**
- 📚 Conteúdos sobre sistemas estão no diretório **docs**(Documentação por sistema)

---

## ⚡ Soluções Rápidas

> Acesso direto para problemas comuns

- [🖥️ Erro ao acessar pastas de rede no Windows 11](https://github.com/suporte3company/FAQ_PILOT/issues/1)
- [🚫 Bloqueio ao tentar abrir o sistema ERP/BMsoft](https://github.com/suporte7company/FAQ/issues/82)
- [🔴 Erro ao verificar sincronização de DLL´s ](https://github.com/suporte7company/FAQ/issues/81)
- [🪟 Desconectar usuário conectado as pastas de rede](https://github.com/suporte7company/FAQ/blob/08232c7feec1e67fa45f7385d39ad31ddab844fe/docs/ERP/processos/infra-desconect-conex-rede_ativa-WinExplorer.md)

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

## 📂 Categorias

### 🖥️ Windows / Rede

- [Erro SMB Windows 11](https://github.com/suporte3compoany/FAQ_PILOT/issues/1)

---

### 📧 Modelo

- [Erro 1 - Modelo](https://github.com/SEU-USUARIO/SEU-REPO/issues/2)


---

## 🚀 Como contribuir

1. Crie uma **Issue** descrevendo o problema
2. Documente:
   - Sintomas
   - Causa (se souber)
   - Solução aplicada
3. Após validação:
   - Adicione ao README (FAQ ou Soluções Rápidas)

---

## 💡 Padrão de Issues (recomendado)

Use esse modelo ao abrir uma Issue: [Template Padrão](https://github.com/suporte7company/FAQ/issues/79)

