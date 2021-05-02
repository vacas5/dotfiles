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

# gatsby
alias gclean='rm -rf .cache/ public/'

# next
alias yrd='yarn run dev:lint'

# k8s
alias qa-kubectl="kubectl --kubeconfig ${HOME}/.kube/config-qa"
alias staging-kubectl="kubectl --kubeconfig ${HOME}/.kube/config-staging"
alias production-kubectl="kubectl --kubeconfig ${HOME}/.kube/config-production"

alias composer="php -d memory_limit=-1 /usr/local/bin/composer"
