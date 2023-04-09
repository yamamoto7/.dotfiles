#!/bin/bash

DOTFILES_DIR="."
DOTFILES=(".bash" ".bashrc" ".bash_profile" ".config/nvim" ".gitconfig" ".vimrc" ".wezterm.lua")

function check_file_exists() {
    for file in "${DOTFILES[@]}"; do
        local home_file="$HOME/${file}"
        if [ -e "$home_file" ]; then
            echo "Error: $home_file already exists."
            exit 1
        fi
    done
}

function make_symbolic_links() {
    for file in "${DOTFILES[@]}"; do
        local source_file="$(pwd)/${file}"
        local target_link="$HOME/${file}"
        echo '🔗 Linking file' "$source_file" 'to' "$target_link"
        ln -sf "$source_file" "$target_link"
    done
}

check_file_exists
make_symbolic_links

