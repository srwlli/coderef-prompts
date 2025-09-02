## Five Elements for Data Models & Schema Documentation Template

### 1. Categories
```
Development > Data Analysis > Schema Definition Documentation
Development > Data Analysis > Data Transfer Object Mapping
Development > Data Analysis > Validation Rule Documentation
Development > Data Analysis > Migration Strategy Analysis
Development > Data Analysis > Query Pattern Documentation
Development > Data Analysis > Data Transformation Analysis
Development > Data Analysis > ORM Pattern Documentation
```

### 2. Variables
```
project_name (text) - Project identifier
code_location (text) - Repository URL or file paths
foundation_scan_file (text) - Path to coderef-foundation-scan-results.md (required)
maintenance_mode (boolean) - Update existing documentation vs create new
existing_documentation_file (text) - Path to existing data scan results (if maintenance_mode=true)
update_strategy (text) - Full-rewrite/Selective-updates/Append-changes
database_type (text) - PostgreSQL/MySQL/MongoDB/SQLite/Supabase
orm_framework (text) - Prisma/Drizzle/TypeORM/Sequelize/Mongoose
validation_library (text) - Zod/Joi/Yup/Class-validator/Custom
include_code_examples (boolean) - Include schema and model implementation code
document_migrations (boolean) - Document database migration patterns
analyze_relationships (boolean) - Document entity relationships and associations
check_validation_patterns (boolean) - Document validation rules and constraints
document_dto_patterns (boolean) - Document Data Transfer Object implementations
analyze_query_patterns (boolean) - Document database query patterns and optimization
check_data_transformations (boolean) - Document data transformation and mapping logic
document_seeders (boolean) - Document data seeding and fixture patterns
analyze_indexing_strategy (boolean) - Document database indexing and performance
include_testing_patterns (boolean) - Include data layer testing approaches
check_caching_strategy (boolean) - Document data caching patterns
output_format (text) - Technical/Database-focused/Developer-focused
documentation_depth (text) - Overview/Detailed/Exhaustive
data_scope (text) - All/Core-models/Business-critical
```

### 3. Statics
```
Static Name: foundation_context_integration
Content: "First read the foundation scan results from {foundation_scan_file} to understand: overall project architecture, established coding patterns, security requirements, deployment platform, database schema, authentication strategy, and integration points. Use this context to ensure data documentation aligns with project conventions and architectural decisions."

Static Name: maintenance_mode_instructions
Content: "If maintenance_mode=true: Read existing documentation from {existing_documentation_file}, compare current data implementation with documented data patterns, identify changes (new/modified/deleted schemas), update only changed sections using {update_strategy}, preserve accurate existing documentation, highlight what has changed since last scan."

Static Name: data_discovery_tasks
Content: "Locate database schema files, identify data model definitions, find migration files and scripts, discover validation schema definitions, locate DTO and interface files, find database configuration files, identify query builders and ORM setup, discover data transformation utilities, map data seeding and fixture files"

Static Name: schema_documentation_requirements
Content: "Document database schemas: table/collection definitions with field types, primary keys and foreign key relationships, indexes and constraints, default values and nullable fields, enum definitions and allowed values, schema versioning and evolution, database-specific features used, schema validation rules"

Static Name: dto_pattern_analysis
Content: "Document Data Transfer Objects: DTO interface definitions and types, request/response DTO patterns, data mapping between DTOs and entities, DTO validation implementations, nested DTO structures, DTO transformation utilities, API contract DTOs, frontend/backend DTO synchronization"

Static Name: validation_rule_documentation
Content: "Document validation patterns: validation schema definitions, field-level validation rules, cross-field validation logic, custom validation functions, validation error handling, client-side vs server-side validation, validation middleware integration, validation performance considerations"

Static Name: migration_strategy_analysis
Content: "Document migration approach: migration file organization and naming, schema change patterns, data migration procedures, rollback strategies for migrations, migration testing approaches, production migration procedures, migration dependency management, migration performance considerations"

Static Name: query_pattern_documentation
Content: "Document database querying: ORM query patterns and conventions, raw SQL usage and patterns, query optimization techniques, pagination patterns, filtering and sorting implementations, complex join patterns, transaction patterns, query performance monitoring"

Static Name: data_relationship_mapping
Content: "Document entity relationships: one-to-one relationship implementations, one-to-many relationship patterns, many-to-many relationship handling, foreign key constraints and cascading, relationship loading strategies (eager/lazy), circular dependency handling, relationship validation rules"

Static Name: data_transformation_analysis
Content: "Document data transformations: entity to DTO mapping functions, API response transformation, database result processing, data serialization and deserialization, date/time handling patterns, file upload data processing, data validation and sanitization, bulk data processing patterns"

Static Name: caching_strategy_documentation
Content: "Document data caching: query result caching patterns, entity caching strategies, cache invalidation rules, cache key generation, distributed caching setup, cache performance monitoring, cache-aside vs write-through patterns, cache warming strategies"

Static Name: data_testing_strategies
Content: "Document data layer testing: database testing setup and teardown, test data factories and builders, migration testing approaches, validation testing patterns, repository/service layer testing, integration testing with database, performance testing for queries, data integrity testing"
```

