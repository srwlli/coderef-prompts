# Coderef System Completion Plan

## Current Status
- ✅ Foundation scan prompt (coderef-scan-prompt.md) - Complete
- ✅ Maintenance scan prompt (coderef-maintenance-scan-prompt.md) - Complete  
- ✅ API scan prompt (coderef-api-scan-prompt.md) - Updated with foundation context
- ✅ Component scan prompt (coderef-component-scan-prompt.md) - Has foundation context vars
- ✅ Quick guide (CODEREF-QUICK-GUIDE.md) - Complete
- ⚠️ 8 remaining specialized prompts need foundation context integration
- ⚠️ Quick guide needs rename to lowercase

## Phase 1: Foundation Context Integration (Priority: High)
**Goal:** Update all specialized prompts to read foundation scan results and support maintenance mode

### Tasks:
1. **Update coderef-routing-scan-prompt.md**
   - Add foundation_scan_file, maintenance_mode, existing_documentation_file, update_strategy variables
   - Add foundation_context_integration and maintenance_mode_instructions statics
   - Update formula template with Phase 1 & 2 for context/maintenance

2. **Update coderef-state-scan-prompt.md**
   - Same foundation context and maintenance variables/statics
   - Ensure state management scan reads foundation for architecture context

3. **Update coderef-services-scan-prompt.md**
   - Add foundation context integration
   - Critical for understanding existing service integrations

4. **Update coderef-auth-scan-prompt.md**  
   - Foundation context essential for security alignment
   - Add maintenance mode for security updates

5. **Update coderef-deployment-scan-prompt.md**
   - Foundation context for infrastructure understanding
   - Maintenance mode for deployment changes

6. **Update coderef-error-scan-prompt.md**
   - Foundation context for error handling patterns
   - Maintenance mode for error handling updates

7. **Update coderef-testing-scan-prompt.md**
   - Foundation context for testing architecture
   - Maintenance mode for test suite updates

8. **Update coderef-data-scan-prompt.md** 
   - Foundation context for data architecture
   - Maintenance mode for schema changes

## Phase 2: Final Cleanup (Priority: Medium)
**Goal:** Complete remaining housekeeping tasks

### Tasks:
1. **Rename CODEREF-QUICK-GUIDE.md to coderef-quick-guide.md**
   - Maintain consistency with naming convention
   - Update any references if needed

## Phase 3: Validation & Testing (Priority: Low)
**Goal:** Ensure system works end-to-end

### Tasks:
1. **Review all prompts for consistency**
   - Verify all use same foundation context variables
   - Ensure maintenance mode is properly documented
   - Check formula template structure is consistent

2. **Update quick guide if needed**
   - Reflect any changes made during updates
   - Ensure workflow documentation is accurate

## Implementation Strategy

### Batch Processing:
- **Batch 1:** routing, state, services (related data flow prompts)
- **Batch 2:** auth, deployment, error (infrastructure/security prompts)  
- **Batch 3:** testing, data (quality/persistence prompts)
- **Final:** rename guide and validation

### Standardization Pattern:
Each specialized prompt should have:
```
Variables:
- foundation_scan_file (text) - Path to coderef-scan-results.md (required)
- maintenance_mode (boolean) - Update existing documentation vs create new
- existing_documentation_file (text) - Path to existing scan results (if maintenance_mode=true)
- update_strategy (text) - Full-rewrite/Selective-updates/Append-changes

Statics:
- foundation_context_integration - Instructions to read foundation first
- maintenance_mode_instructions - How to handle maintenance updates

Formula Template:
- Phase 1: Foundation Context Integration
- Phase 2: Maintenance Mode Processing
- [Existing phases continue...]
```

## Time Estimates
- **Phase 1:** 8 prompts × 5 min = 40 minutes
- **Phase 2:** 5 minutes  
- **Phase 3:** 10 minutes
- **Total:** ~55 minutes

## Success Criteria
- All specialized prompts read foundation scan first
- All specialized prompts support maintenance mode
- Consistent variable naming across all prompts
- Working maintenance workflow for keeping documentation current
- Complete system ready for production use