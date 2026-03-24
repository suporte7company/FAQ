# 🧾 Desconectar usuário de pasta de rede no Windows

## 📌 Objetivo

Orientar como desconectar conexões de rede ativas no Windows para permitir acesso com outro usuário, especialmente quando não foi utilizado login automático ou quando há conflito de credenciais.

---

## 🧭 Quando utilizar

Utilize este procedimento nos seguintes cenários:

* 🔄 Necessidade de trocar usuário de acesso em pasta/servidor de rede
* 🚫 Conflito de credenciais ao acessar o mesmo servidor
* 🖥️ Ambiente com múltiplos computadores acessando o mesmo sistema
* ⚠️ Erro ao abrir aplicações em rede (ex: `master.exe`)

---

## 🛠️ Passo a passo

### 🔎 Cenário 1: Conexões sem login automático (via Windows Explorer)

#### 1. Listar conexões ativas

Abra o Prompt de Comando e execute:

```bash
net use
```

📋 Exemplo de retorno:

```
Status       Local     Remoto                    Rede

-------------------------------------------------------------------------------
OK                     \\servidor\IPC$           Microsoft Windows Network
Comando concluído com êxito.
```

---

#### 2. Remover conexão específica

```bash
net use \\192.168.0.10\pasta /delete
```

---

### ⚠️ Se a conexão persistir

Pode haver algum processo mantendo a sessão ativa. Utilize uma das opções abaixo:

#### 👉 Opção 1: Reiniciar o Windows Explorer

1. Pressione `Ctrl + Shift + Esc`
2. Localize **Windows Explorer**
3. Clique com o botão direito → **Reiniciar**

---

#### 👉 Opção 2: Limpar cache de autenticação

No Prompt de Comando:

```bash
klist purge
```

💡 Utilizado principalmente em ambientes de domínio (Active Directory)

---

#### 👉 Opção 3: Conectar com outro usuário (sem remover tudo)

```bash
net use \\servidor\pasta /user:OUTROUSUARIO *
```

🔐 O sistema solicitará a senha do novo usuário

---

### 🧠 Observação importante

O Windows **não permite múltiplas conexões com usuários diferentes para o mesmo servidor simultaneamente**.

✔ Exemplo:

* Se já existe conexão com `\\192.168.0.10`
* Não será possível autenticar com outro usuário até encerrar a sessão ativa

---

## 🔎 Cenário 2: Conexões com login automático (credenciais salvas)

#### 1. Acessar o Gerenciador de Credenciais

1. Pressione `Windows + S`
2. Pesquise por **Gerenciador de Credenciais**
3. Abra a opção exibida

---

#### 2. Remover credenciais salvas

1. Acesse **Credenciais do Windows**
2. Localize o servidor (nome ou IP)
3. Clique na seta ao lado da credencial
4. Clique em **Remover**
5. Confirme a ação
6. Reinicie o Windows Explorer(Com a pasta aberta)

---

📌 Após a remoção, ao acessar novamente o recurso de rede, o Windows solicitará usuário e senha. Caso persista conexão ativa, reinicie o computador.

---

## ✅ Resultado esperado

* 🔓 Conexões de rede encerradas com sucesso
* 🔁 Possibilidade de autenticar com outro usuário
* 🚀 Acesso normalizado ao sistema ou pasta de rede

---
