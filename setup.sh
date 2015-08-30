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
brew cask install airmail-beta
brew cask install tunnelblick
brew cask install caffeine
brew cask install keyremap4macbook
brew cask install vlc


#www目录
www_path="~/www";
if [ ! -d "$www_path" ]; then
  `mkdir $www_path`
fi
#下载phpenv，并初始化submodule
git clone git@github.com:robbinhan/phpenv.git $www_path/phpenv
`cd $www_path/phpenv`
git submodule init
git submodule update
`sh $www_path/phpenv/phpenv/bin/phpenv-install.sh`

#将配置写进zshrc
`echo "if [ -d "${RBENV_ROOT}" ]; then
	export PATH="${RBENV_ROOT}/bin:${HOME}/.phpenv/bin:${PATH}"
	eval "$(rbenv init -)"
	eval "$(phpenv init -)"
fi" >> ~/.zshrc`
`source ~/.zshrc`

#安转php5.6.3
`phpenv install 5.6.3`
`phpenv versions`
`phpenv rehash`
`phpenv global 5.6.3`

#安装composer
`curl -sS https://getcomposer.org/installer | php`
`mv composer.phar /usr/local/bin/composer`

echo "need install Yummy FTP"
