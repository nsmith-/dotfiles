# Environment for CMS LPC at Fermilab
echo $HOSTNAME|grep -q '.fnal.gov' || return

# For scram
. /cvmfs/cms.cern.ch/cmsset_default.sh
. /etc/bashrc
export SCRAM_ARCH=slc6_amd64_gcc630

# For tmux install
export PATH=~/local/bin:$PATH

# Shortcuts
