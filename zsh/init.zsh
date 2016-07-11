
# site local variables
export PROJECTS=~/Code
export WORK=~/Womply
export ORGS=~/Org

# load requirements
autoload -U colors; colors
zmodload -i zsh/complist
autoload -U edit-command-line
zle -N edit-command-line

# set the function path
fpath=($HOME/dotfiles/zsh/functions $fpath)

# initialize autocomplete here, otherwise functions won't be loaded
autoload -U compinit; compinit
autoload -U $HOME/dotfiles/zsh/functions/*(:t)

# Setup the prompt
autoload -U promptinit; promptinit
prompt zleslie

if [ -s ~/.localrc ]; then
  source ~/.localrc
fi

source ~/dotfiles/zsh/aliases.zsh
source ~/dotfiles/zsh/bindkey.zsh
source ~/dotfiles/zsh/config.zsh
source ~/dotfiles/zsh/env.zsh
source ~/dotfiles/git/aliases.zsh