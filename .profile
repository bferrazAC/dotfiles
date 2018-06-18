# rvm
if [ -s "$HOME/.rvm/scripts/rvm" ]; then . "$HOME/.rvm/scripts/rvm"; fi
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# virtualenv
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
export PIP_VIRTUALENV_BASE=$WORKON_HOME 
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
export LSCOLORS="DxGxcxdxCxegedabagacad"
PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'

# general
alias ls="ls -G"   
alias la='ls -la'
alias ll='ls -l'
alias cl='clear'
alias home='cd ~'
alias rt='reset'
alias trash='rm -fr ~/.Trash'
alias up='cd ..'
alias celar='clear'

# mongo
alias mongoRun='mongod --config /usr/local/Cellar/mongodb/2.0.1-x86_64/mongod.conf'

# spec
alias specjs='rake spec:javascript'

#npm
export PATH="/usr/local/share/npm/bin:${PATH}"

# processes
alias tm='top -o vsize' # memory
alias tu='top -o cpu' # cpu
