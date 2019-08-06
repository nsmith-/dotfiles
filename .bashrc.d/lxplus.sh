# Environment for lxplus*.cern.ch
echo $HOSTNAME|grep -q 'lxplus' || return

export PATH=~/opt/texlive/bin/x86_64-linux:$PATH
export LD_LIBRARY_PATH=~/lib:$LD_LIBRARY_PATH
export CPLUS_INCLUDE_PATH=~/include

source /afs/cern.ch/project/eos/installation/cms/etc/setup.sh

# Make git stop searching before hitting /afs networked directory
export GIT_CEILING_DIRECTORIES=/afs/cern.ch/

# Aliases

# Shortcuts
export work=/afs/cern.ch/work/n/ncsmith/
