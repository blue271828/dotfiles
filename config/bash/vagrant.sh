#!/bin/bash

if type vagrant >/dev/null 2>&1
then
  export VAGRANT_HOME=$XDG_DATA_HOME/vagrant
fi
