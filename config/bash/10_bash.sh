#!/bin/bash

export PS1='\[\e[32m\]\u@\H \e[33m\w\[\e[0m\]\n\\$ \[$(tput sgr0)\]'

export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
