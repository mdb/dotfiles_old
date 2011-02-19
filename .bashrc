export GREP_OPTIONS='--color=auto' # Add color to grep

shopt -s dotglob # Allow files starting with dot (.) to be returned in path name expansion

source ~/.svn-completion.sh # Add svn completion
source ~/.git-completion.sh # Add git completion
source ~/.git_svn_ps1.sh # Add git/svn to the prompt

export SVN_SHOWDIRTYSTATE=1 # make the SVN prompt change if dirty

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

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home

export PATH=~/bin:/opt/local/bin:/opt/local/sbin:android-sdk-mac_x86/tools:/usr/local/tomcat/bin:$PATH

export PYTHONPATH=~/lib/python2.6/site-packages # Did this because I installed phpsh locally, per these instructions: https://github.com/facebook/phpsh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Loads RVM into a shell session.

export PS1='\033[35m\]\w\[\033[00m\]\[\e[1;32m\]$(__git_svn_ps1)\e[0m\]\[\033[00m\] > ' # Add the git branch to the prompt
