# export SVN_EDITOR=vim

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home

export CLICOLOR=1
# export LSCOLORS=ExFxCxDxBxegedabagacad

##
# Your previous /Users/mball0001/.bash_profile file was backed up as /Users/mball0001/.bash_profile.macports-saved_2010-05-07_at_18:52:53
##

# MacPorts Installer addition on 2010-05-07_at_18:52:53: adding an appropriate PATH variable for use with MacPorts.
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# export PATH=${PATH}:android-sdk-mac_x86/tools

source ~/.bashrc

# uninstall that peice of shit Mcafee
alias mcafee="sudo /usr/local/McAfee/uninstallMSC"

# Reveal all unversioned files in svn repo: 
alias svndirt="svn status --no-ignore | grep '^\?' | sed 's/^\?//'"
# Delete all unversioned files in svn repo:
alias svnsweep="svn status --no-ignore | grep '^\?' | sed 's/^\?//'  | xargs rm -rf"

# A fast way to selectively include/exclude files in a Subversion commit 
function smartcommit() {
  svn stat > /tmp/svn_commits.tmp
  vim /tmp/svn_commits.tmp
  svn commit `cat /tmp/svn_commits.tmp | cut -d' ' -f2- | xargs`
  rm /tmp/svn_commits.tmp
}

# Fast find/replace within files
function rep() {
  for i in `grep -R "$1" | awk '{print $1}' | sed s/:.*$//g | uniq`; do
    sed -i -e "s/$1/$2 text/g" $i
  done
}

#add usr/local/bin to path and then concat rest
#PATH=/usr/local/tomcat/bin:$PATH
export PATH=/opt/local/bin:/opt/local/sbin:android-sdk-mac_x86/tools:/usr/local/tomcat/bin:$PATH

# This loads RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
