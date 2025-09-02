## Five Elements for Authentication & Authorization Documentation Template

### 1. Categories
```
Development > Security Analysis > Authentication Flow Documentation
Development > Security Analysis > Authorization Pattern Mapping
Development > Security Analysis > Token & Session Management
Development > Security Analysis > Security Header Configuration
Development > Security Analysis > Multi-Factor Authentication
Development > Security Analysis > SSO Implementation
Development > Security Analysis > Permission System Analysis
```

### 2. Variables
```
project_name (text) - Project identifier
code_location (text) - Repository URL or file paths
foundation_scan_file (text) - Path to coderef-scan-results.md (required)
maintenance_mode (boolean) - Update existing documentation vs create new
existing_documentation_file (text) - Path to existing auth scan results (if maintenance_mode=true)
update_strategy (text) - Full-rewrite/Selective-updates/Append-changes
auth_framework (text) - NextAuth/Auth0/Firebase Auth/Custom
session_strategy (text) - JWT/Session cookies/Database sessions
include_code_examples (boolean) - Include authentication implementation code
document_flows (boolean) - Document complete authentication flows
analyze_permissions (boolean) - Document permission and role systems
check_mfa (boolean) - Document multi-factor authentication
document_sso (boolean) - Document SSO implementations
analyze_token_management (boolean) - Document token lifecycle management
check_security_headers (boolean) - Document security headers and CORS
document_session_handling (boolean) - Document session management patterns
analyze_password_policies (boolean) - Document password requirements and validation
include_testing_patterns (boolean) - Include security testing approaches
check_audit_logging (boolean) - Document authentication audit trails
output_format (text) - Security-focused/Technical/Developer-focused
documentation_depth (text) - Overview/Detailed/Exhaustive
security_scope (text) - All/Critical-only/Compliance-focused
```

### 3. Statics
```
Static Name: foundation_context_integration
Content: "First read the foundation scan results from {foundation_scan_file} to understand: overall project architecture, established coding patterns, security requirements, deployment platform, database schema, authentication strategy, and integration points. Use this context to ensure authentication documentation aligns with project conventions and architectural decisions."

Static Name: maintenance_mode_instructions
Content: "If maintenance_mode=true: Read existing documentation from {existing_documentation_file}, compare current authentication implementation with documented auth patterns, identify changes (new/modified/deleted auth features), update only changed sections using {update_strategy}, preserve accurate existing documentation, highlight what has changed since last scan."

Static Name: auth_discovery_tasks
Content: "Locate authentication middleware and guards, identify login/logout implementations, find token management logic, discover role and permission systems, locate session handling code, find security header configurations, identify multi-factor authentication, discover SSO integrations, map password policies and validation"

Static Name: authentication_flow_documentation
Content: "Document authentication flows: login process (credentials/OAuth/SSO), logout implementation and cleanup, registration and account creation, password reset and recovery, email verification process, account activation flows, authentication state management, redirect handling after authentication"

Static Name: authorization_pattern_analysis
Content: "Document authorization: role-based access control (RBAC), permission-based access control (PBAC), attribute-based access control (ABAC), resource-based authorization, hierarchical permissions, role inheritance patterns, permission checking middleware, authorization decision logic"

Static Name: token_management_documentation
Content: "Document token lifecycle: token generation and signing, token validation and verification, token refresh mechanisms, token expiration handling, token revocation and blacklisting, token storage (httpOnly cookies/localStorage), token transmission security, token payload structure and claims"

Static Name: session_management_analysis
Content: "Document session handling: session creation and initialization, session storage (memory/database/Redis), session expiration and cleanup, session regeneration, concurrent session handling, session security measures, session data persistence, cross-device session management"

Static Name: security_headers_documentation
Content: "Document security implementation: CORS configuration and origins, Content Security Policy (CSP) headers, X-Frame-Options and clickjacking protection, X-Content-Type-Options, Strict-Transport-Security (HSTS), X-XSS-Protection, Referrer-Policy configuration, security middleware implementation"

Static Name: mfa_implementation_analysis
Content: "Document MFA features: TOTP (Time-based One-Time Password) implementation, SMS-based verification, email-based verification, backup codes generation and validation, MFA enrollment and setup flow, MFA recovery mechanisms, MFA bypass procedures for admin, device trust and remember device features"

Static Name: sso_integration_documentation
Content: "Document SSO implementations: SAML 2.0 configuration and flows, OAuth 2.0/OpenID Connect setup, identity provider configurations, attribute mapping and user provisioning, just-in-time (JIT) provisioning, SSO logout and session termination, IdP-initiated vs SP-initiated flows, federation trust relationships"

Static Name: permission_matrix_analysis
Content: "Document permission system: role definitions and hierarchies, permission granularity and scope, resource-based permissions, action-based permissions, context-aware permissions, permission inheritance rules, dynamic permission evaluation, permission caching strategies, permission audit trails"

Static Name: security_testing_patterns
Content: "Document security testing: authentication flow testing, authorization boundary testing, token security testing, session security testing, CORS testing, security header validation, penetration testing approaches, vulnerability scanning integration, compliance testing procedures"
```

