#!/bin/bash

if type nodenv >/dev/null 2>&1
then
  export NODENV_ROOT="$XDG_DATA_HOME"/nodenv
  eval "$(nodenv init -)"
fi

if type node >/dev/null 2>&1
then
  export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
  export PATH="$PATH:$(npm bin --global 2>/dev/null)"
fi
