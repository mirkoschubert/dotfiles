#!/bin/zsh

# Default Binaries
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/local:/usr/local/sbin"

# Homebrew
export PATH="$PATH:/opt/local/bin:/opt/local/sbin"

# OpenSSL
export PATH="$PATH:/usr/local/opt/openssl/bin"

# Databases
export PATH="$PATH:/usr/local/mysql/bin" # MySQL

# Programing Languages
export PATH="$PATH:/usr/local/bin/go" #go
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"
#export PATH="$PATH:$HOME/.rbenv/bin" #rbenv

# Tools
export PATH="$PATH:/usr/local/git/bin" # Git
export PATH="$PATH:$HOME/.composer/vendor/bin" # Composer
export PATH="$PATH:$HOME/.meteor" # Meteor
export PATH="$PATH:/Library/Application Support/GoodSync" # GoodSync

# MAN Paths
export MANPATH="/usr/local/openssl/ssl/man:$MANPATH" # OpenSSL MAN