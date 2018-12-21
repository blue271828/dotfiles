#!/bin/sh

if type ghq &>/dev/null && type fzf &>/dev/null; then
  repo() {
    local target_repo=$(ghq list | fzf --reverse)
    
    if [ -n "$target_repo" ]
    then
      cd $(ghq root)/$target_repo
    fi
  }
fi
