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
