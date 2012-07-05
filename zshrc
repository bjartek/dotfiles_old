#
# Sets Oh My Zsh options.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>

# Set the path to Oh My Zsh.
export OMZ="$HOME/.oh-my-zsh"

# Set the key mapping style to 'emacs' or 'vi'.
zstyle ':omz:module:editor' keymap 'vi'

# Auto convert .... to ../..
zstyle ':omz:module:editor' dot-expansion 'no'

# Set case-sensitivity for completion, history lookup, etc.
zstyle ':omz:*:*' case-sensitive 'no'

# Color output (auto set to 'no' on dumb terminals).
zstyle ':omz:*:*' color 'yes'

# Auto set the tab and window titles.
zstyle ':omz:module:terminal' auto-title 'yes'

# Set the Zsh modules to load (man zshmodules).
# zstyle ':omz:load' zmodule 'attr' 'stat'

# Set the Zsh functions to load (man zshcontrib).
# zstyle ':omz:load' zfunction 'zargs' 'zmv'

# Set the Oh My Zsh modules to load (browse modules).
zstyle ':omz:load' omodule 'environment' 'terminal' 'editor' 'completion' \
  'history' 'directory' 'spectrum' 'alias' 'utility' 'prompt' \
  'history-substring-search' 'git' 'osx' 'syntax-highlighting' 'z'


# Set the prompt theme to load.
# Setting it to 'random' loads a random theme.
# Auto set to 'off' on dumb terminals.
zstyle ':omz:module:prompt' theme 'bjartek'

# This will make you shout: OH MY ZSHELL!

# Customize to your needs...

export EC2_PRIVATE_KEY="$(/bin/ls $HOME/.ec2/pk-*.pem)"
export EC2_CERT="$(/bin/ls $HOME/.ec2/cert-*.pem)"
export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.4.2.2/jars"
export GITHUB_USER="bjartek"

export TMPDIR=~/tmp
export NODE_PATH=/usr/local/lib/node_modules
export PLAY_HOME=/Users/bjartek/dev/play-2.0.1

alias netstat_osx="sudo lsof -i -P"
alias t="todo"
alias pvvsocks="ssh -N pvvsocks &"
alias screen="screen -U"
alias pt='pstree -lanUp bjartek'
alias ls='ls -G'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias rscp="rsync -avzP"
alias git=hub
alias playdev='export PLAY_HOME="/Users/bjartek/dev/Play20"; source ~/.path'
alias play2='export PLAY_HOME="/Users/bjartek/dev/play-2.0.1";source ~/.path'
export DYLD_LIBRARY_PATH=/Library/Java/Extensions

source ~/.path

source ~/.zshrc_local
source /usr/local/etc/grc.bashrc
source "$OMZ/init.zsh"
