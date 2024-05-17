# Common aliases

alias rebash="pushd ~;. .bashrc;popd"
alias sshlpc="ssh -tY lpc 'echo \$DISPLAY > ~/.Xdisplay && tmux attach'"
alias cq="condor_q $USER"
alias setupcrab="source /cvmfs/cms.cern.ch/crab3/crab.sh"
alias procrastinate="watch -n 30 'condor_q -batch $USER | tail -n 40'"
alias brilcalc="PATH=$HOME/.local/bin:/cvmfs/cms-bril.cern.ch/brilconda/bin:$PATH brilcalc"
alias updatebril="PATH=$HOME/.local/bin:/cvmfs/cms-bril.cern.ch/brilconda/bin:$PATH pip install --install-option="--prefix=$HOME/.local" brilws"
alias justgivememydamnlumi="brilcalc lumi -c /cvmfs/cms.cern.ch/SITECONF/local/JobConfig/site-local-config.xml -b \"STABLE BEAMS\" --normtag=/cvmfs/cms-bril.cern.ch/cms-lumi-pog/Normtags/normtag_PHYSICS.json -u /fb -i"
