#!/usr/bin/env bash
echo Brewing

set -e

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle
echo "hahah"