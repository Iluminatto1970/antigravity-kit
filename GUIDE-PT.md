# Antigravity Kit - Guia Completo para OpenCode

> Tutorial completo cobrindo todos os agentes, comandos e skills

---

## Atalhos Rápidos

| Atalho | Agente | Descrição |
|--------|--------|-----------|
| `@b` | backend-specialist | Desenvolvimento backend |
| `@f` | frontend-specialist | Desenvolvimento frontend/UI |
| `@db` | debugger | Debug e resolução de problemas |
| `@ba` | database-architect | Design de banco de dados |
| `@se` | security-auditor | Auditoria de segurança |
| `@de` | devops-engineer | DevOps e deployment |
| `@m` | mobile-developer | Desenvolvimento mobile |
| `@g` | game-developer | Desenvolvimento de jogos |
| `@p` | project-planner | Planejamento de projetos |
| `@o` | orchestrator | Coordenação multi-agente |
| `@t` | test-engineer | Testes e QA |
| `@q` | qa-automation-engineer | Automação de QA |
| `@pe` | performance-optimizer | Otimização de performance |
| `@pt` | penetration-tester | Teste de penetração |
| `@so` | seo-specialist | Otimização SEO |
| `@da` | documentation-writer | Documentação |
| `@ca` | code-archaeologist | Análise de código legacy |
| `@pm` | product-manager | Gestão de produto |
| `@po` | product-owner | Dono do produto |
| `@e` | explorer-agent | Exploração de codebase |

---

## Índice

