# Environment for CMS LPC at Fermilab
echo $HOSTNAME|grep -q '.fnal.gov' || return

# For scram
. /cvmfs/cms.cern.ch/cmsset_default.sh
. /etc/bashrc
export SINGULARITY_CACHEDIR=$(readlink -f ~/nobackup/.singularity)
export RUCIO_HOME=/cvmfs/cms.cern.ch/rucio/current/

# Add pixi and user-local to path
export PATH=/uscms/home/ncsmith/.local/bin:/uscms/home/ncsmith/.pixi/bin:$PATH
