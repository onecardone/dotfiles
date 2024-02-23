# Setting up your own dotfiles repository
```sh
git init --bare $HOME/.dotfiles
```

## dotfiles alias for doing git actions to your dotfiles

```sh
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
```

### example:
```
dotfiles add .bashrc; dotfiles commit; dotfiles push
```

## Run this command to not track changes on your home directory
```sh
dotfiles config --local status.showUntrackedFiles no
```

# Dependencies
## [fzf](https://github.com/junegunn/fzf), [fzf.vim](https://github.com/junegunn/fzf.vim), and [vim-plug](https://github.com/junegunn/vim-plug)
```sh
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf; ~/.fzf/install
```
```sh
git clone https://github.com/junegunn/fzf.vim.git ~/.fzf.vim
```
```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## [ripgrep](https://github.com/BurntSushi/ripgrep)
Use your package manager to install ripgrep

# [Visual Studio Code](https://code.visualstudio.com/download)
Choose entries that you want from my VS Code settings and keybindings under
`.config/vscode/*`
and add them to yours.
