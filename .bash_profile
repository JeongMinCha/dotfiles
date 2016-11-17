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
export PS1='> \[\033[34m\]\h \[\033[31m\][\t]\033[32m\] [\w]\[\033[m\]'
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
