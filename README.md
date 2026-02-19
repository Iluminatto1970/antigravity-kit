# Antigravity Kit - OpenCode Edition

> AI Agent templates with Skills, Agents, and Workflows adapted for OpenCode

## What's Included

| Component | Count | Description |
|-----------|-------|-------------|
| **Agents** | 20 | Specialist AI personas (frontend, backend, security, PM, QA, etc.) |
| **Skills** | 36+ | Domain-specific knowledge modules |
| **Commands** | 11 | Slash command procedures |

## Quick Start

### Prerequisites

- OpenCode CLI installed
- API key configured (run `/connect` in OpenCode)

### Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/Iluminatto1970/antigravity-kit.git
   cd antigravity-kit
   ```

2. Run the installer:
   ```bash
   # Linux/macOS
   ./install.sh

   # Windows (PowerShell)
   .\install.ps1 -Full

   # Windows (CMD)
   install.bat
   ```

3. Start OpenCode:
   ```bash
   opencode
   ```

## Auto Install

### Quick Download & Run

**Linux/macOS:**
```bash
curl -fsSL https://raw.githubusercontent.com/Iluminatto1970/antigravity-kit/main/install.sh -o install.sh && chmod +x install.sh && ./install.sh
```

**Windows (PowerShell):**
```powershell
irm https://raw.githubusercontent.com/Iluminatto1970/antigravity-kit/main/install.ps1 -o install.ps1; .\install.ps1 -Full
```

### Installer Options

| Option | Description |
|--------|-------------|
| Full Install | Install OpenCode + Setup structure |
| Setup Only | Setup structure (OpenCode already installed) |
| Install OpenCode | Install OpenCode CLI only |

### Manual Install

See [INSTALL.md](./INSTALL.md) for detailed instructions.

## Quick Reference

| Shortcut | Agent |
|----------|-------|
| `@b` | backend-specialist |
| `@f` | frontend-specialist |
| `@db` | debugger |
| `@ba` | database-architect |
| `@se` | security-auditor |
| `@de` | devops-engineer |
| `@m` | mobile-developer |
| `@g` | game-developer |
| `@p` | project-planner |
| `@o` | orchestrator |
| `@t` | test-engineer |
| `@q` | qa-automation-engineer |
| `@pe` | performance-optimizer |
| `@pt` | penetration-tester |
| `@so` | seo-specialist |
| `@da` | documentation-writer |
| `@ca` | code-archaeologist |
| `@pm` | product-manager |
| `@po` | product-owner |
| `@e` | explorer-agent |

## Commands

| Command | Description |
|---------|-------------|
| `/brainstorm` | Structured brainstorming |
| `/create` | Create new features |
| `/debug` | Debug workflow |
| `/deploy` | Deploy application |
| `/enhance` | Improve existing code |
| `/orchestrate` | Multi-agent coordination |
| `/plan` | Task breakdown |
| `/preview` | Preview changes |
| `/status` | Check project status |
| `/test` | Generate and run tests |
| `/ui-ux-pro-max` | Design with 50+ styles |

## Repository Structure

```
.
├── .agent/              # OpenCode config (agents, skills, workflows)
│   ├── agents/          # 20 Agent definitions
│   ├── skills/          # 36+ Skill modules
│   └── workflows/       # 11 Command workflows
├── agent/               # Agent markdown files (reference)
├── command/             # Command definitions (reference)
├── skill/               # Skill modules (reference)
├── .opencode/           # Symlinks for OpenCode discovery
├── AGENTS.md           # Agent documentation
└── README.md
```

## Documentation

- **[AGENTS.md](./AGENTS.md)** - Complete list of agents, commands, and skills with shortcuts
- **[GUIDE-PT.md](./GUIDE-PT.md)** - Portuguese guide
- **[GUIDE-ES.md](./GUIDE-ES.md)** - Spanish guide
- **[GUIDE-EN.md](./GUIDE-EN.md)** - English guide

## Examples

```bash
# Invoke backend specialist
@b "Criar API REST para autenticação"

# Invoke frontend specialist
@f "Criar componente de login"

# Debug an issue
@db "Login retorna erro 500"

# Plan a feature
/plan implementar sistema de notificações

# Create new feature
/create landing page com hero section
```

## License

MIT © Iluminatto1970
