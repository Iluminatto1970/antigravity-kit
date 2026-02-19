# Antigravity Kit - Complete Guide for OpenCode

> Comprehensive tutorial covering all agents, commands, and skills

---

## Quick Reference

| Shortcut | Agent | Description |
|----------|-------|-------------|
| `@b` | backend-specialist | Backend development |
| `@f` | frontend-specialist | Frontend/UI development |
| `@db` | debugger | Debugging & problem-solving |
| `@ba` | database-architect | Database design |
| `@se` | security-auditor | Security auditing |
| `@de` | devops-engineer | DevOps & deployment |
| `@m` | mobile-developer | Mobile development |
| `@g` | game-developer | Game development |
| `@p` | project-planner | Project planning |
| `@o` | orchestrator | Multi-agent coordination |
| `@t` | test-engineer | Testing & QA |
| `@q` | qa-automation-engineer | QA automation |
| `@pe` | performance-optimizer | Performance optimization |
| `@pt` | penetration-tester | Penetration testing |
| `@so` | seo-specialist | SEO optimization |
| `@da` | documentation-writer | Documentation |
| `@ca` | code-archaeologist | Legacy code analysis |
| `@pm` | product-manager | Product management |
| `@po` | product-owner | Product ownership |
| `@e` | explorer-agent | Codebase exploration |

---

## Table of Contents