### 4. Formula Template
```
**COMPREHENSIVE DATA MODELS & SCHEMA DOCUMENTATION GENERATOR**
Create exhaustive data layer documentation for {project_name} at {code_location}.

Project: {project_name}
Foundation context: {foundation_scan_file}
Maintenance mode: {maintenance_mode}
Database Type: {database_type}
ORM Framework: {orm_framework}
Validation Library: {validation_library}
Data scope: {data_scope}
Documentation depth: {documentation_depth}

**Phase 1: Foundation Context Integration**
{static:foundation_context_integration}

**Phase 2: Maintenance Mode Processing**
{static:maintenance_mode_instructions}
Update strategy: {update_strategy}
Existing documentation: {existing_documentation_file}

**Phase 3: Data Discovery & Schema Mapping**
{static:data_discovery_tasks}
{static:schema_documentation_requirements}

**Phase 2: Data Transfer Object Analysis**
{static:dto_pattern_analysis}
Document DTO patterns: {document_dto_patterns}

**Phase 3: Validation Rule Documentation**
{static:validation_rule_documentation}
Check validation patterns: {check_validation_patterns}

**Phase 4: Migration Strategy Analysis**
{static:migration_strategy_analysis}
Document migrations: {document_migrations}

**Phase 5: Query Pattern Documentation**
{static:query_pattern_documentation}
Analyze query patterns: {analyze_query_patterns}
Analyze indexing strategy: {analyze_indexing_strategy}

**Phase 6: Data Relationship Mapping**
{static:data_relationship_mapping}
Analyze relationships: {analyze_relationships}

**Phase 7: Data Transformation Analysis**
{static:data_transformation_analysis}
Check data transformations: {check_data_transformations}

**Phase 8: Caching Strategy Documentation**
{static:caching_strategy_documentation}
Check caching strategy: {check_caching_strategy}

**Phase 9: Data Testing & Quality**
{static:data_testing_strategies}
Include testing patterns: {include_testing_patterns}
Document seeders: {document_seeders}

**Output Required:**

Generate complete documentation file: coderef-data-scan-results.md

### 🗄️ DATA MODELS & SCHEMA DOCUMENTATION

#### 🎯 Data Architecture Overview
- **Project:** {project_name}
- **Database Type:** [PostgreSQL/MySQL/MongoDB/etc]
- **ORM Framework:** [Prisma/Drizzle/TypeORM/etc and version]
- **Validation Library:** [Zod/Joi/Yup/etc]
- **Schema Files:** [Count and locations of schema definitions]
- **Migration Files:** [Count and migration strategy]
- **Data Models:** [Total entity/model count]

#### 🏗️ Database Schema Structure

**Schema Definition Location:**
- **Schema Files:** [Prisma schema, migration files, etc.]
- **Model Definitions:** [TypeScript interfaces, class definitions]
- **Configuration:** [Database connection and ORM setup]

**Entity Overview:**
```
Core Entities:
├── User (users table)
├── Post (posts table)  
├── Comment (comments table)
├── Category (categories table)
└── UserProfile (user_profiles table)

