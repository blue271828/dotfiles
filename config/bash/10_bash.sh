#!/bin/bash


PROMPT_COMMAND=__prompt_command

__prompt_command() {
  local EXIT="$?"

  local RCol='\[\e[0m\]'
  local Red='\[\e[31m\]'
  local Gre='\[\e[32m\]'
  local Yel='\[\e[33m\]'

  if [ $EXIT == 0 ]; then
    PS1="${Gre}${EXIT} ->"
  else
    PS1="${Red}${EXIT} ->"
  fi

  PS1+=" ${Gre}\u@\H:${Yel}\w${RCol}\n\\$ \[$(tput sgr0)\]"
}


export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc


[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
