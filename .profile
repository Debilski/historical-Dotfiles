export SCONS_LIB_DIR=/Library/scons-0.97.0d20071212/
export CLICOLOR=true

export GIT_PS1_SHOWDIRTYSTATE=1
# PS1='[\u@\h`__git_ps1` \W]\$ '
# PS1='\[\033]0;\u@\h`__git_ps1`:\w\007\]\u@\h:\w) '
PS1='\[\033]0;`__git_ps1` \w\007\]\h:\W \u\$ '
shopt -s histappend
PROMPT_COMMAND=`history -a`
export HISTCONTROL="ignoredups"
export EDITOR="vim"

export PATH=/usr/local/sbin:/usr/local/bin:$PATH:/Developer/usr/bin:/usr/local/Cellar/python/2.7/Frameworks/Python.framework/Versions/2.7/bin
export PYTHONPATH=/usr/local/lib/python:$PYTHONPATH

alias ll="ls -l"
alias la="ls -a"
alias l="ls"
alias rm="rm -i"


# $opt=vbitrate=2160000:mbd=2:keyint=132:vqblur=1.0:cmp=2:subcmp=2:dia=2:mv0:last_pred=3
# mencoder mf://set8_128*g.3.png -o set8_128.avi -ovc lavc -lavcopts vcodec=msmpeg4v2:$opt -oac copy

# use homebrew with llvm
export HOMEBREW_USE_LLVM=1

if [ -f `brew --prefix`/etc/autojump ]; then
      . `brew --prefix`/etc/autojump
fi

if [ -f `brew --prefix`/etc/bash_completion ]; then
      . `brew --prefix`/etc/bash_completion
fi

