#!/bin/bash

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

print_status() { echo -e "${BLUE}==>${NC} $1"; }
print_success() { echo -e "${GREEN}✓${NC} $1"; }
print_warning() { echo -e "${YELLOW}⚠${NC} $1"; }

# ============================================
# Homebrew
# ============================================
if ! command -v brew &> /dev/null; then
    print_status "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
    print_success "Homebrew installed"
else
    print_success "Homebrew already installed"
fi

# ============================================
# Essential tools
# ============================================
ESSENTIALS=(
    "bash"              # Bash 5.x (macOS default is 3.2)
    "bash-completion"   # Bash completion
    "neovim"            # Editor
    "jq"                # JSON processor
    "gh"                # GitHub CLI
)

# ============================================
# Modern CLI replacements
# ============================================
MODERN_CLI=(
    "fzf"               # Fuzzy finder
    "eza"               # ls
    "bat"               # cat with syntax highlighting
    "fd"                # find
    "ripgrep"           # grep (rg)
    "zoxide"            # Smart cd
    "delta"             # Better git diff
    "btop"              # top/htop
    "dust"              # du
)

# ============================================
# Development tools
# ============================================
DEV_TOOLS=(
    "mise"
    "lazygit"
    "lazydocker"
)

# ============================================
# Install function
# ============================================
install_packages() {
    local category=$1
    shift
    local packages=("$@")
    
    print_status "Installing $category..."
    for package in "${packages[@]}"; do
        if brew list "$package" &> /dev/null; then
            print_success "$package already installed"
        else
            print_status "Installing $package..."
            brew install "$package"
            print_success "$package installed"
        fi
    done
    echo ""
}

# ============================================
# Main installation
# ============================================
print_status "Starting macOS setup..."
echo ""

install_packages "Essential tools" "${ESSENTIALS[@]}"
install_packages "Modern CLI tools" "${MODERN_CLI[@]}"
install_packages "Development tools" "${DEV_TOOLS[@]}"

# ============================================
# Post-install setup
# ============================================

# fzf keybindings
if [ -f "$(brew --prefix)/opt/fzf/install" ]; then
    print_status "Setting up fzf keybindings..."
    "$(brew --prefix)/opt/fzf/install" --key-bindings --completion --no-update-rc --no-bash --no-zsh --no-fish
    print_success "fzf configured"
fi

# Bash 5 setup
BREW_BASH="/opt/homebrew/bin/bash"
if [ -f "$BREW_BASH" ]; then
    if ! grep -q "$BREW_BASH" /etc/shells 2>/dev/null; then
        print_status "Adding Bash 5 to /etc/shells (requires sudo)..."
        echo "$BREW_BASH" | sudo tee -a /etc/shells > /dev/null
        print_success "Bash 5 added to /etc/shells"
    fi
    
    if [ "$SHELL" != "$BREW_BASH" ]; then
        print_warning "To use Bash 5 as default shell, run:"
        echo "    chsh -s $BREW_BASH"
    fi
fi

# ============================================
# Summary
# ============================================
echo ""
echo "=========================================="
echo -e "${GREEN}macOS Setup Complete!${NC}"
echo "=========================================="
echo ""
echo "Next steps:"
echo "  1. Run: source ~/.bash_profile"
echo "  2. Switch to Bash 5: chsh -s /opt/homebrew/bin/bash"
echo ""
