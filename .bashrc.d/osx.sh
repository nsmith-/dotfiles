# OS X customizations
[ $(uname) == "Darwin" ] || return

export PATH="/Applications/Ableton Live 9 Suite.app/Contents/MacOS":$PATH
# ROOT
#. /Applications/root_v6.06.08/bin/thisroot.sh
. $(brew --prefix root)/bin/thisroot.sh

# homebrew sbin
export PATH="/usr/local/sbin:$PATH"

# Some mac-specific aliases
alias vi=vim
alias vim="mvim -v"
alias ls="command ls -G"
alias ll="ls -lhG"

alias sshuwremote="ssh -tY uwlogin_remote 'echo \$DISPLAY > ~/.Xdisplay && tmux attach'"
