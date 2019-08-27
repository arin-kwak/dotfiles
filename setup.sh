#!/usr/bin/env bash
# Heavily copied and pasted from https://github.com/mattorb/dotfiles

ROOT="$(pwd)"

set -e

main () {
    "$ROOT/symlink-common.sh"

    if [[ $(uname -s) == "Darwin" ]]; then
        "$ROOT/config-osx.sh"
        "$ROOT/install.sh"
#        "$ROOT/symlink-osx-dev-apps.sh"
    elif [[ $(uname -s) == "Linux" ]]; then
        echo Linux is currently not supported. Sorry.
        # "$ROOT/install-linux.sh"
    fi

}

main

echo All Done!
echo Restarting shell
exec "$(which $SHELL)" -l
