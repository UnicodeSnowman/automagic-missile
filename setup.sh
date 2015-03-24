if type brew; then
    echo "you gots brew"
    brew install ansible
    brew tap phinze/homebrew-cask
    brew install brew-cask
else
    echo "aint gots the brew, we can fix that..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo "If Homebrew was successfully installed, please run the setup script again"
fi
