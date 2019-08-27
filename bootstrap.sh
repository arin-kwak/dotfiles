#!/usr/bin/env bash

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

set -e

chmod +x *

main () {
    if [[ $(uname -s) == "Darwin" ]]; then
        "./mac_setup.sh"
        "./install.sh"
    elif [[ $(uname -s) == "Linux" ]]; then
        echo Linux is currently not supported. Sorry.
    fi

}

main

echo All Done!
echo Restarting shell
exec "$(which $SHELL)" -l
