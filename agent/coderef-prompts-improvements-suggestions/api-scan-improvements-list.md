# API Scan Improvements for AI Agent Consumption

**Context:** Optimizing coderef-api-scan-prompt.md for AI agents using documentation as knowledge base.

---

## Ranked Improvements

### 1. **Explicit Parsing Instructions for Codebase Analysis** (★★★★★)
Add framework-specific regex patterns and parsing algorithms for accurate API component detection.
**Why:** Enables precise identification of API elements across diverse frameworks, reducing missed components.

### 2. **Machine-Readable Output Schema** (★★★★★)
Add JSON/YAML output alongside markdown for programmatic agent access.
**Why:** Agents need queryable, structured data for cross-referencing and automated decision-making.

### 3. **Error Detection and Correction Logic** (★★★★★)
Add pre-processing validation phase to check input variables and cross-reference with foundation scan.
**Why:** Prevents errors from misconfigured inputs and ensures reliable documentation for accurate task execution.

### 4. **Command-Based Language for Scanning** (★★★★★)
Transform prompt from descriptive template to imperative commands ("SCAN", "ANALYZE", "EXTRACT").
**Why:** Agents respond better to direct commands than descriptive instructions.

### 5. **Explicit Scanning Algorithms** (★★★★★)
Add framework-specific search patterns (Express: search for `.get()`, Supabase: search for `.from().insert()`).
**Why:** Provides concrete algorithms for agents to follow across different API architectures.

### 6. **Simplify Variables into Modes** (★★★★★)  
Replace 20+ booleans with `documentation_mode: discovery/detailed/comprehensive`.
**Why:** Reduces decision complexity and ensures predictable output scope for consuming agents.

### 7. **Enhanced Dependency Mapping with Task-Oriented Metadata** (★★★★☆)
Expand dependency mapping to include execution constraints, prerequisites, and data flow diagrams.
**Why:** Improves agent understanding of operation dependencies for complex workflow tasks.

### 8. **Incremental Scanning Optimization** (★★★★☆)
Refine maintenance mode with explicit diffing logic for efficient updates of large codebases.
**Why:** Reduces redundant processing and ensures knowledge base stays current for patching tasks.

### 9. **Non-Standard API Detection** (★★★★☆)
Add detection patterns for client-side operations, WebSocket handlers, and unconventional architectures.
**Why:** Accurately documents non-traditional APIs like Supabase client operations for comprehensive coverage.

### 10. **Centralized Knowledge Catalogs** (★★★★☆)
Generate canonical `errors.json`, `auth_patterns.json`, `schemas.json` files.
**Why:** Prevents duplication, ensures consistency, creates reusable knowledge components.

### 11. **Cross-Referencing Requirements** (★★★★☆)
Mandate linking between endpoints, schemas, middleware, and errors using consistent IDs.
**Why:** Creates connected knowledge graph instead of siloed documentation for agent navigation.

### 12. **Code Extraction Commands** (★★★☆☆)
Mandate extracting actual code snippets, error objects, and schemas with source locations.
**Why:** Agents get verified examples instead of descriptions for implementation reference.

### 13. **Explicit Terminology Enforcement** (★★★☆☆)
Standardize auth types ('Bearer-Token'), error categories ('ValidationError'), HTTP methods.
**Why:** Consistent vocabulary improves agent pattern recognition and parsing accuracy.

### 14. **Real-Time Schema Formalization** (★★★☆☆)
Structure WebSocket/SSE documentation as `{protocol, endpoint, authentication, channels, events}`.
**Why:** Converts prose descriptions into actionable structured data for agent implementation.

### 15. **Structured Output Format Options** (★★★☆☆)
Add `documentation_format` variable for OpenAPI-JSON, Swagger-YAML, or custom schemas.
**Why:** Agents may need specific structured formats for integration with other tools or systems.

### 16. **Selective Section Generation** (★★★☆☆)
Add `required_sections` variable for focused scanning of specific API areas only.
**Why:** Enables efficient, targeted scanning when agents only need specific API knowledge areas.

### 17. **Agent Notes Section** (★★☆☆☆)
Add section for scanning agent to flag ambiguities, coverage gaps, or parsing issues.
**Why:** Provides meta-information about knowledge base quality and completeness.


---

## Implementation Variables

```
explicit_parsing_instructions (boolean) - Use framework-specific parsing patterns
include_machine_readable (boolean) - Generate JSON schema alongside markdown
error_detection_enabled (boolean) - Validate inputs and cross-reference foundation scan
enhanced_dependency_mapping (boolean) - Include task-oriented metadata
incremental_scanning (boolean) - Optimize for partial updates
non_standard_api_detection (boolean) - Detect client-side and unconventional APIs
documentation_mode (text) - discovery/detailed/comprehensive  
generate_knowledge_catalogs (boolean) - Create centralized knowledge objects
enforce_cross_references (boolean) - Require ID-based linking between components
enforce_terminology (boolean) - Use standardized vocabulary
formalize_realtime_schemas (boolean) - Structure real-time connection data
documentation_format (text) - Markdown/OpenAPI-JSON/Swagger-YAML/Custom-Schema
required_sections (text) - Comma-separated list of specific sections to generate
```

## Implementation Statics

```
framework_parsing_patterns - Regex patterns for framework-specific API detection
machine_readable_schema - JSON/YAML output requirements
input_validation_logic - Pre-processing checks and foundation scan cross-reference
task_oriented_dependency_metadata - Execution constraints and data flow requirements
incremental_scan_diffing - Logic for efficient partial updates
non_standard_api_patterns - Detection patterns for client-side and unconventional APIs
centralized_knowledge_catalogs - Canonical object generation
cross_reference_requirements - ID-based linking standards
terminology_enforcement - Vocabulary standardization
realtime_schema_requirements - Structured real-time documentation
```

---

**Core Principle:** Transform from human-readable documentation into agent-optimized knowledge base with structured, queryable, cross-referenced output.