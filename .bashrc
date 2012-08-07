export GREP_OPTIONS='--color=auto' # Add color to grep

shopt -s dotglob # Allow files starting with dot (.) to be returned in path name expansion

export CLICOLOR=1

alias mcafee="sudo /usr/local/McAfee/uninstallMSC" # uninstall that peice of shit Mcafee
alias svndirt="svn status --no-ignore | grep '^\?' | sed 's/^\?//'" # Reveal all unversioned files in svn repo: 
alias svnsweep="svn status --no-ignore | grep '^\?' | sed 's/^\?//'  | xargs rm -rf" # Delete all unversioned files in svn repo:

function smartcommit() {
  # A fast way to selectively include/exclude files in a Subversion commit 
  svn stat > /tmp/svn_commits.tmp
  vim /tmp/svn_commits.tmp
  svn commit `cat /tmp/svn_commits.tmp | cut -d' ' -f2- | xargs`
  rm /tmp/svn_commits.tmp
}

function rep() {
  # Fast recursive find/replace on text in files, except .svn directories 
  for i in `grep -R --exclude="*.svn*" "$1" * | sed s/:.*$//g | uniq`; do
    sed -i ".bak" -e "s#$1#$2#g" $i
  done
}

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo " ("${ref#refs/heads/}$(parse_git_dirty)")"
}

function parse_svn_repo {
  info=$(svn info 2> /dev/null) || return
  root=$(echo $info | sed -e 's/^.*Repository Root: //g' -e 's,.*/,,g' -e 's/ .*//g')
  revision=$(echo $info | sed -e 's/^.*Revision: //g' -e 's/ .*//g')
  echo " ($root:$revision)"
}

function git_out {
  for i in $(git push -n $* 2>&1 \
    | awk '$1 ~ /[a-f0-9]+\.\.[a-f0-9]+/ { print $1; }')
  do
    git log --oneline $i
  done
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NORMAL="\[\033[0m\]"
PINK="\033[35m\]"

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home

export PATH=~/bin:/opt/local/bin:/opt/local/sbin:android-sdk-mac_x86/tools:/usr/local/tomcat/bin:/usr/local/Cellar/python/2.7.1/bin:$PATH

#export PYTHONPATH=~/lib/python2.6/site-packages # Did this because I installed phpsh locally, per these instructions: https://github.com/facebook/phpsh

export M2_HOME=/usr/local/apache-maven/apache-maven-2.2.1 # CIM stuff needs this maven
export M2=$M2_HOME/bin
export PATH=$M2:$PATH

# Loads RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export PS1="\n$PINK\w:$GREEN\$(parse_git_branch)\$(parse_svn_repo)\n$RED$ $NORMAL"
