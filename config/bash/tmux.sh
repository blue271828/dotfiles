#!/bin/bash

if type tmux >/dev/null 2>&1
then
  alias tmux='tmux -f $XDG_CONFIG_HOME/tmux/tmux.conf'
fi
