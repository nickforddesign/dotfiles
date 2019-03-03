#!/usr/bin/env bash

echo "Running Homebrew setup..."

if hash brew 2>/dev/null; then
  echo "Homebrew is installed"
else
  echo "Installing homebrew"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# update homebrew and update packages
brew update
brew upgrade

# save homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# install zsh
brew install zsh zsh-completions

# use zsh as default shell
chsh -s /bin/zsh

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install wget
brew install wget

# install more recent versions of some macOS tools.
brew install vim
# brew install grep
# brew install openssh
# brew install screen
# brew install php
# brew install gmp

# install fonts
brew tap homebrew/cask-fonts
brew cask install font-hack
brew cask install font-roboto
brew cask install font-open-sans
brew cask install font-inconsolata
brew cask install font-source-code-pro
brew cask install font-source-code-pro-for-powerline
brew cask install font-material-icons

# Install other useful binaries.
# brew install ack
#brew install exiv2
brew install git
brew install git-lfs
# brew install imagemagick --with-webp
# brew install lua
# brew install lynx
# brew install p7zip
# brew install pigz
# brew install pv
# brew install rename
# brew install rlwrap
# brew install ssh-copy-id
# brew install tree
# brew install vbindiff
# brew install zopfli

# install node
brew install nvm
nvm install node

# Remove outdated versions from the cellar.
brew cleanup
