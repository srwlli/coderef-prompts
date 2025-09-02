## Five Elements for Deployment & Infrastructure Documentation Template

### 1. Categories
```
Development > Infrastructure Analysis > CI/CD Pipeline Documentation
Development > Infrastructure Analysis > Environment Configuration
Development > Infrastructure Analysis > Container & Build Analysis
Development > Infrastructure Analysis > Infrastructure as Code
Development > Infrastructure Analysis > Monitoring & Observability
Development > Infrastructure Analysis > Backup & Recovery
Development > Infrastructure Analysis > Scaling & Performance
```

### 2. Variables
```
project_name (text) - Project identifier
code_location (text) - Repository URL or file paths
foundation_scan_file (text) - Path to coderef-scan-results.md (required)
maintenance_mode (boolean) - Update existing documentation vs create new
existing_documentation_file (text) - Path to existing deployment scan results (if maintenance_mode=true)
update_strategy (text) - Full-rewrite/Selective-updates/Append-changes
deployment_platform (text) - Vercel/Netlify/AWS/GCP/Azure/Docker/Kubernetes
ci_cd_platform (text) - GitHub Actions/GitLab CI/Jenkins/CircleCI
include_code_examples (boolean) - Include deployment script examples
document_secrets (boolean) - Document secret management (redacted)
analyze_environments (boolean) - Document environment configurations
check_containerization (boolean) - Document Docker/container setup
document_iac (boolean) - Document Infrastructure as Code
analyze_monitoring (boolean) - Document monitoring and alerting
check_backup_recovery (boolean) - Document backup and recovery procedures
document_scaling (boolean) - Document auto-scaling configurations
analyze_build_process (boolean) - Document build pipeline and optimization
check_rollback_procedures (boolean) - Document rollback and disaster recovery
include_performance_metrics (boolean) - Include infrastructure performance data
output_format (text) - DevOps-focused/Technical/Developer-focused
documentation_depth (text) - Overview/Detailed/Exhaustive
infrastructure_scope (text) - All/Production-only/Critical-only
```

### 3. Statics
```
Static Name: foundation_context_integration
Content: "First read the foundation scan results from {foundation_scan_file} to understand: overall project architecture, established coding patterns, security requirements, deployment platform, database schema, authentication strategy, and integration points. Use this context to ensure deployment documentation aligns with project conventions and architectural decisions."

Static Name: maintenance_mode_instructions
Content: "If maintenance_mode=true: Read existing documentation from {existing_documentation_file}, compare current deployment implementation with documented deployment patterns, identify changes (new/modified/deleted deployment configs), update only changed sections using {update_strategy}, preserve accurate existing documentation, highlight what has changed since last scan."

Static Name: infrastructure_discovery_tasks
Content: "Locate CI/CD configuration files, identify deployment scripts and workflows, find Docker and container configurations, discover Infrastructure as Code files, locate environment variable definitions, find monitoring and logging configurations, identify backup and recovery procedures, discover scaling configurations, map build and deployment processes"

Static Name: cicd_pipeline_documentation
Content: "Document CI/CD setup: pipeline trigger conditions, build stages and steps, testing integration in pipeline, deployment stages (dev/staging/prod), environment promotion process, pipeline secrets and variables, artifact management, deployment approvals and gates, rollback procedures, pipeline monitoring and notifications"

Static Name: environment_configuration_analysis
Content: "Document environment setup: environment variable definitions and usage, secret management and rotation, configuration differences per environment, feature flags and environment toggles, database connection configurations, third-party service configurations, SSL certificate management, domain and DNS configurations"

Static Name: container_build_documentation
Content: "Document containerization: Dockerfile configuration and optimization, container base images and security, multi-stage build processes, container registry usage, container orchestration (Kubernetes/Docker Compose), container networking and volumes, container security scanning, container performance optimization"

Static Name: iac_implementation_analysis
Content: "Document Infrastructure as Code: IaC tool used (Terraform/CloudFormation/Pulumi), resource definitions and dependencies, environment provisioning automation, infrastructure versioning and state management, resource tagging and organization, cost optimization in IaC, security configurations in infrastructure, disaster recovery infrastructure"

Static Name: monitoring_alerting_documentation
Content: "Document monitoring setup: application performance monitoring (APM), infrastructure monitoring tools, log aggregation and analysis, error tracking and alerting, uptime monitoring and SLA tracking, custom metrics and dashboards, alerting rules and notification channels, monitoring data retention policies"

Static Name: backup_recovery_procedures
Content: "Document backup and recovery: database backup strategies and schedules, application data backup procedures, configuration backup and versioning, backup storage and retention policies, disaster recovery plans and procedures, recovery time objectives (RTO) and recovery point objectives (RPO), backup testing and validation procedures"

Static Name: scaling_configuration_analysis
Content: "Document scaling setup: auto-scaling policies and triggers, horizontal scaling configurations, vertical scaling procedures, load balancing setup and algorithms, CDN configurations and caching, database scaling strategies, microservice scaling patterns, cost optimization for scaling"

Static Name: build_optimization_documentation
Content: "Document build process: build tool configuration and optimization, dependency caching strategies, build artifact optimization, build time optimization techniques, build environment specifications, build security scanning, build reproducibility measures, build artifact distribution"

Static Name: deployment_security_analysis
Content: "Document deployment security: deployment authentication and authorization, secure artifact distribution, environment isolation and security, secret injection and management, network security configurations, compliance scanning in deployment, security hardening procedures, vulnerability scanning integration"
```

