alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
export EDITOR=vim
export VISUAL=vim
alias hhvm-dev="export PATH=~/code/hhvm/hphp/hack/bin:~/code/hhvm/hphp/hhvm:$PATH"
alias hhvm-nodev='export PATH=$(echo $PATH | tr : "\n" | sed "/code\/hhvm/d"  | paste -s -d : -)'
