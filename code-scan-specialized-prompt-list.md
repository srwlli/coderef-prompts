# Cold Entry Specialized Follow-up Prompts

## Overview
These specialized prompts are designed to follow the initial cold-entry scan, providing exhaustive documentation for specific areas of the codebase. Each prompt generates detailed documentation that enables agents to work on any part of the codebase with deep understanding.

## Core Architecture Documentation

### 1. **api-documentation.md**
- All API endpoints with methods (GET, POST, PUT, DELETE)
- Authentication requirements per endpoint
- Request/response schemas with examples
- Error codes and handling
- Rate limiting and throttling rules
- API versioning strategy
- WebSocket/real-time endpoints

### 2. **component-library.md**
- Complete UI component inventory
- Props documentation with types
- Component composition patterns
- State management within components
- Event handlers and callbacks
- Styling approaches and theming
- Accessibility features per component
- Usage examples and best practices

### 3. **routing-navigation.md**
- Route definitions and hierarchies
- Dynamic route parameters
- Route guards and middleware
- Navigation flows and redirects
- Deep linking patterns
- Browser history management
- Protected route patterns
- Route-based code splitting

### 4. **state-management.md**
- Global state architecture
- State store structure
- Context providers and consumers
- Local component state patterns
- State persistence strategies
- State synchronization patterns
- Async state handling
- State debugging tools

### 5. **data-models.md**
- Database schemas and relationships
- Data Transfer Objects (DTOs)
- Validation rules and constraints
- Data transformation pipelines
- Type definitions and interfaces
- Migration strategies
- Seed data patterns
- Query optimization techniques

## Integration & Infrastructure

### 6. **service-integrations.md**
- External API integrations
- SDK configurations and usage
- Third-party service dependencies
- Webhook implementations
- OAuth/SAML providers
- Payment gateway integrations
- Email/SMS services
- File storage services

### 7. **authentication-authorization.md**
- Authentication flows (login, logout, refresh)
- Authorization patterns and roles
- Permission matrices
- Token management
- Session handling
- Security headers and CORS
- Multi-factor authentication
- SSO implementations

### 8. **deployment-infrastructure.md**
- CI/CD pipeline configurations
- Environment variables and secrets
- Build and deployment scripts
- Docker/container configurations
- Infrastructure as Code
- Monitoring and alerting setup
- Backup and recovery procedures
- Scaling configurations

### 9. **error-handling.md**
- Error boundary implementations
- Global error handlers
- Logging strategies and tools
- Error tracking integrations
- User-facing error messages
- Retry mechanisms
- Fallback strategies
- Debug mode configurations

## Development Patterns

### 10. **code-conventions.md**
- Coding style guides
- Naming conventions
- File and folder organization
- Import/export patterns
- Comment standards
- Git workflow and branching
- Code review guidelines
- Linting and formatting rules

### 11. **testing-patterns.md**
- Test file structure and naming
- Unit test patterns
- Integration test strategies
- E2E test scenarios
- Mock and fixture patterns
- Test data factories
- Coverage requirements
- Performance testing approaches

### 12. **performance-patterns.md**
- Code splitting strategies
- Lazy loading implementations
- Caching mechanisms
- Bundle optimization techniques
- Image optimization
- API request optimization
- Memory management patterns
- Performance monitoring setup

### 13. **accessibility-patterns.md**
- ARIA implementation patterns
- Keyboard navigation flows
- Screen reader optimizations
- Color contrast standards
- Focus management
- Accessible form patterns
- Error announcement strategies
- Testing tools and procedures

## Business Logic

### 14. **business-workflows.md**
- User journey mappings
- Complex business processes
- State machines and flows
- Business rule implementations
- Calculation engines
- Approval workflows
- Notification triggers
- Scheduled job patterns

### 15. **data-transformations.md**
- Data processing pipelines
- ETL processes
- Data validation flows
- Calculation algorithms
- Report generation logic
- Data aggregation patterns
- Real-time data processing
- Batch processing strategies

### 16. **feature-flags.md**
- Feature toggle implementations
- A/B testing frameworks
- Rollout strategies
- User segmentation logic
- Flag management systems
- Performance impact considerations
- Cleanup procedures
- Analytics integration

## Usage Notes
- Each prompt should be run after the initial cold-entry scan
- Prompts can be run independently based on project needs
- Documentation should be stored in a centralized location
- Regular updates should be scheduled as code evolves
- Cross-references between documents enhance understanding