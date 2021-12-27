#!/bin/sh

BLUE='\033[0;36m'
NC='\033[0m'

lenke () {
    echo "${BLUE}Initializing symlinks${NC}"
    echo "Proceed? (y/n)"
    read resp
    if [ "$resp" = 'y' -o "$resp" = 'Y' ] ; then
        mkdir -pv "${HOME}/.config"
        mkdir -pv "${HOME}/.config/fish"
        ln -svf "$PWD/.vimrc" "$HOME"
        ln -svf "$PWD/.config/fish/config.fish" "$HOME/.config/fish/config.fish"
        ln -svf "$PWD/.config/fish/.aliases" "$HOME/.config/fish/.aliases"
        echo "Symlinking complete"
    else
        echo "Symlinking cancelled"
        return 1
    fi
}

brygge () {
  brew update
  brew upgradereadme.md
  brew bundle
}

lenke
brygge