### 4. Formula Template
```
**COMPREHENSIVE DEPLOYMENT & INFRASTRUCTURE DOCUMENTATION GENERATOR**
Create exhaustive deployment and infrastructure documentation for {project_name} at {code_location}.

Project: {project_name}
Foundation context: {foundation_scan_file}
Maintenance mode: {maintenance_mode}
Deployment Platform: {deployment_platform}
CI/CD Platform: {ci_cd_platform}
Infrastructure scope: {infrastructure_scope}
Documentation depth: {documentation_depth}

**Phase 1: Foundation Context Integration**
{static:foundation_context_integration}

**Phase 2: Maintenance Mode Processing**
{static:maintenance_mode_instructions}
Update strategy: {update_strategy}
Existing documentation: {existing_documentation_file}

**Phase 3: Infrastructure Discovery & Mapping**
{static:infrastructure_discovery_tasks}

**Phase 2: CI/CD Pipeline Documentation**
{static:cicd_pipeline_documentation}
Analyze build process: {analyze_build_process}

**Phase 3: Environment Configuration Analysis**
{static:environment_configuration_analysis}
Document secrets: {document_secrets}
Analyze environments: {analyze_environments}

**Phase 4: Container & Build Documentation**
{static:container_build_documentation}
{static:build_optimization_documentation}
Check containerization: {check_containerization}

**Phase 5: Infrastructure as Code Analysis**
{static:iac_implementation_analysis}
Document IaC: {document_iac}

**Phase 6: Monitoring & Observability**
{static:monitoring_alerting_documentation}
Analyze monitoring: {analyze_monitoring}
Include performance metrics: {include_performance_metrics}

**Phase 7: Backup & Recovery Documentation**
{static:backup_recovery_procedures}
Check backup recovery: {check_backup_recovery}
Check rollback procedures: {check_rollback_procedures}

**Phase 8: Scaling & Performance Configuration**
{static:scaling_configuration_analysis}
Document scaling: {document_scaling}

**Phase 9: Deployment Security Analysis**
{static:deployment_security_analysis}

**Output Required:**

Generate complete documentation file: coderef-deployment-scan-results.md

### 🚀 DEPLOYMENT & INFRASTRUCTURE DOCUMENTATION

#### 🎯 Infrastructure Overview
- **Project:** {project_name}
- **Deployment Platform:** [Vercel/AWS/GCP/Azure/Self-hosted]
- **CI/CD Platform:** [GitHub Actions/GitLab CI/Jenkins/etc]
- **Container Technology:** [Docker/Podman/None]
- **Infrastructure as Code:** [Terraform/CloudFormation/Pulumi/None]
- **Environment Count:** [Dev/Staging/Production/etc]
- **Deployment Frequency:** [Daily/Weekly/On-demand]

#### 🔄 CI/CD Pipeline

**Pipeline Overview:**
```yaml
# Example pipeline structure
name: Deploy Application
on: [push, pull_request]
jobs:
  test: # Run tests
  build: # Build application  
  deploy: # Deploy to environments
