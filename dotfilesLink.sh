ln -sf ~/d/dotfiles/.zshrc ~/.zsh_profile
ln -sf ~/d/dotfiles/.zshrc ~/.zshrc

ln -sf ~/d/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/d/dotfiles/.bashrc ~/.bashrc
ln -sf ~/d/dotfiles/.bashrc.alias ~/.bashrc.alias
ln -sf ~/d/dotfiles/.vimrc ~/.vimrc
ln -sf ~/d/dotfiles/.sqliterc ~/.sqliterc
ln -sf ~/d/dotfiles/.fish_user_key_bindings.fish ~/.config/fish/functions/fish_user_key_bindings.fish

ln -sf ~/d/dotfiles/.gitconfig ~/.gitconfig
ln -fnsv ~/d/dotfiles/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -fnsv ~/d/dotfiles/md_preview.css ~/Library/Application\ Support/Code/User/md_preview.css
# ln -sf ~/d/dotfiles/com.googlecode.iterm2.plist ~

brew install fish
# install fisher for fish extention management tool.
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

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


