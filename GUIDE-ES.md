# Antigravity Kit - Guía Completa para OpenCode

> Tutorial completo que cubre todos los agentes, comandos y skills

---

## Referencia Rápida

| Atajo | Agente | Descripción |
|-------|--------|-------------|
| `@b` | backend-specialist | Desarrollo backend |
| `@f` | frontend-specialist | Desarrollo frontend/UI |
| `@db` | debugger | Depuración y resolución de problemas |
| `@ba` | database-architect | Diseño de base de datos |
| `@se` | security-auditor | Auditoría de seguridad |
| `@de` | devops-engineer | DevOps y deployment |
| `@m` | mobile-developer | Desarrollo móvil |
| `@g` | game-developer | Desarrollo de juegos |
| `@p` | project-planner | Planificación de proyectos |
| `@o` | orchestrator | Coordinación multi-agente |
| `@t` | test-engineer | Testing y QA |
| `@q` | qa-automation-engineer | Automatización de QA |
| `@pe` | performance-optimizer | Optimización de rendimiento |
| `@pt` | penetration-tester | Pruebas de penetración |
| `@so` | seo-specialist | Optimización SEO |
| `@da` | documentation-writer | Documentación |
| `@ca` | code-archaeologist | Análisis de código legacy |
| `@pm` | product-manager | Gestión de producto |
| `@po` | product-owner | Dueño del producto |
| `@e` | explorer-agent | Exploración de codebase |

---

## Tabla de Contenidos

