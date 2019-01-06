#!/bin/bash

if type brew &>/dev/null && type pyenv &>/dev/null
then
    alias brew="env PATH=${PATH/$(pyenv root)\/shims:/} brew"
fi
