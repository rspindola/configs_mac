#!/usr/bin/env bash
set -e

NVM_VERSION="v0.39.7"
NVM_DIR="$HOME/.nvm"

# Checa se já existe
if [ -d "$NVM_DIR" ]; then
    echo "✅ NVM já instalado em $NVM_DIR"
else
    echo "⬇️ Instalando NVM $NVM_VERSION..."
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/$NVM_VERSION/install.sh | bash
fi

# Garante que o NVM será carregado no shell
if ! grep -q 'export NVM_DIR' "$HOME/.zshrc"; then
    echo "🔧 Adicionando NVM no ~/.zshrc"
    cat << 'EOF' >> "$HOME/.zshrc"

# >>> NVM Config >>>
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
# <<< NVM Config <<<
EOF
fi

echo "✅ NVM pronto para uso. Reinicie o terminal ou rode: source ~/.zshrc"
