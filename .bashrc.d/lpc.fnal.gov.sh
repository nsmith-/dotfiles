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

condasetup()
{
  # >>> conda initialize >>>
  # !! Contents within this block are managed by 'conda init' !!
  __conda_setup="$('/uscms_data/d3/ncsmith/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
  if [ $? -eq 0 ]; then
      eval "$__conda_setup"
  else
      if [ -f "/uscms_data/d3/ncsmith/miniconda3/etc/profile.d/conda.sh" ]; then
          . "/uscms_data/d3/ncsmith/miniconda3/etc/profile.d/conda.sh"
      else
          export PATH="/uscms_data/d3/ncsmith/miniconda3/bin:$PATH"
      fi
  fi
  unset __conda_setup
  # <<< conda initialize <<<
}

# Shortcuts
