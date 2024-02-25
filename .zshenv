export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"
export MANPAGER="less -R --use-color -Dd+r -Du+b"
export LESS='-R --use-color -Dd+r$Du+b'
export VISUAL="nvim"
export VIDEO="mpv"
export OPENER="xdg-open"
export READER="firefox"

export PATH="$PATH:${$(find ~/.local/bin -type d -printf %p:)%%:}"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
