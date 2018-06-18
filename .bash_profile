export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
# set where virutal environments will live
export WORKON_HOME=$HOME/.virtualenvs
# ensure all new environments are isolated from the site-packages directory
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
# use the same directory for virtualenvs as virtualenvwrapper
export PIP_VIRTUALENV_BASE=$WORKON_HOME
# makes pip detect an active virtualenv and install to it
export PIP_RESPECT_VIRTUALENV=true
if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
	source /usr/local/bin/virtualenvwrapper.sh
else
	echo "WARNING: Can't find virtualenvwrapper.sh"
fi
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PIP_REQUIRE_VIRTUALENV=true
source /usr/local/bin/virtualenvwrapper.sh
export LSCOLORS="DxGxcxdxCxegedabagacad"
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
PS1='\[\e[0;34m\]\u\[\e[m\] \[\e[1;32m\]\w\[\e[m\]$(__git_ps1 " (%s)") \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'

#Projeto Globoesportes (esportes)
alias startMysql='mysql.server start'
alias develop='python setup.py develop --no-deps'

alias mongoRun='sudo mongod run --config /usr/local/Cellar/mongodb/3.0.2/mongod.conf'

alias cw='compass watch'
alias st='git status'
alias pull='git pull'


alias sub='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
