#!/bin.sh

PS1=’$(__git_ps1 "[%s] ")\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\]’
export WORKON_HOME=~/virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
export PIP_VIRTUALENV_BASE=~/virtualenvs
Source ~/.bash_git

