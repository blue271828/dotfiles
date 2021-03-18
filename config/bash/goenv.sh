#!/bin/bash

if type goenv >/dev/null 2>&1
then
  export GOENV_ROOT="$XDG_DATA_HOME"/goenv
  export PATH="$GOENV_ROOT"/bin:$PATH
  eval "$(goenv init -)"
fi
