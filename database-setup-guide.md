# Database Setup Guide

## Overview
This database schema implements the Five Elements Template System used by the Coderef prompt engineering framework. It consists of 5 interconnected tables that work together to create a flexible prompt template system.

## Tables

### 1. Categories
- **Purpose**: Organizes formulas into a hierarchical structure
- **Key Features**:
  - Self-referencing `parent_id` for nested categories
  - Unique category names
  - Supports unlimited nesting levels

### 2. Contexts
- **Purpose**: Stores user-specific default values
- **Key Features**:
  - JSONB field for flexible default value storage
  - Unique per user_id
  - Automatic timestamp tracking with triggers

### 3. Formulas
- **Purpose**: Contains template formulas/prompts
- **Key Features**:
  - Template field supports variable interpolation: `{variable_name}`
  - Static content references: `{static:static_name}`
  - Optional category association

### 4. Statics
- **Purpose**: Stores reusable static content
- **Key Features**:
  - Named content blocks
  - Referenced in formulas using `{static:name}` syntax
  - Unique names for easy reference

### 5. Variables
- **Purpose**: Defines variables used in formulas
- **Key Features**:
  - Variable name and type definition
  - Default type is 'text'
  - Supports different data types

## Setup Instructions

### PostgreSQL Setup

1. **Create Database**:
```sql
CREATE DATABASE five_elements_db;
\c five_elements_db;
```

2. **Run Schema Script**:
```bash
psql -U your_username -d five_elements_db -f database-schema.sql
```

### Supabase Setup

1. **Create New Project** in Supabase Dashboard

2. **Run Schema** in SQL Editor:
   - Copy contents of `database-schema.sql`
   - Paste in Supabase SQL Editor
   - Click "Run"

3. **Enable Row Level Security** (optional but recommended):
```sql
-- Example RLS policies
ALTER TABLE contexts ENABLE ROW LEVEL SECURITY;
ALTER TABLE formulas ENABLE ROW LEVEL SECURITY;

-- Allow users to read all formulas
CREATE POLICY "Public formulas are viewable by everyone" 
ON formulas FOR SELECT 
USING (true);

-- Users can only manage their own contexts
CREATE POLICY "Users can manage own contexts" 
ON contexts FOR ALL 
USING (auth.uid()::text = user_id);
```

## Example Data

```sql
-- Insert example categories
INSERT INTO categories (name, parent_id) VALUES 
('Development', NULL),
('Agent Onboarding', 1),
('Initial Documentation', 2);

-- Insert example variables
INSERT INTO variables (name, type) VALUES 
('code_location', 'text'),
('project_name', 'text'),
('documentation_mode', 'text'),
('include_agent_notes', 'boolean');

-- Insert example static
INSERT INTO statics (name, content) VALUES 
('framework_parsing_patterns', 'Use framework-specific patterns for comprehensive codebase analysis...');

-- Insert example formula
INSERT INTO formulas (name, template, category_id) VALUES 
('Foundation Scan', 'Analyze {project_name} at {code_location} using {static:framework_parsing_patterns}', 2);

-- Insert example context
INSERT INTO contexts (user_id, defaults) VALUES 
('user123', '{"code_location": "/path/to/code", "project_name": "My Project", "documentation_mode": "comprehensive"}');
```

## Usage Pattern

1. **Define Variables**: Create variable definitions for your templates
2. **Create Statics**: Add reusable content blocks
3. **Build Formulas**: Create templates using variables and statics
4. **Set Contexts**: Users can define their default values
5. **Generate Prompts**: Interpolate formulas with context values

## Migration from JSON

The schema.json file shows the exported structure with all constraint types. This SQL schema consolidates the relevant constraints and creates a clean, normalized database structure.