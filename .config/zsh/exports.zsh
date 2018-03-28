# Locales
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# shell
export SHELL=/bin/zsh

# brew CASK
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# disable stupid ._ and dsstore files
export COPY_EXTENDED_ATTRIBUTES_DISABLE=true
export COPYFILE_DISABLE=true

# editor
export EDITOR="/usr/local/bin/micro"
export VISUAL="/usr/local/bin/nvim"

# disable auto titling fixes tmux window
export DISABLE_AUTO_TITLE=true

# grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'

# pager
export PAGER="less"
export LESS="-R"
export LC_CTYPE=$LANG

# nnn
export NNN_OPENER="open"
#export NNN_DE_FILE_MANAGER="finder"
export NNN_COPIER="/usr/bin/pbcopy"
export NNN_QUOTE_ON=1

# cheat
export DEFAULT_CHEAT_DIR='~/.config/cheats'
export CHEATCOLORS=true