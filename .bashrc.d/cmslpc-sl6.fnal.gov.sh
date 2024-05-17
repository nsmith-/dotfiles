# Environment for CMS LPC at Fermilab
echo $HOSTNAME|grep -q 'cmslpc' || return

# For scram
. /cvmfs/cms.cern.ch/cmsset_default.sh
