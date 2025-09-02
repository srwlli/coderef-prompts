## Five Elements for State Management Documentation Template

### 1. Categories
```
Development > State Analysis > Global State Architecture
Development > State Analysis > Store Structure Mapping
Development > State Analysis > Context & Provider Patterns
Development > State Analysis > Local State Patterns
Development > State Analysis > State Persistence & Sync
Development > State Analysis > Async State Management
Development > State Analysis > State Debugging & Dev Tools
```

### 2. Variables
```
project_name (text) - Project identifier
code_location (text) - Repository URL or file paths
foundation_scan_file (text) - Path to coderef-foundation-scan-results.md (required)
maintenance_mode (boolean) - Update existing documentation vs create new
existing_documentation_file (text) - Path to existing state scan results (if maintenance_mode=true)
update_strategy (text) - Full-rewrite/Selective-updates/Append-changes
state_framework (text) - Redux/Zustand/Context/Recoil/Valtio/XState
ui_framework (text) - React/Vue/Angular/Svelte
include_code_examples (boolean) - Include state implementation code
document_selectors (boolean) - Document state selectors and getters
analyze_mutations (boolean) - Document state mutation patterns
check_persistence (boolean) - Analyze state persistence strategies
document_async_patterns (boolean) - Document async state handling
analyze_performance (boolean) - Document state performance optimizations
check_dev_tools (boolean) - Document debugging and dev tools setup
include_testing_examples (boolean) - Include state testing patterns
document_middleware (boolean) - Document state middleware and enhancers
analyze_normalization (boolean) - Document data normalization patterns
output_format (text) - Technical/Architecture/Developer-focused
documentation_depth (text) - Overview/Detailed/Exhaustive
state_scope (text) - Global-only/Local-only/All
```

### 3. Statics
```
Static Name: foundation_context_integration
Content: "First read the foundation scan results from {foundation_scan_file} to understand: overall project architecture, established coding patterns, security requirements, deployment platform, database schema, authentication strategy, and integration points. Use this context to ensure state management documentation aligns with project conventions and architectural decisions."

Static Name: maintenance_mode_instructions
Content: "If maintenance_mode=true: Read existing documentation from {existing_documentation_file}, compare current state implementation with documented state patterns, identify changes (new/modified/deleted state slices), update only changed sections using {update_strategy}, preserve accurate existing documentation, highlight what has changed since last scan."

Static Name: state_discovery_tasks
Content: "Locate all state management files, identify state stores and providers, map global state structure, find context providers and consumers, discover local state patterns, locate state persistence logic, find async state handling, identify state debugging tools, map state flow and dependencies"

Static Name: global_state_documentation
Content: "Document global state: store structure and organization, state slice definitions, action creators and types, reducer implementations, selector functions, state normalization patterns, initial state setup, store configuration and middleware, state subscription patterns"

Static Name: context_provider_analysis
Content: "Document context patterns: context provider implementations, context value structure, consumer usage patterns, context composition and nesting, context performance optimizations, context splitting strategies, provider prop drilling alternatives, context testing approaches"

Static Name: local_state_patterns
Content: "Document local state: useState patterns and conventions, useReducer for complex state, custom hook patterns, state lifting strategies, state sharing between siblings, derived state calculations, state validation patterns, local state persistence, state cleanup and memory management"

Static Name: state_persistence_analysis
Content: "Document persistence: localStorage/sessionStorage usage, state hydration and rehydration, server-side state synchronization, offline state management, state migration strategies, persistence middleware, selective state persistence, cache invalidation patterns"

Static Name: async_state_documentation
Content: "Document async state: loading state management, error state handling, optimistic updates, async action patterns, data fetching integration, cache management, retry mechanisms, race condition handling, async state normalization"

Static Name: state_debugging_tools
Content: "Document debugging setup: Redux DevTools configuration, state inspection tools, time-travel debugging, state diff visualization, performance profiling tools, state mutation tracking, development mode features, logging and monitoring integration"

Static Name: state_performance_patterns
Content: "Document performance: state selector optimization, memoization patterns, state subscription optimization, unnecessary re-render prevention, state update batching, lazy state initialization, state tree shaking, memory leak prevention"

Static Name: state_testing_strategies
Content: "Document state testing: store testing approaches, action creator testing, reducer testing patterns, async action testing, state integration testing, mock state providers, state snapshot testing, performance testing for state"
```

