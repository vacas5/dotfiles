# ls
alias ll='ls -la'

# git
alias deletemerged='git branch --merged develop | grep -v "\* develop" | xargs -n 1 git branch -d'
