## Five Elements for Error Handling Documentation Template

### 1. Categories
```
Development > Error Analysis > Error Boundary Implementation
Development > Error Analysis > Global Error Handler Documentation
Development > Error Analysis > Logging Strategy Analysis
Development > Error Analysis > Error Tracking Integration
Development > Error Analysis > User Experience Error Handling
Development > Error Analysis > Retry & Recovery Mechanisms
Development > Error Analysis > Debug Configuration
```

### 2. Variables
```
project_name (text) - Project identifier
code_location (text) - Repository URL or file paths
foundation_scan_file (text) - Path to coderef-foundation-scan-results.md (required)
maintenance_mode (boolean) - Update existing documentation vs create new
existing_documentation_file (text) - Path to existing error scan results (if maintenance_mode=true)
update_strategy (text) - Full-rewrite/Selective-updates/Append-changes
ui_framework (text) - React/Vue/Angular/Svelte
error_tracking_service (text) - Sentry/Bugsnag/Rollbar/LogRocket
logging_framework (text) - Winston/Pino/Console/Custom
include_code_examples (boolean) - Include error handling implementation code
document_boundaries (boolean) - Document error boundary implementations
analyze_global_handlers (boolean) - Document global error handling
check_logging_strategy (boolean) - Document logging approaches and tools
document_tracking_integration (boolean) - Document error tracking service setup
analyze_user_messaging (boolean) - Document user-facing error messages
check_retry_mechanisms (boolean) - Document retry and recovery patterns
document_fallback_strategies (boolean) - Document fallback and graceful degradation
analyze_debug_configuration (boolean) - Document debug mode and development tools
include_testing_patterns (boolean) - Include error handling testing approaches
check_performance_impact (boolean) - Analyze error handling performance impact
output_format (text) - Technical/User-experience/Developer-focused
documentation_depth (text) - Overview/Detailed/Exhaustive
error_scope (text) - All/Critical-only/User-facing
```

### 3. Statics
```
Static Name: foundation_context_integration
Content: "First read the foundation scan results from {foundation_scan_file} to understand: overall project architecture, established coding patterns, security requirements, deployment platform, database schema, authentication strategy, and integration points. Use this context to ensure error handling documentation aligns with project conventions and architectural decisions."

Static Name: maintenance_mode_instructions
Content: "If maintenance_mode=true: Read existing documentation from {existing_documentation_file}, compare current error handling implementation with documented error patterns, identify changes (new/modified/deleted error handling features), update only changed sections using {update_strategy}, preserve accurate existing documentation, highlight what has changed since last scan."

Static Name: error_discovery_tasks
Content: "Locate error boundary components, identify global error handlers, find logging configurations and implementations, discover error tracking service integrations, map user-facing error messages, locate retry mechanism implementations, find fallback strategy implementations, identify debug mode configurations, map error propagation patterns"

Static Name: error_boundary_documentation
Content: "Document error boundaries: error boundary component locations, error catching scope and hierarchy, error fallback UI implementations, error recovery mechanisms, error boundary testing approaches, error state management, error boundary composition patterns, performance impact of error boundaries"

Static Name: global_error_handler_analysis
Content: "Document global error handling: unhandled promise rejection handling, window.onerror implementations, process.on('uncaughtException') handling, framework-specific global error handlers, error categorization and routing, error severity classification, global error recovery strategies, error handler middleware chains"

Static Name: logging_strategy_documentation
Content: "Document logging approach: logging framework and configuration, log levels and categorization, structured logging formats, log rotation and retention, log aggregation and centralization, sensitive data filtering in logs, performance logging, audit logging, development vs production logging differences"

Static Name: error_tracking_integration
Content: "Document error tracking: error tracking service configuration, error filtering and sampling, custom error context and tags, user identification in error reports, performance monitoring integration, error alerting and notification rules, error grouping and deduplication, error release tracking and regression detection"

Static Name: user_error_messaging
Content: "Document user-facing errors: error message localization and i18n, error message tone and branding, progressive error disclosure, contextual help and recovery suggestions, error page designs and fallbacks, form validation error messages, loading and timeout error handling, offline error messaging"

Static Name: retry_recovery_mechanisms
Content: "Document retry patterns: exponential backoff implementations, retry limits and circuit breakers, idempotent operation design, queue-based retry systems, user-initiated retry mechanisms, automatic vs manual retry decisions, retry state management, retry performance considerations"

Static Name: fallback_strategy_documentation
Content: "Document fallback strategies: graceful degradation patterns, feature toggle for error scenarios, cached data fallbacks, default content and placeholders, offline functionality fallbacks, service unavailability handling, progressive enhancement approaches, fallback UI component implementations"

Static Name: debug_configuration_analysis
Content: "Document debug features: development mode error details, error stack trace enhancement, source map configuration for debugging, debug logging and verbose modes, error reproduction tools, development error overlays, hot reloading error handling, debugging tool integration"

Static Name: error_testing_strategies
Content: "Document error testing: error scenario testing approaches, error boundary testing patterns, error tracking integration testing, retry mechanism testing, fallback strategy testing, chaos engineering practices, error injection for testing, user error experience testing"
```

