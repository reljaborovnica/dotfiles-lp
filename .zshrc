PROMPT='%B%F{green}%n%f%F{blue}@%f%F{magenta}%m%f %F{blue}%~>%f%f%b '
HISTSIZE=100000
SAVEHIST=100000

export HISTFILE="$HOME/.history" 
export SAVEHIST=$HISTSIZE
export TERM="xterm-256color"

zstyle ':completion:*:descriptions' format '%U%B%d%b%u' 
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b' 

alias nano="nano -l"
alias grep="grep --color=auto"
alias cp="cp -iv"
alias rm="rm -vI"
alias ffmpeg="ffmpeg -hide_banner"
alias nano='nano -wl'
alias ls='exa --icons --group-directories-first'
alias diff="diff --color=auto" 
alias cat='bat --color=auto'
alias vim='nvim'
alias ip='ip --color=auto'
alias c="xclip"
alias v="xclip -o"
alias cs="xclip -in"
alias vs="xclip -o -sel clip"
alias pac="sudo pacman"
alias neofetch="neofetch --ascii_distro arch_small"

bindkey -e
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

source /home/relja/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /home/relja/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

