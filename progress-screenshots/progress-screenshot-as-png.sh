#!/usr/bin/env bash
#

set -e

# you need: osx mavericks 1.9.2, an internet connection, brew, webkit2png
# if this is your first time, you might need to install homebrew, see http://brew.sh
# then you might need to `brew install webkit2png` or `brew update && brew upgrade webkit2png`

url="http://www.elephant-empire.com/"

ping -c1 google.com >> /dev/null 2>&1 &&

which webkit2png >> /dev/null 2>&1 &&

webkit2png -W 1600 -H 900 -F --datestamp --delay=3 --js='window.setTimeout(function() {window.scrollTo(0,document.body.scrollHeight);}, 100);window.setTimeout(function() {window.scrollTo(0,0);}, 400)' "$url" &&

echo "done getting screenshot for $url"

exit 0