### 4. Formula Template
```
**COMPREHENSIVE ERROR HANDLING DOCUMENTATION GENERATOR**
Create exhaustive error handling documentation for {project_name} at {code_location}.

Project: {project_name}
Foundation context: {foundation_scan_file}
Maintenance mode: {maintenance_mode}
UI Framework: {ui_framework}
Error Tracking Service: {error_tracking_service}
Logging Framework: {logging_framework}
Error scope: {error_scope}
Documentation depth: {documentation_depth}

**Phase 1: Foundation Context Integration**
{static:foundation_context_integration}

**Phase 2: Maintenance Mode Processing**
{static:maintenance_mode_instructions}
Update strategy: {update_strategy}
Existing documentation: {existing_documentation_file}

**Phase 3: Error Handling Discovery & Mapping**
{static:error_discovery_tasks}

**Phase 2: Error Boundary Documentation**
{static:error_boundary_documentation}
Document boundaries: {document_boundaries}

**Phase 3: Global Error Handler Analysis**
{static:global_error_handler_analysis}
Analyze global handlers: {analyze_global_handlers}

**Phase 4: Logging Strategy Documentation**
{static:logging_strategy_documentation}
Check logging strategy: {check_logging_strategy}

**Phase 5: Error Tracking Integration**
{static:error_tracking_integration}
Document tracking integration: {document_tracking_integration}

**Phase 6: User Error Experience Analysis**
{static:user_error_messaging}
Analyze user messaging: {analyze_user_messaging}

**Phase 7: Retry & Recovery Mechanisms**
{static:retry_recovery_mechanisms}
Check retry mechanisms: {check_retry_mechanisms}

**Phase 8: Fallback Strategy Documentation**
{static:fallback_strategy_documentation}
Document fallback strategies: {document_fallback_strategies}

**Phase 9: Debug Configuration Analysis**
{static:debug_configuration_analysis}
Analyze debug configuration: {analyze_debug_configuration}

**Phase 10: Error Testing Documentation**
{static:error_testing_strategies}
Include testing patterns: {include_testing_patterns}
Check performance impact: {check_performance_impact}

**Output Required:**

Generate complete documentation file: coderef-error-scan-results.md

### 🚨 ERROR HANDLING DOCUMENTATION

#### 🎯 Error Handling Overview
- **Project:** {project_name}
- **UI Framework:** [React/Vue/Angular error handling approach]
- **Error Tracking Service:** [Sentry/Bugsnag/Rollbar/etc]
- **Logging Framework:** [Winston/Pino/Console/Custom]
- **Error Boundary Count:** [Number of error boundaries implemented]
- **Global Error Handlers:** [Count and types]
- **Error Categories:** [Client/Server/Network/Validation/Business Logic]

#### 🛡️ Error Boundary Implementation

**Error Boundary Hierarchy:**
```
App
├── RootErrorBoundary (Catches all unhandled errors)
├── RouteErrorBoundary (Route-specific error handling)
│   ├── PageErrorBoundary (Page-level error boundaries)
│   └── ComponentErrorBoundary (Component-specific boundaries)
```

**[For each error boundary, provide:]**

##### RootErrorBoundary
- **File Location:** `/components/ErrorBoundary/RootErrorBoundary.tsx`
- **Scope:** Application-wide error catching
- **Fallback UI:** Custom error page with support contact
- **Error Reporting:** Automatic error tracking service integration
- **Recovery:** Page reload button with state preservation option

```typescript
class RootErrorBoundary extends Component {
  componentDidCatch(error: Error, errorInfo: ErrorInfo) {
    // Error handling implementation
    errorTrackingService.captureException(error, {
      extra: errorInfo,
      tags: { boundary: 'root' }
    })
  }
}
```

**Error Recovery Strategies:**
- **Automatic Recovery:** [Component remounting, state reset]
- **Manual Recovery:** [User-initiated recovery actions]
- **Partial Recovery:** [Isolate failed components, maintain app functionality]

#### 🌐 Global Error Handlers

**Frontend Global Handlers:**
```typescript
// Unhandled promise rejection handler
window.addEventListener('unhandledrejection', (event) => {
  console.error('Unhandled promise rejection:', event.reason)
  errorTrackingService.captureException(event.reason)
})

