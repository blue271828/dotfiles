#!/bin/bash

if type ipython &>/dev/null; then
  export IPYTHONDIR="$XDG_CONFIG_HOME"/jupyter
fi

if type jupyter &>/dev/null; then
  export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter
fi