### 4. Formula Template
```
**COMPREHENSIVE STATE MANAGEMENT DOCUMENTATION GENERATOR**
Create exhaustive state management documentation for {project_name} at {code_location}.

Project: {project_name}
Foundation context: {foundation_scan_file}
Maintenance mode: {maintenance_mode}
State Framework: {state_framework}
UI Framework: {ui_framework}
State Scope: {state_scope}
Documentation depth: {documentation_depth}

**Phase 1: Foundation Context Integration**
{static:foundation_context_integration}

**Phase 2: Maintenance Mode Processing**
{static:maintenance_mode_instructions}
Update strategy: {update_strategy}
Existing documentation: {existing_documentation_file}

**Phase 3: State Architecture Discovery**
{static:state_discovery_tasks}

**Phase 2: Global State Documentation**
{static:global_state_documentation}
Document selectors: {document_selectors}
Analyze mutations: {analyze_mutations}

**Phase 3: Context Provider Analysis**
{static:context_provider_analysis}

**Phase 4: Local State Pattern Documentation**
{static:local_state_patterns}

**Phase 5: State Persistence & Synchronization**
{static:state_persistence_analysis}
Check persistence: {check_persistence}

**Phase 6: Async State Management**
{static:async_state_documentation}
Document async patterns: {document_async_patterns}

**Phase 7: Performance & Optimization**
{static:state_performance_patterns}
Analyze performance: {analyze_performance}
Analyze normalization: {analyze_normalization}

**Phase 8: Debugging & Development Tools**
{static:state_debugging_tools}
Check dev tools: {check_dev_tools}
Document middleware: {document_middleware}

**Phase 9: State Testing Documentation**
{static:state_testing_strategies}
Include testing examples: {include_testing_examples}

**Output Required:**

Generate complete documentation file: coderef-state-scan-results.md

### 🏪 STATE MANAGEMENT DOCUMENTATION

#### 🎯 State Architecture Overview
- **Project:** {project_name}
- **State Framework:** [Redux/Zustand/Context/etc and version]
- **UI Framework Integration:** [React/Vue/Angular integration pattern]
- **Global State Complexity:** [Simple/Moderate/Complex]
- **State Tree Depth:** [Shallow/Moderate/Deep nesting]
- **State Size:** [Estimated state object size]

#### 🏗️ Global State Structure

**Store Configuration:**
```typescript
// Store setup and configuration
const store = configureStore({
  // Configuration details
})
```

**State Tree:**
```typescript
interface RootState {
  auth: AuthState
  user: UserState
  posts: PostsState
  ui: UIState
}
```

**State Slices:**
- **auth** - Authentication state and user session
- **user** - User profile and preferences
- **posts** - Content management state
- **ui** - UI state (modals, notifications, theme)

#### 🔄 State Flow Documentation

**[For each state slice, provide:]**

##### Auth State Slice
- **File Location:** `/store/slices/authSlice.ts`
- **Purpose:** Manage user authentication and session
- **State Shape:**
```typescript
interface AuthState {
  user: User | null
  token: string | null
  isLoading: boolean
  error: string | null
  isAuthenticated: boolean
}
```

**Actions:**
- `login(credentials)` - Authenticate user with credentials
- `logout()` - Clear authentication state
- `refreshToken()` - Refresh authentication token
- `clearError()` - Clear authentication errors

**Selectors:**
- `selectUser` - Get current user object
- `selectIsAuthenticated` - Get authentication status
- `selectAuthLoading` - Get loading state

**Side Effects:**
- Token refresh on expiration
- Automatic logout on token invalidity
- Redirect handling after authentication

#### 🎭 Context Provider Patterns

**Context Implementations:**
```typescript
// Example context provider
const ThemeContext = createContext<ThemeContextType>()

