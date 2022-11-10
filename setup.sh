#!/bin/sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#develop
brew install  wget git youtube-dl  
#oh-my-zsh
chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "export LC_ALL=en_US.UTF-8\nexport LANG=en_US.UTF-8" >> ~/.zshrc
#brew cask && app
brew tap phinze/homebrew-cask
brew tap caskroom/cask
brew tap mpv-player/mpv
brew  install --cask raycast
brew install --cask google-chrome
brew install --cask iterm2
brew install --cask skim
brew install --cask appcleaner
brew install --cask flux
brew install --cask sequel-pro
brew install --cask visual-studio-code
brew install --cask sourcetree


#文件预览插件
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install qlprettypatch
brew cask install quicklook-csv
brew cask install betterzipql
brew cask install webpquicklook
#brew cask install suspicious-package



brew cask install cheatsheet

brew cask install surge
brew cask install intellij-idea
brew cask install postman
brew cask install snip
brew cask install docker

#www目录
www_path="~/code";
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
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '55d6ead61b29c7bdee5cccfb50076874187bd9f21f65d8991d46ec5cc90518f447387fb9f76ebae1fbbacf329e583e30') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"

brew install autojump
`echo '[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh' >> ~/.zshrc`

#nvm
`curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash`

echo "need install Yummy FTP"
echo "need install Amphetamine"
echo "need install Office"
echo "need install kaleidoscope"
echo "need install smartzipper"



