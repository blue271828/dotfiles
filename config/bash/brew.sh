#!/bin/bash

if type brew &>/dev/null && type pyenv &>/dev/null
then
	export PATH="/usr/local/sbin:$PATH" 

    alias brew="env PATH=${PATH/$(pyenv root)\/shims:/} brew"
fi
