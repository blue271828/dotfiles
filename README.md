# dotfiles

Before setup this dotfiles repository. You need to have installed Homebrew.
And install ghq



## How to setup

Download this repository to `~/.local/src/github.com/blue271828/dotfiles` .

```bash
$ cd
$ mkdir -p .local/src/github.com/blue271828/
$ cd .local/src/github.com/blue271828/
$ git clone https://github.com/blue271828/dotfiles.git
```

Create symblinks as the followings.

```bash
$ cd
$ ln -s .local/src/github.com/blue271828/dotfiles/config .config
$ ln -s .local/src/github.com/blue271828/dotfiles/bashrc .bashrc
```

Add `.bash_profile` as entrypoint.

```bash
$ cd
$ cat << EOS > .bash_profile
#!/bin/bash

if [ -r ~/.bashrc ]; then
   source ~/.bashrc
fi
EOS
```
