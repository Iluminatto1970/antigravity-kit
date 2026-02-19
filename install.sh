#!/bin/bash

set -e

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

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
echo ""

# Check if OpenCode is installed
check_opencode() {
    if command -v opencode &> /dev/null; then
        return 0
    fi
    return 1
}

# Install OpenCode
install_opencode() {
    echo -e "${YELLOW}Installing OpenCode...${NC}"
    
    if [[ "$OS" == "linux" || "$OS" == "macos" ]]; then
        curl -fsSL https://opencode.ai/install | bash
    elif [[ "$OS" == "windows" ]]; then
        choco install opencode -y || scoop install opencode
    else
        echo -e "${RED}Unsupported OS. Please install OpenCode manually.${NC}"
        exit 1
    fi
    
    echo -e "${GREEN}OpenCode installed successfully!${NC}"
}

# Setup project structure
setup_structure() {
    echo -e "${YELLOW}Setting up project structure...${NC}"
    
    SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
    cd "$SCRIPT_DIR"
    
    # Create .opencode directories
    mkdir -p .opencode/agents
    mkdir -p .opencode/skills
    
    # Create symlinks for agents
    echo -e "${BLUE}Creating agent symlinks...${NC}"
    for agent in .agent/agents/*.md; do
        if [ -f "$agent" ]; then
            agent_name=$(basename "$agent")
            ln -sf "../../.agent/agents/$agent_name" ".opencode/agents/"
            echo -e "  ✓ $agent_name"
        fi
    done
    
    # Create symlinks for skills
    echo -e "${BLUE}Creating skill symlinks...${NC}"
    for skill in .agent/skills/*/SKILL.md; do
        if [ -f "$skill" ]; then
            skill_name=$(basename "$(dirname "$skill")")
            ln -sf "../../.agent/skills/$skill_name" ".opencode/skills/"
            echo -e "  ✓ $skill_name"
        fi
    done
    
    echo -e "${GREEN}Project structure setup complete!${NC}"
}

# Configure OpenCode
configure_opencode() {
    echo -e "${YELLOW}Configuring OpenCode...${NC}"
    
    # Check if AGENTS.md exists in current directory
    if [ -f "AGENTS.md" ]; then
        echo -e "${GREEN}AGENTS.md found - OpenCode will auto-detect agents${NC}"
    fi
    
    echo -e "${GREEN}Configuration complete!${NC}"
}

# Main menu
show_menu() {
    echo ""
    echo -e "${BLUE}Select installation option:${NC}"
    echo "  1. Full Installation (OpenCode + Setup)"
    echo "  2. Setup Project Structure Only"
    echo "  3. Install OpenCode CLI"
    echo "  4. Open OpenCode GUI"
    echo "  5. Exit"
    echo ""
    echo -n "Enter option [1-5]: "
}

# Open GUI (if available)
open_gui() {
    echo -e "${YELLOW}Opening OpenCode GUI...${NC}"
    
    if command -v opencode &> /dev/null; then
        opencode --gui 2>/dev/null || opencode
    else
        echo -e "${RED}OpenCode not installed. Please install first.${NC}"
    fi
}

# Start CLI
start_cli() {
    echo -e "${YELLOW}Starting OpenCode CLI...${NC}"
    
    if command -v opencode &> /dev/null; then
        opencode
    else
        echo -e "${RED}OpenCode not installed. Please install first.${NC}"
    fi
}

# Main execution
main() {
    while true; do
        show_menu
        read -r choice
        
        case $choice in
            1)
                echo ""
                if ! check_opencode; then
                    install_opencode
                else
                    echo -e "${GREEN}OpenCode already installed${NC}"
                fi
                setup_structure
                configure_opencode
                echo ""
                echo -e "${GREEN}Installation complete! Run 'opencode' to start.${NC}"
                break
                ;;
            2)
                echo ""
                setup_structure
                configure_opencode
                break
                ;;
            3)
                echo ""
                install_opencode
                break
                ;;
            4)
                echo ""
                open_gui
                break
                ;;
            5)
                echo -e "${YELLOW}Exiting...${NC}"
                exit 0
                ;;
            *)
                echo -e "${RED}Invalid option. Please try again.${NC}"
                ;;
        esac
    done
}

# Run as admin check (optional)
if [ "$1" == "--admin" ]; then
    if [ "$EUID" -ne 0 ]; then
        echo -e "${YELLOW}Running with sudo...${NC}"
        exec sudo "$0" "$@"
    fi
fi

main "$@"