```

**Pipeline Stages:**
1. **Source** - Code checkout and preparation
2. **Test** - Unit tests, integration tests, security scans
3. **Build** - Application build and optimization
4. **Deploy** - Environment-specific deployment
5. **Verify** - Post-deployment health checks

**Deployment Environments:**
- **Development** - Auto-deploy from feature branches
- **Staging** - Deploy from develop branch for testing
- **Production** - Deploy from main branch with approvals

**Pipeline Configuration:**
- **File Location:** `.github/workflows/deploy.yml`
- **Trigger Conditions:** [Push to main, PR creation, manual trigger]
- **Build Matrix:** [Node versions, OS variants tested]
- **Deployment Gates:** [Manual approvals, test requirements]

#### 🌍 Environment Configuration

**Environment Variables:**
```bash
# Production environment variables (values redacted)
NODE_ENV=production
DATABASE_URL=postgresql://...
API_SECRET_KEY=***
STRIPE_SECRET_KEY=***
REDIS_URL=redis://...
```

**Environment Differences:**
```
Variable         | Dev              | Staging          | Production
-----------------|------------------|------------------|------------------
DATABASE_URL     | Local PostgreSQL | Staging DB       | Production DB
API_BASE_URL     | localhost:3000   | staging.app.com  | app.com
LOG_LEVEL        | debug            | info             | warn
RATE_LIMIT       | disabled         | lenient          | strict
```

**Secret Management:**
- **Storage:** [AWS Secrets Manager/Azure Key Vault/HashiCorp Vault]
- **Rotation:** [Automatic/manual rotation procedures]
- **Access Control:** [Who can access which secrets]

#### 🐳 Container Configuration

**Dockerfile:**
```dockerfile
# Multi-stage build example
FROM node:18-alpine AS base
# Build stages documented
```

**Container Optimization:**
- **Image Size:** [Base image choice and optimization]
- **Layer Caching:** [Build cache optimization]
- **Security:** [Non-root user, minimal attack surface]

**Container Orchestration:**
- **Platform:** [Kubernetes/Docker Swarm/ECS]
- **Service Definition:** [Pod specs, service configs]
- **Resource Limits:** [CPU/memory constraints]

#### 🏗️ Infrastructure as Code

**IaC Implementation:**
- **Tool:** [Terraform/CloudFormation/Pulumi]
- **File Location:** `/infrastructure/` or `/terraform/`
- **Resource Organization:** [Modules and environment separation]

**Key Resources:**
```hcl
# Example Terraform resource
resource "aws_instance" "app_server" {
  # Configuration details
}
```

**State Management:**
- **Backend:** [S3/Azure Storage/Terraform Cloud]
- **Locking:** [DynamoDB/Azure Storage/etc]
- **Workspace Strategy:** [Environment separation approach]

#### 📊 Monitoring & Observability

**Application Monitoring:**
- **APM Tool:** [New Relic/Datadog/AppDynamics]
- **Metrics Tracked:** [Response times, error rates, throughput]
- **Custom Metrics:** [Business-specific KPIs]

**Infrastructure Monitoring:**
- **Platform:** [CloudWatch/Azure Monitor/Prometheus]
- **System Metrics:** [CPU, memory, disk, network]
- **Resource Utilization:** [Cost and performance optimization]

**Logging Configuration:**
```typescript
// Structured logging example
const logger = createLogger({
  level: process.env.LOG_LEVEL,
  format: combine(timestamp(), json()),
  transports: [
    new transports.Console(),
    new transports.File({ filename: 'app.log' })
  ]
})
```

**Alerting Rules:**
- **Critical:** High error rate, service down, security incidents
- **Warning:** Performance degradation, resource utilization
- **Info:** Deployment notifications, scaling events

#### 💾 Backup & Recovery

**Backup Strategy:**
- **Database Backups:** [Automated daily/weekly backups with retention]
- **Application Data:** [File storage and user data backups]
- **Configuration Backups:** [Environment and infrastructure config]

**Recovery Procedures:**
1. **Database Recovery:** [Point-in-time recovery process]
2. **Application Recovery:** [Application restoration from backups]
3. **Infrastructure Recovery:** [Infrastructure reconstruction]

**Disaster Recovery:**
- **RTO:** [Recovery Time Objective - target restoration time]
- **RPO:** [Recovery Point Objective - acceptable data loss]
- **Failover:** [Automated/manual failover procedures]

#### 📈 Scaling Configuration

**Auto-scaling Setup:**
- **Horizontal Scaling:** [Instance count scaling rules]
- **Vertical Scaling:** [Resource allocation scaling]
- **Scaling Triggers:** [CPU/memory/request count thresholds]

**Load Balancing:**
- **Algorithm:** [Round-robin/least-connections/etc]
- **Health Checks:** [Application health check endpoints]
- **SSL Termination:** [Load balancer SSL configuration]

**Database Scaling:**
- **Read Replicas:** [Read scaling strategy]
- **Connection Pooling:** [Database connection management]
- **Query Optimization:** [Performance tuning approaches]

#### 🔒 Deployment Security

**Security Measures:**
- **Image Scanning:** [Container vulnerability scanning]
- **Secret Scanning:** [Code and artifact secret detection]
- **Compliance Scanning:** [Security policy enforcement]

**Network Security:**
- **VPC Configuration:** [Network isolation and security groups]
- **SSL/TLS:** [Certificate management and renewal]
- **Firewall Rules:** [Access control and port restrictions]

#### 🧪 Deployment Testing

**Testing Strategy:**
- **Smoke Tests:** [Post-deployment basic functionality]
- **Integration Tests:** [Service integration validation]
- **Performance Tests:** [Load testing in staging]

**Rollback Testing:**
- [Rollback procedure validation]
- [Data consistency checks during rollback]
- [Service availability during rollback]

#### 🔧 Development Workflow

**Local Development:**
- **Docker Compose:** [Local environment setup]
- **Environment Setup:** [Developer environment configuration]
- **Service Dependencies:** [Required external services for development]

**Deployment Process:**
1. Code review and approval
2. Automated testing and security scans
3. Staging deployment and verification
4. Production deployment with monitoring
5. Post-deployment health checks

#### 📚 Operational Procedures

**Routine Maintenance:**
- **Security Updates:** [Scheduled security patching]
- **Certificate Renewal:** [SSL certificate management]
- **Backup Verification:** [Regular backup testing]

**Incident Response:**
- **Monitoring Escalation:** [Alert escalation procedures]
- **Emergency Procedures:** [Critical incident response]
- **Communication Plans:** [Stakeholder notification procedures]

#### 💰 Cost Optimization

**Resource Optimization:**
- **Right-sizing:** [Instance and resource optimization]
- **Reserved Instances:** [Cost savings through commitments]
- **Spot Instances:** [Cost-effective compute for non-critical workloads]

**Cost Monitoring:**
- **Budget Alerts:** [Cost threshold notifications]
- **Resource Tagging:** [Cost allocation and tracking]
- **Usage Analytics:** [Resource utilization analysis]

Include code examples: {include_code_examples}
Output format: {output_format}
```

