# export SVN_EDITOR=vim

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home

export CLICOLOR=1
# export LSCOLORS=ExFxCxDxBxegedabagacad

##
# Your previous /Users/mball0001/.bash_profile file was backed up as /Users/mball0001/.bash_profile.macports-saved_2010-05-07_at_18:52:53
##

# MacPorts Installer addition on 2010-05-07_at_18:52:53: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH=${PATH}:android-sdk-mac_x86/tools

source ~/.bashrc

# uninstall that peice of shit Mcafee
alias mcafee="sudo /usr/local/McAfee/uninstallMSC"

# Reveal all unversioned files in svn repo: 
alias svndirt="svn status --no-ignore | grep '^\?' | sed 's/^\?      //'"
# Delete all unversioned files in svn repo:
alias svnsweep="svn status --no-ignore | grep '^\?' | sed 's/^\?      //'  | xargs rm -rf"
