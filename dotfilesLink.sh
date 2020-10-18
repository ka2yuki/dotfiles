ln -sf ~/d/dotfiles/.zshrc ~/.zsh_profile
ln -sf ~/d/dotfiles/.zshrc ~/.zshrc

ln -sf ~/d/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/d/dotfiles/.bashrc ~/.bashrc
ln -sf ~/d/dotfiles/.bashrc.alias ~/.bashrc.alias

ln -sf ~/d/dotfiles/.vimrc ~/.vimrc
ln -sf ~/d/dotfiles/.sqliterc ~/.sqliterc

ln -sf ~/d/dotfiles/.gitconfig ~/.gitconfig
ln -fnsv ~/d/dotfiles/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -fnsv ~/d/dotfiles/md_preview.css ~/Library/Application\ Support/Code/User/md_preview.css
# ln -sf ~/d/dotfiles/com.googlecode.iterm2.plist ~

# chsh -s /bin/zsh
chsh -s /bin/bash

# vim plug setting
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