// Global error handler
window.addEventListener('error', (event) => {
  console.error('Global error:', event.error)
  errorTrackingService.captureException(event.error)
})
```

**Backend Global Handlers:**
```typescript
// Express global error middleware
const globalErrorHandler = (err, req, res, next) => {
  logger.error('Unhandled error:', err)
  errorTrackingService.captureException(err, {
    extra: { requestId: req.id, userId: req.user?.id }
  })
}
```

#### 📝 Logging Strategy

**Log Configuration:**
```typescript
const logger = createLogger({
  level: process.env.LOG_LEVEL || 'info',
  format: combine(
    timestamp(),
    errors({ stack: true }),
    json()
  ),
  transports: [
    new transports.Console(),
    new transports.File({ filename: 'error.log', level: 'error' }),
    new transports.File({ filename: 'combined.log' })
  ]
})
```

**Log Levels:**
- **ERROR** - System errors, exceptions, failed operations
- **WARN** - Recoverable issues, deprecation warnings
- **INFO** - General application flow, user actions
- **DEBUG** - Detailed debugging information (dev only)

**Structured Logging:**
```typescript
logger.error('Payment processing failed', {
  userId: user.id,
  paymentId: payment.id,
  amount: payment.amount,
  error: error.message,
  timestamp: new Date().toISOString()
})
```

#### 📊 Error Tracking Integration

**Service Configuration:**
- **Platform:** [Sentry/Bugsnag/Rollbar configuration]
- **Environment Setup:** [DSN configuration per environment]
- **Sampling Rate:** [Error sampling and performance monitoring rates]

**Error Context Enhancement:**
```typescript
// Enhanced error context
Sentry.configureScope((scope) => {
  scope.setUser({ id: user.id, email: user.email })
  scope.setTag('component', 'payment-form')
  scope.setContext('payment', {
    amount: paymentAmount,
    currency: currency,
    method: paymentMethod
  })
})
```

**Error Filtering:**
- **Ignored Errors:** [Known browser issues, third-party script errors]
- **Sensitive Data:** [PII filtering in error reports]
- **Noise Reduction:** [Common errors that don't require alerts]

#### 👤 User-Facing Error Handling

**Error Message Strategy:**
- **Tone:** [Helpful, apologetic, solution-oriented]
- **Localization:** [Error messages in multiple languages]
- **Contextual Help:** [Specific guidance based on error type]

**Error UI Components:**
- **Toast Notifications** - Brief error messages
- **Error Pages** - Full-page error states
- **Inline Errors** - Form validation and field errors
- **Modal Errors** - Critical errors requiring acknowledgment

**Error Message Examples:**
```typescript
const errorMessages = {
  NETWORK_ERROR: "We're having trouble connecting. Please check your internet and try again.",
  VALIDATION_ERROR: "Please check the highlighted fields and try again.",
  PERMISSION_ERROR: "You don't have permission to perform this action.",
  RATE_LIMIT_ERROR: "Too many requests. Please wait a moment and try again."
}
```

#### 🔄 Retry & Recovery Mechanisms

**Automatic Retry:**
```typescript
const retryWithBackoff = async (fn, maxRetries = 3) => {
  for (let i = 0; i < maxRetries; i++) {
    try {
      return await fn()
    } catch (error) {
      if (i === maxRetries - 1) throw error
      await sleep(Math.pow(2, i) * 1000) // Exponential backoff
    }
  }
}
```

**Manual Retry:**
- **Retry Buttons:** [User-initiated retry for failed operations]
- **Retry State:** [Loading states during retry attempts]
- **Retry Limits:** [Maximum retry attempts before giving up]

**Circuit Breaker:**
```typescript
class CircuitBreaker {
  // Implementation for preventing cascading failures
}
```

#### 🛟 Fallback Strategies

**Data Fallbacks:**
- **Cached Data:** [Serve stale data when API fails]
- **Default Content:** [Placeholder content for missing data]
- **Local Storage:** [Offline data access patterns]

**Feature Fallbacks:**
- **Progressive Enhancement:** [Core functionality without advanced features]
- **Graceful Degradation:** [Reduced functionality when services fail]
- **Feature Toggles:** [Disable problematic features dynamically]

**UI Fallbacks:**
```typescript
const DataComponent = ({ data, error, loading }) => {
  if (error) return <ErrorFallback error={error} />
  if (loading) return <LoadingSpinner />
  if (!data) return <EmptyState />
  return <DataDisplay data={data} />
}
```

#### 🔧 Debug Configuration

**Development Mode:**
```typescript
const isDevelopment = process.env.NODE_ENV === 'development'

