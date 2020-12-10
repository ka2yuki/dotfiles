# !/bin/bash
# =======================================
# OS 別の設定
echo $OSTYPE
case ${OSTYPE} in
    darwin*)
        #Mac用の設定
        export CLICOLOR=1
        alias ls='ls -a -G -F'
        ln -fnsv ${PWD}/Dotfiles/settings.json ${PWD}/Library/Application\ Support/Code/User/settings.json
        ln -fnsv ${PWD}/Dotfiles/md_preview.css ${PWD}/Library/Application\ Support/Code/User/md_preview.css
        ;;
    linux*)
        #Linux用の設定
        alias ls='ls -a -F --color=auto'
        adduser dev
        su - dev
        ;;
esac
# 作業ユーザー削除
# userdel -r dev

# =======================================
echo "🔎 Check Brew🍺 now"
echo "."
echo "======================================="
# if type "brew" > /dev/null 2>&1; then
#   echo "Exist! brew ✅" #コマンドが存在する時の処理
# else
#   echo "NOT exist Brew!" #コマンドが存在しないときの処理
#   ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
# fi


# Check for Homebrew
if test ! $(which brew)
then
  echo "NOT exist Brew!" #コマンドが存在しないときの処理
  echo "  Installing Homebrew for you."
  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    /bin/bash cd $HOME && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    # ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    # ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo "🎉 Installed! Brew🍺 " #コマンドが存在する時の処理
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    /bin/bash cd $HOME && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    # ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    # ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo "🎉 Installed! Brew🍺 " #コマンドが存在する時の処理
  fi
fi



ln -sf ${PWD}/Dotfiles/.zshrc ${PWD}/.zsh_profile
ln -sf ${PWD}/Dotfiles/.zshrc ${PWD}/.zshrc

ln -sf ${PWD}/Dotfiles/.bash_profile ${PWD}/.bash_profile
ln -sf ${PWD}/Dotfiles/.bashrc ${PWD}/.bashrc
ln -sf ${PWD}/Dotfiles/.bashrc.alias ${PWD}/.bashrc.alias
ln -sf ${PWD}/Dotfiles/.vimrc ${PWD}/.vimrc
ln -sf ${PWD}/Dotfiles/.sqliterc ${PWD}/.sqliterc
# Fish
# if [ -e {確認したいファイルかディレクトリのパス} ]; then
# if [ -e ~/.config ]; then
#     # 存在する場合
# else
#     # 存在しない場合
# fi

# =======================================
ln -sf ${PWD}/Dotfiles/fish/config.fish ${HOME}/.config/fish/config.fish
echo "🔎 Check DIR ~/.config/fish/conf.d"
if [ -e ${HOME}/.config/fish/conf.d ]; then
  ln -sf ${PWD}/Dotfiles/fish/alias.fish ${HOME}/.config/fish/conf.d/alias.fish
else
  mkdir ${HOME}/.config/fish/conf.d
  ln -sf ${PWD}/Dotfiles/fish/alias.fish ${HOME}/.config/fish/conf.d/alias.fish
fi
ln -sf ${PWD}/Dotfiles/fish/fish_prompt.fish ${HOME}/.config/fish/functions/fish_prompt.fish
ln -sf ${PWD}/Dotfiles/fish/.fish_user_key_bindings.fish ${HOME}/.config/fish/functions/fish_user_key_bindings.fish
# Other
ln -sf ${PWD}/Dotfiles/.gitconfig ${HOME}/.gitconfig
# ln -sf ${PWD}/Dotfiles/com.googlecode.iterm2.plist${PWD} 

# fish cmd exist? check!
# fish_config > /dev/null 2>&1
# fi
echo "🔎 Now Check fish_config"
echo "======================================="
if type "fish_config" > /dev/null 2>&1; then
  echo "✅ Exist! FISH" #コマンドが存在する時の処理
else
  echo "💸 NOT exist! FISH" #コマンドが存在しないときの処理
  brew install fish
fi

# if [ $? -eq 127 ]; then
#   echo "Exist! FISH" 
# else
#   echo "NOT exist!"
#   brew install fish
# fi
echo "🔎 Now Check git.io/fisher"
echo "======================================="
echo "this's Fisher Extention-Management-Tool."
# install fisher for fish extention management tool.
if [ -e "$HOME/.config/fish/functions/fisher.fish" ]; then
  echo "Exist! functions/fisher.fish" 
else
  echo "😢 NOT exist! functions/fisher.fish" 
  curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
fi

echo "🔎 Node.js chack.."
echo "======================================="
# node -v &> /dev/null
# if [ $? -ne 0 ]; then
if type "node -v" > /dev/null 2>&1; then
  echo "💸 NOT exist! Node.js"
  brew install node
else
  echo "✅ Exist! Node.js" 
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