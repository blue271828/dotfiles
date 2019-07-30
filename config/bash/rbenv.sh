#!/bin/bash

if type rbenv >/dev/null 2>&1
then
  export RBENV_ROOT="$XDG_DATA_HOME"/rbenv
  export PATH="$RBENV_ROOT"/bin:$PATH
  eval "$(rbenv init -)"
fi
