-- Seed data for Five Elements Template System
-- Based on coderef-foundation-scan-prompt-v1.md

-- Insert Categories (hierarchical structure)
INSERT INTO categories (name, parent_id) VALUES 
('Development', NULL),
('Agent Onboarding', (SELECT id FROM categories WHERE name = 'Development')),
('Initial Documentation', (SELECT id FROM categories WHERE name = 'Agent Onboarding')),
('Architecture Mapping', (SELECT id FROM categories WHERE name = 'Agent Onboarding')),
('Code Pattern Analysis', (SELECT id FROM categories WHERE name = 'Agent Onboarding')),
('Critical Path Discovery', (SELECT id FROM categories WHERE name = 'Agent Onboarding')),
('Integration Point Mapping', (SELECT id FROM categories WHERE name = 'Agent Onboarding')),
('Context Generation', (SELECT id FROM categories WHERE name = 'Agent Onboarding'));

-- Insert Variables
INSERT INTO variables (name, type) VALUES 
('code_location', 'text'),
('project_name', 'text'),
('time_limit', 'text'),
('output_verbosity', 'text'),
('scan_depth', 'text'),
('generate_artifacts', 'boolean'),
('agent_onboarding_mode', 'boolean'),
('include_code_examples', 'boolean'),
('map_data_flow', 'boolean'),
('map_component_relationships', 'boolean'),
('identify_critical_paths', 'boolean'),
('document_conventions', 'boolean'),
('analyze_integration_points', 'boolean'),
('create_agent_context', 'boolean'),
('deployment_platform', 'text'),
('has_database', 'boolean'),
('api_style', 'text'),
('framework_deep_dive', 'boolean'),
('performance_budget', 'text'),
('security_level', 'text'),
('maintenance_mode', 'boolean'),
('compliance_check', 'boolean'),
('monorepo_check', 'boolean'),
('follow_up_prompts', 'text'),
('documentation_quality_target', 'text');

-- Insert Static Content
INSERT INTO statics (name, content) VALUES 
('agent_onboarding_objectives', 'Create comprehensive codebase documentation for agent handoffs, identify all critical files and their purposes, map component relationships and data flows, extract coding conventions and patterns, document integration points and external dependencies, generate persistent knowledge artifacts, prepare context for specialized follow-up analysis'),

('critical_file_identification', 'Identify and document: main entry points (index files, app roots), configuration files (package.json, env configs, build configs), core business logic files, shared utilities and constants, API route definitions, database models and schemas, authentication/authorization logic, component libraries and design systems, state management setup, routing configurations'),

('code_pattern_analysis', 'Extract and document: naming conventions, file organization patterns, component architecture (HOC/render props/hooks), state management patterns, API calling patterns, error handling approaches, testing patterns, styling methodologies, data validation patterns, authentication flows, authorization patterns, performance optimization techniques'),

('integration_mapping', 'Document all external connections: third-party APIs and their usage, database connections and query patterns, authentication providers (OAuth, SAML, etc), payment processors, email services, file storage services, CDN configurations, monitoring and analytics services, deployment platforms, CI/CD integrations, environment-specific configurations'),

('data_flow_documentation', 'Map data movement through application: user input validation and processing, API request/response cycles, database query patterns, state updates and propagation, component prop drilling, context/store usage, side effect management, caching strategies, real-time data handling, error propagation patterns'),

('agent_handoff_context', 'Generate context for future agents: key architectural decisions and rationale, complex business logic explanations, known technical debt areas, performance bottlenecks identified, security considerations and implementations, testing strategies and gaps, deployment processes and requirements, common development workflows, troubleshooting guides for frequent issues'),

('documentation_artifacts', 'Generate persistent documentation files: CODEBASE_OVERVIEW.md with architecture summary, AGENT_CONTEXT.md with key findings for future agents, CRITICAL_PATHS.md mapping important workflows, INTEGRATION_GUIDE.md for external services, CONVENTIONS.md for coding standards, COMPONENT_MAP.md for UI architecture, API_DOCUMENTATION.md for backend patterns'),

('framework_deep_analysis', 'Framework-specific deep dive: Next.js (pages vs app router, middleware, API routes), React (component patterns, hooks usage, context patterns), Vue (composition vs options API, store patterns), Angular (modules, services, guards), Node.js (middleware patterns, error handling), database patterns (ORM usage, query optimization), styling approaches (CSS-in-JS, utility frameworks)'),

('technical_debt_assessment', 'Identify maintenance concerns: code complexity hotspots, outdated patterns or anti-patterns, missing error boundaries, performance bottlenecks, security vulnerabilities, accessibility gaps, testing coverage holes, documentation gaps, dependency risks, scalability limitations, code duplication patterns'),

