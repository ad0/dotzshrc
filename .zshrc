export TERM="xterm-256color"

# use tab completion
autoload -Uz compinit && compinit
zstyle ':completion:*' rehash true

# enable autocorrect
unsetopt correct_all

# load antigen
source /usr/share/zsh-antigen/antigen.zsh

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
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs time)
POWERLEVEL9K_OS_ICON_BACKGROUND="white"
POWERLEVEL9K_OS_ICON_FOREGROUND="blue"
POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''
antigen theme bhilburn/powerlevel9k powerlevel9k

antigen apply

alias ll="ls -l --color=auto"

alias -s pdf="zathura"

source "$HOME/.opam/opam-init/init.zsh"

export PATH=$PATH:"$HOME/.local/bin"

eval `opam config env`

