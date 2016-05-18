alias ga="git add"
alias gb="git branch"

# commit
alias gc="git commit"
alias gca="git commit --amend"

alias gcl="git clone"

# checkout
alias gco="git checkout"
alias gcob="git checkout -b"
alias gcom="git checkout master"

alias gd="git diff"
alias gf="git fetch"
alias gi="git init"

# log
alias gl="git log"
alias glo="git log --oneline"

alias gm="git merge"

# push
alias gp="git push"
alias gph="git push heroku"
alias gpo="git push origin"
alias gpom="git push origin master"
alias gpsuo="git push --set-upstream origin"
alias gpuom="git push -u origin master"

# pull
alias gpl="git pull"
alias gplom="git pull origin master"
alias gplru="git pull --rebase upstream"
alias gplrum="git pull --rebase upstream master"

# remote
alias gr="git remote"
alias grao="git remote add origin"
alias grau="git remote add upstream"
grso () { # "git remote set origin"
  git remote remove origin
  git remote add origin $1
  git remote -v
}
grsu () { # "git remote set upstream"
  git remote remove upstream
  git remote add upstream $1
  git remote -v
}
alias grv="git remote -v"

# rebase
alias grb="git rebase"
alias grba="git rebase --abort"
alias grbc="git rebase --continue"

alias gs="git status"
