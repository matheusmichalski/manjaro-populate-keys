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
sudo pacman-mirrors --fasttrack 

sudo pacman -Syy
sudo pacman-key --init
sudo pacman-key --populate archlinux
sudo pacman-key --populate manjaro

sudo pacman-key --refresh-keys

sudo pacman -Syyu
sudo pacman -Syu
```

---

## 🚀 Como usar este script

Você pode executar este script diretamente via `curl` ou `wget`:

### Usando `curl`

```bash
bash <(curl -s https://raw.githubusercontent.com/matheusmichalski/manjaro-populate-keys/main/populate-manjaro-keys.sh)
```

### Usando `wget`

```bash
bash <(wget -qO- https://raw.githubusercontent.com/matheusmichalski/manjaro-populate-keys/main/populate-manjaro-keys.sh)
```

💡 Observação: O script utiliza comandos com `sudo`, então será solicitado que você informe sua senha de administrador durante a execução. Certifique-se de ter permissões suficientes no sistema para isso.

---

## ❓ Problemas comuns

### "Chaves inválidas" ou "Erro de verificação PGP"

Este script pode resolver esse tipo de erro ao forçar a reinicialização das chaves e reconfigurar o `pacman`.

```bash
sudo pacman-key --refresh-keys
```

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

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou enviar pull requests.
