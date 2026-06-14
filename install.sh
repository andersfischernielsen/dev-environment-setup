brew-install() {
  local name="$1"
  local cask="$2"
  echo "Installing '$name'"
  if [[ "$cask" == "--cask" ]]; then
    brew install --cask "$name"
  else
    brew install "$name"
  fi
}

echo "Installing 'brew'"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing 'oh-my-zsh'"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing 'powerlevel10k'"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$HOME/.oh-my-zsh/custom/themes/powerlevel10k"

brew-install visual-studio-code --cask
brew-install zed --cask
brew-install micro

brew-install orbstack --cask

brew-install 1password --cask

brew-install git
brew-install gh

brew-install kubectl

brew-install tree

brew-install node
brew-install vite-plus

brew-install python
brew-install uv

brew-install ffmpeg
brew-install imagemagick
