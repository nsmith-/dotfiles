# Common aliases

alias rebash="pushd ~;. .bashrc;popd"
alias sshlpc="ssh -tY cmslpc35.fnal.gov 'echo \$DISPLAY > ~/.Xdisplay && tmux attach'"
alias sshhep="ssh -tY hep 'echo \$DISPLAY > ~/.Xdisplay && tmux attach'"
alias sshuw="ssh -tY uwlogin 'echo \$DISPLAY > ~/.Xdisplay && tmux attach'"
alias cq="condor_q $USER"
alias setupcrab="source /cvmfs/cms.cern.ch/crab3/crab.sh"
