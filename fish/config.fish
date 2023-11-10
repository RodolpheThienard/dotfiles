if status is-interactive
    # Commands to run in interactive sessions can go here
end

source ~/.config/fish/functions/config.fish

#export HELIX_RUNTIME=/home/user-name/src/helix/runtime
export PATH="$HOME/.cargo/bin:$PATH"
# export LD_LIBRARY_PATH="/usr/lib"

alias l="ls -l"
alias la="ls -la"
alias z=zellij
alias bat=batcat
alias ls=exa
alias sshfront="ssh rodolphe@176.136.255.47"
alias spack-init="source /usr/share/spack/share/spack/setup-env.fish"
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias todo="hx ~/todo.md"
alias ruche="ssh mchps-14@ruche.mesocentre.universite-paris-saclay.fr"
alias m2="cd ~/Documents/Master/M2"
alias po="pomodoro"
alias wo="pomodoro work 45"
alias z=zellij
alias bat=batcat
alias ls=exa
alias mark3_net="ssh rodolphe@176.136.255.47"
alias mark3="ssh rodolphe@192.168.1.6"
alias spack-init="source /usr/share/spack/share/spack/setup-env.fish"

set PATH $PATH /home/rodolphe/.local/bin

