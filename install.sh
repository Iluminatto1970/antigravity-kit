#!/bin/bash

set -e

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m'

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
AG_KIT_DIR="${AG_KIT_DIR:-$HOME/.ag-kit}"

show_help() {
    echo -e "${BLUE}Antigravity Kit Installer${NC}"
    echo ""
    echo "Usage: $0 [command] [options]"
    echo ""
    echo "Commands:"
    echo "  setup [path]     Setup in project (default: current dir)"
    echo "  global           Install globally"
    echo "  install          Install OpenCode CLI"
    echo "  gui              Open OpenCode GUI"
    echo "  help             Show this help"
    echo ""
    echo "Options:"
    echo "  -f, --force      Force overwrite"
    echo "  -r, --remove     Remove installation"
}

# Install OpenCode CLI
install_opencode() {
    echo -e "${YELLOW}Installing OpenCode CLI...${NC}"
    
    if [[ "$OSTYPE" == "linux-gnu"* ]] || [[ "$OSTYPE" == "darwin"* ]]; then
        curl -fsSL https://opencode.ai/install | bash
    elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
        choco install opencode -y 2>/dev/null || echo -e "${RED}Windows: run as admin or install manually${NC}"
    else
        echo -e "${RED}Unsupported OS. Install manually: https://opencode.ai${NC}"
        return 1
    fi
    echo -e "${GREEN}✓ OpenCode CLI ready!${NC}"
}

# Setup in project
setup_project() {
    local target_dir="${1:-.}"
    local force="$2"
    
    cd "$target_dir"
    echo -e "${CYAN}Setting up in: $(pwd)${NC}"
    
    # Check for .claude or .agent
    if [ -d "$SCRIPT_DIR/.claude" ]; then
        local src_dir="$SCRIPT_DIR/.claude"
    elif [ -d "$AG_KIT_DIR/.claude" ]; then
        local src_dir="$AG_KIT_DIR/.claude"
    else
        echo -e "${RED}Error: .claude not found${NC}"
        return 1
    fi
    
    # Copy .claude/
    if [ "$force" = "true" ] || [ ! -d ".claude" ]; then
        cp -r "$src_dir" .claude
        echo -e "${GREEN}✓ Copied .claude/${NC}"
    else
        echo -e "${YELLOW}! .claude already exists (use -f to overwrite)${NC}"
    fi
    
    # Create .agent symlink
    if [ ! -L ".agent" ] && [ ! -d ".agent" ]; then
        ln -s .claude .agent
        echo -e "${GREEN}✓ Created .agent symlink${NC}"
    fi
    
    # Setup .opencode/
    mkdir -p .opencode/agents .opencode/skills
    
    for agent in .claude/agents/*.md; do
        [ -f "$agent" ] && ln -sf "../.claude/agents/$(basename "$agent")" .opencode/agents/ 2>/dev/null || true
    done
    
    for skill in .claude/skills/*/; do
        [ -d "$skill" ] && ln -sf "../.claude/skills/$(basename "$skill")" .opencode/skills/ 2>/dev/null || true
    done
    
    echo -e "${GREEN}✓ Setup complete!${NC}"
}

# Install globally
install_global() {
    echo -e "${YELLOW}Installing globally to: $AG_KIT_DIR${NC}"
    
    # Create global directory
    mkdir -p "$AG_KIT_DIR"
    
    # Copy files
    cp -r "$SCRIPT_DIR/.claude" "$AG_KIT_DIR/"
    cp -r "$SCRIPT_DIR/.opencode" "$AG_KIT_DIR/" 2>/dev/null || true
    
    # Add to PATH hint
    echo -e "${GREEN}✓ Installed to $AG_KIT_DIR${NC}"
    echo -e "${CYAN}To use globally in a project:${NC}"
    echo "  ln -s $AG_KIT_DIR/.claude your-project/.claude"
    echo "  ln -s $AG_KIT_DIR/.opencode your-project/.opencode"
}

# Remove installation
remove_installation() {
    local target_dir="${1:-.}"
    cd "$target_dir"
    
    rm -rf .claude .agent .opencode 2>/dev/null
    echo -e "${GREEN}✓ Removed from $(pwd)${NC}"
}

# Main
case "${1:-}" in
    setup|-s|--setup)
        setup_project "${2:-.}" "${3:-}"
        ;;
    global|-g|--global)
        install_global
        ;;
    install|-i|--install)
        install_opencode
        ;;
    gui|-o|--gui)
        command -v opencode &>/dev/null && opencode --gui || echo -e "${RED}OpenCode not installed${NC}"
        ;;
    remove|-r|--remove)
        remove_installation "${2:-.}"
        ;;
    help|-h|--help)
        show_help
        ;;
    "")
        # Interactive mode
        echo -e "${BLUE}╔═══════════════════════════════════════════╗${NC}"
        echo -e "${BLUE}║   Antigravity Kit - Installer            ║${NC}"
        echo -e "${BLUE}╚═══════════════════════════════════════════╝${NC}"
        echo ""
        echo "  1. Setup in current project"
        echo "  2. Setup in specific project"
        echo "  3. Install globally"
        echo "  4. Install OpenCode CLI"
        echo "  5. Open GUI"
        echo "  6. Exit"
        echo ""
        read -p "Select [1-6]: " choice
        
        case $choice in
            1) setup_project "." ;;
            2) read -p "Path: " path; setup_project "$path" ;;
            3) install_global ;;
            4) install_opencode ;;
            5) command -v opencode &>/dev/null && opencode --gui || echo "OpenCode not installed" ;;
            6) exit 0 ;;
        esac
        ;;
    *)
        show_help
        ;;
esac
