#!/bin/sh

if type go >/dev/null 2>&1
then
  export GOPATH=$XDG_LOCAL_HOME
  export PATH=$GOPATH/bin:$PATH
fi
