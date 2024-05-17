# OS X customizations
[ $(uname) == "Darwin" ] || return

# pip --user bin
export PATH="/Users/ncsmith/Library/Python/3.10/bin:$PATH"

# xrootd stuff
export X509_CERT_DIR=/Users/ncsmith/.globus/cvmfs/grid.cern.ch/etc/grid-security/certificates

# Some mac-specific aliases
alias vi=vim
alias vim="/Applications/MacVim.app/Contents/bin/mvim -v"
alias ls="command ls -G"
alias ll="ls -lhG"
alias voms-proxy-init="PATH=/usr/local/opt/openjdk/bin:$PATH voms-proxy-init"

condasetup()
{
  eval "$(/Users/ncsmith/mambaforge/bin/conda shell.bash hook)"
}

# Oracle libraries for cx_Oracle
export LD_LIBRARY_PATH=~/lib:$LD_LIBRARY_PATH

# Force java 8 from command line (for pyspark)
# export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
# Prevent obscure bug in pyspark
# export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
# coffea needs
# export ARROW_PRE_0_15_IPC_FORMAT=1
export RUCIO_CONFIG=/Users/ncsmith/src/CMSRucio/rucio.cfg
