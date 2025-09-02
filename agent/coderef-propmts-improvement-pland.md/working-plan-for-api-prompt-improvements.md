# Working Plan: API Prompt Improvements Implementation

## Objective
Update `coderef-api-scan-prompt.md` to incorporate the top 17 improvements from `api-scan-improvements-list.md` for enhanced AI agent consumption and scanning accuracy.

## Implementation Strategy
Transform the current Five Elements template to optimize for agent consumption patterns while maintaining API documentation focus.

---

## Phase 1: Foundation Updates (High Priority ★★★★★)

### 1.1 Add Explicit Parsing Instructions
- **Target:** New static `framework_parsing_patterns`
- **Action:** Add regex patterns for framework detection
  - Express: `app\.(get|post|put|delete)\(` 
  - Supabase: `\.from\(\)\.(select|insert|update|delete)\(`
  - GraphQL: `type\s+\w+\s*{|Query\s*{|Mutation\s*{`
  - Next.js API: `export\s+(default\s+)?function\s+handler`

### 1.2 Implement Error Detection Logic
- **Target:** New static `input_validation_logic`
- **Action:** Add pre-processing phase to Formula Template
  - Validate `foundation_scan_file` exists
  - Cross-reference `api_framework` with detected patterns
  - Check maintenance mode file consistency

### 1.3 Enhanced Machine-Readable Schema
- **Target:** Enhance existing variable `include_machine_readable`
- **Action:** Expand to generate structured JSON alongside markdown
  - Endpoints array with methods, paths, auth requirements
  - Schema definitions with field types and validation
  - Error response catalog with codes and messages

---

## Phase 2: Variable Optimization (High Priority ★★★★★)

### 2.1 Simplify Variable Complexity
- **Target:** Replace 20+ boolean variables
- **Action:** Add `documentation_mode` variable with three levels:
  - `discovery` - Basic endpoint inventory and patterns
  - `detailed` - Full documentation with examples
  - `comprehensive` - Exhaustive analysis with performance data

### 2.2 Add Command-Based Instructions
- **Target:** Formula Template language transformation
- **Action:** Convert descriptive phases to imperative commands:
  - "Phase 3: API Discovery" → "SCAN codebase for API endpoints"
  - "Document endpoints" → "EXTRACT endpoint definitions and parameters"
  - "Analyze security" → "ANALYZE authentication and authorization patterns"

---

## Phase 3: Enhanced Dependency & Detection (Medium Priority ★★★★☆)

### 3.1 Task-Oriented Dependency Mapping
- **Target:** Enhance `api_dependency_mapping` static
- **Action:** Add execution metadata:
  - Operation sequencing requirements
  - Prerequisite API calls for workflows
  - Data flow diagrams for complex operations

### 3.2 Incremental Scanning Logic
- **Target:** Enhance `maintenance_mode_instructions` static
- **Action:** Add diffing algorithms:
  - File modification timestamp checking
  - Endpoint signature comparison
  - New/modified/deleted component detection

### 3.3 Non-Standard API Detection
- **Target:** New static `non_standard_api_patterns`
- **Action:** Add detection for:
  - Client-side database operations (Supabase patterns)
  - WebSocket connection management
  - Server-sent event implementations

---

## Phase 4: Output Optimization (Medium Priority ★★★☆☆)

### 4.1 Centralized Knowledge Catalogs
- **Target:** New variables for catalog generation
- **Action:** Add options to generate:
  - `errors.json` - Canonical error response catalog
  - `auth_patterns.json` - Authentication method reference
  - `schemas.json` - Request/response schema definitions

### 4.2 Cross-Referencing System
- **Target:** Enhance output requirements
- **Action:** Mandate ID-based linking:
  - Endpoint IDs for cross-section references
  - Schema IDs for reusable type definitions
  - Error code IDs for consistent error handling

### 4.3 Code Extraction Requirements
- **Target:** New static `code_extraction_commands`
- **Action:** Mandate actual code snippets with:
  - Source file locations (file:line format)
  - Complete function implementations
  - Real error response objects

---

## Phase 5: Refinement & Consistency (Low Priority ★★★☆☆)

### 5.1 Terminology Enforcement
- **Target:** New static `terminology_enforcement`
- **Action:** Standardize vocabulary:
  - Auth types: 'Bearer-Token', 'Session-Cookie', 'API-Key'
  - Error categories: 'ValidationError', 'AuthError', 'NotFound'
  - HTTP methods: consistent capitalization

### 5.2 Real-Time Schema Formalization
- **Target:** Enhance `real_time_analysis` static
- **Action:** Structure as: `{protocol, endpoint, authentication, channels, events}`

### 5.3 Agent Notes Integration
- **Target:** New section in output template
- **Action:** Add meta-information section for:
  - Scanning coverage gaps
  - Ambiguous implementations flagged
  - Framework detection confidence levels

---

## Implementation Order

1. **Core Infrastructure** (Phase 1): Parsing, validation, machine-readable output
2. **Variable Simplification** (Phase 2): Mode-based approach, command language
3. **Enhanced Detection** (Phase 3): Dependencies, incremental updates, non-standard APIs
4. **Output Structure** (Phase 4): Catalogs, cross-references, code extraction
5. **Polish & Consistency** (Phase 5): Terminology, real-time, agent notes

## Success Criteria

- ✅ All 17 improvements integrated into Five Elements structure
- ✅ Variables reduced from 20+ booleans to mode-based approach
- ✅ Framework-specific parsing patterns implemented
- ✅ Machine-readable output schema defined
- ✅ Error detection and validation logic added
- ✅ Enhanced dependency mapping with task metadata
- ✅ Agent-optimized command language throughout

## Files Modified

- `coderef-api-scan-prompt.md` - Complete template overhaul
- Variables: Add parsing, validation, mode-based options
- Statics: Add parsing patterns, validation logic, enhanced mappings
- Formula Template: Convert to command-based language with validation phases

---

**Estimated Effort:** 5 phases, systematic implementation focusing on agent consumption patterns and scanning accuracy improvements.