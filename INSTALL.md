# Installation Guide

## Installation Types

### 1. Per Project (Recommended)

Install directly in your project directory.

```bash
# Linux/macOS
./install.sh setup

# Windows PowerShell
.\install.ps1 setup

# Windows CMD
install.bat setup C:\path\to\project
```

This creates:
- `.claude/` - Agents, skills, workflows
- `.agent/` - Symlink to `.claude/` (for compatibility)
- `.opencode/` - Symlinks for OpenCode

---

### 2. Global Installation

Install once, use in multiple projects.

```bash
# Linux/macOS
./install.sh global

# Windows PowerShell
.\install.ps1 global

# Windows CMD
install.bat global
```

Files are copied to: `~/.ag-kit/`

**Then in each project:**
```bash
# Linux/macOS
ln -s ~/.ag-kit/.claude .claude
ln -s ~/.ag-kit/.opencode .opencode

# Windows (run as Admin)
mklink /D .claude %USERPROFILE%\.ag-kit\.claude
mklink /D .opencode %USERPROFILE%\.ag-kit\.opencode
```

---

## Install OpenCode CLI

```bash
# Linux/macOS
./install.sh install

# Windows
.\install.ps1 install

# Or manually
curl -fsSL https://opencode.ai/install | bash  # Linux/macOS
choco install opencode                          # Windows
```

---

## Interactive Mode

Just run the installer without arguments:

```bash
# Linux/macOS
./install.sh

# Windows
.\install.ps1
```

---

## Commands Reference

| Command | Description |
|---------|-------------|
| `./install.sh setup` | Setup in current project |
| `./install.sh setup /path/to/project` | Setup in specific project |
| `./install.sh global` | Install globally |
| `./install.sh install` | Install OpenCode CLI |
| `./install.sh gui` | Open OpenCode GUI |
| `./install.sh remove` | Remove from project |

---

## Environment Variables

| Variable | Default | Description |
|----------|---------|-------------|
| `AG_KIT_DIR` | `~/.ag-kit` | Global installation directory |

---

## Troubleshooting

### Symlinks not working on Windows

Run PowerShell as Administrator or use Git Bash.

### OpenCode not found

Make sure OpenCode is in your PATH. Restart your terminal.

### Already exists error

Use `-f` or `--force` to overwrite:
```bash
./install.sh setup -f
```

---

## License

MIT © Iluminatto1970
