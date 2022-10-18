# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
# if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    # if [ -f "$HOME/.bashrc" ]; then
	# . "$HOME/.bashrc"
    # fi
# fi

# if running zsh
if [ -n "$ZSH_VERSION" ]; then
  # include .aliases and .functions if they exist
  if [ -f "$HOME/dotfiles/.aliases" ]; then
    . "$HOME/dotfiles/.aliases"
  fi

  if [ -f "$HOME/dotfiles/.functions" ]; then
    . "$HOME/dotfiles/.functions"
  fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
. "$HOME/.cargo/env"

PATH=$PATH:/home/mercurial/010editor;export PATH; # ADDED BY INSTALLER - DO NOT EDIT OR DELETE THIS COMMENT - 87FF8EFC-483D-BCAA-D67D-735CF60410D1 ED148229-535F-0CBA-F139-35373555D0BE