1. [Getting Started](#getting-started)
2. [Agents Guide](#agents-guide)
3. [Commands Guide](#commands-guide)
4. [Skills Guide](#skills-guide)
5. [Usage Examples](#usage-examples)

---

## Getting Started

### Installation

```bash
# Clone this repository
git clone https://github.com/Iluminatto1970/antigravity-kit.git
cd antigravity-kit

# Initialize OpenCode
opencode init
```

### Basic Usage

```bash
# Start OpenCode
opencode

# Invoke an agent (short form)
@b "Create REST API for authentication"
@f "Create login component"
@db "Login returns 500 error"

# Invoke an agent (full form)
@backend-specialist "Create REST API"

# Run a command
/brainstorm authentication system
/create landing page
/debug why login fails
```

---

## Agents Guide

### What Are Agents?

Agents are specialized AI personas that handle specific development tasks. The system automatically detects context and applies the appropriate agent, but you can also invoke them manually.

---

### Development Agents

#### 1. `backend-specialist`

**When to use:** Server-side development, APIs, database integration, authentication

**Keywords:** backend, server, api, endpoint, database, auth

**Stack:** Node.js, Python, Hono, Fastify, Express, FastAPI, Django

**Skills loaded:** clean-code, nodejs-best-practices, python-patterns, api-patterns, database-design

**Examples:**
```
@backend-specialist "Create REST API for user authentication"
@backend-specialist "Build a GraphQL API for a blog platform"
@backend-specialist "Implement JWT authentication with refresh tokens"
@backend-specialist "Create file upload endpoint with AWS S3"
@backend-specialist "Build real-time chat API with WebSockets"
@backend-specialist "Design database schema for a SaaS app"
@backend-specialist "Create REST endpoints for CRUD operations"
@backend-specialist "Implement OAuth2 login with Google and GitHub"
```

**Key responsibilities:**
- Design and implement APIs
- Database integration
- Authentication/authorization
- Server-side validation
- Security best practices

---

#### 2. `frontend-specialist`

**When to use:** UI components, React/Next.js, styling, responsive design

**Keywords:** component, react, vue, ui, ux, css, tailwind, responsive

**Stack:** React, Next.js, Vue, Tailwind CSS, TypeScript

**Skills loaded:** clean-code, react-patterns, nextjs-best-practices, tailwind-patterns, frontend-design

**Examples:**
```
@frontend-specialist "Build a login form with validation"
@frontend-specialist "Create a responsive navigation menu"
@frontend-specialist "Build a data table with sorting and filtering"
@frontend-specialist "Create a modal component with animations"
@frontend-specialist "Build a dark mode toggle with theme persistence"
@frontend-specialist "Create a dashboard with charts and graphs"
@frontend-specialist "Build a product card with hover effects"
@frontend-specialist "Create a multi-step form wizard"
```

**Key features:**
- Anti-Safe Harbor design (no generic templates)
- Performance-first approach
- Accessibility compliance
- Mobile-first responsive design

---

#### 3. `database-architect`

**When to use:** Schema design, query optimization, migrations, data modeling

**Keywords:** database, sql, schema, migration, query, postgres, index, table

**Stack:** PostgreSQL, SQLite, Turso, Neon, MongoDB

**Skills loaded:** clean-code, database-design

**Examples:**
```
@database-architect "Design schema for e-commerce with users, products, orders"
@database-architect "Create migration for adding user roles"
@database-architect "Optimize slow query on dashboard"
@database-architect "Design schema for multi-tenant SaaS"
@database-architect "Create indexes for better performance"
@database-architect "Design schema for social media app"
@database-architect "Set up database replication"
@database-architect "Design schema for booking system"
```

---

#### 4. `devops-engineer`

**When to use:** CI/CD, Docker, deployment, infrastructure

**Keywords:** docker, ci/cd, deployment, aws, kubernetes, nginx

**Stack:** Vercel, Railway, Fly.io, AWS, Docker, Kubernetes

**Skills loaded:** deployment-procedures, server-management

**Examples:**
```
@devops-engineer "Set up CI/CD pipeline for Next.js app"
@devops-engineer "Configure Docker for Node.js API"
@devops-engineer "Set up Kubernetes deployment"
@devops-engineer "Configure nginx as reverse proxy"
@devops-engineer "Set up monitoring with Prometheus"
@devops-engineer "Configure SSL with Let's Encrypt"
@devops-engineer "Set up auto-scaling on AWS"
@devops-engineer "Create Dockerfile for React app"
```

---

#### 5. `mobile-developer`

**When to use:** iOS/Android apps, React Native, Flutter

**Keywords:** mobile, ios, android, react-native, flutter, app

**Stack:** React Native, Flutter, Swift, Kotlin

**Examples:**
```
@mobile-developer "Create a fitness tracking app"
@mobile-developer "Build a todo list with React Native"
@mobile-developer "Create a weather app with location"
@mobile-developer "Build a chat app with real-time messages"
@mobile-developer "Create a food delivery app UI"
@mobile-developer "Build push notifications integration"
@mobile-developer "Create offline-first app with sync"
@mobile-developer "Build a music player with controls"
```

---

#### 6. `game-developer`

**When to use:** Game development, 2D/3D games, web games

**Keywords:** game, unity, godot, webgl, phaser

**Stack:** Unity, Godot, Phaser, Three.js

**Skills loaded:** game-development

**Examples:**
```
@game-developer "Build a 2D platformer game"
@game-developer "Create a puzzle game with levels"
@game-developer "Build a tower defense game"
@game-developer "Create a space shooter game"
@game-developer "Build a racing game with physics"
@game-developer "Create multiplayer card game"
@game-developer "Build a 3D first-person shooter"
@game-developer "Create endless runner game"
```

---

### Security Agents

#### 7. `security-auditor`

**When to use:** Code security review, vulnerability assessment, OWASP compliance

**Keywords:** security, vulnerability, owasp, xss, injection, auth, encrypt

**Philosophy:** "Assume breach. Trust nothing. Verify everything."

**Skills loaded:** clean-code, vulnerability-scanner, red-team-tactics

**Examples:**
```
@security-auditor "Review authentication code for vulnerabilities"
@security-auditor "Check for SQL injection in login form"
@security-auditor "Audit API endpoints for security"
@security-auditor "Review password reset flow"
@security-auditor "Check for XSS vulnerabilities"
@security-auditor "Audit file upload functionality"
@security-auditor "Review session management"
@security-auditor "Check for CSRF vulnerabilities"
```

**What they check:**
- OWASP Top 10 vulnerabilities
- Input validation
- Authentication flows
- Data encryption
- SQL injection
- XSS prevention

---

#### 8. `penetration-tester`

**When to use:** Active security testing, exploit simulation

**Keywords:** pentest, penetration, hacking, exploit

**Skills loaded:** red-team-tactics

**Examples:**
```
@penetration-tester "Perform security audit on login system"
@penetration-tester "Test API for injection attacks"
@penetration-tester "Simulate brute force attack"
@penetration-tester "Check for sensitive data exposure"
@penetration-tester "Test authentication bypass"
@penetration-tester "Perform full penetration test"
@penetration-tester "Test for privilege escalation"
@penetration-tester "Check API rate limiting"
```

---

### Quality Agents

#### 9. `test-engineer`

**When to use:** Creating and executing tests

**Keywords:** test, testing, unit, e2e, coverage

**Stack:** Vitest, Jest, Playwright, Mocha

**Skills loaded:** testing-patterns, tdd-workflow

**Examples:**
```
@test-engineer "Write unit tests for user service"
@test-engineer "Create E2E tests for login flow"
@test-engineer "Write tests for API endpoints"
@test-engineer "Create integration tests for checkout"
@test-engineer "Write tests for utility functions"
@test-engineer "Create test coverage report"
@test-engineer "Write tests for React components"
@test-engineer "Create mock tests for external APIs"
```

---

#### 10. `qa-automation-engineer`

**When to use:** Test automation infrastructure, regression testing

**Keywords:** qa, automation, regression, ci

**Skills loaded:** testing-patterns, webapp-testing

**Examples:**
```
@qa-automation-engineer "Set up automated E2E tests with Playwright"
@qa-automation-engineer "Create regression test suite"
@qa-automation-engineer "Set up visual regression tests"
@qa-automation-engineer "Create test automation framework"
@qa-automation-engineer "Set up CI/CD with test automation"
@qa-automation-engineer "Create performance tests"
@qa-automation-engineer "Set up test reporting dashboard"
@qa-automation-engineer "Create test data factory"
```

---

#### 11. `performance-optimizer`

**When to use:** Performance optimization, profiling, Lighthouse

**Keywords:** performance, speed, optimization, lighthouse, bundle

**Skills loaded:** performance-profiling

**Examples:**
```
@performance-optimizer "Optimize bundle size and loading time"
@performance-optimizer "Improve page load speed"
@performance-optimizer "Optimize database queries"
@performance-optimizer "Reduce React re-renders"
@performance-optimizer "Optimize image loading"
@performance-optimizer "Improve API response time"
@performance-optimizer "Optimize memory usage"
@performance-optimizer "Set up caching strategy"
```

---

### Analysis Agents

#### 12. `debugger`

**When to use:** Systematic error investigation

**Keywords:** bug, error, debug, fix, issue

**Workflow:** Gather → Hypothesize → Investigate → Fix → Prevent

**Examples:**
```
@debugger "Fix login not working on production"
@debugger "Debug API returning 500 error"
@debugger "Fix memory leak in Node.js"
@debugger "Debug form submission not working"
@debugger "Fix race condition in payments"
@debugger "Debug WebSocket connection issues"
@debugger "Fix data not saving to database"
@debugger "Debug authentication token expiry"
```

---

#### 13. `explorer-agent`

**When to use:** Codebase mapping, understanding existing projects

**Keywords:** explore, map, structure, codebase

**Examples:**
```
@explorer-agent "Map the structure of this legacy project"
@explorer-agent "Find all API endpoints in codebase"
@explorer-agent "Map database models and relationships"
@explorer-agent "Find authentication implementation"
@explorer-agent "Map component hierarchy"
@explorer-agent "Find all database queries"
@explorer-agent "Map third-party integrations"
@explorer-agent "Find state management patterns"
```

---

#### 14. `code-archaeologist`

**When to use:** Documenting legacy code, understanding old systems

**Keywords:** legacy, documentation, ancient

**Examples:**
```
@code-archaeologist "Document this undocumented Ruby on Rails app"
@code-archaeologist "Create docs for old payment system"
@code-archaeologist "Document legacy API endpoints"
@code-archaeologist "Map and document spaghetti code"
@code-archaeologist "Create architecture diagram"
@code-archaeologist "Document business logic"
@code-archaeologist "Create API documentation from code"
@code-archaeologist "Document data flow"
```

---

### Product Agents

#### 15. `product-manager`

**When to use:** Feature planning, roadmap, prioritization

**Keywords:** roadmap, feature, product, planning

**Examples:**
```
@product-manager "Plan the next sprint for the mobile app"
@product-manager "Create feature roadmap for Q1"
@product-manager "Plan new dashboard features"
@product-manager "Prioritize backlog items"
@product-manager "Plan user onboarding flow"
@product-manager "Create product vision document"
@product-manager "Plan analytics features"
@product-manager "Plan notification system"
```

---

#### 16. `product-owner`

**When to use:** Requirements definition, user stories, backlog prioritization

**Keywords:** user-story, requirements, priority, backlog

**Examples:**
```
@product-owner "Create user stories for the checkout flow"
@product-owner "Write requirements for login feature"
@product-owner "Create acceptance criteria"
@product-owner "Write user stories for admin panel"
@product-owner "Define MVP features"
@product-owner "Create feature specifications"
@product-owner "Write user stories for search"
@product-owner "Define success metrics"
```

---

#### 17. `project-planner`

**When to use:** Creating detailed plans, task breakdowns

**Keywords:** plan, task-breakdown, milestone

**Output:** `docs/PLAN-{slug}.md`

**Examples:**
```
@project-planner "Create a plan for building a SaaS dashboard"
@project-planner "Plan migration from REST to GraphQL"
@project-planner "Create plan for mobile app development"
@project-planner "Plan e-commerce platform build"
@project-planner "Create plan for API redesign"
@project-planner "Plan tech stack migration"
@project-planner "Create plan for redesign project"
@project-planner "Plan microservices architecture"
```

---

### Support Agents

#### 18. `documentation-writer`

**When to use:** Creating README, API docs, guides

**Keywords:** docs, documentation, readme, guide

**Skills loaded:** documentation-templates

**Examples:**
```
@documentation-writer "Write API documentation for the auth endpoints"
@documentation-writer "Create README for the project"
@documentation-writer "Write developer setup guide"
@documentation-writer "Create contribution guidelines"
@documentation-writer "Write deployment documentation"
@documentation-writer "Create API reference docs"
@documentation-writer "Write user manual"
@documentation-writer "Create troubleshooting guide"
```

---

#### 19. `seo-specialist`

**When to use:** SEO optimization, meta tags, schema markup

**Keywords:** seo, ranking, google, meta, schema

**Skills loaded:** seo-fundamentals

**Examples:**
```
@seo-specialist "Optimize landing page for search engines"
@seo-specialist "Add structured data to product pages"
@seo-specialist "Optimize images for SEO"
@seo-specialist "Improve page speed for SEO"
@seo-specialist "Create sitemap.xml"
@seo-specialist "Optimize meta tags across site"
@seo-specialist "Set up Google Search Console"
@seo-specialist "Audit site for SEO issues"
```

---

#### 20. `orchestrator`

**When to use:** Coordinating multiple agents for complex tasks

**Philosophy:** Minimum 3 different agents per task

**Phases:** Planning → Approval → Implementation → Verification

**Examples:**
```
@orchestrator "Build a complete e-commerce platform"
@orchestrator "Create full-stack SaaS application"
@orchestrator "Build complete mobile app with backend"
@orchestrator "Create design system with components"
@orchestrator "Build complete authentication system"
@orchestrator "Create real-time chat application"
@orchestrator "Build analytics dashboard from scratch"
@orchestrator "Create complete blog platform"
```

---

## Commands Guide

Commands are pre-defined workflows invoked with `/`.

---

### Creation Commands

#### `/create` - Create Application

Starts the process of creating a new application.

**Examples:**
```
/create blog site
/create e-commerce app with product listing and cart
/create todo app with React and Firebase
/create Instagram clone with social features
/create CRM system with customer management
/create portfolio website with dark mode
/create booking platform with calendar
/create real-time chat application
/create SaaS dashboard with analytics
/create food delivery app with map
/create learning management system
/create job board with authentication
```

**Flow:**
1. Requirements analysis
2. Project planning
3. Building with specialized agents
4. Automatic preview

---

#### `/enhance` - Add Features

Adds or updates features in existing application.

**Examples:**
```
/enhance add dark mode to the app
/enhance build admin panel for users
/enhance integrate Stripe payment system
/enhance add search functionality with filters
/enhance add user profile page
/enhance implement email notifications
/enhance add social login with Google
/enhance build analytics dashboard
/enhance add file upload feature
/enhance implement caching with Redis
/enhance add multi-language support
/enhance build API documentation
```

---

### Planning Commands

#### `/plan` - Create Plan

Creates a detailed plan file WITHOUT writing code.

**Examples:**
```
/plan e-commerce site with payments
/plan mobile app for fitness tracking
/plan SaaS dashboard with analytics
/plan real-time chat application
/plan blog platform with CMS
/plan job board with auth
/plan food delivery app
/plan learning management system
/plan CRM with automation
/plan portfolio with CMS
/plan social network
/plan IoT dashboard
```

**Output:** `docs/PLAN-{slug}.md`

**Rules:**
- ❌ Does NOT write code
- ✅ Uses `project-planner` agent
- ✅ Asks clarifying questions first

---

#### `/brainstorm` - Brainstorming

Explores multiple options before implementing.

**Examples:**
```
/brainstorm authentication system for SaaS
/brainstorm database schema for social app
/brainstorm caching strategy for API
/brainstorm real-time features implementation
/brainstorm payment integration options
/brainstorm search functionality architecture
/brainstorm file storage solution
/brainstorm message queue system
/brainstorm microservices vs monolith
/brainstorm CI/CD pipeline setup
/brainstorm testing strategy
/brainstorm monitoring solution
```

**Output format:**
```
## 🧠 Brainstorm: [Topic]

### Option A: [Name]
✅ Pros: ...
❌ Cons: ...

### Option B: [Name]
✅ Pros: ...
❌ Cons: ...

## 💡 Recommendation
Option X because...
```

---

### Debug Commands

#### `/debug` - Systematic Debugging

Investigates problems systematically.

**Examples:**
```
/debug login not working on production
/debug API returns 500 error
/debug form doesn't submit data
/debug user session expires too quickly
/debug payment processing fails
/debug file upload not working
/debug real-time messages delayed
/debug database connection timeout
/debug memory leak in production
/debug WebSocket disconnects randomly
/debug search returns no results
/debug image upload fails
```

**Flow:**
1. Gather Information
2. Form Hypotheses
3. Investigate Systematically
4. Fix and Prevent

---

### Quality Commands

#### `/test` - Testing

Generates and executes tests.

**Examples:**
```
/test run all tests
/test auth service tests
/test user registration flow
/test coverage report
/test watch mode
/test fix failing tests
/test API endpoint tests
/test component tests
/test E2E tests for checkout
/test integration tests
/test performance tests
/test security tests
```

---

#### `/status` - Project Status

Shows current project state.

**Examples:**
```
/status
/status full
/status agents
/status preview
```

---

### Deploy Commands

#### `/deploy` - Deployment

Deploys to production with pre-flight checks.

**Examples:**
```
/deploy to production
/deploy check before deploy
/deploy to preview
/deploy staging environment
/deploy production with skip tests
/deploy rollback to previous version
/deploy Docker container
/deploy to Vercel
/deploy to Railway
/deploy to AWS
/deploy with custom domain
/deploy with SSL
```

**Supported Platforms:**
| Platform | Command |
|----------|---------|
| Vercel | `vercel --prod` |
| Railway | `railway up` |
| Fly.io | `fly deploy` |
| Docker | `docker compose up -d` |

---

### Preview Commands

#### `/preview` - Preview Management

Manages preview server.

**Examples:**
```
/preview start server
/preview stop server
/preview check status
/preview restart server
/preview open in browser
/preview check port
/preview on custom port
/preview with hot reload
```

---

### Advanced Commands

#### `/orchestrate` - Orchestration

Coordinates multiple agents for complex tasks.

**Examples:**
```
/orchestrate build complete login system
/orchestrate create full e-commerce platform
/orchestrate build SaaS from scratch
/orchestrate create mobile app with backend
/orchestrate build analytics dashboard
/orchestrate create real-time chat
/orchestrate build design system
/orchestrate create API platform
/orchestrate build content management system
/orchestrate create social network
/orchestrate build IoT platform
/orchestrate create marketplace
```

**Rules:**
- ✅ MINIMUM 3 different agents
- ❌ Less than 3 = NOT orchestration

**Phases:**
1. **Phase 1:** Planning (only project-planner)
2. **Checkpoint:** User approval
3. **Phase 2:** Implementation (parallel)
4. **Phase 3:** Verification (scripts)

---

#### `/ui-ux-pro-max` - Advanced Design

Special command for design with 50+ styles.

**Examples:**
```
/ui-ux-pro-max landing page design
/ui-ux-pro-max dashboard UI
/ui-ux-pro-max mobile app design
/ui-ux-pro-max e-commerce product page
/ui-ux-pro-max blog layout
/ui-ux-pro-max admin panel design
/ui-ux-pro-max login page
/ui-ux-pro-max profile page
/ui-ux-pro-max settings page
/ui-ux-pro-max card components
/ui-ux-pro-max form designs
/ui-ux-pro-max navigation menu
```

**Available styles:**
- Brutalist
- Neo-Retro
- Swiss Punk
- Liquid Digital
- Bauhaus Remix
- And 50+ more

---

## Skills Guide

Skills are knowledge modules automatically loaded by agents.

### Development Skills

| Skill | Description |
|-------|-------------|
| `clean-code` | Clean code principles |
| `react-patterns` | Modern React patterns |
| `nextjs-best-practices` | Next.js optimizations |
| `nodejs-best-practices` | Node.js patterns |
| `python-patterns` | Python patterns |
| `api-patterns` | API design |

### Frontend Skills

| Skill | Description |
|-------|-------------|
| `frontend-design` | UI/UX principles |
| `tailwind-patterns` | Tailwind CSS |
| `mobile-design` | Mobile design |
| `i18n-localization` | Internationalization |

### Backend Skills

| Skill | Description |
|-------|-------------|
| `database-design` | Database design |
| `server-management` | Server management |
| `deployment-procedures` | Deployment procedures |

### Quality Skills

| Skill | Description |
|-------|-------------|
| `testing-patterns` | Testing patterns |
| `tdd-workflow` | Test-Driven Development |
| `lint-and-validate` | Linting and validation |
| `webapp-testing` | E2E testing with Playwright |

### Security Skills

| Skill | Description |
|-------|-------------|
| `vulnerability-scanner` | Vulnerability scanner |
| `red-team-tactics` | Red Team tactics |
| `code-review-checklist` | Code review checklist |

### Architecture Skills

| Skill | Description |
|-------|-------------|
| `architecture` | Architecture patterns |
| `app-builder` | Application building |
| `mcp-builder` | MCP servers |

### Specialized Skills

| Skill | Description |
|-------|-------------|
| `game-development` | Game development |
| `seo-fundamentals` | SEO basics |
| `performance-profiling` | Performance profiling |
| `brainstorming` | Brainstorming techniques |
| `plan-writing` | Plan writing |
| `parallel-agents` | Multi-agent patterns |

---

## Usage Examples

### Complete Workflow

```bash
# 1. Plan first (for large projects)
/plan ecommerce platform

# 2. Create (after approval)
/create ecommerce platform

# 3. Add features
/enhance add admin panel

# 4. Test
/test coverage

# 5. Deploy
/deploy production
```

### Debugging Workflow

```bash
/debug api returns 500 error
```

### Multi-Agent Orchestration

```bash
/orchestrate build complete SaaS platform with auth, payments, dashboard
```

### Quick Tasks

```bash
# Just fix something
@debugger "Fix the submit button not working"

# Add a simple feature
@frontend-specialist "Add dark mode toggle to navbar"

# Review code
@security-auditor "Review the login implementation"

# Build API
@backend-specialist "Create user CRUD API"

# Optimize performance
@performance-optimizer "Speed up page load"
```

---

## Tips

1. **Automatic detection** - You don't need to specify the agent; the system detects automatically
2. **Use `/plan` before `/create`** - For large projects
3. **Use `/orchestrate`** - For complex tasks requiring multiple specialists
4. **Skills load automatically** - No need to invoke manually
5. **Always use `/debug`** - For errors, don't assume

---

## Configuration

The project is already configured with `.opencode/` structure for automatic agent and skill discovery.

Structure:
```
.agent/
├── agents/     # 20 agents
├── skills/    # 36+ skills  
└── workflows/ # 11 commands

.opencode/      # Symlinks for OpenCode
```

---

MIT © Iluminatto1970
