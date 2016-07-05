export PATH="/usr/local/mysql/bin:$PATH"
export PATH=${PATH}:/opt/i386dev/bin
export PATH="$PATH:/Users/JeongMinCha/pintos/utils"
export PATH=$PATH:/usr/local/MATLAB/R2015a/bin/

# added by Anaconda3 4.0.0 installer
export PATH="/Users/JeongMinCha/anaconda/bin:$PATH"

# added by Anaconda3 2.4.1 installer
export PATH="/Users/JeongMinCha/anaconda/bin:$PATH"

# added by Anaconda3 2.4.1 installer
export PATH="/Users/JeongMinCha/Dropbox/Development/anaconda/bin:$PATH"

# For using Android SDK Platform tools
export PATH=${PATH}:/Users/$(whoami)/Library/Android/sdk/platform-tools
export PATH=${PATH}:/Users/$(whoami)/Library/Android/sdk/tools

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

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_91.jdk/Contents/Home 
export ANT_HOME=/Users/JeongMinCha/apache-ant-1.9.7

export PATH=${PATH}:${ANT_HOME}/bin

# Git aliases
alias gst="git status"
alias glg="git log --oneline -10"
alias grf="git reflog -10"
alias gcm="git commit"
alias gdff="git diff"

# ls aliases
alias ls="ls -v"
alias ll="ls -lv"

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
