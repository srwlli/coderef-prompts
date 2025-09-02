## Five Elements for Code Scan Maintenance & Documentation Update Template

### 1. Categories
```
Development > Documentation Maintenance > Change Detection
Development > Documentation Maintenance > Differential Analysis
Development > Documentation Maintenance > Targeted Updates
Development > Documentation Maintenance > Documentation Health Check
Development > Documentation Maintenance > Artifact Synchronization
Development > Documentation Maintenance > Version Control
```

### 2. Variables
```
project_name (text) - Project identifier
code_location (text) - Repository URL or file paths
last_scan_date (text) - Date of last comprehensive documentation scan
documentation_location (text) - Path to existing documentation artifacts
scan_type (text) - Full-rescan/Incremental/Targeted/Health-check
change_detection_method (text) - Git-diff/File-timestamp/Manual-trigger
include_git_analysis (boolean) - Analyze git commits since last scan
compare_with_existing (boolean) - Compare current state with existing documentation
update_artifacts (boolean) - Update existing documentation artifacts
check_documentation_health (boolean) - Validate existing documentation accuracy
identify_stale_sections (boolean) - Flag outdated documentation sections
suggest_targeted_rescans (boolean) - Recommend specific specialized prompts to re-run
include_change_summary (boolean) - Provide summary of detected changes
analyze_impact_scope (boolean) - Assess impact of changes on documentation
generate_update_plan (boolean) - Create plan for documentation updates
track_documentation_version (boolean) - Version control for documentation changes
output_format (text) - Maintenance-report/Update-plan/Technical-summary
maintenance_priority (text) - Critical-only/High-impact/Comprehensive
time_budget (text) - Quick-check/Standard-maintenance/Deep-refresh
```

### 3. Statics
```
Static Name: change_detection_tasks
Content: "Analyze git commits since last scan, identify modified files and their change types, detect new files and deletions, analyze dependency changes in package files, identify configuration file modifications, detect database schema changes, find new API endpoints or modifications, identify component additions or changes, detect integration point modifications"

Static Name: documentation_health_assessment
Content: "Validate existing documentation accuracy: check if documented files still exist, verify documented patterns still match code, validate documented dependencies are current, check if documented APIs still function as described, verify component documentation matches current implementations, validate integration documentation reflects current setup"

Static Name: impact_analysis_framework
Content: "Assess change impact on documentation: identify which documentation sections are affected by code changes, determine if specialized prompts need re-running, assess if architectural changes require full documentation updates, evaluate if new patterns require documentation, identify if security or performance implications need documentation updates"

Static Name: targeted_update_strategy
Content: "Plan targeted documentation updates: identify specific documentation artifacts needing updates, prioritize updates based on change impact, recommend specific specialized prompts to re-run, suggest partial vs full section rewrites, plan incremental update approach, identify cross-references that need updating"

Static Name: documentation_staleness_detection
Content: "Identify stale documentation: compare file modification dates with documentation dates, identify discrepancies between documented and actual implementations, flag documentation sections that reference removed or modified code, detect missing documentation for new features, identify outdated configuration documentation"

Static Name: maintenance_prioritization
Content: "Prioritize maintenance tasks: critical security documentation updates, high-impact architectural changes, user-facing feature documentation, integration point changes, performance-related updates, accessibility documentation updates, testing documentation maintenance, deployment documentation accuracy"

Static Name: version_control_strategy
Content: "Track documentation versions: maintain documentation change history, tag documentation versions with code releases, track which agent performed which documentation updates, maintain cross-references between code versions and documentation versions, backup previous documentation versions"

Static Name: automated_maintenance_recommendations
Content: "Suggest automation opportunities: git hook integration for documentation triggers, CI/CD pipeline documentation updates, automated staleness detection, scheduled documentation health checks, automated cross-reference validation, documentation diff generation"
```

