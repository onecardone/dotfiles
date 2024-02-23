# don't put duplicate lines or lines starting with space in the history
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# ssh but force password prompt
alias sshwithpass="ssh -o PubkeyAuthentication=no -o PreferredAuthentications=password"

# alias for managing dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# should check if WSL or not, then register this alias if so
# also print success if files are copied over
alias dotfilesvscode='cp /mnt/c/users/jarod/AppData/Roaming/Code/User/settings.json ~/.config/vscode/settings.json; cp /mnt/c/users/jarod/AppData/Roaming/Code/User/keybindings.json ~/.config/vscode/keybindings.json'

# tmux should use the dotfiles config
alias tmux="tmux -f $HOME/.config/tmux/tmux.conf"

# start tmux upon logging in
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
	exec tmux
fi

# ansible
alias ansiblenotes="cat ~/notes/ansible.md"

# If fuzzy find configs are installed, source it
# [ -f "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.bash ] && source "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.bash
# Maybe install fzf into .config/fzf?

# From fzf auto-install
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# References
# https://unix.stackexchange.com/questions/43601
