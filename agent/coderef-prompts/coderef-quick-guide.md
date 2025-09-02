# Coderef Scan System - Quick User Guide

## What is Coderef?
Comprehensive codebase documentation system that creates detailed reference materials for AI agents. Each scan analyzes specific aspects of your code and generates thorough documentation that stays current through maintenance workflows.

## 🚀 Quick Start

### 1. **Start Here - Foundation Scan**
```
coderef-foundation-scan-prompt.md → coderef-foundation-scan-results.md
```
**Purpose:** Complete codebase overview and agent onboarding  
**Time:** 20+ minutes  
**Must run first** - creates foundation context for all other scans

### 2. **Run Specialized Scans** 
**Important:** All specialized scans read the foundation scan first for context.

| Scan | Purpose | When to Use | Dependencies |
|------|---------|-------------|--------------|
| `coderef-api-scan-prompt.md` | API endpoints & backend | Has REST/GraphQL APIs | Reads foundation scan |
| `coderef-component-scan-prompt.md` | UI components & design system | React/Vue/Angular frontend | Reads foundation scan |
| `coderef-routing-scan-prompt.md` | Routes & navigation | Multi-page application | Reads foundation scan |
| `coderef-state-scan-prompt.md` | State management | Redux/Zustand/Context | Reads foundation scan |
| `coderef-data-scan-prompt.md` | Database models & schemas | Uses database | Reads foundation scan |
| `coderef-auth-scan-prompt.md` | Security & authentication | Has user authentication | Reads foundation scan |
| `coderef-services-scan-prompt.md` | External integrations | Uses third-party services | Reads foundation scan |
| `coderef-deployment-scan-prompt.md` | Infrastructure & CI/CD | Has deployment pipeline | Reads foundation scan |
| `coderef-error-scan-prompt.md` | Error handling & logging | Production application | Reads foundation scan |
| `coderef-testing-scan-prompt.md` | Test patterns & coverage | Has test suite | Reads foundation scan |

### 3. **Maintenance Workflow**
```
coderef-maintenance-scan-prompt.md → coderef-maintenance-scan-results.md
```
**Purpose:** Identify what needs updating and trigger specialized scans in maintenance mode  
**Frequency:** Weekly or after major changes  
**Output:** Recommendations for which specialized scans to re-run

## 📋 Typical Workflows

### **New Project (Initial Documentation)**
1. `coderef-foundation-scan-prompt.md` (creates foundation context)
2. Run 3-5 most relevant specialized scans (each reads foundation)
3. Set up maintenance schedule

### **Existing Project (Assessment & Updates)**
1. `coderef-foundation-scan-prompt.md` (foundation overview)
2. `coderef-maintenance-scan-prompt.md` (identifies what needs updating)
3. Run recommended specialized scans in **maintenance mode**
4. Specialized scans **update existing** `*-scan-results.md` files

### **Maintenance Updates (Ongoing)**
1. `coderef-maintenance-scan-prompt.md` (detects changes)
2. Agent runs specific specialized scans with `maintenance_mode=true`
3. Agent updates existing documentation files rather than creating new ones
4. Documentation stays current with codebase changes

### **Specific Area Deep-Dive**
1. Ensure foundation scan exists (required for context)
2. Run specific specialized scan:
   - API changes? → `coderef-api-scan-prompt.md` in maintenance mode
   - New components? → `coderef-component-scan-prompt.md` in maintenance mode

## ⚙️ How to Use

### **Input Required:**
- `code_location` - Your repository path or URL
- `project_name` - Project identifier

### **Output Generated:**
Each scan creates a detailed `*-scan-results.md` file with:
- Complete documentation for that area
- Code examples and patterns
- Agent-ready reference material

### **Customization:**
Most scans have these common options:
- `include_code_examples: true/false`
- `documentation_depth: Overview/Detailed/Exhaustive`
- `output_format: Technical/Developer-focused/etc`

## 🎯 Common Use Cases

### **Onboarding New AI Agents**
1. Run `coderef-scan-prompt.md` for foundation
2. Run specialized scans for areas the agent will work on
3. Agent reads generated documentation before starting work

### **Code Review Preparation**
1. Run relevant specialized scans
2. Use documentation to understand impact of changes
3. Validate changes against documented patterns

### **Technical Debt Assessment**
1. Run `coderef-scan-prompt.md` for health overview
2. Run specialized scans for problem areas
3. Use documentation to plan improvements

### **Documentation Maintenance**
1. Run `coderef-maintenance-scan-prompt.md` weekly
2. Follow recommendations for targeted updates
3. Keep documentation current with code changes

## 📁 Output Files

### **Generated Documentation:**
- `coderef-foundation-scan-results.md` - Complete project overview
- `coderef-*-scan-results.md` - Specialized area documentation
- `coderef-maintenance-scan-results.md` - Update recommendations

### **Persistent Artifacts (if enabled):**
- `CODEBASE_OVERVIEW.md` - Architecture summary
- `AGENT_CONTEXT.md` - Key findings for agents
- `CRITICAL_PATHS.md` - Important workflows
- `CONVENTIONS.md` - Coding standards
- And more...

## ⏱️ Time Estimates

| Scan Type | Time Required | Complexity |
|-----------|---------------|------------|
| Foundation Scan | 20-30 min | High |
| Specialized Scans | 10-15 min each | Medium |
| Maintenance Scan | 5-10 min | Low |

## 🔄 Maintenance Schedule

### **Daily:** 
Quick check if major changes made

### **Weekly:**
Run maintenance scan, update targeted areas

### **Monthly:**
Full foundation rescan for comprehensive update

### **After Major Changes:**
- New features → Run relevant specialized scans
- Architecture changes → Re-run foundation scan
- New integrations → Run services/auth scans

## 💡 Pro Tips

1. **Start with foundation scan** - always run `coderef-foundation-scan-prompt.md` first
2. **Batch specialized scans** - run multiple relevant scans together
3. **Read maintenance recommendations** - tells you exactly what to update
4. **Use for onboarding** - have agents read documentation before starting work
5. **Keep current** - outdated documentation is worse than no documentation

## 🆘 Troubleshooting

**Documentation seems outdated?**
→ Run `coderef-maintenance-scan-prompt.md` to identify what needs updating

**Don't know which scans to run?**  
→ Foundation scan recommends follow-up scans in its output

**Too much documentation?**
→ Adjust `documentation_depth` to "Overview" or "Detailed" instead of "Exhaustive"

**Missing information?**
→ Check if there's a specialized scan for that area, or request new scan type