# Environment for CMS LPC at Fermilab
echo $HOSTNAME|grep -q '.fnal.gov' || return

# For scram
. /cvmfs/cms.cern.ch/cmsset_default.sh
. /etc/bashrc
if uname -r | grep -q el6; then
  export SCRAM_ARCH=slc6_amd64_gcc630
else
  export SCRAM_ARCH=slc7_amd64_gcc700
fi

export PATH=~/.local/bin:$PATH

# Shortcuts
