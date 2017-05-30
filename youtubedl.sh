#!/bin/bash

###################################
# Youtube song extractor by KiRoFF#
###################################

command -v youtube-dl >/dev/null 2>&1 || { echo >&2 "I require youtube-dl but it's not installed.  Aborting. You can always do sudo apt-get install youtube-dl, right ;)"; exit 1; }

if [ $# -ne 1 ]
then
    echo "Script usage: $(basename $0) <Youtube video URL>"
    exit 1
fi

youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 $1
