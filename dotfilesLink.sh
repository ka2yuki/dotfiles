# shell cmd tips!
# https://qiita.com/yn-misaki/items/3ec0605cba228a7d5c9a

ln -sf ~/d/dotfiles/.zshrc ~/.zsh_profile
ln -sf ~/d/dotfiles/.zshrc ~/.zshrc

ln -sf ~/d/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/d/dotfiles/.bashrc ~/.bashrc
ln -sf ~/d/dotfiles/.bashrc.alias ~/.bashrc.alias
ln -sf ~/d/dotfiles/.vimrc ~/.vimrc
ln -sf ~/d/dotfiles/.sqliterc ~/.sqliterc

ln -sf ~/d/dotfiles/config.fish ~/.config/fish/config.fish
ln -sf ~/d/dotfiles/alias.fish ~/.config/fish/conf.d/alias.fish
ln -sf ~/d/dotfiles/fish_prompt.fish ~/.config/fish/functions/fish_prompt.fish
ln -sf ~/d/dotfiles/.fish_user_key_bindings.fish ~/.config/fish/functions/fish_user_key_bindings.fish

ln -sf ~/d/dotfiles/.gitconfig ~/.gitconfig
ln -fnsv ~/d/dotfiles/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -fnsv ~/d/dotfiles/md_preview.css ~/Library/Application\ Support/Code/User/md_preview.css
# ln -sf ~/d/dotfiles/com.googlecode.iterm2.plist ~

# fish cmd exist? check!
fish_config > /dev/null 2>&1
if [ $? -eq 127 ]; then
  echo "Exist! FISH" 
else
  echo "NOT exist!"
  brew install fish
fi
# install fisher for fish extention management tool.
if [ -e "$HOME/.config/fish/functions/fisher.fish" ]; then
  echo "Exist! functions/fisher.fish" 
else
  echo "NOT exist! functions/fisher.fish" 
  curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
fi

# Node.js chack..
node -v &> /dev/null
if [ $? -ne 0 ]; then
  echo "NOT exist! Node.js"
  brew install node
else
  echo "Exist! Node.js" 
fi

chsh -s $(which fish)
# chsh -s /bin/zsh
# chsh -s /bin/bash

###########################
## HOW TOO CUSTOM "FISH" ##
###########################
# OPEN at Browser         
# When press below command..   
#
# > $ fish_config


# vim plug setting
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

omf install rbenv
## VimにPowerlineの　fish版です。
fisher add oh-my-fish/theme-bobthefish
# 文字化け 改善
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh

# Theme "DRACULA🧛🏻‍♂️" INSTALL🎉 :: https://draculatheme.com/
git clone https://github.com/dracula/iterm.git
# to hyper
hyper install hyper-dracula
# ADD cmd+. , Type to Fonts NAME!!

# Fonts install 白玄
# https://github.com/yuru7/HackGen/
if [ -e "$HOME/Library/Fonts/Hack-Bold.ttf" ]; then
  echo "Exist Hack fonts."
else
  echo "Not Exist Hack fonts."
  brew cask install font-hackgen-nerd
  brew cask install font-hackge
  brew tap homebrew/cask-fonts
fi