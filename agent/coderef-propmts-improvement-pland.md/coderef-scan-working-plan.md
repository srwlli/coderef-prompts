# Working Plan: Foundation Scan Prompt Improvements

## Objective
Update `coderef-scan-prompt.md` to incorporate 9 applicable improvements from `api-scan-improvements-list.md` for enhanced AI agent consumption and comprehensive codebase analysis.

## Implementation Strategy
Transform the foundation scan template to optimize for agent consumption patterns while maintaining its comprehensive codebase documentation purpose.

---

## Phase 1: Core Agent Optimization (High Priority ★★★★★)

### 1.1 Add Explicit Parsing Instructions
- **Target:** New static `framework_parsing_patterns`
- **Action:** Add framework-specific patterns for comprehensive codebase analysis
  - React: `function\s+\w+\(|const\s+\w+\s*=\s*\(|export\s+(default\s+)?function`
  - Next.js: `pages/|app/|middleware\.ts|next\.config\.js`
  - Node.js: `require\(|import\s+.*from|module\.exports|exports\.`
  - Database: `mongoose\.|prisma\.|sequelize\.|knex\.|supabase\.`
  - Testing: `describe\(|it\(|test\(|expect\(`
  - Config: `\.env|config\.|settings\.|\.json$|\.yaml$`

### 1.2 Implement Machine-Readable Output Schema
- **Target:** New variable `include_machine_readable`
- **Action:** Generate structured JSON alongside markdown
  - Project metadata with tech stack
  - Component inventory with relationships
  - Critical file mappings with purposes
  - Integration point catalog

### 1.3 Add Error Detection Logic
- **Target:** New static `input_validation_logic`
- **Action:** Add pre-processing validation phase
  - Validate code_location accessibility
  - Check project_name detection
  - Verify framework detection accuracy
  - Flag incomplete configurations

### 1.4 Transform to Command-Based Language
- **Target:** Formula Template language conversion
- **Action:** Convert descriptive phases to imperative commands:
  - "Phase 2: Critical File Mapping" → "IDENTIFY critical files and components"
  - "Phase 3: Code Pattern Analysis" → "EXTRACT coding patterns and conventions"
  - "Phase 5: Data Flow Mapping" → "MAP data flow and architecture patterns"

---

## Phase 2: Enhanced Detection & Analysis (Medium Priority ★★★★☆)

### 2.1 Incremental Scanning Optimization
- **Target:** Enhance `maintenance_mode` processing
- **Action:** Add diffing logic for efficient updates
  - File modification timestamp checking
  - Component signature comparison
  - Dependency change detection
  - Architecture evolution tracking

### 2.2 Centralized Knowledge Catalogs
- **Target:** New variables for structured output generation
- **Action:** Add options to generate:
  - `components.json` - Component inventory with metadata
  - `patterns.json` - Coding pattern catalog
  - `integrations.json` - External service mapping
  - `workflows.json` - Critical path documentation

### 2.3 Cross-Referencing System
- **Target:** Enhance output requirements
- **Action:** Implement ID-based linking:
  - Component IDs for cross-section references
  - File IDs for consistent location references
  - Pattern IDs for reusable pattern definitions
  - Integration IDs for service mappings

---

## Phase 3: Refinement & Meta-Information (Medium Priority ★★★☆☆)

### 3.1 Terminology Enforcement
- **Target:** New static `terminology_enforcement`
- **Action:** Standardize vocabulary:
  - Component types: 'Page-Component', 'Layout-Component', 'Utility-Component'
  - Architecture patterns: 'Client-Server', 'Server-Side-Rendering', 'Static-Site'
  - Data patterns: 'State-Management', 'Data-Fetching', 'Caching-Strategy'
  - Framework terms: consistent naming for detected technologies

### 3.2 Agent Notes Integration
- **Target:** New section in output template
- **Action:** Add scanning meta-information:
  - Framework detection confidence levels
  - Coverage gaps in analysis
  - Complex areas requiring deeper investigation
  - Architectural assumptions made during scanning

---

## Implementation Details

### New Variables to Add:
```
explicit_parsing_instructions (boolean) - Use framework-specific parsing patterns
include_machine_readable (boolean) - Generate JSON schema alongside markdown
error_detection_enabled (boolean) - Validate inputs and configurations
incremental_scanning (boolean) - Optimize for partial codebase updates
generate_knowledge_catalogs (boolean) - Create structured knowledge files
enforce_cross_references (boolean) - Require ID-based component linking
enforce_terminology (boolean) - Use standardized architectural vocabulary
include_agent_notes (boolean) - Add scanning confidence and coverage information
```

### New Statics to Add:
```
framework_parsing_patterns - Comprehensive codebase parsing algorithms
input_validation_logic - Pre-processing validation and error checking
machine_readable_schema - JSON output structure requirements
incremental_scanning_optimization - Efficient update logic for large codebases
centralized_knowledge_catalogs - Structured knowledge file generation
cross_reference_requirements - ID-based linking standards for components
terminology_enforcement - Standardized architectural vocabulary
agent_notes_section - Scanning meta-information and confidence reporting
```

---

## Phase Implementation Order

1. **Core Infrastructure** (Phase 1): Parsing patterns, machine-readable output, error detection, command language
2. **Enhanced Analysis** (Phase 2): Incremental scanning, knowledge catalogs, cross-references
3. **Meta-Information** (Phase 3): Terminology standards, agent notes

## Success Criteria

- ✅ Framework-specific parsing patterns for comprehensive detection
- ✅ Machine-readable JSON output alongside markdown
- ✅ Input validation and error detection logic
- ✅ Command-based language throughout template
- ✅ Incremental scanning optimization for maintenance mode
- ✅ Knowledge catalog generation capabilities
- ✅ Cross-referencing system with component IDs
- ✅ Standardized terminology enforcement
- ✅ Agent scanning confidence and coverage reporting

## Files Modified

- `coderef-scan-prompt.md` - Foundation template enhancement
- Variables: Add 8 new agent-optimized variables
- Statics: Add 8 new statics for parsing, validation, and optimization
- Formula Template: Convert to command-based language with validation phases
- Context Defaults: Set appropriate defaults for new variables

---

**Estimated Effort:** 3 phases focusing on agent consumption optimization and comprehensive codebase analysis accuracy.