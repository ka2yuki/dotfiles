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
  echo "exist! FISH" 
else
  echo "NOT exist!"
  brew install fish
fi
# install fisher for fish extention management tool.
if [ -e "$HOME/.config/fish/functions/fisher.fish" ]; then
  echo "exist! functions/fisher.fish" 
else
  echo "NOT exist! functions/fisher.fish" 
  curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
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


