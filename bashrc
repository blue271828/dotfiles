#!/bin/bash

# Support XDG user directories
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_LOCAL_HOME=$HOME/.local
export XDG_DATA_HOME=$XDG_LOCAL_HOME/share

# Load any shell scripts if files exist.
for script in $(ls -d $XDG_CONFIG_HOME/bash/*.sh); do
  source $script
done
