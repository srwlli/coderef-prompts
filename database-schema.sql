-- Database Schema for Five Elements Template System
-- Generated from schema.json

-- Create sequences
CREATE SEQUENCE IF NOT EXISTS categories_id_seq;
CREATE SEQUENCE IF NOT EXISTS contexts_id_seq;
CREATE SEQUENCE IF NOT EXISTS formulas_id_seq;
CREATE SEQUENCE IF NOT EXISTS statics_id_seq;
CREATE SEQUENCE IF NOT EXISTS variables_id_seq;

-- Table: categories
-- Hierarchical category structure with self-referencing parent_id
CREATE TABLE IF NOT EXISTS categories (
    id BIGINT NOT NULL DEFAULT nextval('categories_id_seq'::regclass),
    name VARCHAR NOT NULL,
    parent_id BIGINT,
    created_at TIMESTAMPTZ DEFAULT now(),
    
    CONSTRAINT categories_pkey PRIMARY KEY (id),
    CONSTRAINT categories_name_key UNIQUE (name),
    CONSTRAINT categories_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES categories(id) ON DELETE CASCADE
);

-- Table: contexts
-- User-specific default values stored as JSONB
CREATE TABLE IF NOT EXISTS contexts (
    id BIGINT NOT NULL DEFAULT nextval('contexts_id_seq'::regclass),
    user_id VARCHAR NOT NULL,
    defaults JSONB NOT NULL,
    created_at TIMESTAMPTZ DEFAULT now(),
    updated_at TIMESTAMPTZ DEFAULT now(),
    
    CONSTRAINT contexts_pkey PRIMARY KEY (id),
    CONSTRAINT contexts_user_id_key UNIQUE (user_id)
);

-- Table: formulas
-- Template formulas with optional category association
CREATE TABLE IF NOT EXISTS formulas (
    id BIGINT NOT NULL DEFAULT nextval('formulas_id_seq'::regclass),
    name VARCHAR NOT NULL,
    template TEXT NOT NULL,
    category_id BIGINT,
    created_at TIMESTAMPTZ DEFAULT now(),
    
    CONSTRAINT formulas_pkey PRIMARY KEY (id),
    CONSTRAINT formulas_category_id_fkey FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE SET NULL
);

-- Table: statics
-- Static content/constants
CREATE TABLE IF NOT EXISTS statics (
    id BIGINT NOT NULL DEFAULT nextval('statics_id_seq'::regclass),
    name VARCHAR NOT NULL,
    content TEXT NOT NULL,
    created_at TIMESTAMPTZ DEFAULT now(),
    
    CONSTRAINT statics_pkey PRIMARY KEY (id),
    CONSTRAINT statics_name_key UNIQUE (name)
);

-- Table: variables
-- Variable definitions with type support
CREATE TABLE IF NOT EXISTS variables (
    id BIGINT NOT NULL DEFAULT nextval('variables_id_seq'::regclass),
    name VARCHAR NOT NULL,
    type VARCHAR NOT NULL DEFAULT 'text',
    created_at TIMESTAMPTZ DEFAULT now(),
    
    CONSTRAINT variables_pkey PRIMARY KEY (id),
    CONSTRAINT variables_name_key UNIQUE (name)
);

-- Create indexes for better performance
CREATE INDEX IF NOT EXISTS idx_categories_parent_id ON categories(parent_id);
CREATE INDEX IF NOT EXISTS idx_formulas_category_id ON formulas(category_id);
CREATE INDEX IF NOT EXISTS idx_contexts_updated_at ON contexts(updated_at);

-- Create trigger to update updated_at on contexts table
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = now();
    RETURN NEW;
END;
$$ language 'plpgsql';

CREATE TRIGGER update_contexts_updated_at BEFORE UPDATE
    ON contexts FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

-- Add comments for documentation
COMMENT ON TABLE categories IS 'Hierarchical category system for organizing formulas';
COMMENT ON TABLE contexts IS 'User-specific default values and preferences';
COMMENT ON TABLE formulas IS 'Template formulas that can use variables and statics';
COMMENT ON TABLE statics IS 'Static content that can be referenced in formulas';
COMMENT ON TABLE variables IS 'Variable definitions used in formula templates';

COMMENT ON COLUMN categories.parent_id IS 'Self-referencing foreign key for hierarchical structure';
COMMENT ON COLUMN contexts.defaults IS 'JSONB object containing default values for variables';
COMMENT ON COLUMN formulas.template IS 'Template text that can include {variable} and {static:name} references';
COMMENT ON COLUMN variables.type IS 'Variable type (e.g., text, boolean, number)';