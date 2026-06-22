# dev-environment-setup

My personal setup for new macOS machines.

## Installation

```sh
./install.sh

cp -f .zshrc ~/.zshrc
touch ~/.hushlogin

cp -rf .ssh ~/.ssh

cp -f .gitignore_global ~/.gitignore_global
git config --global user.name $NAME
git config --global user.email $EMAIL
git config --global core.editor micro

mkdir -p "$HOME/Library/Application Support/iTerm2/DynamicProfiles"
cp iterm-profile.json "$HOME/Library/Application Support/iTerm2/DynamicProfiles/iterm-profile.json"
```
