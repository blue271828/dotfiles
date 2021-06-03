#!/bin/bash

if type pyenv >/dev/null 2>&1
then
  export PYENV_ROOT="$XDG_DATA_HOME"/pyenv
  export PATH="$PYENV_ROOT"/bin:$PATH
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
fi