### 4. Formula Template
```
**COMPREHENSIVE AUTHENTICATION & AUTHORIZATION DOCUMENTATION GENERATOR**
Create exhaustive security and access control documentation for {project_name} at {code_location}.

Project: {project_name}
Foundation context: {foundation_scan_file}
Maintenance mode: {maintenance_mode}
Auth Framework: {auth_framework}
Session Strategy: {session_strategy}
Security scope: {security_scope}
Documentation depth: {documentation_depth}

**Phase 1: Foundation Context Integration**
{static:foundation_context_integration}

**Phase 2: Maintenance Mode Processing**
{static:maintenance_mode_instructions}
Update strategy: {update_strategy}
Existing documentation: {existing_documentation_file}

**Phase 3: Authentication Discovery & Mapping**
{static:auth_discovery_tasks}

**Phase 2: Authentication Flow Documentation**
{static:authentication_flow_documentation}
Document flows: {document_flows}
Analyze password policies: {analyze_password_policies}

**Phase 3: Authorization Pattern Analysis**
{static:authorization_pattern_analysis}
{static:permission_matrix_analysis}
Analyze permissions: {analyze_permissions}

**Phase 4: Token & Session Management**
{static:token_management_documentation}
{static:session_management_analysis}
Analyze token management: {analyze_token_management}
Document session handling: {document_session_handling}

**Phase 5: Security Headers & CORS**
{static:security_headers_documentation}
Check security headers: {check_security_headers}

**Phase 6: Multi-Factor Authentication**
{static:mfa_implementation_analysis}
Check MFA: {check_mfa}

**Phase 7: SSO Implementation Analysis**
{static:sso_integration_documentation}
Document SSO: {document_sso}

**Phase 8: Security Testing & Audit**
{static:security_testing_patterns}
Include testing patterns: {include_testing_patterns}
Check audit logging: {check_audit_logging}

**Output Required:**

Generate complete documentation file: coderef-auth-scan-results.md

### 🔐 AUTHENTICATION & AUTHORIZATION DOCUMENTATION

#### 🎯 Security Overview
- **Project:** {project_name}
- **Auth Framework:** [NextAuth/Auth0/Firebase/Custom]
- **Session Strategy:** [JWT/Session cookies/Database sessions]
- **Authentication Methods:** [Username/password, OAuth, SSO, MFA]
- **Authorization Model:** [RBAC/PBAC/ABAC/Custom]
- **Security Compliance:** [SOC2/ISO27001/GDPR/HIPAA compliance]

#### 🔑 Authentication Flows

**Primary Authentication:**
- **Method:** [Username/password, email/password, phone/OTP]
- **Implementation:** [File location and key functions]
- **Validation:** [Input validation and sanitization]
- **Security Measures:** [Rate limiting, brute force protection]

**Login Flow:**
```typescript
// Login implementation example
const login = async (credentials: LoginCredentials) => {
  // 1. Validate input
  // 2. Check user exists
  // 3. Verify password
  // 4. Generate tokens
  // 5. Set session
  // 6. Return user data
}
```

**Logout Flow:**
- **Client-side:** [Token removal, state cleanup]
- **Server-side:** [Session invalidation, token blacklisting]
- **Redirect:** [Post-logout destination]

**Password Reset:**
1. Request reset (email validation)
2. Generate secure reset token
3. Email reset link with expiration
4. Validate token and reset password
5. Invalidate all existing sessions

#### 👥 Authorization System

**Role Definitions:**
```typescript
enum UserRole {
  ADMIN = 'admin',
  MODERATOR = 'moderator', 
  USER = 'user',
  GUEST = 'guest'
}
```

**Permission Matrix:**
```
Resource    | Admin | Moderator | User | Guest
------------|-------|-----------|------|-------
Users       | CRUD  | R         | R*   | -
Posts       | CRUD  | CRU       | CR*  | R
Settings    | CRUD  | R         | R*   | -
Analytics   | R     | R         | -    | -

