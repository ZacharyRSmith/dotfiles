# Add alias and refresh source
# Ex. usage:
# $: als gpom git\ push\ origin\ master
# $: gpom
# => git push origin master
als () {
  echo "alias" $1'="'$2'"' >> ~/.zshrc
  source ~/.zshrc
}

cdl () {
  cd $1
  ls -a .
}

alias e="echo"
alias t="touch"

# set custom cd command
# Ex. usage:
# $: cd /path/to/sprint/folder
# $: scd sprint
# $: cd anywhere/else
# $: cdsprint
# => dir changed to /path/to/sprint/folder
scd () {
  # delete old als
  # If no argument provided, command will be "cdt" for "cd temp"
  ARG1=${1:-t}
  DIR=$(pwd)
  als cd$ARG1 cd\ $DIR
}

# cd commands:
alias cdc="cd ~/Code"

# chrome commands
alias chrome="open -a 'Google Chrome'"
chl () {
  ARG1=${1:-3000}
  chrome http://localhost:$ARG1
}

alias brewi="brew install"


# GIT COMMANDS
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
alias gsl="git shortlog"

alias gm="git merge"

# push
alias gp="git push"
alias gph="git push heroku"
alias gphm="git push heroku master"
alias gpo="git push origin"
alias gpom="git push origin master"
alias gpsuo="git push --set-upstream origin"
alias gpsuom="git push --set-upstream origin master"
alias gpuom="git push -u origin master"

# pull
alias gpl="git pull"
alias gplom="git pull origin master"
alias gplru="git pull --rebase upstream"
alias gplrum="git pull --rebase upstream master"
alias gplum="gpl upstream master"

# remote
alias gr="git remote"
alias grao="git remote add origin"
alias grau="git remote add upstream"
alias grrh="git remote remove heroku"
alias grro="git remote remove origin"
alias grru="git remote remove upstream"
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

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

export PYTHONPATH=$PYTHONPATH:/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packagesalias py="python"
alias cwd="pwd|pbcopy; pbpaste; echo 'copied to clipboard'"
alias cdtp="cd /Users/zacharyryansmith/Code/hrr/2015-10-toy-problems"

# NPM
alias npmi="npm install"
alias npmis="npm install --save"
alias npmisd="npm install --save-dev"
alias npmrd="npm run dev"
alias npmrk="npm run karma"
alias npmrp="npm run protractor"
alias npms="npm start"
alias npmt="npm test"

# SUBLIME SNIPPETS
alias mksnip="sh /Users/zacharyryansmith/bin/make_sublime_snippet.sh"
alias chsnip="subl /Users/zacharyryansmith/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/"

# HEROKU
alias he="heroku"
alias heo="heroku open"
alias hel="heroku local"

# PYTHON
alias py="python"
alias pys="python -m SimpleHTTPServer"
alias pyt="python -m unittest"

# FOR EXERCISM.IO
alias exf="exercism fetch"
alias exs="exercism submit"

# RUBY & RAILS
alias r="ruby"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
alias railsdc="rails destroy controller"
alias railsd="rails destroy"
alias railsdm="rails destroy model"
alias railsgm="rails g model"
alias rakedbm="rake db:migrate"

alias cdex="cd /Users/zacharyryansmith/Code/exercism"
alias cddt="cd /Users/zacharyryansmith/Desktop"

alias subldt="subl /Users/zacharyryansmith/Desktop"

