#!/bin/sh

if type ghq >/dev/null 2>&1
then
  export GHQ_ROOT=$XDG_LOCAL_HOME/src
fi
