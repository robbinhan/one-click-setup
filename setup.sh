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
brew cask install google-chrome
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
#brew cask install airmail-beta
brew cask install tunnelblick
#brew cask install caffeine
brew cask install keyremap4macbook
#brew cask install vlc
brew cask install mpv

#www目录
www_path="~/www";
if [ ! -d "$www_path" ]; then
  `mkdir $www_path`
fi

#将配置写进zshrc
`echo "if [ -d "${RBENV_ROOT}" ]; then
	export PATH="${RBENV_ROOT}/bin:${HOME}/.phpenv/bin:${PATH}"
	eval "$(rbenv init -)"
fi" >> ~/.zshrc`
`source ~/.zshrc`

curl -L -O https://github.com/phpbrew/phpbrew/raw/master/phpbrew
chmod +x phpbrew
sudo mv phpbrew /usr/local/bin/phpbrew
phpbrew init
`echo '[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc' >> ~/.zshrc`
phpbrew lookup-prefix homebrew

#安装composer
`curl -sS https://getcomposer.org/installer | php`
`mv composer.phar /usr/local/bin/composer`

brew install autojump
`echo '[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh' >> ~/.zshrc`

echo "need install Yummy FTP"
echo "need install Amphetamine"

