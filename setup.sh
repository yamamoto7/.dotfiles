#!/bin/bash

# Dotfiles setup - Creates symbolic links only
# For Homebrew packages, run: ./setup_mac.sh

set -e

DOTFILES=(
    ".bash"
    ".bashrc"
    ".bash_profile"
    ".config/nvim"
    ".config/git"
    ".config/ghostty"
    ".gitconfig"
    ".gitignore_global"
    ".vimrc"
    ".ideavimrc"
    ".wezterm.lua"
    ".inputrc"
    ".terraformrc"
)

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

print_status() { echo -e "${BLUE}==>${NC} $1"; }
print_success() { echo -e "${GREEN}✓${NC} $1"; }
print_warning() { echo -e "${YELLOW}⚠${NC} $1"; }

print_status "Creating symbolic links..."

for file in "${DOTFILES[@]}"; do
    source_file="$(pwd)/${file}"
    target_link="$HOME/${file}"
    
    # Create parent directory if needed
    parent_dir=$(dirname "$target_link")
    if [ ! -d "$parent_dir" ]; then
        mkdir -p "$parent_dir"
    fi
    
    if [ ! -e "$target_link" ]; then
        if [ -e "$source_file" ]; then
            ln -sf "$source_file" "$target_link"
            print_success "Linked $file"
        else
            print_warning "Source not found: $file"
        fi
    else
        print_warning "Skipping (exists): $file"
    fi
done

echo ""
print_success "Dotfiles linked!"
echo ""
echo "Next: Run ./setup_mac.sh to install Homebrew packages"
