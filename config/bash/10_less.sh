#!/bin/bash

if type less >/dev/null 2>&1
then
  mkdir -p "${XDG_CACHE_HOME}/less"
  export LESSHISTFILE="${XDG_CACHE_HOME}/less/history"
fi
