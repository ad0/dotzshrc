export TERM="xterm-256color"

# use tab completion
autoload -Uz compinit && compinit
zstyle ':completion:*' rehash true

# enable autocorrect
unsetopt correct_all

# load antigen
source ~/.antigen.zsh

# syntax highlighting bundle
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle colored-man-pages

antigen bundle zsh-users/zsh-autosuggestions

antigen bundle peterhurford/git-it-on.zsh

antigen bundle git

antigen bundle cp

antigen bundle vi-mode

alias open_command=firefox
antigen bundle web-search

POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_VI_INSERT_MODE_STRING="I"
POWERLEVEL9K_VI_COMMAND_MODE_STRING="N"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(vi_mode dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs)
POWERLEVEL9K_OS_ICON_BACKGROUND="white"
POWERLEVEL9K_OS_ICON_FOREGROUND="blue"
POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"
antigen theme bhilburn/powerlevel9k powerlevel9k

antigen apply

alias ll="ls -l --color=auto"

alias -s pdf="zathura"

source "$HOME/.opam/opam-init/init.zsh"