if (isDevelopment) {
  // Enhanced error details
  // Source map support
  // Verbose logging
  // Error overlay
}
```

**Debug Tools:**
- **Error Overlay:** [Development error display]
- **Console Logging:** [Enhanced development logging]
- **Source Maps:** [Error stack trace enhancement]
- **Debug Flags:** [Feature-specific debug modes]

**Development Error Enhancement:**
```typescript
if (isDevelopment) {
  console.error('Detailed error info:', {
    error: error.message,
    stack: error.stack,
    props: componentProps,
    state: componentState,
    context: debugContext
  })
}
```

#### 📈 Error Analytics & Monitoring

**Error Metrics:**
- **Error Rate:** [Errors per request/user session]
- **Error Categories:** [Frontend vs backend vs network errors]
- **User Impact:** [Users affected by errors]
- **Resolution Time:** [Time to fix critical errors]

**Error Dashboards:**
- Real-time error monitoring
- Error trend analysis
- Error impact assessment
- Error resolution tracking

#### 🧪 Error Testing

**Error Testing Approaches:**
```typescript
// Error boundary testing
describe('ErrorBoundary', () => {
  it('should catch and display errors', () => {
    const ThrowError = () => { throw new Error('Test error') }
    render(
      <ErrorBoundary>
        <ThrowError />
      </ErrorBoundary>
    )
    expect(screen.getByText(/something went wrong/i)).toBeInTheDocument()
  })
})
```

**Error Simulation:**
- **Chaos Engineering:** [Intentional error injection]
- **Network Failure Simulation:** [Offline/slow network testing]
- **Service Failure Testing:** [External service unavailability]

#### 🔒 Error Security

**Sensitive Data Protection:**
- **Error Sanitization:** [Remove sensitive data from error messages]
- **Stack Trace Filtering:** [Hide internal implementation details]
- **User Data Protection:** [Prevent data leakage in errors]

**Security Error Handling:**
- **Authentication Errors:** [Failed login attempts, token errors]
- **Authorization Errors:** [Access denied, permission errors]
- **Input Validation Errors:** [Malicious input handling]

#### 🚀 Performance Considerations

**Error Handling Performance:**
- **Error Tracking Overhead:** [Performance impact measurement]
- **Logging Performance:** [Async logging implementations]
- **Error State Performance:** [Efficient error state management]

**Optimization Strategies:**
- **Error Sampling:** [Reduce error tracking volume]
- **Batch Error Reporting:** [Group errors for efficiency]
- **Lazy Error Reporting:** [Defer non-critical error reporting]

#### 🔧 Development Workflow

**Error Handling Standards:**
- **Error Classification:** [How to categorize different error types]
- **Error Message Guidelines:** [Writing user-friendly error messages]
- **Testing Requirements:** [Error scenario test coverage expectations]

**Error Response Procedures:**
1. **Error Detection** - Monitoring alerts and user reports
2. **Error Triage** - Severity assessment and prioritization
3. **Error Investigation** - Root cause analysis with logs and traces
4. **Error Resolution** - Fix implementation and deployment
5. **Error Prevention** - Process improvements to prevent recurrence

Include code examples: {include_code_examples}
Include testing patterns: {include_testing_patterns}
Output format: {output_format}
```

### 5. Context Defaults
```json
{
  "project_name": "[auto-detect from package.json]",
  "code_location": "[provide repository/files]",
  "foundation_scan_file": "./coderef-foundation-scan-results.md",
  "maintenance_mode": false,
  "existing_documentation_file": "./coderef-error-scan-results.md",
  "update_strategy": "Selective-updates",
  "ui_framework": "Auto-detect",
  "error_tracking_service": "Auto-detect",
  "logging_framework": "Auto-detect",
  "include_code_examples": true,
  "document_boundaries": true,
  "analyze_global_handlers": true,
  "check_logging_strategy": true,
  "document_tracking_integration": true,
  "analyze_user_messaging": true,
  "check_retry_mechanisms": true,
  "document_fallback_strategies": true,
  "analyze_debug_configuration": true,
  "include_testing_patterns": true,
  "check_performance_impact": true,
  "output_format": "Technical",
  "documentation_depth": "Exhaustive",
  "error_scope": "All"
}
```

---

This **Error Handling Documentation Generator** creates comprehensive error management documentation that enables agents to:
- **Understand complete error architecture** with boundaries, global handlers, and fallback strategies
- **Modify error handling systems** with full context of logging, tracking, and user messaging
- **Debug application issues** with complete error flow documentation and debug configurations
- **Implement new error handling** following established patterns and user experience guidelines
- **Maintain error monitoring** with documented tracking integrations and analytics
- **Test error scenarios** using documented testing approaches and error simulation
- **Optimize error performance** with documented performance considerations and sampling strategies