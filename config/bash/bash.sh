#!/bin/bash


PROMPT_COMMAND=__prompt_command

__prompt_command() {
  local EXIT="$?"

  local RCol='\[\e[0m\]'
  local Red='\[\e[31m\]'
  local Gre='\[\e[32m\]'
  local Yel='\[\e[33m\]'
  local Cyn='\[\e[36m\]'

  PS1="${Cyn}\u@\H:${Yel}\w "

  if [ $EXIT == 0 ]; then
    PS1+="${Gre}(${EXIT})"
  else
    PS1+="${Red}(${EXIT})"
  fi

  PS1+="\n${RCol}\\$ \[$(tput sgr0)\]"
}


export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc
export LANG="en_US.UTF-8"


[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
