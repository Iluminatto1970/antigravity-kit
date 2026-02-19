# Installation Guide

## Quick Install

### Linux / macOS

```bash
# Download and run
curl -fsSL https://raw.githubusercontent.com/Iluminatto1970/antigravity-kit/main/install.sh -o install.sh
chmod +x install.sh
./install.sh
```

### Windows

```powershell
# Download and run
irm https://raw.githubusercontent.com/Iluminatto1970/antigravity-kit/main/install.ps1 -o install.ps1
.\install.ps1 -Full
```

Or use the batch file:
```cmd
install.bat
```

---

## Installation Options

### Option 1: Full Installation

```bash
# Linux/macOS
./install.sh

# Windows (PowerShell)
.\install.ps1 -Full

# Windows (CMD)
install.bat
```

This will:
1. Install OpenCode CLI
2. Setup project structure (.opencode/)
3. Create symlinks for agents and skills

---

### Option 2: Setup Only (OpenCode already installed)

```bash
# Linux/macOS
./install.sh --setup

# Windows
.\install.ps1 -Setup
```

---

### Option 3: Install OpenCode Only

```bash
# Linux/macOS
./install.sh --install

# Windows
.\install.ps1 -Install
```

---

## Manual Installation

### 1. Install OpenCode

**Linux/macOS:**
```bash
curl -fsSL https://opencode.ai/install | bash
```

**Windows:**
```powershell
# Using Chocolatey
choco install opencode

# Using Scoop
scoop install opencode
```

**Or download from:** https://github.com/anomalyco/opencode/releases

---

### 2. Setup Project Structure

```bash
# Create directories
mkdir -p .opencode/agents .opencode/skills

# Symlink agents
for agent in .agent/agents/*.md; do
    ln -sf "../../.agent/agents/$(basename "$agent")" ".opencode/agents/"
done

# Symlink skills
for skill in .agent/skills/*/; do
    ln -sf "../../.agent/skills/$(basename "$skill")" ".opencode/skills/"
done
```

---

## Usage

### Start OpenCode CLI
```bash
opencode
```

### Start OpenCode GUI
```bash
opencode --gui
```

### Quick Agent Invoke
```bash
@b "Create REST API"        # backend-specialist
@f "Create login form"      # frontend-specialist
@db "Fix login error"      # debugger
```

### Commands
```bash
/plan "project name"        # Create plan
/create "feature"           # Create feature
/debug "issue description" # Debug
```

---

## Troubleshooting

### Symlinks not working on Windows
Run PowerShell as Administrator or use Git Bash.

### OpenCode not found
Make sure OpenCode is in your PATH. Restart your terminal.

### Agents not detected
Run `opencode init` in your project directory.

---

## License

MIT © Iluminatto1970
