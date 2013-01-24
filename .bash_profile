export WORKON_HOME=$HOME/.virtualenvs
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_REQUIRE_VIRTUALENV=true
source /usr/local/bin/virtualenvwrapper.sh
export LSCOLORS="DxGxcxdxCxegedabagacad"
PS1='\[\e[0;34m\]\u\[\e[m\] \[\e[1;32m\]\w\[\e[m\]$(__git_ps1 " (%s)") \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'

#Projeto Globoesportes (esportes)
alias ge='cd ~/Projetos/esportes/esportes; workon globoesporte'
alias dynamo='cd ~/Projetos/dynamo-ge; workon globoesporte'

alias geStart='ge; make startservers'
alias geStop='ge; make stopservers'
alias geRun='ge; ./manage.py runserver 0.0.0.0:8000'
alias dynamoRun='dynamo; ion run'
alias mongoRun='sudo mongod run --config /usr/local/Cellar/mongodb/2.0.1-x86_64/mongod.conf'
alias thumborRun='ge; thumbor -c conf/setting_thumbor_local.py'

alias geTail='ge; tail -1000f logs/app/globoesporte-adm.log'

alias startsolr='cd ~/Projetos/apache-solr-3.5.0/example && java -jar start.jar'

source ~/.git-completion.bash

alias manage='python $VIRTUAL_ENV/manage.py'

alias cw='compass watch'

alias stagingRun='cd ~/Projetos/esportes/scripts; workon globoesporte; sudo ./staging.sh  ativar'
alias stagingStop='cd ~/Projetos/esportes/scripts; workon globoesporte; sudo ./staging.sh  desativar'

alias sub='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"