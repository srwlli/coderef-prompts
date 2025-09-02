## Five Elements for Service Integrations Documentation Template

### 1. Categories
```
Development > Integration Analysis > External API Documentation
Development > Integration Analysis > SDK & Library Integration
Development > Integration Analysis > Authentication Provider Setup
Development > Integration Analysis > Payment Service Integration
Development > Integration Analysis > Communication Service Setup
Development > Integration Analysis > Storage Service Integration
Development > Integration Analysis > Webhook Implementation
```

### 2. Variables
```
project_name (text) - Project identifier
code_location (text) - Repository URL or file paths
foundation_scan_file (text) - Path to coderef-scan-results.md (required)
maintenance_mode (boolean) - Update existing documentation vs create new
existing_documentation_file (text) - Path to existing services scan results (if maintenance_mode=true)
update_strategy (text) - Full-rewrite/Selective-updates/Append-changes
include_code_examples (boolean) - Include integration implementation code
document_api_keys (boolean) - Document API key management (redacted)
analyze_webhooks (boolean) - Document webhook implementations
check_authentication_providers (boolean) - Document OAuth/SAML integrations
document_payment_gateways (boolean) - Document payment processing
analyze_communication_services (boolean) - Document email/SMS services
check_file_storage (boolean) - Document file storage integrations
document_sdk_usage (boolean) - Document third-party SDK implementations
analyze_rate_limiting (boolean) - Document service rate limiting handling
check_error_handling (boolean) - Document service error handling patterns
document_monitoring (boolean) - Document service monitoring and logging
include_testing_patterns (boolean) - Include service integration testing
output_format (text) - Technical/Security-focused/Developer-focused
documentation_depth (text) - Overview/Detailed/Exhaustive
integration_scope (text) - All/Critical-only/Security-sensitive
```

### 3. Statics
```
Static Name: foundation_context_integration
Content: "First read the foundation scan results from {foundation_scan_file} to understand: overall project architecture, established coding patterns, security requirements, deployment platform, database schema, authentication strategy, and integration points. Use this context to ensure service integration documentation aligns with project conventions and architectural decisions."

Static Name: maintenance_mode_instructions
Content: "If maintenance_mode=true: Read existing documentation from {existing_documentation_file}, compare current service integrations with documented integrations, identify changes (new/modified/deleted services), update only changed sections using {update_strategy}, preserve accurate existing documentation, highlight what has changed since last scan."

Static Name: integration_discovery_tasks
Content: "Locate all external service integrations, identify API client implementations, find SDK configurations, discover webhook endpoints, map authentication provider setups, locate payment gateway integrations, find email/SMS service usage, identify file storage implementations, discover monitoring and logging integrations"

Static Name: external_api_documentation
Content: "Document external APIs: service name and purpose, API base URLs and endpoints used, authentication method (API key/OAuth/Basic), request/response patterns, rate limiting handling, error handling and retry logic, data transformation patterns, caching strategies, fallback mechanisms"

Static Name: sdk_integration_analysis
Content: "Document SDK usage: SDK name and version, initialization and configuration, key methods and functions used, authentication setup, error handling patterns, SDK-specific patterns, update and versioning strategy, performance considerations, alternative SDK options evaluated"

Static Name: authentication_provider_documentation
Content: "Document auth providers: provider name (Google/Auth0/Okta/etc), OAuth/SAML flow implementation, client ID and configuration, scopes and permissions requested, callback URL handling, token management, user data mapping, provider-specific features, fallback authentication methods"

Static Name: payment_gateway_analysis
Content: "Document payment integrations: gateway name (Stripe/PayPal/Square/etc), payment flow implementation, supported payment methods, webhook handling for payments, subscription management, refund processing, payment security measures, PCI compliance considerations, test mode vs production setup"

Static Name: communication_service_documentation
Content: "Document communication services: email service provider (SendGrid/Mailgun/etc), SMS service provider (Twilio/etc), template management, sending patterns and triggers, delivery tracking, bounce/failure handling, rate limiting considerations, compliance features (unsubscribe/opt-out)"

Static Name: file_storage_integration
Content: "Document file storage: storage provider (AWS S3/Cloudinary/etc), upload implementation patterns, file organization and naming, access control and permissions, CDN integration, image optimization, file validation and security, backup and redundancy, cost optimization strategies"

Static Name: webhook_implementation_analysis
Content: "Document webhook systems: incoming webhook endpoints, webhook security and validation, payload processing patterns, webhook retry and failure handling, webhook testing approaches, webhook monitoring, outgoing webhook implementations, webhook scaling considerations"

Static Name: service_monitoring_patterns
Content: "Document service monitoring: external service health checks, API response time monitoring, error rate tracking, service availability monitoring, alerting configurations, logging patterns for integrations, performance metrics, cost monitoring and optimization"
```

