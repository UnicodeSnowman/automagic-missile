# clone and set up dotfiles

if [ ! -d ~/.dotfiles ]; then
    echo "Setting up dotfiles..."
    git clone https://github.com/UnicodeSnowman/dotfiles.git ~/.dotfiles
    ~/.dotfiles/setup.sh
else
    echo ".dotfiles directory exists!"
fi

if [ ! -d ~/.vim ]; then
    echo "Setting up vim files..."
    git clone https://github.com/UnicodeSnowman/cap-vim.git ~/.vim
    ~/.vim/setup.sh
else
    echo ".vim directory exists!"
fi


if type brew; then
    echo "you gots brew"
    brew install ansible
    brew tap phinze/homebrew-cask
    brew install brew-cask
else
    echo "aint gots the brew, we can fix that..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo "Homebrew installed. please run the setup script again"
fi

