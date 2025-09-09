#!/usr/bin/env bash
set -e

DOTFILES_DIR="$HOME/dotfiles"

echo "🔗 Criando links simbólicos..."
ln -sf "$DOTFILES_DIR/zsh/.zshrc" "$HOME/.zshrc"
ln -sf "$DOTFILES_DIR/git/.gitconfig" "$HOME/.gitconfig"

echo "📦 Instalando NVM..."
bash "$DOTFILES_DIR/nvm/install_nvm.sh"

echo "📝 Configuração do VSCode exportada via link:"
echo "https://vscode.dev/editor/profile/github/0c404552b668348271235e39ab583930?vscode-lang=pt-br"

echo "✅ Instalação concluída!"