### 4. Formula Template
```
**COMPREHENSIVE SERVICE INTEGRATIONS DOCUMENTATION GENERATOR**
Create exhaustive service integration documentation for {project_name} at {code_location}.

Project: {project_name}
Foundation context: {foundation_scan_file}
Maintenance mode: {maintenance_mode}
Integration scope: {integration_scope}
Documentation depth: {documentation_depth}

**Phase 1: Foundation Context Integration**
{static:foundation_context_integration}

**Phase 2: Maintenance Mode Processing**
{static:maintenance_mode_instructions}
Update strategy: {update_strategy}
Existing documentation: {existing_documentation_file}

**Phase 3: Integration Discovery & Inventory**
{static:integration_discovery_tasks}

**Phase 2: External API Documentation**
{static:external_api_documentation}
Document API keys: {document_api_keys}
Analyze rate limiting: {analyze_rate_limiting}

**Phase 3: SDK & Library Integration Analysis**
{static:sdk_integration_analysis}
Document SDK usage: {document_sdk_usage}

**Phase 4: Authentication Provider Documentation**
{static:authentication_provider_documentation}
Check authentication providers: {check_authentication_providers}

**Phase 5: Payment Gateway Analysis**
{static:payment_gateway_analysis}
Document payment gateways: {document_payment_gateways}

**Phase 6: Communication Service Documentation**
{static:communication_service_documentation}
Analyze communication services: {analyze_communication_services}

**Phase 7: File Storage Integration**
{static:file_storage_integration}
Check file storage: {check_file_storage}

**Phase 8: Webhook Implementation Analysis**
{static:webhook_implementation_analysis}
Analyze webhooks: {analyze_webhooks}

**Phase 9: Service Monitoring & Operations**
{static:service_monitoring_patterns}
Document monitoring: {document_monitoring}
Check error handling: {check_error_handling}

**Output Required:**

Generate complete documentation file: coderef-services-scan-results.md

### 🔌 SERVICE INTEGRATIONS DOCUMENTATION

#### 🎯 Integration Overview
- **Project:** {project_name}
- **Total Integrations:** [Number of external services]
- **Critical Dependencies:** [Services essential for core functionality]
- **Authentication Methods:** [OAuth/API Key/Basic Auth count]
- **Webhook Endpoints:** [Incoming/outgoing webhook count]
- **Service Categories:** [Payment/Communication/Storage/Auth/etc]

#### 🌐 External API Integrations

**[For each external API, provide:]**

##### Stripe Payment API
- **Service Type:** Payment Gateway
- **File Location:** `/services/stripe.ts`
- **Purpose:** Process payments and manage subscriptions
- **Base URL:** `https://api.stripe.com`
- **Authentication:** API Key (Secret key for server, Publishable key for client)
- **Key Endpoints Used:**
  - `POST /v1/payment_intents` - Create payment intent
  - `GET /v1/customers/{id}` - Retrieve customer data
  - `POST /v1/subscriptions` - Create subscription
- **Rate Limiting:** 100 requests per second
- **Error Handling:** Exponential backoff with 3 retries
- **Webhooks:** `/api/webhooks/stripe` for payment events
- **Environment Config:**
```typescript
STRIPE_SECRET_KEY=sk_live_...
STRIPE_PUBLISHABLE_KEY=pk_live_...
STRIPE_WEBHOOK_SECRET=whsec_...
```

#### 🛠️ SDK Integrations

**[For each SDK, provide:]**

##### Firebase SDK
- **SDK Name:** Firebase Admin SDK v11.5.0
- **File Location:** `/lib/firebase.ts`
- **Purpose:** Authentication, Firestore database, cloud functions
- **Initialization:**
```typescript
import { initializeApp } from 'firebase-admin/app'
const app = initializeApp({
  // Configuration
})
```
- **Key Features Used:**
  - Authentication (Custom tokens)
  - Firestore (Document operations)
  - Cloud Storage (File uploads)
- **Error Handling:** Custom Firebase error wrapper
- **Performance:** Connection pooling and caching

#### 🔐 Authentication Providers

**OAuth Providers:**
- **Google OAuth** - Social login, calendar access
- **GitHub OAuth** - Developer authentication
- **Microsoft Azure AD** - Enterprise SSO

**SAML Providers:**
- **Okta** - Enterprise identity management
- **Auth0** - Unified authentication platform

**Implementation Details:**
```typescript
// OAuth flow example
const googleAuthConfig = {
  clientId: process.env.GOOGLE_CLIENT_ID,
  clientSecret: process.env.GOOGLE_CLIENT_SECRET,
  redirectUri: '/auth/google/callback'
}
```

#### 💳 Payment Gateway Integrations