export const ThemeProvider = ({ children }) => {
  // Implementation details
}
```

**Context Hierarchy:**
```
App
├── AuthProvider
├── ThemeProvider
│   └── UserPreferencesProvider
└── NotificationProvider
```

**Context Usage Patterns:**
- [How contexts are consumed in components]
- [Context composition strategies]
- [Performance optimization techniques]

#### 🏠 Local State Patterns

**useState Patterns:**
```typescript
// Common local state patterns
const [data, setData] = useState<DataType>()
const [loading, setLoading] = useState(false)
const [error, setError] = useState<string | null>(null)
```

**useReducer Patterns:**
```typescript
// Complex local state with useReducer
const [state, dispatch] = useReducer(reducer, initialState)
```

**Custom Hook Patterns:**
- **useAuth** - Authentication state management
- **useApi** - API data fetching and caching
- **useLocalStorage** - Local storage state persistence

#### 💾 State Persistence

**Persistence Strategy:**
- **Global State:** [Which parts persist and how]
- **Local State:** [Local storage patterns]
- **Session State:** [Session storage usage]

**Hydration Patterns:**
```typescript
// State hydration example
const persistedState = loadFromStorage()
const store = configureStore({
  preloadedState: persistedState
})
```

**Migration Handling:**
- [State schema migration strategies]
- [Backward compatibility handling]

#### ⚡ Async State Management

**Data Fetching Patterns:**
- **API Integration:** [How async operations update state]
- **Loading States:** [Loading indicator management]
- **Error Handling:** [Error state management]
- **Optimistic Updates:** [Optimistic UI patterns]

**Async State Examples:**
```typescript
// Async action example
const fetchUserData = async (userId: string) => {
  // Implementation with state updates
}
```

**Cache Management:**
- [Data caching strategies]
- [Cache invalidation patterns]
- [Stale data handling]

#### 🔄 State Synchronization

**Real-time Sync:**
- [WebSocket state synchronization]
- [Server state vs client state management]
- [Conflict resolution strategies]

**Cross-Tab Sync:**
- [Browser tab synchronization]
- [Storage event handling]

#### 🛠️ Development & Debugging

**Dev Tools Setup:**
- **Redux DevTools:** [Configuration and usage]
- **State Inspector:** [Custom debugging tools]
- **Time Travel:** [State history navigation]

**Debugging Patterns:**
- [State mutation tracking]
- [Performance profiling]
- [State diff visualization]

**Development Helpers:**
```typescript
// Development utilities
const logStateChanges = (action, prevState, nextState) => {
  // Logging implementation
}
```

#### 🧪 State Testing

**Testing Approach:**
- **Store Testing:** [How stores are tested in isolation]
- **Action Testing:** [Action creator and reducer testing]
- **Integration Testing:** [Component-state integration tests]

**Testing Utilities:**
- [Mock store implementations]
- [State testing helpers]
- [Async state testing patterns]

#### 📊 State Performance

**Optimization Techniques:**
- **Selector Memoization:** [Reselect or similar patterns]
- **State Normalization:** [Normalized state structure]
- **Update Batching:** [Batched state updates]

**Performance Monitoring:**
- [State update performance tracking]
- [Memory usage monitoring]
- [Re-render optimization]

#### 🔧 Development Workflow

**State Management Guidelines:**
- [When to use global vs local state]
- [State organization principles]
- [State mutation best practices]

**Adding New State:**
1. [Process for adding new state slices]
2. [State shape design guidelines]
3. [Integration with existing state]

Include code examples: {include_code_examples}
Include testing examples: {include_testing_examples}
Output format: {output_format}
```

### 5. Context Defaults
```json
{
  "project_name": "[auto-detect from package.json]",
  "code_location": "[provide repository/files]",
  "foundation_scan_file": "./coderef-foundation-scan-results.md",
  "maintenance_mode": false,
  "existing_documentation_file": "./coderef-state-scan-results.md",
  "update_strategy": "Selective-updates",
  "state_framework": "Auto-detect",
  "ui_framework": "Auto-detect",
  "include_code_examples": true,
  "document_selectors": true,
  "analyze_mutations": true,
  "check_persistence": true,
  "document_async_patterns": true,
  "analyze_performance": true,
  "check_dev_tools": true,
  "include_testing_examples": true,
  "document_middleware": true,
  "analyze_normalization": true,
  "output_format": "Developer-focused",
  "documentation_depth": "Exhaustive",
  "state_scope": "All"
}
```

---

This **State Management Documentation Generator** creates comprehensive state documentation that enables agents to:
- **Understand global state architecture** with complete store structure and flow
- **Modify existing state** with full context of actions, selectors, and patterns
- **Add new state slices** following established conventions and performance patterns
- **Debug state issues** with complete debugging tool documentation
- **Implement state persistence** using documented persistence strategies
- **Optimize state performance** with documented memoization and normalization patterns
- **Test state logic** using documented testing approaches and utilities