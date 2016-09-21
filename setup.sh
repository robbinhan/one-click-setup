#!/bin/sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#develop
brew install zsh wget git youtube-dl the_silver_searcher corkscrew
#oh-my-zsh
`curl -L http://install.ohmyz.sh | sh`
echo "export LC_ALL=en_US.UTF-8\nexport LANG=en_US.UTF-8" >> ~/.zshrc
#brew cask && app
brew tap phinze/homebrew-cask
brew tap caskroom/cask
brew tap mpv-player/mpv
brew cask install alfred
#brew cask install qq
brew cask install google-chrome
brew cask install iterm2
brew cask install skim
brew cask install appzapper
brew cask install flux
brew cask install rtx
brew cask install sequel-pro
brew cask install tunnelblick
brew cask install keyremap4macbook
brew cask install mpv
brew cask install atom
brew cask install sourcetree


#文件预览插件
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install qlprettypatch
brew cask install quicklook-csv
brew cask install betterzipql
brew cask install webp-quicklook
#brew cask install suspicious-package


brew cask install totalfinder
brew cask install cheatsheet
#brew cask install launchrocket

brew cask install surge
brew cask install intellij-idea
brew cask install postman
brew cask install snip
brew cask install docker

#www目录
www_path="~/www";
if [ ! -d "$www_path" ]; then
  `mkdir $www_path`
fi

#将配置写进zshrc
#`echo "if [ -d "${RBENV_ROOT}" ]; then
#	export PATH="${RBENV_ROOT}/bin:${HOME}/.phpenv/bin:${PATH}"
#	eval "$(rbenv init -)"
#fi" >> ~/.zshrc`
#`source ~/.zshrc`

#curl -L -O https://github.com/phpbrew/phpbrew/raw/master/phpbrew
#chmod +x phpbrew
#sudo mv phpbrew /usr/local/bin/phpbrew
#phpbrew init
#`echo '[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc' >> ~/.zshrc`
#phpbrew lookup-prefix homebrew

#安装composer
`curl -sS https://getcomposer.org/installer | php`
`mv composer.phar /usr/local/bin/composer`

brew install autojump
`echo '[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh' >> ~/.zshrc`

#nvm
`curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash`

echo "need install Yummy FTP"
echo "need install Amphetamine"
echo "need install Office"
echo "need install kaleidoscope"
echo "need install smartzipper"



