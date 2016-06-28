source .path

export PS1='\[\033[36m\]\h\[\033[33m\] [\w]\[\033[m\]'
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export TERM=xterm-color
export GNUTERM="qt"
export GTEST_DIR=/Users/jeongmin/Development/gtest-1.7.0/

export TERM='xterm-color'
export CLICOLOR=2
export LSCOLORS=ExFxCxDxBxegedabagacad
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

export SDK=/Users/JeongMinCha/eclipse/sdk

source .aliases

# pyenv
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="${PATH}:$PYENV_ROOT/bin"
# eval "$(pyenv init -)"

# MacPorts Installer addition on 2014-10-24_at_23:03:15: adding an appropriate 
# PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# color configuration
# PS1='\[\e[0;32m\][\u@\h \W]\$ \[\e[0m\]'
# Enable programmable sdb completion features.
if [ -f ~/.sdb/.sdb-completion.bash ]; then
 source ~/.sdb/.sdb-completion.bash
fi

# source ~/.profile

# For invoking octave in the current window of the command line
if [ -f /usr/local/octave/3.8.0/bin/octave-3.8.0 ]; then
  if ! test -f /usr/local/bin/octave ; then
    sudo ln -sf /usr/local/octave/3.8.0/bin/octave-3.8.0 /usr/local/bin/octave
  fi
fi