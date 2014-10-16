#!/bin/sh
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"
#develop
brew install zsh wget git nginx mysql rbenv ruby-build
#oh-my-zsh
`curl -L http://install.ohmyz.sh | sh`
echo "/usr/local/bin/zsh" >> /etc/shells
chsh -s /usr/local/bin/zsh
#brew cask && app
brew tap phinze/homebrew-cask
brew install brew-cask
brew cask install alfred
brew cask install qq
brew cask install vlc
brew cask install evernote
brew cask install google-chrome
brew cask install macdown
brew cask install iterm2
brew cask install sublime-text
brew cask install virtualbox
brew cask install phpstorm
brew cask install skim
brew cask install appzapper
brew cask install flux
brew cask install rtx
brew cask install sequel-pro
brew cask install goagentx
brew cask install airmail-beta
brew cask install tunnelblick
brew cask install caffeine
brew cask install keyremap4macbook
brew cask install vlc

echo "need install Yummy FTP"
