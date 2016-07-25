# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# add sbin to path
export PATH="$PATH:/usr/local/sbin:/usr/sbin:/sbin"

# start x if on first tty
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
