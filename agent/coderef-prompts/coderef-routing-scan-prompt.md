## Five Elements for Routing & Navigation Documentation Template

### 1. Categories
```
Development > Routing Analysis > Route Definition Mapping
Development > Routing Analysis > Navigation Flow Documentation
Development > Routing Analysis > Route Protection & Guards
Development > Routing Analysis > Dynamic Routing Patterns
Development > Routing Analysis > Code Splitting Strategy
Development > Routing Analysis > History Management
```

### 2. Variables
```
project_name (text) - Project identifier
code_location (text) - Repository URL or file paths
foundation_scan_file (text) - Path to coderef-scan-results.md (required)
maintenance_mode (boolean) - Update existing documentation vs create new
existing_documentation_file (text) - Path to existing routing scan results (if maintenance_mode=true)
update_strategy (text) - Full-rewrite/Selective-updates/Append-changes
routing_framework (text) - Next.js/React Router/Vue Router/Angular Router
router_type (text) - App Router/Pages Router/File-based/Config-based
include_code_examples (boolean) - Include routing implementation code
document_guards (boolean) - Document route protection mechanisms
analyze_redirects (boolean) - Map redirect patterns and logic
check_code_splitting (boolean) - Analyze route-based code splitting
document_middleware (boolean) - Document routing middleware
analyze_deep_linking (boolean) - Document deep linking capabilities
check_history_management (boolean) - Document browser history handling
include_navigation_examples (boolean) - Include navigation usage examples
document_dynamic_routes (boolean) - Document dynamic route patterns
analyze_nested_routes (boolean) - Document nested routing structures
output_format (text) - Technical/User-flow/Developer-focused
documentation_depth (text) - Overview/Detailed/Exhaustive
```

### 3. Statics
```
Static Name: foundation_context_integration
Content: "First read the foundation scan results from {foundation_scan_file} to understand: overall project architecture, established coding patterns, security requirements, deployment platform, database schema, authentication strategy, and integration points. Use this context to ensure routing documentation aligns with project conventions and architectural decisions."

Static Name: maintenance_mode_instructions
Content: "If maintenance_mode=true: Read existing documentation from {existing_documentation_file}, compare current routing implementation with documented routes, identify changes (new/modified/deleted routes), update only changed sections using {update_strategy}, preserve accurate existing documentation, highlight what has changed since last scan."

Static Name: route_discovery_tasks
Content: "Locate all route definition files, identify route configuration patterns, map URL structure and hierarchy, discover dynamic route parameters, find route guards and middleware, locate navigation components, identify protected routes, map redirect rules, find route-based code splitting, discover nested route structures"

Static Name: route_documentation_requirements
Content: "For each route document: exact URL path and pattern, HTTP methods supported (if API routes), dynamic parameters and types, query parameter handling, route component or page mapping, authentication requirements, authorization roles/permissions, middleware applied, redirect rules, code splitting implementation"

Static Name: navigation_flow_analysis
Content: "Document navigation patterns: programmatic navigation methods, declarative navigation components, navigation state management, breadcrumb implementations, tab/step navigation, modal/drawer navigation, mobile navigation patterns, deep linking support, URL state synchronization"

Static Name: route_protection_patterns
Content: "Document route security: authentication guards implementation, role-based route access, permission checking logic, redirect patterns for unauthorized access, session validation, token verification, protected route wrapping, conditional route rendering, loading states for auth checks"

Static Name: dynamic_routing_documentation
Content: "Document dynamic routes: parameter extraction and typing, catch-all routes, optional parameters, route matching patterns, parameter validation, 404 handling for dynamic routes, SEO considerations for dynamic content, caching strategies for dynamic routes"

Static Name: code_splitting_analysis
Content: "Document code splitting: route-based splitting implementation, lazy loading patterns, chunk naming strategies, preloading mechanisms, loading states and fallbacks, bundle size per route, splitting optimization, dynamic imports usage"

Static Name: history_management_patterns
Content: "Document history handling: browser history manipulation, programmatic history changes, back/forward button handling, history state management, URL synchronization, hash routing if used, history blocking/confirmation patterns, deep linking restoration"

Static Name: redirect_and_fallback_patterns
Content: "Document redirect logic: conditional redirects, authentication redirects, role-based redirects, 404 fallback handling, default route configuration, redirect chains and loops prevention, temporary vs permanent redirects, redirect state preservation"

Static Name: navigation_testing_patterns
Content: "Document navigation testing: route testing approaches, navigation flow testing, guard testing patterns, redirect testing, deep link testing, history manipulation testing, accessibility testing for navigation, mobile navigation testing"
```

