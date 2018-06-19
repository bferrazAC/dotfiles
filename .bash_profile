# general
alias ls='ls -G'
alias la='ls -la'
alias ll='ls -l'
alias cl='clear'
alias home='cd ~'
alias rt='reset'
alias trash='rm -fr ~/.Trash'
alias ..='cd ..'
alias celar='clear'
alias tree='ls -R | grep ":$" | sed -e "s/:$//" -e "s/[^-][^\/]*\//--/g" -e "s/^/   /" -e "s/-/|/"'
alias rmds='rm -f .DS_Store .localized;ls -laG'

# personal
alias cw='compass watch'
alias st='git status'
alias pull='git pull'

# finder
alias showfiles='defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder'
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"
alias dotfiles='cd $HOME/Projetos/dotfiles'

# mongo
alias mongorun='mongod --config /usr/local/Cellar/mongodb/2.0.1-x86_64/mongod.conf &'

# python
alias pyclean='find . -name "*.pyc" -exec rm {} \;'
alias pydist='python setup.py sdist upload -r ipypi'
alias pydev='python setup.py develop --no-deps'

# processes
alias tm='top -o vsize' # memory
alias tu='top -o cpu' # cpu

# mysql
alias mysqlstart='/usr/local/mysql/support-files/mysql.server start'
alias mysqlstop='/usr/local/mysql/support-files/mysql.server stop'
alias mysqlreload='mysqlstart && mysqlstop;'

#js
alias js-duplicate='jsinspect -t 30 -i '

# wheater
alias weather-nyc='curl "http://wttr.in/New+York"'
alias weather-rec='curl "http://wttr.in/Recife"'

# sublime editor
export EDITOR="/usr/local/bin/subl"
alias sub='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# paths > general
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
export PATH="/usr/local/share/npm/bin:${PATH}"
export PATH="./node_modules/.bin:$PATH"
export NVM_DIR="path/to/nvm"
export PGHOST=localhost

# virtualenv
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export WORKON_HOME=$HOME/.virtualenvs # set where virutal environments will live
# ensure all new environments are isolated from the site-packages directory
# export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
# use the same directory for virtualenvs as virtualenvwrapper
export PIP_VIRTUALENV_BASE=$WORKON_HOME
# makes pip detect an active virtualenv and install to it
export PIP_RESPECT_VIRTUALENV=true
export PIP_REQUIRE_VIRTUALENV=true

# bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# colors 
export LSCOLORS="DxGxcxdxCxegedabagacad"

# prompt
PS1='\[\e[0;34m\]\u\[\e[m\] \[\e[1;32m\]\w\[\e[m\]$(__git_ps1 " (%s)") \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'

