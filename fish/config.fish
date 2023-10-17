if status is-interactive
    # Commands to run in interactive sessions can go here
end

function share;
  curl -F "file=@$argv" http://0x0.st 2>/dev/null | pbcopy && pbpaste
  pkill -9 xclip
;end

#export HELIX_RUNTIME=/home/user-name/src/helix/runtime
export PATH="$HOME/.cargo/bin:$PATH"

alias l="ls -l"
alias la="ls -la"
alias z=zellij
alias bat=batcat
alias ls=exa
alias mark3_net="ssh rodolphe@176.136.255.47"
alias mark3="ssh rodolphe@192.168.1.6"
alias spack-init="source /usr/share/spack/share/spack/setup-env.fish"
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias todo="hx ~/todo.md"