**Primary Gateway:** Stripe
- **Features:** One-time payments, subscriptions, refunds
- **Implementation:** Stripe Elements for frontend, Stripe API for backend
- **Security:** PCI compliance via Stripe's secure vault

**Secondary Gateway:** PayPal
- **Features:** Express checkout, alternative payment method
- **Implementation:** PayPal SDK integration
- **Fallback:** Used when Stripe is unavailable

#### 📧 Communication Services

**Email Service:** SendGrid
- **File Location:** `/services/email.ts`
- **Features:** Transactional emails, marketing campaigns
- **Templates:** Dynamic template system with variables
- **Tracking:** Open rates, click tracking, bounce handling

**SMS Service:** Twilio
- **File Location:** `/services/sms.ts`
- **Features:** OTP delivery, notifications
- **Rate Limiting:** Respects Twilio rate limits
- **Fallback:** Alternative SMS provider for high availability

#### 🗄️ File Storage Services

**Primary Storage:** AWS S3
- **File Location:** `/services/storage.ts`
- **Features:** Document storage, image uploads
- **Security:** Signed URLs, bucket policies
- **Optimization:** CloudFront CDN integration

**Image Processing:** Cloudinary
- **Features:** Image transformation, optimization
- **Integration:** Direct upload with transformation
- **Caching:** Aggressive caching with versioning

#### 🔗 Webhook Implementations

**Incoming Webhooks:**
- **Stripe Webhooks** (`/api/webhooks/stripe`)
  - Payment completed events
  - Subscription changes
  - Chargeback notifications
- **GitHub Webhooks** (`/api/webhooks/github`)
  - Repository events
  - Deploy triggers

**Outgoing Webhooks:**
- **User Registration** - Notify CRM system
- **Payment Events** - Analytics tracking
- **Content Updates** - CDN cache invalidation

**Webhook Security:**
- Signature verification for all incoming webhooks
- IP allowlisting where supported
- Retry mechanism for failed deliveries

#### 🔍 Service Monitoring & Health

**Health Checks:**
- External service availability monitoring
- Response time tracking
- Error rate monitoring

**Alerting:**
- Service downtime notifications
- Rate limit warnings
- Integration failure alerts

**Logging:**
- Request/response logging for debugging
- Error tracking and categorization
- Performance metrics collection

#### 🧪 Integration Testing

**Testing Approach:**
- **Mock Services:** Test doubles for external APIs
- **Contract Testing:** API contract validation
- **Integration Tests:** End-to-end service integration
- **Webhook Testing:** Webhook payload validation

**Testing Utilities:**
```typescript
// Mock service implementation
const mockStripeAPI = {
  createPaymentIntent: jest.fn()
}
```

#### 🚨 Error Handling & Resilience

**Error Patterns:**
- Service-specific error handling
- Retry mechanisms with exponential backoff
- Circuit breaker patterns
- Graceful degradation strategies

**Fallback Mechanisms:**
- Alternative service providers
- Cached response fallbacks
- Offline functionality where applicable

#### 🔧 Development Workflow

**Adding New Integrations:**
1. Environment configuration setup
2. Service client implementation
3. Error handling and retry logic
4. Testing setup and mocks
5. Monitoring and alerting configuration

**Integration Best Practices:**
- API key rotation procedures
- Service versioning strategy
- Cost optimization guidelines
- Security review requirements

#### 📊 Cost & Performance Optimization

**Cost Monitoring:**
- Service usage tracking
- Cost per integration analysis
- Optimization recommendations

**Performance Optimization:**
- Request batching where possible
- Caching strategies
- Connection pooling
- Rate limit optimization

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
  "existing_documentation_file": "./coderef-services-scan-results.md",
  "update_strategy": "Selective-updates",
  "include_code_examples": true,
  "document_api_keys": false,
  "analyze_webhooks": true,
  "check_authentication_providers": true,
  "document_payment_gateways": true,
  "analyze_communication_services": true,
  "check_file_storage": true,
  "document_sdk_usage": true,
  "analyze_rate_limiting": true,
  "check_error_handling": true,
  "document_monitoring": true,
  "include_testing_patterns": true,
  "output_format": "Developer-focused",
  "documentation_depth": "Exhaustive",
  "integration_scope": "All"
}
```

---

This **Service Integrations Documentation Generator** creates comprehensive integration documentation that enables agents to:
- **Understand all external dependencies** with complete configuration and usage patterns
- **Modify existing integrations** with full context of error handling and security
- **Add new service integrations** following established patterns and best practices
- **Debug integration issues** with complete monitoring and logging documentation
- **Maintain service security** with documented authentication and key management
- **Optimize integration performance** with documented caching and rate limiting strategies
- **Test service integrations** using documented mocking and testing approaches