### 5. Context Defaults
```json
{
  "project_name": "[auto-detect from package.json]",
  "code_location": "[provide repository/files]",
  "foundation_scan_file": "./coderef-scan-results.md",
  "maintenance_mode": false,
  "existing_documentation_file": "./coderef-deployment-scan-results.md",
  "update_strategy": "Selective-updates",
  "deployment_platform": "Auto-detect",
  "ci_cd_platform": "Auto-detect",
  "include_code_examples": true,
  "document_secrets": false,
  "analyze_environments": true,
  "check_containerization": true,
  "document_iac": true,
  "analyze_monitoring": true,
  "check_backup_recovery": true,
  "document_scaling": true,
  "analyze_build_process": true,
  "check_rollback_procedures": true,
  "include_performance_metrics": true,
  "output_format": "DevOps-focused",
  "documentation_depth": "Exhaustive",
  "infrastructure_scope": "All"
}
```

---

This **Deployment & Infrastructure Documentation Generator** creates comprehensive infrastructure documentation that enables agents to:
- **Understand complete deployment pipelines** with CI/CD configuration and automation
- **Modify infrastructure setup** with full context of environments and configurations
- **Deploy new features** following established deployment patterns and security measures
- **Debug deployment issues** with complete pipeline and monitoring documentation
- **Maintain infrastructure security** with documented secret management and compliance
- **Scale applications** using documented auto-scaling and load balancing configurations
- **Handle incidents** with documented backup, recovery, and rollback procedures