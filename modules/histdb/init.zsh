#!/usr/bin/env zsh

if is-darwin; then
    # replace with tabs on osx according to instructions
    HISTDB_TABULATE_CMD=(sed -e $'s/\x1f/\t/g')
fi

source "${0:h}/external/sqlite-history.zsh" || return 1
autoload -Uz add-zsh-hook
