# OS X customizations
[ $(uname) == "Darwin" ] || return

# brew stuff
eval "$(/opt/homebrew/bin/brew shellenv)"
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

# use bin
export PATH="~/.local/bin:$PATH"

# xrootd stuff
# export X509_CERT_DIR=/Users/ncsmith/.globus/cvmfs/grid.cern.ch/etc/grid-security/certificates

# Some mac-specific aliases
alias vi=vim
# alias vim="/Applications/MacVim.app/Contents/bin/mvim -v"
alias ls="command ls -G"
alias ll="ls -lhG"
alias voms-proxy-init="PATH=/usr/local/opt/openjdk/bin:$PATH voms-proxy-init"

condasetup()
{
  # >>> conda initialize >>>
  # !! Contents within this block are managed by 'conda init' !!
  __conda_setup="$('/opt/homebrew/Caskroom/mambaforge/base/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
  if [ $? -eq 0 ]; then
      eval "$__conda_setup"
  else
      if [ -f "/opt/homebrew/Caskroom/mambaforge/base/etc/profile.d/conda.sh" ]; then
          . "/opt/homebrew/Caskroom/mambaforge/base/etc/profile.d/conda.sh"
      else
          export PATH="/opt/homebrew/Caskroom/mambaforge/base/bin:$PATH"
      fi
  fi
  unset __conda_setup
  # <<< conda initialize <<<
}

# Oracle libraries for cx_Oracle
# export LD_LIBRARY_PATH=~/lib:$LD_LIBRARY_PATH

# Force java 8 from command line (for pyspark)
# export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
# Prevent obscure bug in pyspark
# export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
# coffea needs
# export ARROW_PRE_0_15_IPC_FORMAT=1
# export RUCIO_CONFIG=/Users/ncsmith/src/CMSRucio/rucio.cfg
. "$HOME/.cargo/env"