Lookup Tables:
├── Role (roles table)
├── Permission (permissions table)
└── Setting (settings table)
```

#### 📋 Detailed Entity Documentation

**[For each entity, provide:]**

##### User Entity
- **File Location:** `/prisma/schema.prisma` or `/models/User.ts`
- **Table/Collection Name:** `users`
- **Purpose:** User account and authentication data

**Schema Definition:**
```typescript
interface User {
  id: string          // Primary key, UUID
  email: string       // Unique, not null
  password: string    // Hashed, not null
  name: string | null // Optional display name
  createdAt: Date     // Auto-generated timestamp
  updatedAt: Date     // Auto-updated timestamp
  roleId: string      // Foreign key to roles table
}
```

**Database Constraints:**
- **Primary Key:** `id` (UUID)
- **Unique Constraints:** `email`
- **Foreign Keys:** `roleId` → `roles.id`
- **Indexes:** `email`, `createdAt`
- **Check Constraints:** [Email format validation]

**Relationships:**
- **One-to-Many:** User → Posts (user can have multiple posts)
- **Many-to-One:** User → Role (user belongs to one role)
- **One-to-One:** User → UserProfile (user has one profile)

#### 🔄 Data Transfer Objects (DTOs)

**DTO Patterns:**
```typescript
// Request DTOs
interface CreateUserDTO {
  email: string
  password: string
  name?: string
}

// Response DTOs  
interface UserResponseDTO {
  id: string
  email: string
  name: string | null
  createdAt: string
  role: RoleDTO
}

// Internal DTOs
interface UserWithPostsDTO extends UserResponseDTO {
  posts: PostDTO[]
}
```

**DTO Categories:**
- **Request DTOs:** [API input validation and typing]
- **Response DTOs:** [API output formatting and security]
- **Internal DTOs:** [Service layer data transfer]
- **External DTOs:** [Third-party service integration]

#### ✅ Validation Implementation

**Validation Schemas:**
```typescript
// Zod validation example
const createUserSchema = z.object({
  email: z.string().email('Invalid email format'),
  password: z.string().min(8, 'Password must be at least 8 characters'),
  name: z.string().optional()
})