('onboarding_checklist', 'Agent onboarding requirements: understand project purpose and domain, identify key stakeholders and decision makers, locate critical business logic, understand data models and relationships, map user journeys and workflows, identify testing strategies, understand deployment and release processes, locate documentation and knowledge bases, understand development workflows and tools'),

('project_classification', 'Detect project category: E-commerce (cart/checkout/payment), SaaS (subscription/billing/tenant), CMS (content models/editors), Dashboard (charts/metrics/real-time), Mobile-first (touch/gestures), Enterprise (SSO/audit/compliance), Portfolio/Marketing (animations/SEO), Internal tool (admin/crud)'),

('health_scoring', 'Calculate scores based on: Code Quality (linting/formatting/structure), Security Rating (vulnerabilities/auth/encryption), Performance Grade (bundle/vitals/optimization), Test Coverage (unit/integration/e2e), Maintainability Index (complexity/documentation/dependencies), Accessibility Score (WCAG/ARIA/semantics)');

-- Insert Foundation Scan Formula Template
INSERT INTO formulas (name, template, category_id) VALUES 
('Foundation Scan - Comprehensive Codebase Documentation & Agent Onboarding Scanner', 
'**COMPREHENSIVE CODEBASE DOCUMENTATION & AGENT ONBOARDING SCANNER**
Generate comprehensive documentation for {project_name} at {code_location} to onboard future agents.

Agent onboarding mode: {agent_onboarding_mode}
Time allocation: {time_limit}
Scan depth: {scan_depth}
Documentation target: {documentation_quality_target}
Generate artifacts: {generate_artifacts}

**Phase 1: Project Foundation & Purpose**
{static:agent_onboarding_objectives}
{static:onboarding_checklist}
- Project name: {project_name}
- Maintenance status: {maintenance_mode}

**Phase 2: Critical File & Component Mapping**
{static:critical_file_identification}
Map component relationships: {map_component_relationships}

**Phase 3: Code Pattern & Convention Analysis**
{static:code_pattern_analysis}
Document conventions: {document_conventions}
Include code examples: {include_code_examples}

**Phase 4: Framework-Specific Deep Dive**
{static:framework_deep_analysis}
Framework deep analysis: {framework_deep_dive}

**Phase 5: Data Flow & Architecture Mapping**
{static:data_flow_documentation}
Map data flow: {map_data_flow}
Identify critical paths: {identify_critical_paths}

**Phase 6: Integration Points & External Dependencies**
{static:integration_mapping}
Analyze integration points: {analyze_integration_points}
- Deployment platform: {deployment_platform}
- Database present: {has_database}
- API style: {api_style}

**Phase 7: Technical Debt & Maintenance Assessment**
{static:technical_debt_assessment}
Security level: {security_level}
Performance budget: {performance_budget}

**Phase 8: Agent Context Generation**
{static:agent_handoff_context}
Create agent context: {create_agent_context}

**Phase 9: Documentation Artifact Creation**
{static:documentation_artifacts}
{static:project_classification}
Monorepo analysis: {monorepo_check}

**Phase 10: Health Scoring & Follow-up Planning**
{static:health_scoring}

**Output Required:**

Generate complete documentation file: coderef-scan-results.md

### 📚 AGENT ONBOARDING DOCUMENTATION

#### 🎯 Project Overview
- **Project Name:** {project_name}
- **Purpose & Domain:** [Business purpose and target users]
- **Project Type:** [Auto-detected category from {static:project_classification}]
- **Complexity Level:** [Simple/Moderate/Complex/Enterprise]
- **Development Stage:** [Prototype/Active/Maintenance/Legacy]
- **Key Stakeholders:** [Identified decision makers and domain experts]

#### 🏗️ Architecture Deep Dive
- **Framework & Version:** [Detailed framework analysis]
- **Architecture Pattern:** [MVC/Component-based/Microservices/etc]
- **Key Technologies:** [Complete tech stack with versions]
- **Project Structure:** [Detailed folder organization with purposes]
- **Entry Points:** [All application entry points with flow explanations]
- **Design System:** [Component library and styling approach]

#### 🔗 Critical File Map
**Core Business Logic:**
- [File path]: [Purpose and key functions]
- [File path]: [Purpose and key functions]

**Configuration Files:**
- [File path]: [What it configures and critical settings]

**Integration Points:**
- [File path]: [External service connections and patterns]

**Shared Utilities:**
- [File path]: [Reusable functions and constants]

#### 📋 Component Relationship Map
[Visual representation of component dependencies and data flow]
- **Parent Components:** [Top-level containers]
- **Shared Components:** [Reusable UI elements]  
- **Data Flow:** [How data moves between components]

#### 🔧 Development Patterns & Conventions
**Naming Conventions:**
- Files: [Pattern explanation with examples]
- Components: [Pattern explanation with examples]
- Variables/Functions: [Pattern explanation with examples]

**Code Organization:**
- [Pattern description with examples if {include_code_examples}]

**Common Patterns:**
- [Frequently used patterns with code examples if {include_code_examples}]

#### 🌊 Data Flow Documentation
**State Management:**
- [Approach used and key patterns]
- [Global state structure]
- [Local state patterns]

**API Patterns:**
- [Request/response patterns and conventions]
- [Error handling approaches]
- [Authentication flow]

**Database Patterns:**
- [Query patterns and data modeling if {has_database}]
- [ORM/query builder usage]

#### 🔌 External Integration Guide
**Third-Party Services:**
- [Service name]: [Purpose, configuration, usage patterns]

**APIs:**
- [API name]: [Endpoints used, authentication, data formats]

**Infrastructure:**
- [Platform]: [Configuration and deployment details]

#### ⚠️ Critical Knowledge for Agents
**Must-Know Areas:**
1. [Critical business logic that agents must understand]
2. [Key constraints and limitations]
3. [Security-sensitive areas requiring careful handling]
4. [Complex workflows requiring special attention]

**Common Pitfalls:**
1. [Known issues agents should avoid]
2. [Complex areas requiring extra attention]
3. [Performance bottlenecks to be aware of]

**Development Workflow:**
- [How to run the application locally]
- [Testing procedures and commands]
- [Deployment process and requirements]
- [Code review and quality standards]

#### 📈 Technical Debt & Improvement Areas
**High Priority:**
- [Critical issues requiring immediate attention]

**Medium Priority:**
- [Important improvements for future iterations]

**Low Priority:**
- [Nice-to-have optimizations]

#### 🎯 Recommended Follow-up Analysis
Based on findings, run these specialized prompts next:
{follow_up_prompts}

**Suggested Next Steps:**
- dependency-identification.md [if complex dependency tree detected]
- security-audit.md [if security concerns identified]
- performance-analysis.md [if performance issues found]
- [additional prompts based on project type and discoveries]

#### 📋 Generated Documentation Artifacts
**Agent Context Files Created:**
[List of created documentation files if {generate_artifacts}]
- CODEBASE_OVERVIEW.md
- AGENT_CONTEXT.md  
- CRITICAL_PATHS.md
- INTEGRATION_GUIDE.md
- CONVENTIONS.md
- COMPONENT_MAP.md
- API_DOCUMENTATION.md

#### 🏥 Project Health Dashboard
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📊 **Overall Health Score: [X.X/10]**
├─ 🔒 Security Rating: [A-F] ([XX/100])
├─ ⚡ Performance Grade: [1-100]
├─ 🧪 Test Coverage: [XX%]
├─ 📦 Bundle Health: [✅/⚠️/❌] ([size vs {performance_budget}])
├─ 🔧 Maintainability Index: [X/10]
├─ 📚 Documentation Quality: [A-F]
└─ ♿ Accessibility Score: [A-F]

Include code examples: {include_code_examples}
Output detail level: {output_verbosity}',
(SELECT id FROM categories WHERE name = 'Initial Documentation'));

-- Insert Default Context for Agent Onboarding
INSERT INTO contexts (user_id, defaults) VALUES 
('default_agent_onboarding', '{
  "code_location": "[provide repository/files]",
  "project_name": "[auto-detect from package.json]",
  "time_limit": "Deep dive - 20+ minute comprehensive documentation",
  "output_verbosity": "Exhaustive with code examples and detailed explanations",
  "scan_depth": "Complete documentation - leave no stone unturned",
  "generate_artifacts": true,
  "agent_onboarding_mode": true,
  "include_code_examples": true,
  "map_data_flow": true,
  "map_component_relationships": true,
  "identify_critical_paths": true,
  "document_conventions": true,
  "analyze_integration_points": true,
  "create_agent_context": true,
  "deployment_platform": "Auto-detect",
  "has_database": true,
  "api_style": "Auto-detect",
  "framework_deep_dive": true,
  "performance_budget": "<500kb for initial load",
  "security_level": "Standard",
  "maintenance_mode": false,
  "compliance_check": true,
  "monorepo_check": true,
  "follow_up_prompts": "dependency-identification.md, security-audit.md, performance-analysis.md",
  "documentation_quality_target": "Expert-level for agent onboarding"
}');