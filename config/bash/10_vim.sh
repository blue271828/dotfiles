#!/bin/bash

if type vim >/dev/null 2>&1
then
    mkdir -p "$XDG_CACHE_HOME"/vim/{undo,swap,backup}
    export VIMINIT=":source $XDG_CONFIG_HOME"/vim/vimrc
fi