1. [Primeros Pasos](#primeros-pasos)
2. [Guía de Agentes](#guía-de-agentes)
3. [Guía de Comandos](#guía-de-comandos)
4. [Guía de Skills](#guía-de-skills)
5. [Ejemplos de Uso](#ejemplos-de-uso)

---

## Primeros Pasos

### Instalación

```bash
# Clonar este repositorio
git clone https://github.com/Iluminatto1970/antigravity-kit.git
cd antigravity-kit

# Inicializar OpenCode
opencode init
```

### Uso Básico

```bash
# Iniciar OpenCode
opencode

# Invocar un agente (forma corta)
@b "Crear API REST para autenticación"
@f "Crear componente de login"
@db "Login devuelve error 500"

# Invocar un agente (forma completa)
@backend-specialist "Crear API REST"

# Ejecutar un comando
/brainstorm sistema de autenticación
/create landing page
/debug por qué el login falla
```

---

## Guía de Agentes

### ¿Qué son los Agentes?

Los agentes son personalidades de IA especializadas que manejan tareas específicas de desarrollo. El sistema detecta automáticamente el contexto y aplica el agente apropiado, pero también puedes invocarlos manualmente.

---

### Agentes de Desarrollo

#### 1. `backend-specialist`

**Cuándo usar:** Desarrollo del lado del servidor, APIs, integración de bases de datos, autenticación

**Palabras clave:** backend, server, api, endpoint, database, auth

**Stack:** Node.js, Python, Hono, Fastify, Express, FastAPI, Django

**Skills cargados:** clean-code, nodejs-best-practices, python-patterns, api-patterns, database-design

**Ejemplos:**
```
@backend-specialist "Crear API REST para autenticación de usuarios"
@backend-specialist "Crear API GraphQL para blog"
@backend-specialist "Implementar autenticación JWT con refresh tokens"
@backend-specialist "Crear endpoint para subir archivos a S3"
@backend-specialist "Crear API de chat en tiempo real con WebSockets"
@backend-specialist "Diseñar schema de base de datos para SaaS"
@backend-specialist "Crear endpoints REST para CRUD"
@backend-specialist "Implementar login OAuth2 con Google y GitHub"
```

**Responsabilidades principales:**
- Diseñar e implementar APIs
- Integración con bases de datos
- Autenticación/autorización
- Validación del lado del servidor
- Mejores prácticas de seguridad

---

#### 2. `frontend-specialist`

**Cuándo usar:** Componentes de UI, React/Next.js, estilos, diseño responsivo

**Palabras clave:** component, react, vue, ui, ux, css, tailwind, responsive

**Stack:** React, Next.js, Vue, Tailwind CSS, TypeScript

**Skills cargados:** clean-code, react-patterns, nextjs-best-practices, tailwind-patterns, frontend-design

**Ejemplos:**
```
@frontend-specialist "Crear formulario de inicio de sesión con validación"
@frontend-specialist "Crear menú de navegación responsivo"
@frontend-specialist "Crear tabla de datos con ordenamiento y filtros"
@frontend-specialist "Crear componente modal con animaciones"
@frontend-specialist "Crear toggle de modo oscuro con persistencia"
@frontend-specialist "Crear dashboard con gráficos"
@frontend-specialist "Crear tarjeta de producto con efectos hover"
@frontend-specialist "Crear formulario wizard de múltiples pasos"
```

**Características clave:**
- Diseño Anti-Safe Harbor (sin plantillas genéricas)
- Enfoque en rendimiento
- Cumplimiento de accesibilidad
- Diseño responsivo mobile-first

---

#### 3. `database-architect`

**Cuándo usar:** Diseño de esquema, optimización de queries, migraciones, modelado de datos

**Palabras clave:** database, sql, schema, migration, query, postgres, index, table

**Stack:** PostgreSQL, SQLite, Turso, Neon, MongoDB

**Skills cargados:** clean-code, database-design

**Ejemplos:**
```
@database-architect "Diseñar esquema para e-commerce con usuarios, productos, pedidos"
@database-architect "Crear migración para agregar roles de usuario"
@database-architect "Optimizar query lenta del dashboard"
@database-architect "Diseñar esquema para SaaS multi-tenant"
@database-architect "Crear índices para mejor rendimiento"
@database-architect "Diseñar esquema para red social"
@database-architect "Configurar replicación de base de datos"
@database-architect "Diseñar esquema para sistema de reservas"
```

---

#### 4. `devops-engineer`

**Cuándo usar:** CI/CD, Docker, despliegue, infraestructura

**Palabras clave:** docker, ci/cd, deployment, aws, kubernetes, nginx

**Stack:** Vercel, Railway, Fly.io, AWS, Docker, Kubernetes

**Skills cargados:** deployment-procedures, server-management

**Ejemplos:**
```
@devops-engineer "Configurar pipeline CI/CD para app Next.js"
@devops-engineer "Configurar Docker para API Node.js"
@devops-engineer "Configurar despliegue con Kubernetes"
@devops-engineer "Configurar nginx como reverse proxy"
@devops-engineer "Configurar monitoreo con Prometheus"
@devops-engineer "Configurar SSL con Let's Encrypt"
@devops-engineer "Configurar auto-scaling en AWS"
@devops-engineer "Crear Dockerfile para app React"
```

---

#### 5. `mobile-developer`

**Cuándo usar:** Apps iOS/Android, React Native, Flutter

**Palabras clave:** mobile, ios, android, react-native, flutter, app

**Stack:** React Native, Flutter, Swift, Kotlin

**Ejemplos:**
```
@mobile-developer "Crear app de seguimiento de fitness"
@mobile-developer "Crear lista de tareas con React Native"
@mobile-developer "Crear app del clima con ubicación"
@mobile-developer "Crear app de chat con mensajes en tiempo real"
@mobile-developer "Crear UI de app de entrega de comida"
@mobile-developer "Configurar notificaciones push"
@mobile-developer "Crear app offline-first con sincronización"
@mobile-developer "Crear reproductor de música con controles"
```

---

#### 6. `game-developer`

**Cuándo usar:** Desarrollo de juegos, juegos 2D/3D, juegos web

**Palabras clave:** game, unity, godot, webgl, phaser

**Stack:** Unity, Godot, Phaser, Three.js

**Skills cargados:** game-development

**Ejemplos:**
```
@game-developer "Crear juego de plataformas 2D"
@game-developer "Crear juego de puzzles con niveles"
@game-developer "Crear juego de defensa de torres"
@game-developer "Crear juego de naves espaciales"
@game-developer "Crear juego de carreras con física"
@game-developer "Crear juego de cartas multiplayer"
@game-developer "Crear shooter 3D en primera persona"
@game-developer "Crear juego endless runner"
```

---

### Agentes de Seguridad

#### 7. `security-auditor`

**Cuándo usar:** Revisión de seguridad, evaluación de vulnerabilidades, cumplimiento OWASP

**Palabras clave:** security, vulnerability, owasp, xss, injection, auth, encrypt

**Filosofía:** "Asumir brecha. No confiar en nada. VerSkills cargados:**ificar todo."

** clean-code, vulnerability-scanner, red-team-tactics

**Ejemplos:**
```
@security-auditor "Revisar código de autenticación en busca de vulnerabilidades"
@security-auditor "Buscar inyección SQL en formulario de login"
@security-auditor "Auditar endpoints de API para seguridad"
@security-auditor "Revisar flujo de recuperación de contraseña"
@security-auditor "Buscar vulnerabilidades XSS"
@security-auditor "Auditar funcionalidad de subida de archivos"
@security-auditor "Revisar manejo de sesiones"
@security-auditor "Buscar vulnerabilidades CSRF"
```

**Qué verifican:**
- OWASP Top 10 vulnerabilidades
- Validación de entradas
- Flujos de autenticación
- Cifrado de datos
- Inyección SQL
- Prevención XSS

---

#### 8. `penetration-tester`

**Cuándo usar:** Pruebas activas de seguridad, simulación de exploits

**Palabras clave:** pentest, penetration, hacking, exploit

**Skills cargados:** red-team-tactics

**Ejemplos:**
```
@penetration-tester "Realizar auditoría de seguridad en sistema de login"
@penetration-tester "Probar API contra inyecciones"
@penetration-tester "Simular ataque de fuerza bruta"
@penetration-tester "Buscar exposición de datos sensibles"
@penetration-tester "Probar bypass de autenticación"
@penetration-tester "Realizar prueba de penetración completa"
@penetration-tester "Probar escalación de privilegios"
@penetration-tester "Verificar rate limiting de API"
```

---

### Agentes de Calidad

#### 9. `test-engineer`

**Cuándo usar:** Crear y ejecutar pruebas

**Palabras clave:** test, testing, unit, e2e, coverage

**Stack:** Vitest, Jest, Playwright, Mocha

**Skills cargados:** testing-patterns, tdd-workflow

**Ejemplos:**
```
@test-engineer "Escribir pruebas unitarias para servicio de usuarios"
@test-engineer "Crear pruebas E2E para flujo de login"
@test-engineer "Escribir pruebas para endpoints de API"
@test-engineer "Crear pruebas de integración para checkout"
@test-engineer "Escribir pruebas para funciones utilitarias"
@test-engineer "Crear reporte de cobertura de pruebas"
@test-engineer "Escribir pruebas para componentes React"
@test-engineer "Crear pruebas mock para APIs externas"
```

---

#### 10. `qa-automation-engineer`

**Cuándo usar:** Infraestructura de automatización de pruebas, pruebas de regresión

**Palabras clave:** qa, automation, regression, ci

**Skills cargados:** testing-patterns, webapp-testing

**Ejemplos:**
```
@qa-automation-engineer "Configurar pruebas E2E automatizadas con Playwright"
@qa-automation-engineer "Crear suite de pruebas de regresión"
@qa-automation-engineer "Configurar pruebas de regresión visual"
@qa-automation-engineer "Crear framework de automatización"
@qa-automation-engineer "Configurar CI/CD con automatización"
@qa-automation-engineer "Crear pruebas de rendimiento"
@qa-automation-engineer "Configurar dashboard de reportes"
@qa-automation-engineer "Crear factory de datos de prueba"
```

---

#### 11. `performance-optimizer`

**Cuándo usar:** Optimización de rendimiento, profiling, Lighthouse

**Palabras clave:** performance, speed, optimization, lighthouse, bundle

**Skills cargados:** performance-profiling

**Ejemplos:**
```
@performance-optimizer "Optimizar tamaño del bundle y tiempo de carga"
@performance-optimizer "Mejorar velocidad de carga de página"
@performance-optimizer "Optimizar queries de base de datos"
@performance-optimizer "Reducir re-renders de React"
@performance-optimizer "Optimizar carga de imágenes"
@performance-optimizer "Mejorar tiempo de respuesta de API"
@performance-optimizer "Optimizar uso de memoria"
@performance-optimizer "Configurar estrategia de caché"
```

---

### Agentes de Análisis

#### 12. `debugger`

**Cuándo usar:** Investigación sistemática de errores

**Palabras clave:** bug, error, debug, fix, issue

**Flujo:** Recopilar → Formar Hipótesis → Investigar → Corregir → Prevenir

**Ejemplos:**
```
@debugger "Corregir que login no funcione en producción"
@debugger "Depurar API retornando error 500"
@debugger "Corregir fuga de memoria en Node.js"
@debugger "Corregir que formulario no envíe datos"
@debugger "Corregir condición de carrera en pagos"
@debugger "Depurar problemas de conexión WebSocket"
@debugger "Corregir que datos no se guarden en BD"
@debugger "Depurar expiración de token de sesión"
```

---

#### 13. `explorer-agent`

**Cuándo usar:** Mapeo de codebase, entender proyectos existentes

**Palabras clave:** explore, map, structure, codebase

**Ejemplos:**
```
@explorer-agent "Mapear la estructura de este proyecto legacy"
@explorer-agent "Encontrar todos los endpoints de API"
@explorer-agent "Mapear modelos de base de datos"
@explorer-agent "Encontrar implementación de autenticación"
@explorer-agent "Mapear jerarquía de componentes"
@explorer-agent "Encontrar todas las queries de BD"
@explorer-agent "Mapear integraciones de terceros"
@explorer-agent "Encontrar patrones de estado"
```

---

#### 14. `code-archaeologist`

**Cuándo usar:** Documentar código legacy, entender sistemas antiguos

**Palabras clave:** legacy, documentation, ancient

**Ejemplos:**
```
@code-archaeologist "Documentar esta app Ruby on Rails sin documentación"
@code-archaeologist "Crear docs para sistema de pagos antiguo"
@code-archaeologist "Documentar endpoints de API legacy"
@code-archaeologist "Mapear y documentar código espagueti"
@code-archaeologist "Crear diagrama de arquitectura"
@code-archaeologist "Documentar lógica de negocio"
@code-archaeologist "Crear documentación de API desde código"
@code-archaeologist "Documentar flujo de datos"
```

---

### Agentes de Producto

#### 15. `product-manager`

**Cuándo usar:** Planificación de funcionalidades, roadmap, priorización

**Palabras clave:** roadmap, feature, product, planning

**Ejemplos:**
```
@product-manager "Planificar el siguiente sprint para la app móvil"
@product-manager "Crear roadmap de features para Q1"
@product-manager "Planificar nuevas features del dashboard"
@product-manager "Priorizar elementos del backlog"
@product-manager "Planificar flujo de onboarding"
@product-manager "Crear documento de visión de producto"
@product-manager "Planificar features de analíticas"
@product-manager "Planificar sistema de notificaciones"
```

---

#### 16. `product-owner`

**Cuándo usar:** Definición de requisitos, historias de usuario, priorización de backlog

**Palabras clave:** user-story, requirements, priority, backlog

**Ejemplos:**
```
@product-owner "Crear historias de usuario para el flujo de checkout"
@product-owner "Escribir requisitos para feature de login"
@product-owner "Crear criterios de aceptación"
@product-owner "Escribir historias de usuario para admin"
@product-owner "Definir features del MVP"
@product-owner "Crear especificaciones de features"
@product-owner "Escribir historias de usuario para búsqueda"
@product-owner "Definir métricas de éxito"
```

---

#### 17. `project-planner`

**Cuándo usar:** Crear planes detallados, desglose de tareas

**Palabras clave:** plan, task-breakdown, milestone

**Salida:** `docs/PLAN-{slug}.md`

**Ejemplos:**
```
@project-planner "Crear plan para construir dashboard SaaS"
@project-planner "Planificar migración de REST a GraphQL"
@project-planner "Crear plan para desarrollo de app móvil"
@project-planner "Planificar construcción de plataforma e-commerce"
@project-planner "Crear plan para rediseño de API"
@project-planner "Planificar migración de stack tecnológico"
@project-planner "Crear plan para proyecto de rediseño"
@project-planner "Planificar arquitectura de microservicios"
```

---

### Agentes de Soporte

#### 18. `documentation-writer`

**Cuándo usar:** Crear README, documentación de APIs, guías

**Palabras clave:** docs, documentation, readme, guide

**Skills cargados:** documentation-templates

**Ejemplos:**
```
@documentation-writer "Escribir documentación de API para endpoints de auth"
@documentation-writer "Crear README del proyecto"
@documentation-writer "Escribir guía de configuración para desarrolladores"
@documentation-writer "Crear guía de contribuciones"
@documentation-writer "Escribir documentación de despliegue"
@documentation-writer "Crear referencia de API"
@documentation-writer "Escribir manual de usuario"
@documentation-writer "Crear guía de solución de problemas"
```

---

#### 19. `seo-specialist`

**Cuándo usar:** Optimización SEO, meta tags, schema markup

**Palabras clave:** seo, ranking, google, meta, schema

**Skills cargados:** seo-fundamentals

**Ejemplos:**
```
@seo-specialist "Optimizar landing page para motores de búsqueda"
@seo-specialist "Agregar datos estructurados a páginas de productos"
@seo-specialist "Optimizar imágenes para SEO"
@seo-specialist "Mejorar velocidad de página para SEO"
@seo-specialist "Crear sitemap.xml"
@seo-specialist "Optimizar meta tags en todo el sitio"
@seo-specialist "Configurar Google Search Console"
@seo-specialist "Auditar sitio para problemas de SEO"
```

---

#### 20. `orchestrator`

**Cuándo usar:** Coordinar múltiples agentes para tareas complejas

**Filosofía:** Mínimo 3 agentes diferentes por tarea

**Fases:** Planificación → Aprobación → Implementación → Verificación

**Ejemplos:**
```
@orchestrator "Construir plataforma e-commerce completa"
@orchestrator "Crear aplicación SaaS full-stack"
@orchestrator "Crear app móvil completa con backend"
@orchestrator "Crear sistema de diseño con componentes"
@orchestrator "Crear sistema de autenticación completo"
@orchestrator "Crear aplicación de chat en tiempo real"
@orchestrator "Crear dashboard de analíticas desde cero"
@orchestrator "Crear plataforma de blog completa"
```

---

## Guía de Comandos

Comandos son workflows predefinidos que se invocan con `/`.

---

### Comandos de Creación

#### `/create` - Crear Aplicación

Inicia el proceso de crear una nueva aplicación.

**Ejemplos:**
```
/create sitio de blog
/create app e-commerce con carrito de compras
/create app de tareas con React y Firebase
/create clon de Instagram con features sociales
/create sistema CRM con gestión de clientes
/create sitio de portafolio con modo oscuro
/create plataforma de reservas con calendario
/create aplicación de chat en tiempo real
/create dashboard SaaS con analíticas
/create app de entrega de comida con mapa
/create sistema de gestión de aprendizaje
/create tablero de trabajos con autenticación
```

**Flujo:**
1. Análisis de requisitos
2. Planificación del proyecto
3. Construcción con agentes especializados
4. Vista previa automática

---

#### `/enhance` - Añadir Funcionalidades

Añade o actualiza funcionalidades en aplicación existente.

**Ejemplos:**
```
/enhance agregar modo oscuro a la app
/enhance construir panel de admin para usuarios
/enhance integrar sistema de pagos con Stripe
/enhance agregar funcionalidad de búsqueda con filtros
/enhance agregar página de perfil de usuario
/enhance implementar notificaciones por email
/enhance agregar login social con Google
/enhance construir dashboard de analíticas
/enhance agregar feature de subida de archivos
/enhance implementar caché con Redis
/enhance agregar soporte multiidioma
/enhance construir documentación de API
```

---

### Comandos de Planificación

#### `/plan` - Crear Plan

Crea un archivo de plan detallado SIN escribir código.

**Ejemplos:**
```
/plan sitio e-commerce con pagos
/plan app móvil para fitness
/plan dashboard SaaS con analíticas
/plan aplicación de chat en tiempo real
/plan plataforma de blog con CMS
/plan tablero de trabajos con auth
/plan app de entrega de comida
/plan sistema de gestión de aprendizaje
/plan CRM con automatización
/plan portafolio con CMS
/plan red social
/plan dashboard IoT
```

**Salida:** `docs/PLAN-{slug}.md`

**Reglas:**
- ❌ NO escribe código
- ✅ Usa agente `project-planner`
- ✅ Hace preguntas clarificadoras primero

---

#### `/brainstorm` - Lluvia de Ideas

Explora múltiples opciones antes de implementar.

**Ejemplos:**
```
/brainstorm sistema de autenticación para SaaS
/brainstorm esquema de base de datos para app social
/brainstorm estrategia de caché para API
/brainstorm implementación de features en tiempo real
/brainstorm opciones de integración de pagos
/brainstorm arquitectura de funcionalidad de búsqueda
/brainstorm solución de almacenamiento de archivos
/brainstorm sistema de cola de mensajes
/brainstorm microservices vs monolith
/brainstorm configuración de CI/CD
/brainstorm estrategia de pruebas
/brainstorm solución de monitoreo
```

**Formato de salida:**
```
## 🧠 Brainstorm: [Tema]

### Opción A: [Nombre]
✅ Pros: ...
❌ Contras: ...

### Opción B: [Nombre]
✅ Pros: ...
❌ Contras: ...

## 💡 Recomendación
Opción X porque...
```

---

### Comandos de Debug

#### `/debug` - Debug Sistemático

Investiga problemas sistemáticamente.

**Ejemplos:**
```
/debug login no funciona en producción
/debug API retorna error 500
/debug formulario no envía datos
/debug sesión de usuario expira muy rápido
/debug procesamiento de pagos falla
/debug subida de archivos no funciona
/debug mensajes en tiempo real tardan
/debug conexión a base de datos timeout
/debug fuga de memoria en producción
/debug WebSocket se desconecta
/debug búsqueda no retorna resultados
/debug subida de imágenes falla
```

**Flujo:**
1. Recopilar Información
2. Formar Hipótesis
3. Investigar Sistemáticamente
4. Corregir y Prevenir

---

### Comandos de Calidad

#### `/test` - Pruebas

Genera y ejecuta pruebas.

**Ejemplos:**
```
/test ejecutar todas las pruebas
/test pruebas de servicio de auth
/test flujo de registro de usuario
/test reporte de cobertura
/test modo watch
/test corregir pruebas fallidas
/test pruebas de endpoint de API
/test pruebas de componentes
/test pruebas E2E de checkout
/test pruebas de integración
/test pruebas de rendimiento
/test pruebas de seguridad
```

---

#### `/status` - Estado del Proyecto

Muestra el estado actual del proyecto.

**Ejemplos:**
```
/status
/status completo
/status agentes
/status preview
```

---

### Comandos de Despliegue

#### `/deploy` - Despliegue

Despliega a producción con verificaciones previas.

**Ejemplos:**
```
/deploy a producción
/deploy verificar antes de desplegar
/deploy a preview
/deploy a staging
/deploy producción con skip tests
/deploy rollback a versión anterior
/deploy contenedor Docker
/deploy a Vercel
/deploy a Railway
/deploy a AWS
/deploy con dominio personalizado
/deploy con SSL
```

**Plataformas Soportadas:**
| Plataforma | Comando |
|------------|---------|
| Vercel | `vercel --prod` |
| Railway | `railway up` |
| Fly.io | `fly deploy` |
| Docker | `docker compose up -d` |

---

### Comandos de Preview

#### `/preview` - Gestión de Preview

Gestiona el servidor de preview.

**Ejemplos:**
```
/preview iniciar servidor
/preview detener servidor
/preview verificar estado
/preview reiniciar servidor
/preview abrir en navegador
/preview verificar puerto
/preview en puerto personalizado
/preview con hot reload
```

---

### Comandos Avanzados

#### `/orchestrate` - Orquestación

Coordina múltiples agentes para tareas complejas.

**Ejemplos:**
```
/orchestrate crear sistema de login completo
/orchestrate crear plataforma e-commerce completa
/orchestrate crear SaaS desde cero
/orchestrate crear app móvil con backend
/orchestrate crear dashboard de analíticas
/orchestrate crear chat en tiempo real
/orchestrate crear sistema de diseño
/orchestrate crear plataforma de API
/orchestrate crear CMS
/orchestrate crear red social
/orchestrate crear plataforma IoT
/orchestrate crear marketplace
```

**Reglas:**
- ✅ MÍNIMO 3 agentes diferentes
- ❌ Menos de 3 = NO es orquestación

**Fases:**
1. **Fase 1:** Planificación (solo project-planner)
2. **Punto de control:** Aprobación del usuario
3. **Fase 2:** Implementación (paralelo)
4. **Fase 3:** Verificación (scripts)

---

#### `/ui-ux-pro-max` - Diseño Avanzado

Comando especial para diseño con 50+ estilos.

**Ejemplos:**
```
/ui-ux-pro-max diseño de landing page
/ui-ux-pro-max UI de dashboard
/ui-ux-pro-max diseño de app móvil
/ui-ux-pro-max página de producto e-commerce
/ui-ux-pro-max layout de blog
/ui-ux-pro-max diseño de panel admin
/ui-ux-pro-max página de login
/ui-ux-pro-max página de perfil
/ui-ux-pro-max página de configuraciones
/ui-ux-pro-max componentes de tarjetas
/ui-ux-pro-max diseños de formularios
/ui-ux-pro-max menú de navegación
```

**Estilos disponibles:**
- Brutalist
- Neo-Retro
- Swiss Punk
- Liquid Digital
- Bauhaus Remix
- Y 50+ más

---

## Guía de Skills

Skills son módulos de conocimiento que se cargan automáticamente por los agentes.

### Skills de Desarrollo

| Skill | Descripción |
|-------|-------------|
| `clean-code` | Principios de código limpio |
| `react-patterns` | Patrones modernos de React |
| `nextjs-best-practices` | Optimizaciones de Next.js |
| `nodejs-best-practices` | Patrones de Node.js |
| `python-patterns` | Patrones de Python |
| `api-patterns` | Diseño de APIs |

### Skills de Frontend

| Skill | Descripción |
|-------|-------------|
| `frontend-design` | Principios de UI/UX |
| `tailwind-patterns` | Tailwind CSS |
| `mobile-design` | Diseño mobile |
| `i18n-localization` | Internacionalización |

### Skills de Backend

| Skill | Descripción |
|-------|-------------|
| `database-design` | Diseño de bases de datos |
| `server-management` | Gestión de servidores |
| `deployment-procedures` | Procedimientos de despliegue |

### Skills de Calidad

| Skill | Descripción |
|-------|-------------|
| `testing-patterns` | Patrones de pruebas |
| `tdd-workflow` | Desarrollo Guiado por Pruebas |
| `lint-and-validate` | Linting y validación |
| `webapp-testing` | Pruebas E2E con Playwright |

### Skills de Seguridad

| Skill | Descripción |
|-------|-------------|
| `vulnerability-scanner` | Scanner de vulnerabilidades |
| `red-team-tactics` | Tácticas de Red Team |
| `code-review-checklist` | Checklist de code review |

### Skills de Arquitectura

| Skill | Descripción |
|-------|-------------|
| `architecture` | Patrones de arquitectura |
| `app-builder` | Construcción de aplicaciones |
| `mcp-builder` | Servidores MCP |

### Skills Especializadas

| Skill | Descripción |
|-------|-------------|
| `game-development` | Desarrollo de juegos |
| `seo-fundamentals` | Fundamentos de SEO |
| `performance-profiling` | Perfilado de rendimiento |
| `brainstorming` | Técnicas de lluvia de ideas |
| `plan-writing` | Escritura de planes |
| `parallel-agents` | Patrones multi-agente |

---

## Ejemplos de Uso

### Flujo Completo

```bash
# 1. Planificar primero (para proyectos grandes)
/plan plataforma e-commerce

# 2. Crear (después de aprobación)
/create plataforma e-commerce

# 3. Añadir funcionalidades
/enhance add admin panel

# 4. Probar
/test coverage

# 5. Desplegar
/deploy production
```

### Flujo de Debug

```bash
/debug api retorna error 500
```

### Orquestación Multi-Agente

```bash
/orchestrate construir plataforma SaaS completa con auth, pagos, dashboard
```

### Tareas Rápidas

```bash
# Solo corregir algo
@debugger "Corregir que el botón de enviar no funcione"

# Añadir una funcionalidad simple
@frontend-specialist "Añadir toggle de modo oscuro al navbar"

# Revisar código
@security-auditor "Revisar implementación de login"

# Construir API
@backend-specialist "Crear API CRUD de usuarios"

# Optimizar rendimiento
@performance-optimizer "Acelerar carga de página"
```

---

## Consejos

1. **Detección automática** - No necesitas especificar el agente; el sistema detecta automáticamente
2. **Usa `/plan` antes de `/create`** - Para proyectos grandes
3. **Usa `/orchestrate`** - Para tareas complejas que requieren múltiples especialistas
4. **Skills se cargan automáticamente** - No necesitas invocar manualmente
5. **Siempre usa `/debug`** - Para errores, no asumas

---

## Configuración

El proyecto ya está configurado con la estructura `.opencode/` para descubrimiento automático de agentes y skills.

Estructura:
```
.agent/
├── agents/     # 20 agentes
├── skills/    # 36+ skills  
└── workflows/ # 11 comandos

.opencode/      # Symlinks para OpenCode
```

---

MIT © Iluminatto1970
