#!/bin/bash

set -e

function test_dep() {
    if ! which $1 1>/dev/null; then
        echo -e "Missing dependency, please install \033[91;1m$1\033[0m"
        exit 1;
    fi
}

if [ -z "$ALIASES_FILE" ] ; then
    ALIASES_FILE=~/.bashrc
fi

test_dep mpv
test_dep zenity

cp ./pomodoro.sh ~/.local/bin/pomodoro.sh
if ! grep "POMODORO TIMER ALIASES" $ALIASES_FILE 1>/dev/null; then
    cat ./aliases.sh >> $ALIASES_FILE
fi