// Custom validation
const validateUserEmail = async (email: string) => {
  const existingUser = await getUserByEmail(email)
  if (existingUser) throw new Error('Email already exists')
}
```

**Validation Patterns:**
- **Schema Validation:** [Zod/Joi schema definitions and usage]
- **Custom Validators:** [Business logic validation functions]
- **Async Validation:** [Database uniqueness checks]
- **Nested Validation:** [Complex object validation patterns]

**Validation Integration:**
- **API Layer:** [Request validation middleware]
- **Service Layer:** [Business logic validation]
- **Database Layer:** [Constraint validation]

#### 🔄 Database Migration Strategy

**Migration Files:**
```sql
-- Example migration file: 001_create_users_table.sql
CREATE TABLE users (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  email VARCHAR(255) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL,
  name VARCHAR(255),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

**Migration Patterns:**
- **File Naming:** [Migration file naming conventions]
- **Schema Changes:** [Adding/removing columns, indexes]
- **Data Migrations:** [Data transformation during migrations]
- **Rollback Procedures:** [Migration rollback strategies]

**Migration Management:**
- **Migration Runner:** [Tool used for migrations]
- **Environment Strategy:** [Dev/staging/prod migration flow]
- **Migration Testing:** [Testing migration procedures]

#### 🔍 Query Patterns & Optimization

**ORM Query Patterns:**
```typescript
// Prisma query examples
const getUserWithPosts = async (userId: string) => {
  return prisma.user.findUnique({
    where: { id: userId },
    include: {
      posts: {
        orderBy: { createdAt: 'desc' },
        take: 10
      },
      profile: true
    }
  })
}
```

**Query Optimization:**
- **Eager Loading:** [Relationship loading strategies]
- **Query Batching:** [N+1 query prevention]
- **Pagination:** [Efficient pagination patterns]
- **Indexing:** [Index usage and optimization]

**Raw SQL Usage:**
- [When and why raw SQL is used]
- [Raw query patterns and security]
- [Performance-critical query implementations]

#### 🔗 Entity Relationships

**Relationship Implementation:**
```typescript
// Prisma relationship example
model User {
  id       String   @id @default(uuid())
  email    String   @unique
  posts    Post[]   // One-to-many
  profile  Profile? // One-to-one
  role     Role     @relation(fields: [roleId], references: [id])
  roleId   String
}
```

**Relationship Patterns:**
- **Foreign Key Management:** [How relationships are enforced]
- **Cascade Operations:** [Delete/update cascade behavior]
- **Relationship Loading:** [Lazy vs eager loading strategies]
- **Circular Dependencies:** [How circular references are handled]

#### 🔄 Data Transformation Patterns

**Mapping Functions:**
```typescript
// Entity to DTO transformation
const userToDTO = (user: User): UserResponseDTO => ({
  id: user.id,
  email: user.email,
  name: user.name,
  createdAt: user.createdAt.toISOString(),
  role: roleToDTO(user.role)
})

// DTO to Entity transformation
const dtoToUser = (dto: CreateUserDTO): Omit<User, 'id' | 'createdAt' | 'updatedAt'> => ({
  email: dto.email,
  password: hashPassword(dto.password),
  name: dto.name || null
})
```

**Transformation Categories:**
- **API Transformations:** [Request/response data shaping]
- **Database Transformations:** [ORM result processing]
- **Business Logic Transformations:** [Domain-specific data processing]
- **External Service Transformations:** [Third-party data formatting]

#### 💾 Data Persistence Patterns

**Repository Patterns:**
```typescript
class UserRepository {
  async create(userData: CreateUserDTO): Promise<User> {
    // Implementation with validation and transformation
  }

  async findByEmail(email: string): Promise<User | null> {
    // Implementation with caching
  }

  async update(id: string, updates: Partial<User>): Promise<User> {
    // Implementation with optimistic locking
  }
}
```

**Service Layer Patterns:**
- **Business Logic Services:** [Domain service implementations]
- **Data Access Layer:** [Repository and DAO patterns]
- **Transaction Management:** [Database transaction handling]

#### 🌱 Data Seeding & Fixtures

**Seed Data Management:**
```typescript
// Seed data example
const seedUsers = [
  {
    email: 'admin@example.com',
    password: 'hashedPassword',
    name: 'Admin User',
    roleId: 'admin-role-id'
  }
]

const seedDatabase = async () => {
  await prisma.user.createMany({ data: seedUsers })
}
```

**Fixture Patterns:**
- **Development Data:** [Local development data seeding]
- **Test Data:** [Test-specific data fixtures]
- **Demo Data:** [Demonstration and showcase data]

#### 🔍 Data Validation Architecture

**Validation Layers:**
```typescript
// Multi-layer validation example
const createUser = async (input: unknown) => {
  // 1. Schema validation
  const validatedInput = createUserSchema.parse(input)
  
  // 2. Business logic validation
  await validateBusinessRules(validatedInput)
  
  // 3. Database constraint validation
  return await userRepository.create(validatedInput)
}
```

**Validation Types:**
- **Input Validation:** [Request data validation]
- **Business Rule Validation:** [Domain-specific rules]
- **Database Constraint Validation:** [Referential integrity]
- **Output Validation:** [Response data validation]

#### 📊 Data Performance & Optimization

**Query Optimization:**
- **Index Usage:** [Database indexes and query performance]
- **Query Analysis:** [Slow query identification and optimization]
- **Connection Pooling:** [Database connection management]
- **Query Caching:** [Result caching strategies]

**Performance Monitoring:**
```typescript
// Query performance logging
const logQuery = (query: string, duration: number) => {
  if (duration > 1000) {
    logger.warn('Slow query detected', { query, duration })
  }
}
```

#### 🧪 Data Layer Testing

**Testing Approach:**
```typescript
// Repository testing example
describe('UserRepository', () => {
  beforeEach(async () => {
    await clearTestDatabase()
    await seedTestData()
  })

  it('should create user with valid data', async () => {
    const userData = userFactory.build()
    const user = await userRepository.create(userData)
    expect(user.email).toBe(userData.email)
  })
})
```

**Test Data Management:**
- **Test Database Setup:** [Isolated test database configuration]
- **Data Factories:** [Programmatic test data generation]
- **Test Cleanup:** [Database cleanup between tests]
- **Integration Testing:** [Full data flow testing]

#### 🔒 Data Security & Privacy

**Security Patterns:**
```typescript
// Data sanitization example
const sanitizeUserInput = (input: any) => {
  return {
    email: validator.normalizeEmail(input.email),
    name: validator.escape(input.name)
  }
}
```

**Privacy Implementation:**
- **PII Handling:** [Personal data protection patterns]
- **Data Encryption:** [Sensitive field encryption]
- **Access Control:** [Row-level security if implemented]
- **Audit Logging:** [Data access and modification logging]

#### 🔄 Data Synchronization

**Sync Patterns:**
- **Real-time Sync:** [Live data synchronization approaches]
- **Batch Sync:** [Scheduled data synchronization]
- **Conflict Resolution:** [Data conflict handling strategies]
- **Event Sourcing:** [Event-driven data patterns if used]

#### 🛠️ Development Workflow

**Data Development Process:**
1. **Schema Design:** [How new schemas are designed and reviewed]
2. **Migration Creation:** [Process for creating and testing migrations]
3. **Validation Implementation:** [Adding new validation rules]
4. **Testing Data Changes:** [Testing database changes]

**Database Management:**
- **Local Development:** [Local database setup and management]
- **Schema Synchronization:** [Keeping local schema current]
- **Data Reset Procedures:** [Resetting development data]

#### 📚 Data Documentation Standards

**Documentation Requirements:**
- **Schema Documentation:** [Required documentation for new schemas]
- **Migration Documentation:** [Migration purpose and impact documentation]
- **Validation Documentation:** [Business rule documentation]

**Knowledge Transfer:**
- **Data Onboarding:** [How new developers learn data patterns]
- **Schema Evolution:** [How schema changes are communicated]
- **Data Troubleshooting:** [Common data issues and solutions]

Include code examples: {include_code_examples}
Include testing patterns: {include_testing_patterns}
Output format: {output_format}
```

### 5. Context Defaults
```json
{
  "project_name": "[auto-detect from package.json]",
  "code_location": "[provide repository/files]",
  "foundation_scan_file": "./coderef-foundation-scan-results.md",
  "maintenance_mode": false,
  "existing_documentation_file": "./coderef-data-scan-results.md",
  "update_strategy": "Selective-updates",
  "database_type": "Auto-detect",
  "orm_framework": "Auto-detect",
  "validation_library": "Auto-detect",
  "include_code_examples": true,
  "document_migrations": true,
  "analyze_relationships": true,
  "check_validation_patterns": true,
  "document_dto_patterns": true,
  "analyze_query_patterns": true,
  "check_data_transformations": true,
  "document_seeders": true,
  "analyze_indexing_strategy": true,
  "include_testing_patterns": true,
  "check_caching_strategy": true,
  "output_format": "Developer-focused",
  "documentation_depth": "Exhaustive",
  "data_scope": "All"
}
```

---

This **Data Models & Schema Documentation Generator** creates comprehensive data layer documentation that enables agents to:
- **Understand complete data architecture** with schemas, relationships, and validation rules
- **Modify existing data models** with full context of constraints and relationships
- **Create new data models** following established patterns and validation approaches
- **Debug data issues** with complete query pattern and transformation documentation
- **Maintain data integrity** with documented validation rules and testing strategies
- **Optimize data performance** with documented indexing and caching strategies
- **Test data changes** using documented testing approaches and fixture patterns