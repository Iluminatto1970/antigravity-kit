# Antigravity Kit

> AI Agent templates for Claude, Gemini, ChatGPT & OpenCode

<div align="center">
    <a href="https://unikorn.vn/p/antigravity-kit?ref=unikorn" target="_blank"><img src="https://unikorn.vn/api/widgets/badge/antigravity-kit?theme=dark" alt="Antigravity Kit" style="width: 210px; height: 54px;" width="210" height="54" /></a>
</div>

## What's Included

| Component | Count | Description |
|-----------|-------|-------------|
| **Agents** | 20 | Specialist AI personas |
| **Skills** | 36+ | Domain-specific knowledge modules |
| **Commands** | 11 | Slash command procedures |

---

## Project Structure

```
antigravity-kit/
├── .claude/           # For Claude, Gemini, ChatGPT (original)
│   ├── agents/        # 20 AI agent definitions
│   ├── skills/        # 36+ skill modules
│   └── workflows/     # 11 command workflows
│
├── .opencode/         # For OpenCode (specific version)
│   ├── agents/        # Symlinks to .claude/agents
│   └── skills/        # Symlinks to .claude/skills
│
├── install.sh         # Linux/macOS installer
├── install.ps1        # Windows PowerShell installer
├── install.bat        # Windows CMD installer
│
├── AGENTS.md         # Quick reference
├── GUIDE-*.md        # Full guides (PT/EN/ES)
└── INSTALL.md        # Installation guide
```

---

## Choose Your Platform

| Platform | Directory | How to Use |
|----------|-----------|------------|
| **Claude/Gemini** | `.claude/` | Copy `.claude/` folder to your project |
| **OpenCode** | `.opencode/` | Use with OpenCode CLI |

---

## Quick Install

### OpenCode

```bash
# Linux/macOS
./install.sh

# Windows
.\install.ps1 -Full
```

### Claude/Gemini/ChatGPT

Copy the `.claude/` folder to your project root.

---

## Quick Reference

### Agents

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

### Commands

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

---

## Documentation

- **[AGENTS.md](./AGENTS.md)** - Quick reference
- **[GUIDE-PT.md](./GUIDE-PT.md)** - Portuguese guide
- **[GUIDE-ES.md](./GUIDE-ES.md)** - Spanish guide
- **[GUIDE-EN.md](./GUIDE-EN.md)** - English guide
- **[INSTALL.md](./INSTALL.md)** - Installation guide

---

## License

MIT © Iluminatto1970
