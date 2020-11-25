#!/bin/bash

if [ -e /usr/local/opt/openssl@1.1/bin/openssl ]
then
  # For compilers to find openssl@1.1
  export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
  export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"

  # For pkg-config to find openssl@1.1
  export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"
fi