### 4. Formula Template
```
**COMPREHENSIVE CODE SCAN MAINTENANCE & DOCUMENTATION UPDATE SYSTEM**
Maintain and update existing documentation for {project_name} at {code_location}.

Project: {project_name}
Last scan: {last_scan_date}
Documentation location: {documentation_location}
Scan type: {scan_type}
Change detection: {change_detection_method}
Maintenance priority: {maintenance_priority}
Time budget: {time_budget}

**Phase 1: Change Detection & Analysis**
{static:change_detection_tasks}
Include git analysis: {include_git_analysis}
Analyze impact scope: {analyze_impact_scope}

**Phase 2: Documentation Health Assessment**
{static:documentation_health_assessment}
Check documentation health: {check_documentation_health}
Compare with existing: {compare_with_existing}

**Phase 3: Staleness Detection**
{static:documentation_staleness_detection}
Identify stale sections: {identify_stale_sections}

**Phase 4: Impact Analysis**
{static:impact_analysis_framework}
Include change summary: {include_change_summary}

**Phase 5: Targeted Update Planning**
{static:targeted_update_strategy}
Generate update plan: {generate_update_plan}
Suggest targeted rescans: {suggest_targeted_rescans}

**Phase 6: Maintenance Prioritization**
{static:maintenance_prioritization}

**Phase 7: Version Control & Tracking**
{static:version_control_strategy}
Track documentation version: {track_documentation_version}

**Phase 8: Automation Recommendations**
{static:automated_maintenance_recommendations}

**Output Required:**

Generate maintenance report file: coderef-maintenance-scan-results.md

### 🔄 DOCUMENTATION MAINTENANCE REPORT

#### 📊 Maintenance Overview
- **Project:** {project_name}
- **Last Full Scan:** {last_scan_date}
- **Current Scan Date:** [Current timestamp]
- **Scan Type:** {scan_type}
- **Documentation Location:** {documentation_location}
- **Change Detection Method:** {change_detection_method}

#### 🔍 Change Detection Summary

**Git Analysis Since Last Scan:**
- **Commits Analyzed:** [Number of commits since last scan]
- **Files Modified:** [Count and list of changed files]
- **New Files:** [Count and list of added files]
- **Deleted Files:** [Count and list of removed files]
- **Major Changes:** [Significant architectural or framework changes]

**Change Categories:**
- **API Changes:** [New/modified/deleted endpoints]
- **Component Changes:** [New/modified/deleted components]
- **Configuration Changes:** [Environment, build, deployment config changes]
- **Dependency Changes:** [Package.json modifications]
- **Database Changes:** [Schema or migration changes]

#### 🏥 Documentation Health Status

**Health Check Results:**
- **Overall Documentation Health:** [A-F grade]
- **Stale Sections:** [Count and list of outdated sections]
- **Missing Documentation:** [New features without documentation]
- **Broken References:** [Invalid file paths or links in documentation]
- **Accuracy Score:** [Percentage of documentation matching current code]

**Documentation Artifact Status:**
```
Artifact                    | Status      | Last Updated | Accuracy
---------------------------|-------------|--------------|----------
CODEBASE_OVERVIEW.md       | Up to date  | 2025-01-15   | 95%
AGENT_CONTEXT.md           | Stale       | 2024-12-20   | 78%
API_DOCUMENTATION.md       | Needs update| 2025-01-10   | 85%
COMPONENT_MAP.md           | Critical    | 2024-11-30   | 60%
```

#### ⚠️ Critical Documentation Issues

**High Priority (Immediate Attention Required):**
1. [Critical security documentation gaps]
2. [Major architectural changes not documented]
3. [New API endpoints without documentation]

**Medium Priority (Update This Week):**
1. [Component changes affecting user workflows]
2. [Configuration changes affecting deployment]
3. [Dependency updates with breaking changes]

**Low Priority (Update Next Sprint):**
1. [Minor component prop changes]
2. [Styling updates and improvements]
3. [Code convention updates]

#### 🎯 Targeted Update Recommendations

**Specialized Prompts to Re-run:**
Based on detected changes, recommend re-running these prompts:

1. **api-documentation-prompt.md** - [Reason: 5 new API endpoints detected]
2. **component-library-prompt.md** - [Reason: 12 components modified]
3. **state-management-prompt.md** - [Reason: Redux store structure changed]
4. **authentication-authorization-prompt.md** - [Reason: New OAuth provider added]

**Documentation Sections Needing Updates:**
- **Critical File Map** - [3 new core business logic files]
- **Integration Guide** - [New payment gateway integration]
- **Component Relationship Map** - [Component hierarchy changes]

#### 📋 Maintenance Action Plan

**Immediate Actions (Today):**
1. Re-run api-documentation-prompt.md for new endpoints
2. Update AGENT_CONTEXT.md with recent architectural decisions
3. Refresh COMPONENT_MAP.md for new component relationships

**Short-term Actions (This Week):**
1. Re-run component-library-prompt.md for modified components
2. Update integration documentation for new services
3. Refresh error handling documentation for new error patterns

**Long-term Actions (Next Sprint):**
1. Full rescan of entire codebase for comprehensive update
2. Implement automated documentation triggers
3. Set up documentation health monitoring

#### 🔄 Update Execution Strategy

**Incremental Update Approach:**
```
Phase 1: Critical security and API documentation
Phase 2: Component and state management updates  
Phase 3: Integration and deployment documentation
Phase 4: Development patterns and conventions
Phase 5: Full health verification scan
```

**Resource Allocation:**
- **Time Required:** [Estimated time for each update phase]
- **Agent Allocation:** [Which specialized prompts to prioritize]
- **Impact Assessment:** [Business impact of outdated documentation]

#### 📈 Documentation Metrics

**Quality Metrics:**
- **Coverage:** [Percentage of codebase documented]
- **Accuracy:** [Documentation accuracy vs actual code]
- **Freshness:** [Average age of documentation sections]
- **Usage:** [How frequently documentation is accessed]

**Maintenance Metrics:**
- **Update Frequency:** [How often documentation is updated]
- **Staleness Detection:** [Time to identify outdated documentation]
- **Update Velocity:** [Time to update documentation after code changes]

#### 🤖 Automation Recommendations

**Immediate Automation Opportunities:**
1. **Git Hook Integration:** Auto-trigger documentation updates on significant commits
2. **CI/CD Integration:** Documentation validation in deployment pipeline
3. **File Watch Automation:** Monitor critical files for changes
4. **Staleness Alerts:** Automated notifications for outdated documentation

**Future Automation:**
1. **AI-Powered Change Detection:** Intelligent identification of documentation impact
2. **Automated Documentation Drafts:** Generate documentation updates from code changes
3. **Cross-Reference Validation:** Automated checking of documentation links and references

#### 🔧 Maintenance Workflow

**Daily Maintenance:**
- Review git commits for documentation impact
- Check documentation health dashboard
- Address critical documentation issues

**Weekly Maintenance:**
- Run targeted specialized prompts for changed areas
- Update documentation artifacts
- Review and merge documentation changes

**Monthly Maintenance:**
- Full codebase documentation health check
- Comprehensive documentation accuracy validation
- Update maintenance automation and processes

Update artifacts: {update_artifacts}
Include change summary: {include_change_summary}
Output format: {output_format}
```

### 5. Context Defaults
```json
{
  "project_name": "[auto-detect from package.json]",
  "code_location": "[provide repository/files]",
  "last_scan_date": "[provide last scan date]",
  "documentation_location": "./docs/agent-context/",
  "scan_type": "Incremental",
  "change_detection_method": "Git-diff",
  "include_git_analysis": true,
  "compare_with_existing": true,
  "update_artifacts": true,
  "check_documentation_health": true,
  "identify_stale_sections": true,
  "suggest_targeted_rescans": true,
  "include_change_summary": true,
  "analyze_impact_scope": true,
  "generate_update_plan": true,
  "track_documentation_version": true,
  "output_format": "Maintenance-report",
  "maintenance_priority": "High-impact",
  "time_budget": "Standard-maintenance"
}
```

---

This **Code Scan Maintenance System** provides:
- **Change detection** with git analysis and file comparison
- **Documentation health monitoring** with accuracy validation
- **Targeted update recommendations** for specific specialized prompts
- **Maintenance prioritization** based on change impact
- **Automation suggestions** for continuous documentation maintenance
- **Version control integration** for documentation change tracking
- **Performance optimization** through incremental updates rather than full rescans