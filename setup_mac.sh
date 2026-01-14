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
    "eza"               # Modern ls
    "bat"               # Modern cat with syntax highlighting
    "fd"                # Modern find
    "ripgrep"           # Modern grep (rg)
    "zoxide"            # Smart cd
    "delta"             # Better git diff
    "btop"              # Modern top/htop
    "dust"              # Modern du
)

# ============================================
# Version managers
# ============================================
VERSION_MANAGERS=(
    "mise"              # Universal version manager (replaces anyenv/nodenv/pyenv)
)

# ============================================
# Development tools
# ============================================
DEV_TOOLS=(
    "lazygit"           # Git TUI
    "lazydocker"        # Docker TUI
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
install_packages "Version managers" "${VERSION_MANAGERS[@]}"
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
echo "Installed tools:"
echo "  Essential: bash, neovim, jq, gh"
echo ""
echo "  Modern CLI (with aliases):"
echo "    eza     → ls, ll, la, tree"
echo "    bat     → cat"
echo "    fd      → find"
echo "    fzf     → Ctrl+R history, gco, ff, cdf"
echo "    zoxide  → z <dir>"
echo "    ripgrep → rg"
echo "    delta   → git diff"
echo "    btop    → top"
echo "    dust    → du"
echo ""
echo "  Version manager:"
echo "    mise    → node, python, ruby, etc."
echo "             Usage: mise use node@lts python@3.12"
echo ""
echo "  Dev tools:"
echo "    lazygit, lazydocker"
echo ""
echo "Next steps:"
echo "  1. Run: source ~/.bash_profile"
echo "  2. (Optional) Switch to Bash 5: chsh -s /opt/homebrew/bin/bash"
echo ""
