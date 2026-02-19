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

echo -e "${BLUE}╔═══════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║   Antigravity Kit - OpenCode Installer          ║${NC}"
echo -e "${BLUE}╚═══════════════════════════════════════════════════╝${NC}"
echo ""

# Detect OS
detect_os() {
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        echo "linux"
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        echo "macos"
    elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
        echo "windows"
    else
        echo "unknown"
    fi
}

OS=$(detect_os)
echo -e "${YELLOW}Detected OS: $OS${NC}"

# Check if OpenCode is installed
check_opencode() {
    if command -v opencode &> /dev/null; then
        return 0
    fi
    return 1
}

# Install OpenCode CLI
install_opencode() {
    echo -e "${YELLOW}Installing OpenCode CLI...${NC}"
    
    if [[ "$OS" == "linux" || "$OS" == "macos" ]]; then
        curl -fsSL https://opencode.ai/install | bash
    elif [[ "$OS" == "windows" ]]; then
        echo -e "${YELLOW}Installing OpenCode on Windows...${NC}"
        choco install opencode -y 2>/dev/null || echo -e "${RED}Please install OpenCode manually: https://opencode.ai${NC}"
    else
        echo -e "${RED}Unsupported OS. Please install OpenCode manually.${NC}"
        return 1
    fi
    
    echo -e "${GREEN}OpenCode CLI ready!${NC}"
}

# Setup structure in current project
setup_project() {
    local target_dir="${1:-$SCRIPT_DIR}"
    cd "$target_dir"
    
    echo -e "${YELLOW}Setting up Antigravity Kit in: $(pwd)${NC}"
    
    # Check if running from antigravity-kit repo
    if [ -d ".claude" ]; then
        echo -e "${CYAN}Setting up .opencode/ structure...${NC}"
        
        # Create .opencode directories
        mkdir -p .opencode/agents
        mkdir -p .opencode/skills
        
        # Create symlinks for agents
        echo -e "${BLUE}Creating agent symlinks...${NC}"
        for agent in .claude/agents/*.md; do
            if [ -f "$agent" ]; then
                agent_name=$(basename "$agent")
                ln -sf "../.claude/agents/$agent_name" ".opencode/agents/" 2>/dev/null || true
                echo -e "  ✓ $agent_name"
            fi
        done
        
        # Create symlinks for skills
        echo -e "${BLUE}Creating skill symlinks...${NC}"
        for skill in .claude/skills/*/; do
            if [ -d "$skill" ]; then
                skill_name=$(basename "$skill")
                ln -sf "../.claude/skills/$skill_name" ".opencode/skills/" 2>/dev/null || true
                echo -e "  ✓ $skill_name"
            fi
        done
        
        # Create .agent symlink for compatibility
        if [ ! -L ".agent" ] && [ ! -d ".agent" ]; then
            ln -s .claude .agent
            echo -e "  ✓ .agent (symlink → .claude)"
        fi
        
        echo -e "${GREEN}Setup complete!${NC}"
    else
        echo -e "${RED}Error: .claude/ directory not found${NC}"
        echo -e "${YELLOW}This doesn't appear to be the Antigravity Kit repository${NC}"
        return 1
    fi
}

# Install to external project
install_to_project() {
    local target_dir="$1"
    
    if [ -z "$target_dir" ]; then
        echo -e "${RED}Please specify a target directory${NC}"
        return 1
    fi
    
    if [ ! -d "$target_dir" ]; then
        echo -e "${RED}Directory not found: $target_dir${NC}"
        return 1
    fi
    
    echo -e "${YELLOW}Installing to: $target_dir${NC}"
    
    # Copy .claude/ directory
    cp -r "$SCRIPT_DIR/.claude" "$target_dir/"
    echo -e "${GREEN}✓ Copied .claude/${NC}"
    
    # Create .agent symlink
    cd "$target_dir"
    ln -sf .claude .agent 2>/dev/null || true
    echo -e "${GREEN}✓ Created .agent symlink${NC}"
    
    # Setup .opencode/
    mkdir -p .opencode/agents
    mkdir -p .opencode/skills
    
    for agent in .claude/agents/*.md; do
        if [ -f "$agent" ]; then
            ln -sf "../.claude/agents/$(basename "$agent")" ".opencode/agents/" 2>/dev/null || true
        fi
    done
    
    for skill in .claude/skills/*/; do
        if [ -d "$skill" ]; then
            ln -sf "../.claude/skills/$(basename "$skill")" ".opencode/skills/" 2>/dev/null || true
        fi
    done
    
    echo -e "${GREEN}✓ Created .opencode/ structure${NC}"
    echo -e "${GREEN}Installation complete!${NC}"
}

# Show menu
show_menu() {
    echo ""
    echo -e "${BLUE}Select option:${NC}"
    echo "  1. Full Install (OpenCode CLI + Setup)"
    echo "  2. Setup in current directory"
    echo "  3. Install to external project"
    echo "  4. Install OpenCode CLI only"
    echo "  5. Open OpenCode GUI"
    echo "  6. Exit"
    echo ""
    echo -n "Enter [1-6]: "
}

# Main
main() {
    # Auto-detect if running from antigravity-kit repo
    if [ -d "$SCRIPT_DIR/.claude" ]; then
        # Running from repo - auto-setup
        if [ -d "$SCRIPT_DIR/.opencode" ]; then
            echo -e "${GREEN}Antigravity Kit already configured!${NC}"
        else
            setup_project "$SCRIPT_DIR"
        fi
        
        if [ "$1" == "--help" ] || [ "$1" == "-h" ]; then
            show_menu
            read -r choice
        else
            choice=1
        fi
    else
        show_menu
        read -r choice
    fi
    
    case $choice in
        1)
            echo ""
            if ! check_opencode; then
                install_opencode
            else
                echo -e "${GREEN}OpenCode already installed${NC}"
            fi
            setup_project
            echo ""
            echo -e "${GREEN}✓ Installation complete! Run 'opencode' to start${NC}"
            ;;
        2)
            setup_project
            ;;
        3)
            echo ""
            echo -n "Enter target project path: "
            read -r target
            install_to_project "$target"
            ;;
        4)
            install_opencode
            ;;
        5)
            if check_opencode; then
                opencode --gui 2>/dev/null || opencode
            else
                echo -e "${RED}OpenCode not installed. Run option 4 first.${NC}"
            fi
            ;;
        6)
            echo -e "${YELLOW}Goodbye!${NC}"
            exit 0
            ;;
        *)
            echo -e "${RED}Invalid option${NC}"
            ;;
    esac
}

# Handle direct arguments
case "${1:-}" in
    --setup|-s)
        setup_project "${2:-}"
        ;;
    --install|-i)
        install_to_project "$2"
        ;;
    --opencode|-o)
        install_opencode
        ;;
    *)
        main "$@"
        ;;
esac
