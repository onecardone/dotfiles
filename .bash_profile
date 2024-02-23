export HISTIGNORE="clear"

# custom colors
export PS1="\[\e[35m\]\u\[\e[m\]\[\e[35m\]@\[\e[m\]\[\e[33m\]\h\[\e[m\]\[\e[33m\]:\[\e[m\]\[\e[32m\]\w\[\e[m\]\[\e[37m\]>\[\e[m\] "

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # source .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# use XDG_CONFIG_HOME
export XDG_CONFIG_HOME="$HOME/.config"

# set PATH so it includes user's private bin if it exists

if [[ ! "$PATH" == *$HOME/bin* ]]; then
  PATH="${PATH:+${PATH}:}$HOME/bin"
fi

# set PATH so it includes user's private bin if it exists
if [[ ! "$PATH" == *$HOME/.local/bin* ]]; then
  PATH="${PATH:+${PATH}:}$HOME/.local/bin"
fi
