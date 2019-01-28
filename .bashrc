# behave like vi
set -o vi

# Load Homebrew's bash-completion helpers
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# load git completion script
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

. ~/cool_prompt

# Include alias definitions
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# Include environment-specific odds-n-ends
if [ -f ~/.bashrc_local ]; then
  . ~/.bashrc_local
fi

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'

export HISTSIZE=10000

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Assumes rbenv install
eval "$(rbenv init -)"

function quest { grep -r --exclude-dir=node_modules "$1" .; }

export quest
