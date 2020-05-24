#!/bin/bash

if type global >/dev/null 2>&1
then
  export GTAGSCONF=$XDG_CONFIG_HOME/global/globalrc
fi
