# Environment for uwlogin.cern.ch
echo $HOSTNAME|grep -q 'uwlogin.cern.ch' || return

if [ -f /etc/bashrc ]; then
   . /etc/bashrc
fi

if [ -f /cms/setup/bashrc ]; then
    . /cms/setup/bashrc
fi

if touch a 2>/dev/null; then
  rm a
else
  echo "AFS Credentials expired; running kinit && aklog"
  kinit -l 30d ncsmith@CERN.CH && aklog
fi

export PATH=~/opt/texlive/bin/x86_64-linux:$PATH
export PATH=/cms/sw/python/bin/:/cms/sw/git/bin:$PATH
export LD_LIBRARY_PATH=~/lib:$LD_LIBRARY_PATH
export CPLUS_INCLUDE_PATH=~/include

source /afs/cern.ch/project/eos/installation/0.3.121-aquamarine/setup.sh

# Make git stop searching before hitting /afs networked directory
export GIT_CEILING_DIRECTORIES=/afs/cern.ch/

# Aliases

# Shortcuts
export work=/afs/cern.ch/work/n/ncsmith/