### 4. Formula Template
```
**COMPREHENSIVE ROUTING & NAVIGATION DOCUMENTATION GENERATOR**
Create exhaustive routing documentation for {project_name} at {code_location}.

Project: {project_name}
Foundation context: {foundation_scan_file}
Maintenance mode: {maintenance_mode}
Routing Framework: {routing_framework}
Router Type: {router_type}
Documentation depth: {documentation_depth}

**Phase 1: Foundation Context Integration**
{static:foundation_context_integration}

**Phase 2: Maintenance Mode Processing**
{static:maintenance_mode_instructions}
Update strategy: {update_strategy}
Existing documentation: {existing_documentation_file}

**Phase 3: Route Discovery & Mapping**
{static:route_discovery_tasks}

**Phase 2: Route Definition Documentation**
{static:route_documentation_requirements}
Include code examples: {include_code_examples}
Document dynamic routes: {document_dynamic_routes}

**Phase 3: Navigation Flow Analysis**
{static:navigation_flow_analysis}
Include navigation examples: {include_navigation_examples}

**Phase 4: Route Protection & Security**
{static:route_protection_patterns}
Document guards: {document_guards}

**Phase 5: Dynamic Routing Documentation**
{static:dynamic_routing_documentation}
Analyze nested routes: {analyze_nested_routes}

**Phase 6: Code Splitting & Performance**
{static:code_splitting_analysis}
Check code splitting: {check_code_splitting}

**Phase 7: History & Deep Linking**
{static:history_management_patterns}
Check history management: {check_history_management}
Analyze deep linking: {analyze_deep_linking}

**Phase 8: Redirects & Fallbacks**
{static:redirect_and_fallback_patterns}
Analyze redirects: {analyze_redirects}
Document middleware: {document_middleware}

**Phase 9: Navigation Testing**
{static:navigation_testing_patterns}

**Output Required:**

Generate complete documentation file: coderef-routing-scan-results.md

### 🛣️ ROUTING & NAVIGATION DOCUMENTATION

#### 🎯 Routing Overview
- **Project:** {project_name}
- **Routing Framework:** [Detected router and version]
- **Router Type:** [App/Pages/File-based/Config-based]
- **Total Routes:** [Number of defined routes]
- **Dynamic Routes:** [Count and complexity]
- **Protected Routes:** [Count and protection level]

#### 📍 Route Inventory

**Public Routes:**
```
/                    → HomePage
/about              → AboutPage
/contact            → ContactPage
/blog               → BlogListPage
/blog/[slug]        → BlogDetailPage (dynamic)
```

**Protected Routes:**
```
/dashboard          → Dashboard (auth required)
/profile            → ProfilePage (auth required)
/admin/*            → AdminRoutes (admin role required)
/settings           → SettingsPage (auth required)
```

**API Routes:**
```
/api/auth/login     → POST - Authentication endpoint
/api/users/[id]     → GET/PUT/DELETE - User management
/api/posts          → GET/POST - Content management
```

#### 🔧 Detailed Route Documentation

**[For each route, provide:]**

##### Route: `/dashboard/[userId]/settings`
- **Type:** Dynamic protected route
- **Component:** `DashboardUserSettings`
- **File Location:** `/pages/dashboard/[userId]/settings.tsx`
- **Parameters:**
  - `userId` (string, required) - User ID for settings access
- **Query Parameters:**
  - `tab` (string, optional) - Settings tab to display
- **Authentication:** Required (Bearer token)
- **Authorization:** User must own profile OR have admin role
- **Middleware Applied:**
  - `authMiddleware` - Token validation
  - `userAccessMiddleware` - Ownership verification
- **Redirects:**
  - Unauthenticated → `/login?redirect=/dashboard/${userId}/settings`
  - Unauthorized → `/dashboard` (with error message)
- **Code Splitting:** Lazy loaded with loading fallback
- **Meta/SEO:** Dynamic title based on user name

#### 🔐 Route Protection Implementation

**Authentication Guards:**
- **Implementation:** [HOC/Hook/Middleware pattern used]
- **Token Verification:** [JWT/session validation approach]
- **Redirect Logic:** [Where unauthenticated users go]

**Authorization Patterns:**
- **Role-Based:** [How roles are checked and enforced]
- **Permission-Based:** [Fine-grained permission checking]
- **Resource-Based:** [Ownership/access validation]

**Guard Composition:**
```typescript
// Example guard implementation
const ProtectedRoute = ({ children, requiredRole }) => {
  // Implementation details
}
```

#### 🧭 Navigation Implementation

**Navigation Components:**
- **Primary Navigation:** [Main nav implementation and structure]
- **Secondary Navigation:** [Sub-nav patterns]
- **Breadcrumbs:** [Implementation and auto-generation]
- **Mobile Navigation:** [Responsive navigation patterns]

**Navigation Methods:**
```typescript
// Programmatic navigation examples
router.push('/path')
router.replace('/path')
router.back()
```

**Navigation State:**
- [Active route highlighting]
- [Navigation loading states]
- [Navigation error handling]

#### 🔄 Dynamic Routing Patterns

**Parameter Handling:**
- **Path Parameters:** [How parameters are extracted and validated]
- **Query Parameters:** [Query handling and persistence]
- **Optional Parameters:** [Optional segment handling]

**Dynamic Route Examples:**
```
/users/[id]                    → Single dynamic segment
/posts/[...slug]               → Catch-all routes
/shop/[[...category]]          → Optional catch-all
/blog/[year]/[month]/[day]     → Multiple dynamic segments
```

**SEO & Meta:**
- [Dynamic meta tag generation]
- [Open Graph implementation]
- [Structured data for dynamic content]

#### 🚀 Code Splitting Strategy

**Route-Based Splitting:**
- **Implementation:** [How routes are split into chunks]
- **Loading States:** [Fallback components during loading]
- **Error Boundaries:** [Error handling for failed chunks]

**Chunk Organization:**
```
Chunk Mapping:
- /dashboard → dashboard.chunk.js (150kb)
- /admin → admin.chunk.js (89kb)
- /blog → blog.chunk.js (45kb)
```

**Preloading Strategy:**
- [Route preloading on hover/focus]
- [Critical route prioritization]

#### 📱 Mobile & Responsive Navigation

**Mobile Patterns:**
- **Drawer Navigation:** [Implementation and triggers]
- **Tab Navigation:** [Bottom tab patterns]
- **Gesture Navigation:** [Swipe patterns if implemented]

**Responsive Breakpoints:**
- [Navigation changes per screen size]
- [Mobile-first vs desktop-first approach]

#### 🔍 Deep Linking & URL Management

**Deep Link Support:**
- **State Restoration:** [How app state is restored from URLs]
- **URL Synchronization:** [Keeping URL in sync with app state]
- **Share URLs:** [Shareable link generation]

**URL Structure:**
- [URL naming conventions]
- [Query parameter standards]
- [Hash fragment usage]

#### 🧪 Routing Testing

**Test Coverage:**
- **Route Rendering:** [Testing route components load correctly]
- **Navigation Flow:** [Testing user navigation journeys]
- **Guard Testing:** [Testing authentication/authorization]
- **Redirect Testing:** [Testing redirect logic]

**Testing Utilities:**
- [Router testing setup and helpers]
- [Mock router implementations]
- [Navigation testing patterns]

#### 🔧 Development Workflow

**Adding New Routes:**
1. [Step-by-step process for new routes]
2. [File creation and naming patterns]
3. [Route registration process]

**Route Debugging:**
- [Tools for debugging routing issues]
- [Common routing problems and solutions]
- [Performance debugging for routes]

#### 📚 Route Conventions

**File Naming:**
- [Route file naming conventions]
- [Directory structure patterns]
- [Special file meanings (layout, loading, error)]

**Code Organization:**
- [How route logic is organized]
- [Separation of concerns in route components]
- [Shared route utilities and helpers]

Include code examples: {include_code_examples}
Include navigation examples: {include_navigation_examples}
Output format: {output_format}
```

### 5. Context Defaults
```json
{
  "project_name": "[auto-detect from package.json]",
  "code_location": "[provide repository/files]",
  "foundation_scan_file": "./coderef-scan-results.md",
  "maintenance_mode": false,
  "existing_documentation_file": "./coderef-routing-scan-results.md",
  "update_strategy": "Selective-updates",
  "routing_framework": "Auto-detect",
  "router_type": "Auto-detect",
  "include_code_examples": true,
  "document_guards": true,
  "analyze_redirects": true,
  "check_code_splitting": true,
  "document_middleware": true,
  "analyze_deep_linking": true,
  "check_history_management": true,
  "include_navigation_examples": true,
  "document_dynamic_routes": true,
  "analyze_nested_routes": true,
  "output_format": "Developer-focused",
  "documentation_depth": "Exhaustive"
}
```

---

This **Routing & Navigation Documentation Generator** creates comprehensive routing documentation that enables agents to:
- **Understand all routes** with complete parameter and protection patterns
- **Modify existing routes** with full context of guards and middleware
- **Add new routes** following established conventions and security patterns
- **Debug navigation issues** with complete flow documentation
- **Implement route protection** using documented guard patterns
- **Optimize route performance** with code splitting documentation
- **Maintain URL structure** with documented deep linking patterns