# Set HOME
HOME=/c/Users/alavis

# Return immediately if we are not interactive
[ -z "$PS1" ] && return

# Enable tab completion
source ~/git-completion.bash

# get current git branch name
function git_branch {
    export gitbranch=\($(git rev-parse --abbrev-ref HEAD 2>/dev/null)\)
    if [ "$?" -ne 0 ]
      then gitbranch=
    fi
    if [[ "${gitbranch}" == "()" ]]
      then gitbranch=
    fi
}
 
# set usercolor based on whether we are running with Admin privs
function user_color {
    id | grep "Admin" > /dev/null
    RETVAL=$?
    if [[ $RETVAL == 0 ]]; then
        usercolor="[0;35m";
    else
        usercolor="[0;32m";
    fi
}
 
# set TTYNAME
function ttyname() { export TTYNAME=$@; }
 
# Set prompt and window title
inputcolor='[0;37m'
cwdcolor='[0;34m'
gitcolor='[1;95m'
user_color
 
# Setup for window title
export TTYNAME=$$
function settitle() {
  p=$(pwd);
  let l=${#p}-25
  if [ "$l" -gt "0" ]; then
    p=..${p:${l}}
  fi
  t="$TTYNAME $p"
  echo -ne "\e]2;$t\a\e]1;$t\a";
}
 
PROMPT_COMMAND='settitle; git_branch; history -a;'
export PS1='\[\e${usercolor}\][\u]\[\e${cwdcolor}\][$PWD]\[\e${gitcolor}\]${gitbranch}\[\e${inputcolor}\] $ '


# colors!
#green="\[\033[0;92m\]"
#blue="\[\033[1;49;36m\]"
#purple="\[\033[0;95m\]"
#reset="\[\033[0m\]"

# Change command prompt
#source ~/git-prompt.sh
#export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
#export PS1="$purple[\u]$white\W \$(__git_ps1)$blue $ $reset"
alias subl="C:/Program\ Files/Sublime\ Text\ 3/sublime_text.exe"

# Set ls colors
eval `dircolors ~/.dircolors.ansi-light`
alias ls="ls --color"

# Let's make git less verbos
G=git@github.com
myrepos=G:/alialavia