1. [Primeiros Passos](#primeiros-passos)
2. [Guia de Agentes](#guia-de-agentes)
3. [Guia de Comandos](#guia-de-comandos)
4. [Guia de Skills](#guia-de-skills)
5. [Exemplos de Uso](#exemplos-de-uso)

---

## Primeiros Passos

### Instalação

```bash
# Clonar este repositório
git clone https://github.com/Iluminatto1970/antigravity-kit.git
cd antigravity-kit

# Inicializar OpenCode
opencode init
```

### Uso Básico

```bash
# Iniciar OpenCode
opencode

# Invocar um agente (forma curta)
@b "Criar API REST para autenticação"
@f "Criar componente de login"
@db "Login retorna erro 500"

# Invocar um agente (forma completa)
@backend-specialist "Criar API REST"

# Executar um comando
/brainstorm authentication system
/create landing page
/debug why login fails
```

---

## Guia de Agentes

### O Que São Agentes?

Agentes são personas de IA especializadas que lidam com tarefas específicas de desenvolvimento. O sistema detecta automaticamente o contexto e aplica o agente apropriado, mas você também pode invocá-los manualmente.

---

### Agentes de Desenvolvimento

#### 1. `backend-specialist`

**Quando usar:** Desenvolvimento server-side, APIs, integração com banco de dados, autenticação

**Palavras-chave:** backend, server, api, endpoint, database, auth

**Stack:** Node.js, Python, Hono, Fastify, Express, FastAPI, Django

**Skills carregados:** clean-code, nodejs-best-practices, python-patterns, api-patterns, database-design

**Exemplos:**
```
@backend-specialist "Criar API REST para autenticação de usuários"
@backend-specialist "Criar API GraphQL para blog"
@backend-specialist "Implementar autenticação JWT com refresh tokens"
@backend-specialist "Criar endpoint para upload de arquivos no S3"
@backend-specialist "Criar API de chat em tempo real com WebSockets"
@backend-specialist "Projetar schema de banco de dados para SaaS"
@backend-specialist "Criar endpoints REST para CRUD"
@backend-specialist "Implementar login OAuth2 com Google e GitHub"
```

**Responsabilidades principais:**
- Projetar e implementar APIs
- Integração com banco de dados
- Autenticação/autorização
- Validação server-side
- Melhores práticas de segurança

---

#### 2. `frontend-specialist`

**Quando usar:** Componentes de UI, React/Next.js, estilização, design responsivo

**Palavras-chave:** component, react, vue, ui, ux, css, tailwind, responsive

**Stack:** React, Next.js, Vue, Tailwind CSS, TypeScript

**Skills carregados:** clean-code, react-patterns, nextjs-best-practices, tailwind-patterns, frontend-design

**Exemplos:**
```
@frontend-specialist "Criar formulário de login com validação"
@frontend-specialist "Criar menu de navegação responsivo"
@frontend-specialist "Criar tabela de dados com ordenação e filtros"
@frontend-specialist "Criar componente modal com animações"
@frontend-specialist "Criar toggle de dark mode com persistência"
@frontend-specialist "Criar dashboard com gráficos"
@frontend-specialist "Criar cartão de produto com efeitos hover"
@frontend-specialist "Criar formulário wizard de múltiplas etapas"
```

**Características principais:**
- Design Anti-Safe Harbor (sem templates genéricos)
- Abordagem performance-first
- Conformidade com acessibilidade
- Design responsivo mobile-first

---

#### 3. `database-architect`

**Quando usar:** Projeto de schema, otimização de queries, migrações, modelagem de dados

**Palavras-chave:** database, sql, schema, migration, query, postgres, index, table

**Stack:** PostgreSQL, SQLite, Turso, Neon, MongoDB

**Skills carregados:** clean-code, database-design

**Exemplos:**
```
@database-architect "Projetar schema para e-commerce com usuários, produtos, pedidos"
@database-architect "Criar migração para adicionar papéis de usuário"
@database-architect "Otimizar query lenta do dashboard"
@database-architect "Projetar schema para SaaS multi-tenant"
@database-architect "Criar índices para melhor performance"
@database-architect "Projetar schema para rede social"
@database-architect "Configurar replicação de banco de dados"
@database-architect "Projetar schema para sistema de reservas"
```

---

#### 4. `devops-engineer`

**Quando usar:** CI/CD, Docker, deployment, infraestrutura

**Palavras-chave:** docker, ci/cd, deployment, aws, kubernetes, nginx

**Stack:** Vercel, Railway, Fly.io, AWS, Docker, Kubernetes

**Skills carregados:** deployment-procedures, server-management

**Exemplos:**
```
@devops-engineer "Configurar pipeline CI/CD para app Next.js"
@devops-engineer "Configurar Docker para API Node.js"
@devops-engineer "Configurar deployment com Kubernetes"
@devops-engineer "Configurar nginx como reverse proxy"
@devops-engineer "Configurar monitoramento com Prometheus"
@devops-engineer "Configurar SSL com Let's Encrypt"
@devops-engineer "Configurar auto-scaling na AWS"
@devops-engineer "Criar Dockerfile para app React"
```

---

#### 5. `mobile-developer`

**Quando usar:** Apps iOS/Android, React Native, Flutter

**Palavras-chave:** mobile, ios, android, react-native, flutter, app

**Stack:** React Native, Flutter, Swift, Kotlin

**Exemplos:**
```
@mobile-developer "Criar app de rastreamento de fitness"
@mobile-developer "Criar lista de tarefas com React Native"
@mobile-developer "Criar app de clima com localização"
@mobile-developer "Criar app de chat com mensagens em tempo real"
@mobile-developer "Criar UI de app de entrega de comida"
@mobile-developer "Configurar notificações push"
@mobile-developer "Criar app offline-first com sincronização"
@mobile-developer "Criar reprodutor de música com controles"
```

---

#### 6. `game-developer**

**Quando usar:** Desenvolvimento de jogos, jogos 2D/3D, jogos web

**Palavras-chave:** game, unity, godot, webgl, phaser

**Stack:** Unity, Godot, Phaser, Three.js

**Skills carregados:** game-development

**Exemplos:**
```
@game-developer "Criar jogo de plataforma 2D"
@game-developer "Criar jogo de puzzles com níveis"
@game-developer "Criar jogo de defesa de torres"
@game-developer "Criar jogo de naves espaciais"
@game-developer "Criar jogo de corrida com física"
@game-developer "Criar jogo de cartas multiplayer"
@game-developer "Criar shooter 3D em primeira pessoa"
@game-developer "Criar jogo endless runner"
```

---

### Agentes de Segurança

#### 7. `security-auditor`

**Quando usar:** Revisão de segurança, avaliação de vulnerabilidades, conformidade OWASP

**Palavras-chave:** security, vulnerability, owasp, xss, injection, auth, encrypt

**Filosofia:** "Assumir brecha. Não confiar em nada. Verificar tudo."

**Skills carregados:** clean-code, vulnerability-scanner, red-team-tactics

**Exemplos:**
```
@security-auditor "Revisar código de autenticação em busca de vulnerabilidades"
@security-auditor "Buscar injeção SQL no formulário de login"
@security-auditor "Auditar endpoints de API para segurança"
@security-auditor "Revisar fluxo de recuperação de senha"
@security-auditor "Buscar vulnerabilidades XSS"
@security-auditor "Auditar funcionalidade de upload de arquivos"
@security-auditor "Revisar gerenciamento de sessões"
@security-auditor "Buscar vulnerabilidades CSRF"
```

**O que verificam:**
- OWASP Top 10 vulnerabilidades
- Validação de inputs
- Fluxos de autenticação
- Criptografia de dados
- Injeção SQL
- Prevenção XSS

---

#### 8. `penetration-tester`

**Quando usar:** Testes ativos de segurança, simulação de exploits

**Palabras clave:** pentest, penetration, hacking, exploit

**Skills carregados:** red-team-tactics

**Exemplos:**
```
@penetration-tester "Realizar auditoria de segurança no sistema de login"
@penetration-tester "Testar API contra injeções"
@penetration-tester "Simular ataque de força bruta"
@penetration-tester "Buscar exposição de dados sensíveis"
@penetration-tester "Testar bypass de autenticação"
@penetration-tester "Realizar teste de penetração completo"
@penetration-tester "Testar escalação de privilégios"
@penetration-tester "Verificar rate limiting de API"
```

---

### Agentes de Qualidade

#### 9. `test-engineer`

**Quando usar:** Criar e executar testes

**Palavras-chave:** test, testing, unit, e2e, coverage

**Stack:** Vitest, Jest, Playwright, Mocha

**Skills carregados:** testing-patterns, tdd-workflow

**Exemplos:**
```
@test-engineer "Escrever testes unitários para serviço de usuários"
@test-engineer "Criar testes E2E para fluxo de login"
@test-engineer "Escrever testes para endpoints de API"
@test-engineer "Criar testes de integração para checkout"
@test-engineer "Escrever testes para funções utilitárias"
@test-engineer "Criar relatório de cobertura de testes"
@test-engineer "Escrever testes para componentes React"
@test-engineer "Criar testes mock para APIs externas"
```

---

#### 10. `qa-automation-engineer`

**Quando usar:** Infraestrutura de automação de testes, testes de regressão

**Palavras-chave:** qa, automation, regression, ci

**Skills carregados:** testing-patterns, webapp-testing

**Exemplos:**
```
@qa-automation-engineer "Configurar testes E2E automatizados com Playwright"
@qa-automation-engineer "Criar suite de testes de regressão"
@qa-automation-engineer "Configurar testes de regressão visual"
@qa-automation-engineer "Criar framework de automação"
@qa-automation-engineer "Configurar CI/CD com automação"
@qa-automation-engineer "Criar testes de performance"
@qa-automation-engineer "Configurar dashboard de relatórios"
@qa-automation-engineer "Criar factory de dados de teste"
```

---

#### 11. `performance-optimizer`

**Quando usar:** Otimização de performance, profiling, Lighthouse

**Palavras-chave:** performance, speed, optimization, lighthouse, bundle

**Skills carregados:** performance-profiling

**Exemplos:**
```
@performance-optimizer "Otimizar tamanho do bundle e tempo de carregamento"
@performance-optimizer "Melhorar velocidade de carregamento da página"
@performance-optimizer "Otimizar queries de banco de dados"
@performance-optimizer "Reduzir re-renders do React"
@performance-optimizer "Otimizar carregamento de imagens"
@performance-optimizer "Melhorar tempo de resposta da API"
@performance-optimizer "Otimizar uso de memória"
@performance-optimizer "Configurar estratégia de cache"
```

---

### Agentes de Análise

#### 12. `debugger`

**Quando usar:** Investigação sistemática de erros

**Palavras-chave:** bug, error, debug, fix, issue

**Fluxo:** Coletar → Formar Hipóteses → Investigar → Corrigir → Prevenir

**Exemplos:**
```
@debugger "Corrigir login não funcionando em produção"
@debugger "Depurar API retornando erro 500"
@debugger "Corrigir vazamento de memória no Node.js"
@debugger "Corrigir formulário não enviando dados"
@debugger "Corrigir condição de corrida em pagamentos"
@debugger "Depurar problemas de conexão WebSocket"
@debugger "Corrigir dados não sendo salvos no banco"
@debugger "Depurar expiração de token de sessão"
```

---

#### 13. `explorer-agent`

**Quando usar:** Mapeamento de codebase, entender projetos existentes

**Palavras-chave:** explore, map, structure, codebase

**Exemplos:**
```
@explorer-agent "Mapear a estrutura deste projeto legacy"
@explorer-agent "Encontrar todos os endpoints de API"
@explorer-agent "Mapear modelos de banco de dados"
@explorer-agent "Encontrar implementação de autenticação"
@explorer-agent "Mapear hierarquia de componentes"
@explorer-agent "Encontrar todas as queries de banco"
@explorer-agent "Mapear integrações de terceiros"
@explorer-agent "Encontrar padrões de estado"
```

---

#### 14. `code-archaeologist`

**Quando usar:** Documentar código legacy, entender sistemas antigos

**Palavras-chave:** legacy, documentation, ancient

**Exemplos:**
```
@code-archaeologist "Documentar este app Ruby on Rails sem documentação"
@code-archaeologist "Criar docs para sistema de pagamentos antigo"
@code-archaeologist "Documentar endpoints de API legacy"
@code-archaeologist "Mapear e documentar código espaguete"
@code-archaeologist "Criar diagrama de arquitetura"
@code-archaeologist "Documentar lógica de negócio"
@code-archaeologist "Criar documentação de API a partir do código"
@code-archaeologist "Documentar fluxo de dados"
```

---

### Agentes de Produto

#### 15. `product-manager`

**Quando usar:** Planejamento de funcionalidades, roadmap, priorização

**Palavras-chave:** roadmap, feature, product, planning

**Exemplos:**
```
@product-manager "Planejar o próximo sprint para o app móvel"
@product-manager "Criar roadmap de features para Q1"
@product-manager "Planejar novas features do dashboard"
@product-manager "Priorizar itens do backlog"
@product-manager "Planejar fluxo de onboarding"
@product-manager "Criar documento de visão do produto"
@product-manager "Planejar features de análises"
@product-manager "Planejar sistema de notificações"
```

---

#### 16. `product-owner`

**Quando usar:** Definição de requisitos, user stories, priorização de backlog

**Palavras-chave:** user-story, requirements, priority, backlog

**Exemplos:**
```
@product-owner "Criar user stories para o fluxo de checkout"
@product-owner "Escrever requisitos para feature de login"
@product-owner "Criar critérios de aceitação"
@product-owner "Escrever user stories para admin"
@product-owner "Definir features do MVP"
@product-owner "Criar especificações de features"
@product-owner "Escrever user stories para busca"
@product-owner "Definir métricas de sucesso"
```

---

#### 17. `project-planner`

**Quando usar:** Criar planos detalhados, breakdown de tarefas

**Palavras-chave:** plan, task-breakdown, milestone

**Saída:** `docs/PLAN-{slug}.md`

**Exemplos:**
```
@project-planner "Criar plano para construir dashboard SaaS"
@project-planner "Planejar migração de REST para GraphQL"
@project-planner "Criar plano para desenvolvimento de app móvel"
@project-planner "Planejar construção de plataforma e-commerce"
@project-planner "Criar plano para redesign de API"
@project-planner "Planejar migração de stack tecnológico"
@project-planner "Criar plano para projeto de redesign"
@project-planner "Planejar arquitetura de microsserviços"
```

---

### Agentes de Suporte

#### 18. `documentation-writer`

**Quando usar:** Criar README, documentação de APIs, guias

**Palavras-chave:** docs, documentation, readme, guide

**Skills carregados:** documentation-templates

**Exemplos:**
```
@documentation-writer "Escrever documentação de API para endpoints de auth"
@documentation-writer "Criar README do projeto"
@documentation-writer "Escrever guia de configuração para desenvolvedores"
@documentation-writer "Criar guia de contribuições"
@documentation-writer "Escrever documentação de deployment"
@documentation-writer "Criar referência de API"
@documentation-writer "Escrever manual do usuário"
@documentation-writer "Criar guia de solução de problemas"
```

---

#### 19. `seo-specialist`

**Quando usar:** Otimização SEO, meta tags, schema markup

**Palavras-chave:** seo, ranking, google, meta, schema

**Skills carregados:** seo-fundamentals

**Exemplos:**
```
@seo-specialist "Otimizar landing page para motores de busca"
@seo-specialist "Adicionar dados estruturados às páginas de produtos"
@seo-specialist "Otimizar imagens para SEO"
@seo-specialist "Melhorar velocidade da página para SEO"
@seo-specialist "Criar sitemap.xml"
@seo-specialist "Otimizar meta tags em todo o site"
@seo-specialist "Configurar Google Search Console"
@seo-specialist "Auditar site para problemas de SEO"
```

---

#### 20. `orchestrator`

**Quando usar:** Coordenar múltiplos agentes para tarefas complexas

**Filosofia:** Mínimo 3 agentes diferentes por tarefa

**Fases:** Planejamento → Aprovação → Implementação → Verificação

**Exemplos:**
```
@orchestrator "Construir plataforma e-commerce completa"
@orchestrator "Criar aplicação SaaS full-stack"
@orchestrator "Criar app móvel completo com backend"
@orchestrator "Criar design system com componentes"
@orchestrator "Criar sistema de autenticação completo"
@orchestrator "Criar aplicação de chat em tempo real"
@orchestrator "Criar dashboard de análises do zero"
@orchestrator "Criar plataforma de blog completa"
```

---

## Guia de Comandos

Comandos são workflows pré-definidos que são invocados com `/`.

---

### Comandos de Criação

#### `/create` - Criar Aplicação

Inicia o processo de criar uma nova aplicação.

**Exemplos:**
```
/create site de blog
/create app e-commerce com carrinho de compras
/create app de tarefas com React e Firebase
/create clone do Instagram com features sociais
/create sistema CRM com gestão de clientes
/create site de portfólio com dark mode
/create plataforma de reservas com calendário
/create aplicação de chat em tempo real
/create dashboard SaaS com análises
/create app de entrega de comida com mapa
/create sistema de gestão de aprendizado
/create quadro de empregos com autenticação
```

**Fluxo:**
1. Análise de requisitos
2. Planejamento do projeto
3. Build com agentes especializados
4. Preview automático

---

#### `/enhance` - Adicionar Funcionalidades

Adiciona ou atualiza features em aplicação existente.

**Exemplos:**
```
/enhance adicionar dark mode ao app
/enhance construir painel de admin para usuários
/enhance integrar sistema de pagamentos com Stripe
/enhance adicionar funcionalidade de busca com filtros
/enhance adicionar página de perfil do usuário
/enhance implementar notificações por email
/enhance adicionar login social com Google
/enhance construir dashboard de análises
/enhance adicionar feature de upload de arquivos
/enhance implementar cache com Redis
/enhance adicionar suporte a múltiplos idiomas
/enhance construir documentação de API
```

---

### Comandos de Planejamento

#### `/plan` - Criar Plano

Cria um arquivo de plano detalhado SEM escrever código.

**Exemplos:**
```
/plan site e-commerce com pagamentos
/plan app móvel para fitness
/plan dashboard SaaS com análises
/plan aplicação de chat em tempo real
/plan plataforma de blog com CMS
/plan quadro de empregos com auth
/plan app de entrega de comida
/plan sistema de gestão de aprendizado
/plan CRM com automação
/plan portfólio com CMS
/plan rede social
/plan dashboard IoT
```

**Saída:** `docs/PLAN-{slug}.md`

**Regras:**
- ❌ NÃO escreve código
- ✅ Usa agente `project-planner`
- ✅ Faz perguntas clarificadoras primeiro

---

#### `/brainstorm` - Brainstorming

Explora múltiplas opções antes de implementar.

**Exemplos:**
```
/brainstorm sistema de autenticação para SaaS
/brainstorm esquema de banco de dados para app social
/brainstorm estratégia de cache para API
/brainstorm implementação de features em tempo real
/brainstorm opções de integração de pagamentos
/brainstorm arquitetura de funcionalidade de busca
/brainstorm solução de armazenamento de arquivos
/brainstorm sistema de fila de mensagens
/brainstorm microsserviços vs monolito
/brainstorm configuração de CI/CD
/brainstorm estratégia de testes
/brainstorm solução de monitoramento
```

**Formato de saída:**
```
## 🧠 Brainstorm: [Tópico]

### Opção A: [Nome]
✅ Prós: ...
❌ Contras: ...

### Opção B: [Nome]
✅ Prós: ...
❌ Contras: ...

## 💡 Recomendação
Opção X porque...
```

---

### Comandos de Debug

#### `/debug` - Debug Sistemático

Investiga problemas de forma sistemática.

**Exemplos:**
```
/debug login não funciona em produção
/debug API retorna erro 500
/debug formulário não envia dados
/debug sessão de usuário expira muito rápido
/debug processamento de pagamentos falha
/debug upload de arquivos não funciona
/debug mensagens em tempo real atrasam
/debug conexão com banco de dados timeout
/debug vazamento de memória em produção
/debug WebSocket desconecta aleatoriamente
/debug busca não retorna resultados
/debug upload de imagens falha
```

**Fluxo:**
1. Coletar Informação
2. Formar Hipóteses
3. Investigar Sistematicamente
4. Corrigir e Prevenir

---

### Comandos de Qualidade

#### `/test` - Testes

Gera e executa testes.

**Exemplos:**
```
/test executar todos os testes
/test testes de serviço de auth
/test fluxo de registro de usuário
/test relatório de cobertura
/test modo watch
/test corrigir testes falhando
/test testes de endpoint de API
/test testes de componentes
/test testes E2E de checkout
/test testes de integração
/test testes de performance
/test testes de segurança
```

---

#### `/status` - Status do Projeto

Mostra o estado atual do projeto.

**Exemplos:**
```
/status
/status completo
/status agentes
/status preview
```

---

### Comandos de Deploy

#### `/deploy` - Deployment

Faz deploy para produção com pré-verificações.

**Exemplos:**
```
/deploy para produção
/deploy verificar antes de deploy
/deploy para preview
/deploy para staging
/deploy produção com skip tests
/deploy rollback para versão anterior
/deploy container Docker
/deploy para Vercel
/deploy para Railway
/deploy para AWS
/deploy com domínio personalizado
/deploy com SSL
```

**Plataformas Suportadas:**
| Plataforma | Comando |
|------------|---------|
| Vercel | `vercel --prod` |
| Railway | `railway up` |
| Fly.io | `fly deploy` |
| Docker | `docker compose up -d` |

---

### Comandos de Preview

#### `/preview` - Gerenciamento de Preview

Gerencia o servidor de preview.

**Exemplos:**
```
/preview iniciar servidor
/preview parar servidor
/preview verificar status
/preview reiniciar servidor
/preview abrir no navegador
/preview verificar porta
/preview em porta personalizada
/preview com hot reload
```

---

### Comandos Avançados

#### `/orchestrate` - Orquestração

Coordena múltiplos agentes para tarefas complexas.

**Exemplos:**
```
/orchestrate criar sistema de login completo
/orchestrate criar plataforma e-commerce completa
/orchestrate criar SaaS do zero
/orchestrate criar app móvel com backend
/orchestrate criar dashboard de análises
/orchestrate criar chat em tempo real
/orchestrate criar design system
/orchestrate criar plataforma de API
/orchestrate criar CMS
/orchestrate criar rede social
/orchestrate criar plataforma IoT
/orchestrate criar marketplace
```

**Regras:**
- ✅ MÍNIMO 3 agentes diferentes
- ❌ Menos de 3 = NÃO é orquestração

**Fases:**
1. **Fase 1:** Planejamento (apenas project-planner)
2. **Checkpoint:** Aprovação do usuário
3. **Fase 2:** Implementação (paralelo)
4. **Fase 3:** Verificação (scripts)

---

#### `/ui-ux-pro-max` - Design Avançado

Comando especial para design com 50+ estilos.

**Exemplos:**
```
/ui-ux-pro-max design de landing page
/ui-ux-pro-max UI de dashboard
/ui-ux-pro-max design de app móvel
/ui-ux-pro-max página de produto e-commerce
/ui-ux-pro-max layout de blog
/ui-ux-pro-max design de painel admin
/ui-ux-pro-max página de login
/ui-ux-pro-max página de perfil
/ui-ux-pro-max página de configurações
/ui-ux-pro-max componentes de cards
/ui-ux-pro-max designs de formulários
/ui-ux-pro-max menu de navegação
```

**Estilos disponíveis:**
- Brutalist
- Neo-Retro
- Swiss Punk
- Liquid Digital
- Bauhaus Remix
- E mais 50+

---

## Guia de Skills

Skills são módulos de conhecimento que são carregados automaticamente pelos agentes.

### Skills de Desenvolvimento

| Skill | Descrição |
|-------|-----------|
| `clean-code` | Princípios de código limpo |
| `react-patterns` | Padrões modernos React |
| `nextjs-best-practices` | Otimizações Next.js |
| `nodejs-best-practices` | Padrões Node.js |
| `python-patterns` | Padrões Python |
| `api-patterns` | Design de APIs |

### Skills de Frontend

| Skill | Descrição |
|-------|-----------|
| `frontend-design` | Princípios UI/UX |
| `tailwind-patterns` | Tailwind CSS |
| `mobile-design` | Design mobile |
| `i18n-localization` | Internacionalização |

### Skills de Backend

| Skill | Descrição |
|-------|-----------|
| `database-design` | Design de banco de dados |
| `server-management` | Gerenciamento de servidor |
| `deployment-procedures` | Procedimentos de deploy |

### Skills de Qualidade

| Skill | Descrição |
|-------|-----------|
| `testing-patterns` | Padrões de testes |
| `tdd-workflow` | Test-Driven Development |
| `lint-and-validate` | Linting e validação |
| `webapp-testing` | Testes E2E com Playwright |

### Skills de Segurança

| Skill | Descrição |
|-------|-----------|
| `vulnerability-scanner` | Scanner de vulnerabilidades |
| `red-team-tactics` | Táticas de Red Team |
| `code-review-checklist` | Checklist de code review |

### Skills de Arquitetura

| Skill | Descrição |
|-------|-----------|
| `architecture` | Padrões de arquitetura |
| `app-builder` | Construção de aplicações |
| `mcp-builder` | Servidores MCP |

### Skills Especializadas

| Skill | Descrição |
|-------|-----------|
| `game-development` | Desenvolvimento de jogos |
| `seo-fundamentals` | Fundamentos de SEO |
| `performance-profiling` | Profiling de performance |
| `brainstorming` | Técnicas de brainstorming |
| `plan-writing` | Escrita de planos |
| `parallel-agents` | Padrões multi-agente |

---

## Exemplos de Uso

### Fluxo Completo

```bash
# 1. Planejar primeiro (para projetos grandes)
/plan plataforma e-commerce

# 2. Criar (após aprovação)
/create plataforma e-commerce

# 3. Adicionar funcionalidades
/enhance add admin panel

# 4. Testar
/test coverage

# 5. Deploy
/deploy production
```

### Fluxo de Debug

```bash
/debug api retorna erro 500
```

### Orquestração Multi-Agente

```bash
/orchestrate construir plataforma SaaS completa com auth, pagamentos, dashboard
```

### Tarefas Rápidas

```bash
# Só corrigir algo
@debugger "Corrigir o botão de enviar não funcionando"

# Adicionar uma feature simples
@frontend-specialist "Adicionar toggle de dark mode no navbar"

# Revisar código
@security-auditor "Revisar implementação de login"

# Build API
@backend-specialist "Criar API CRUD de usuários"

# Otimizar performance
@performance-optimizer "Acelerar carregamento da página"
```

### Fluxo de Debug

```bash
opencode> /debug api retorna erro 500
```

### Orquestração Multi-Agente

```bash
opencode> /orchestrate construir plataforma SaaS completa com auth, pagamentos, dashboard
```

### Tarefas Rápidas

```bash
# Só corrigir algo
@debugger "Corrigir o botão de enviar não funcionando"

# Adicionar uma feature simples
@frontend-specialist "Adicionar toggle de dark mode no navbar"

# Revisar código
@security-auditor "Revisar implementação de login"

# Build API
@backend-specialist "Criar API CRUD de usuários"

# Otimizar performance
@performance-optimizer "Acelerar carregamento da página"
```

---

## Dicas

1. **Detecção automática** - Você não precisa especificar o agente; o sistema detecta automaticamente
2. **Use `/plan` antes de `/create`** - Para projetos grandes
3. **Use `/orchestrate`** - Para tarefas complexas que precisam de múltiplos especialistas
4. **Skills são carregadas automaticamente** - Não precisa invocar manualmente
5. **Sempre use `/debug`** - Para erros, não assuma

---

## Configuração

O projeto já está configurado com a estrutura `.opencode/` para descoberta automática de agentes e skills.

Estrutura:
```
.agent/
├── agents/     # 20 agentes
├── skills/     # 36+ skills  
└── workflows/  # 11 comandos

.opencode/      # Symlinks para OpenCode
```

---

MIT © Iluminatto1970
