#!/bin/bash

FILE=/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc
if [ -f "$FILE" ]; then
    source $FILE
    source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc
fi
