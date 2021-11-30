
### POMODORO TIMER ALIASES
function __pomodoro() {
    ~/.local/bin/pomodoro.sh $@ &
    echo $! > /tmp/pomodoro.pid
}
alias pomodoro="__pomodoro 2>/dev/null"
alias stop_pomodoro='test -f /tmp/pomodoro.pid && kill \$(cat /tmp/pomodoro.pid) && rm /tmp/pomodoro.pid'
