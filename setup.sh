#!/bin/bash

DOTFILES_DIR="."
DOTFILES=(".bash" ".bashrc" ".bash_profile" ".config/nvim" ".gitconfig" "gitignore_global" ".vimrc" ".wezterm.lua" ".inputrc")

function check_file_exists() {
    for file in "${DOTFILES[@]}"; do
        local home_file="$HOME/${file}"
        if [ -e "$home_file" ]; then
            echo "Skipping: $home_file already exists."
            continue
        fi
    done
}

function make_symbolic_links() {
    for file in "${DOTFILES[@]}"; do
        local source_file="$(pwd)/${file}"
        local target_link="$HOME/${file}"
        if [ ! -e "$target_link" ]; then
            echo '🔗 Linking file' "$source_file" 'to' "$target_link"
            ln -sf "$source_file" "$target_link"
        else
            echo 'Skipping existing file:' "$target_link"
        fi
    done
}

check_file_exists
make_symbolic_links

