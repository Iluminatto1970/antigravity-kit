# Antigravity Kit - OpenCode Edition

> AI Agent templates with Skills, Agents, and Workflows adapted for OpenCode

<div align="center">
    <a href="https://unikorn.vn/p/antigravity-kit?ref=unikorn" target="_blank"><img src="https://unikorn.vn/api/widgets/badge/antigravity-kit?theme=dark" alt="Antigravity Kit" style="width: 210px; height: 54px;" width="210" height="54" /></a>
</div>

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

3. Start Openbash
   opencode
   ```

## Quick Reference

Code:
   ```| Shortcut | Agent |
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
├── README.md
└── INSTALL.md          # Installation guide
```

## Documentation

- **[AGENTS.md](./AGENTS.md)** - Complete list of agents, commands, and skills with shortcuts
- **[GUIDE-PT.md](./GUIDE-PT.md)** - Portuguese guide
- **[GUIDE-ES.md](./GUIDE-ES.md)** - Spanish guide
- **[GUIDE-EN.md](./GUIDE-EN.md)** - English guide
- **[INSTALL.md](./INSTALL.md)** - Installation guide

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
