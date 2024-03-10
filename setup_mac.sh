#!/bin/bash

# exec $SHELL -l

brew install neovim
# in neovim :PlugInstall
brew install anyenv
anyenv install --init
# anyenv install pyenv
anyenv install nodenv
# anyenv install rbenv
# anyenv install goenv
# anyenv install jenv
# anyenv install phpenv

brew install peco
brew install bash-completion
brew install jq
