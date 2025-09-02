# CHANGELOG.md Creation Prompt

Update the existing CHANGELOG.md file to reflect recent project changes by following these steps:

## Instructions
1. **Read current CHANGELOG.md** - Review existing changelog to understand current state and format
2. **Check for changes** - Compare changelog against actual codebase changes and commits
3. **Verify version format** - Follow semantic versioning and existing changelog conventions
4. **Update selectively** - Only add new entries for unreleased changes

## Update Areas to Check

### 1. Version Updates
- Check package.json for version changes or new releases
- Verify semantic versioning follows project conventions
- Update any changed version numbering schemes

### 2. Git History Analysis
- Review git commits since last changelog entry
- Identify significant changes worth documenting
- Group related changes into logical categories

### 3. Feature Changes
- Check for new features added to the codebase
- Document breaking changes and migrations needed
- Add deprecation notices for removed functionality

### 4. Dependency Updates
- Review package.json for major dependency updates
- Document any breaking dependency changes
- Note security updates or vulnerability fixes

### 5. Documentation Changes
- Check if README or other docs have been updated
- Document any new setup requirements
- Note changes to development workflow

## Changelog Structure

### Entry Format
```
## [Version] - YYYY-MM-DD

### Added
- New features and functionality

### Changed
- Modifications to existing features

### Deprecated
- Features marked for removal

### Removed
- Deleted features or functionality

### Fixed
- Bug fixes and corrections

### Security
- Security-related updates
```

## Maintenance Rules
- **Follow existing format** - Maintain consistent structure and style
- **Chronological order** - Latest changes at the top
- **Clear descriptions** - Write user-focused change descriptions
- **Group related changes** - Organize changes by type and impact
- **Link references** - Include issue/PR numbers when relevant

## Quality Checks
- All version numbers are accurate and follow semantic versioning
- Dates follow consistent format (YYYY-MM-DD)
- Categories (Added, Changed, Fixed, etc.) are used appropriately
- Descriptions are clear and user-focused
- No duplicate or contradictory entries

## What NOT to Change
- Existing entries (unless correcting errors)
- Overall format and structure (unless broken)
- Historical version information that's accurate
- Well-documented previous releases