* = Own resources only
```

**Authorization Implementation:**
```typescript
// Permission checking example
const hasPermission = (user: User, action: Action, resource: Resource) => {
  // Implementation details
}
```

#### 🎫 Token Management

**JWT Implementation:**
- **Token Structure:** Header.Payload.Signature
- **Claims:** User ID, roles, permissions, expiration
- **Signing Algorithm:** [RS256/HS256/etc]
- **Token Expiration:** [Access: 15min, Refresh: 7 days]

**Token Security:**
```typescript
// Token validation middleware
const validateToken = (req, res, next) => {
  // 1. Extract token from header/cookie
  // 2. Verify signature
  // 3. Check expiration
  // 4. Validate claims
  // 5. Attach user to request
}
```

**Refresh Token Flow:**
1. Detect expired access token
2. Use refresh token to get new access token
3. Update stored tokens
4. Retry original request
5. Handle refresh token expiration

#### 🍪 Session Management

**Session Configuration:**
- **Storage:** [Memory/Database/Redis]
- **Expiration:** [Sliding/absolute expiration]
- **Security:** [httpOnly, secure, sameSite settings]

**Session Data Structure:**
```typescript
interface SessionData {
  userId: string
  roles: string[]
  permissions: string[]
  loginTime: Date
  lastActivity: Date
  ipAddress: string
  userAgent: string
}
```

#### 🛡️ Security Headers & CORS

**Security Headers:**
```http
Content-Security-Policy: default-src 'self'
X-Frame-Options: DENY
X-Content-Type-Options: nosniff
Strict-Transport-Security: max-age=31536000
X-XSS-Protection: 1; mode=block
```

**CORS Configuration:**
```typescript
const corsOptions = {
  origin: ['https://app.example.com'],
  credentials: true,
  methods: ['GET', 'POST', 'PUT', 'DELETE'],
  allowedHeaders: ['Authorization', 'Content-Type']
}
```

#### 📱 Multi-Factor Authentication

**MFA Methods:**
- **TOTP:** [Authenticator app implementation]
- **SMS:** [Phone number verification]
- **Email:** [Email code verification]
- **Backup Codes:** [Recovery code generation]

**MFA Flow:**
1. Primary authentication success
2. Check MFA requirement for user
3. Present MFA challenge
4. Validate MFA response
5. Complete authentication with MFA token

**MFA Configuration:**
```typescript
interface MFASettings {
  enabled: boolean
  methods: MFAMethod[]
  backupCodes: string[]
  trustedDevices: TrustedDevice[]
}
```

#### 🏢 SSO Implementation

**SAML 2.0 Setup:**
- **Identity Provider:** [Okta/Azure AD/etc]
- **Service Provider Config:** [Entity ID, ACS URL, certificate]
- **Attribute Mapping:** [How IdP attributes map to user fields]
- **Just-in-Time Provisioning:** [Auto user creation on first login]

**OAuth 2.0/OIDC:**
- **Authorization Server:** [Auth0/Keycloak/etc]
- **Client Configuration:** [Client ID, redirect URIs, scopes]
- **Token Exchange:** [Authorization code flow implementation]

#### 🔍 Security Monitoring & Audit

**Audit Logging:**
- Login/logout events with timestamp and IP
- Permission changes and role assignments
- Failed authentication attempts
- Suspicious activity detection

**Security Monitoring:**
- Failed login attempt tracking
- Session anomaly detection
- Token abuse monitoring
- Geographic login analysis

#### 🧪 Security Testing

**Authentication Testing:**
- Login flow validation
- Password policy enforcement
- Session security testing
- Token security validation

**Authorization Testing:**
- Role-based access testing
- Permission boundary testing
- Privilege escalation testing
- Resource access validation

**Security Test Examples:**
```typescript
// Auth flow testing
describe('Authentication', () => {
  it('should authenticate valid user', async () => {
    // Test implementation
  })
  
  it('should reject invalid credentials', async () => {
    // Test implementation
  })
})
```

#### 🚨 Security Incident Response

**Common Threats:**
- Brute force attack handling
- Session hijacking prevention
- Token theft mitigation
- Account takeover prevention

**Incident Procedures:**
1. Threat detection and alerting
2. Automatic defensive measures
3. Manual investigation process
4. User notification procedures
5. Recovery and cleanup steps

#### 🔧 Development Workflow

**Security Development:**
- Authentication middleware implementation
- Authorization decorator patterns
- Security testing integration
- Code review security checklist

**Environment Security:**
- Development vs production auth differences
- Test account management
- Secret management and rotation

Include code examples: {include_code_examples}
Include testing patterns: {include_testing_patterns}
Output format: {output_format}
```

### 5. Context Defaults
```json
{
  "project_name": "[auto-detect from package.json]",
  "code_location": "[provide repository/files]",
  "foundation_scan_file": "./coderef-scan-results.md",
  "maintenance_mode": false,
  "existing_documentation_file": "./coderef-auth-scan-results.md",
  "update_strategy": "Selective-updates",
  "auth_framework": "Auto-detect",
  "session_strategy": "Auto-detect",
  "include_code_examples": true,
  "document_flows": true,
  "analyze_permissions": true,
  "check_mfa": true,
  "document_sso": true,
  "analyze_token_management": true,
  "check_security_headers": true,
  "document_session_handling": true,
  "analyze_password_policies": true,
  "include_testing_patterns": true,
  "check_audit_logging": true,
  "output_format": "Security-focused",
  "documentation_depth": "Exhaustive",
  "security_scope": "All"
}
```

---

This **Authentication & Authorization Documentation Generator** creates comprehensive security documentation that enables agents to:
- **Understand complete auth flows** with login, logout, and refresh implementations
- **Modify security systems** with full context of token and session management
- **Implement new auth features** following established security patterns
- **Debug auth issues** with complete flow documentation and monitoring
- **Maintain security compliance** with documented headers, CORS, and audit logging
- **Extend permission systems** with documented role and permission matrices
- **Test security features** using documented security testing approaches