# vim: syn=sh

# ~/.bashrc: executed by bash(1) for non-login shells.

if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# If running interactively, then:
if [ "$PS1" ]; then

    # configure aliases and environment
    for f in $HOME/.config/bash/*.sh ; do
        source "$f"
    done

fi

