################ define colors #################
C_DEFAULT="\[\033[m\]"
C_WHITE="\[\033[1m\]"
C_BLACK="\[\033[30m\]"
C_RED="\[\033[31m\]"
C_GREEN="\[\033[32m\]"
C_YELLOW="\[\033[33m\]"
C_BLUE="\[\033[34m\]"
C_PURPLE="\[\033[35m\]"
C_CYAN="\[\033[36m\]"
C_LIGHTGRAY="\[\033[37m\]"
C_DARKGRAY="\[\033[1;30m\]"
C_LIGHTRED="\[\033[1;31m\]"
C_LIGHTGREEN="\[\033[1;32m\]"
C_LIGHTYELLOW="\[\033[1;33m\]"
C_LIGHTBLUE="\[\033[1;34m\]"
C_LIGHTPURPLE="\[\033[1;35m\]"
C_LIGHTCYAN="\[\033[1;36m\]"
C_BG_BLACK="\[\033[40m\]"
C_BG_RED="\[\033[41m\]"
C_BG_GREEN="\[\033[42m\]"
C_BG_YELLOW="\[\033[43m\]"
C_BG_BLUE="\[\033[44m\]"
C_BG_PURPLE="\[\033[45m\]"
C_BG_CYAN="\[\033[46m\]"
C_BG_LIGHTGRAY="\[\033[47m\]"

###############################################################################
#                                                                             #
#                             PATH setting                                    #
#                                                                             #
###############################################################################
export PATH="/usr/local/mysql/bin:$PATH"
export PATH=${PATH}:/opt/i386dev/bin
export PATH=$PATH:/usr/local/MATLAB/R2015a/bin/

# added by Anaconda3 4.0.0 installer
export PATH="/Users/$(whoami)/anaconda/bin:$PATH"

# added by Anaconda3 2.4.1 installer
export PATH="/Users/$(whoami)/anaconda/bin:$PATH"

# added by Anaconda3 2.4.1 installer
export PATH="/Users/$(whoami)/Dropbox/Development/anaconda/bin:$PATH"

# For using Android SDK Platform tools
export PATH=${PATH}:/Users/$(whoami)/Library/Android/sdk/platform-tools
export PATH=${PATH}:/Users/$(whoami)/Library/Android/sdk/tools

#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_91.jdk/Contents/Home 
export JAVA_HOME=$(/usr/libexec/java_home)
export ANT_HOME=/Users/JeongMinCha/apache-ant-1.9.7
export PATH=${PATH}:${ANT_HOME}/bin

###############################################################################
#                                                                             #
#                              PS1 setting                                    #
#                                                                             #
###############################################################################
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}
export PS1="> $C_BLUE\h $C_RED[\t] $C_GREEN[\w] $C_DEFAULT"
export PS1=$PS1'\[\033[01;33m\]$(parse_git_branch)\[\033[00m\]\n\$ '
export CLICOLOR=1
export LSCOLORS=CxFxBxDxCxegedabagacad
export GNUTERM="qt"

export SDK=/Users/JeongMinCha/eclipse/sdk

###############################################################################
#                                                                             #
#                              aliases setting                                #
#                                                                             #
###############################################################################
# Git aliases
alias gst="git status"
alias glg="git log --oneline -10"
alias grf="git reflog -10"
alias gcm="git commit"
alias gdff="git diff"
alias gps="git push origin $(parse_git_branch)"
alias gpsf="git push -f origin $(parse_git_branch)"
alias gca="git commit --amend"
alias gchm="git checkout master"

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

##
# Your previous /Users/JeongMinCha/.bash_profile file was backed up as /Users/JeongMinCha/.bash_profile.macports-saved_2016-07-07_at_17:44:21
##

# MacPorts Installer addition on 2016-07-07_at_17:44:21: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# added by Anaconda2 4.1.1 installer
export PATH="/Users/JeongMinCha/anaconda/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
