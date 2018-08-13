# ls
alias ll='ls -la'

# git
alias deletemerged='git branch --merged develop | grep -v "\* develop" | xargs -n 1 git branch -d'
alias gupd='git pull upstream develop'

# gulp
alias gs='gulp serve'

# npm
alias ns='npm start'

#sass
alias sw='sass --watch sass/:src/'
