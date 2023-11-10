if status is-interactive
    # Commands to run in interactive sessions can go here
end

function share;
  curl -F "file=@$argv" http://0x0.st 2>/dev/null | pbcopy && pbpaste
  pkill -9 xclip
;end


function pomodoro 
  echo $argv[1] | lolcat
  timer "$argv[2]"m 
  notify-send -u critical "Take a break" "you've just finished a $argv[2]-minutes work session"
end

