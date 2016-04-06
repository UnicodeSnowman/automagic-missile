#!/bin/bash

if ! type brew; then
    echo "aint gots the brew, we can fix that..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if ! type ansible; then
    echo "Installing ansible..."
    brew install ansible
fi

if ! type brew-cask; then
    echo "Installing homebrew-cask..."
    brew tap caskroom/cask
    brew install brew-cask
fi

echo "* fin *"
