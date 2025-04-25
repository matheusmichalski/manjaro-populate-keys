
# 🛠️ Script para Repopular as Chaves do Pacman no Manjaro

Este repositório contém um script de shell que automatiza o processo de **repopulação das chaves GPG** do `pacman` no Manjaro Linux. Isso pode ser útil em situações onde há erros ao sincronizar pacotes ou validar assinaturas.

---

## 📌 O que este script faz?

O script realiza as seguintes ações:

1. Remove o diretório local de sincronização de repositórios do pacman.
2. Atualiza a base de dados dos repositórios.
3. Inicializa o sistema de chaves GPG do `pacman`.
4. Repopula as chaves oficiais do Manjaro.
5. Atualiza todos os pacotes do sistema com as novas chaves.

---

## 📁 Conteúdo do Script

```bash
#!/bin/bash

sudo rm -r /var/lib/pacman/sync
sudo pacman -Sy

sudo pacman-key --init
sudo pacman-key --populate manjaro

sudo pacman -Syu
```

---

## 🚀 Como usar este script

Siga os passos abaixo no terminal do seu Manjaro Linux:

### 1. Clone o repositório

```bash
git clone https://github.com/seu-usuario/nome-do-repositorio.git
```

### 2. Acesse a pasta do repositório clonado

```bash
cd nome-do-repositorio
```

### 3. Dê permissão de execução ao script

```bash
chmod +x repopular-chaves.sh
```

> Esse passo permite que o sistema reconheça o arquivo como um programa executável.

### 4. Execute o script com permissões administrativas

```bash
./repopular-chaves.sh
```

Se preferir, você também pode rodar o script diretamente com o interpretador `bash`:

```bash
bash repopular-chaves.sh
```

---

## 🧠 Observações importantes

- Este script **requer senha de administrador** (`sudo`). Você será solicitado a digitá-la durante a execução.
- Execute o script apenas se estiver enfrentando problemas relacionados à verificação de chaves GPG ao usar o `pacman`.
- Recomenda-se **reiniciar o sistema** após a conclusão da atualização para garantir que tudo funcione corretamente.

---

## ❓ Problemas comuns

### "Chaves inválidas" ou "Erro de verificação PGP"
Este script pode resolver esse tipo de erro ao forçar a reinicialização das chaves e reconfigurar o `pacman`.

---

## ✅ Requisitos

- Sistema baseado em **Manjaro Linux**
- Conexão com a internet
- Ter o `git` e o `bash` instalados
- Permissão para executar comandos como `sudo`

---

## 📄 Licença

Este projeto está licenciado sob a [MIT License](LICENSE).

---

## 🤝 Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou enviar pull requests.# manjaro-populate-keys
