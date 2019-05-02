alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
export EDITOR=nvim
export VISUAL=nvim
alias hhvm-dev="export PATH=~/code/hhvm/hphp/hack/bin:~/code/hhvm/hphp/hhvm:$PATH"
alias hhvm-nodev='export PATH=$(echo $PATH | tr : "\n" | sed "/code\/hhvm/d"  | paste -s -d : -)'
alias vscode='open -a "Visual Studio Code"'
alias vim=nvim
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
