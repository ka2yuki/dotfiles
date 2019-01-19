# clone
```zsh
git clone https://github.com/ka2yuki/Dotfiles.git
cd Dotfiles
ls -a
```


# zsh 適用
```zsh
sh dotfilesLink.sh
zsh
# source ~/.zshrc  # 実行させる
```

**Done**


# Other
## リンボリックリンクの作成
```zsh
ln -s [該当ファイルのpwd] [リンクを作成したい場所pwd]
```

* 上手く反映されない場合, `dotfilesLink.sh`で シンボリンク先を指定しているので、
ディレクトリが合う様に編集する。


## ログインシェルをzshに変更する
`chsh -s /bin/zsh`  
zshenv > zprofile > zshrc > zloginの順  
[詳細](https://qiita.com/muran001/items/7b104d33f5ea3f75353f)



# 気になる Dotfiles
- [最強の dotfiles](https://qiita.com/b4b4r07/items/b70178e021bef12cd4a2)


