# Five Elements Prompt Generator - AI Agent Development Plan

## 🎯 Project Overview
Build a comprehensive prompt engineering platform using the Five Elements Template System with real-time collaboration and advanced editing capabilities.

## 📋 Development Phases

### **Phase 1: Foundation Setup**
**Goal**: Basic Next.js app with Supabase integration

**Tasks:**
- [ ] Initialize Next.js 15.5.2 project with TypeScript
- [ ] Configure Supabase client and authentication
- [ ] Set up Tailwind CSS 4 and Shadcn/ui

- [ ] Implement basic authentication flow
- [ ] Set up project structure and routing

**Deliverables:**
- Working Next.js app with auth
- Database tables created and seeded
- Basic layout and navigation

### **Phase 2: Core Data Models**
**Goal**: CRUD operations for all Five Elements

**Tasks:**
- [ ] Create TypeScript types for all database entities
- [ ] Build Category management (hierarchical tree)
- [ ] Implement Variable CRUD with type validation
- [ ] Build Static content management
- [ ] Create Formula template system
- [ ] Implement Context (user defaults) management

**Deliverables:**
- Complete data layer with type safety
- Basic forms for managing all elements
- Database operations working

### **Phase 3: Formula Builder Interface**
**Goal**: Advanced template editor with Monaco

**Tasks:**
- [ ] Integrate Monaco Editor for formula templates
- [ ] Implement variable autocomplete (`{variable_name}`)
- [ ] Add static content autocomplete (`{static:name}`)
- [ ] Create syntax highlighting for template syntax
- [ ] Build template validation and error highlighting
- [ ] Add template preview functionality

**Deliverables:**
- Professional code editor for formulas
- Smart autocomplete system
- Real-time template validation

### **Phase 4: Dynamic Form System**
**Goal**: React Hook Form + Zod for variable inputs

**Tasks:**
- [ ] Set up React Hook Form with Zod validation
- [ ] Create dynamic form generator based on variable types
- [ ] Implement conditional field visibility
- [ ] Add form validation with real-time feedback
- [ ] Build context switching for user defaults
- [ ] Create form auto-save functionality

**Deliverables:**
- Dynamic forms that adapt to variable definitions
- Robust validation system
- Context management for user preferences

### **Phase 5: Real-time Collaboration**
**Goal**: Multi-user editing with Supabase subscriptions

**Tasks:**
- [ ] Implement Supabase real-time subscriptions
- [ ] Add user presence indicators
- [ ] Create conflict resolution for simultaneous edits
- [ ] Build real-time formula preview updates
- [ ] Add collaborative cursors/selections
- [ ] Implement change notifications

**Deliverables:**
- Real-time collaborative editing
- User presence system
- Conflict resolution mechanisms

### **Phase 6: Advanced UI/UX**
**Goal**: Polish with Framer Motion and advanced features

**Tasks:**
- [ ] Add Framer Motion animations and transitions
- [ ] Implement drag-and-drop for categories and variables
- [ ] Create advanced search and filtering
- [ ] Build export/import functionality
- [ ] Add keyboard shortcuts and accessibility
- [ ] Implement responsive mobile design

**Deliverables:**
- Polished, animated interface
- Advanced interaction patterns
- Full accessibility compliance

### **Phase 7: Prompt Generation Engine**
**Goal**: Template processing and output generation

**Tasks:**
- [ ] Build template interpolation engine
- [ ] Create live preview with context substitution
- [ ] Implement prompt validation and testing
- [ ] Add multiple output formats (markdown, text, JSON)
- [ ] Create prompt versioning system
- [ ] Build prompt sharing and collaboration

**Deliverables:**
- Complete prompt generation system
- Multiple output formats
- Version control for prompts

### **Phase 8: Testing & Quality**
**Goal**: Comprehensive testing and optimization

**Tasks:**
- [ ] Set up testing framework (Jest + Testing Library)
- [ ] Write unit tests for core functionality
- [ ] Add integration tests for database operations
- [ ] Implement E2E tests with Playwright
- [ ] Performance optimization and bundle analysis
- [ ] Security audit and penetration testing

**Deliverables:**
- Comprehensive test suite
- Performance optimizations
- Security validation

### **Phase 9: Production Features**
**Goal**: Production-ready features and monitoring

**Tasks:**
- [ ] Implement error boundaries and error reporting
- [ ] Add analytics and usage tracking
- [ ] Create admin dashboard for system management
- [ ] Build API rate limiting and abuse prevention
- [ ] Set up monitoring and alerting
- [ ] Create backup and disaster recovery

**Deliverables:**
- Production monitoring
- Admin tools
- Error handling and recovery

### **Phase 10: Documentation & Launch**
**Goal**: Documentation and deployment

**Tasks:**
- [ ] Write comprehensive user documentation
- [ ] Create API documentation
- [ ] Build onboarding tutorials and guides
- [ ] Set up staging and production environments
- [ ] Perform final security and performance audits
- [ ] Deploy to production

**Deliverables:**
- Complete documentation
- Production deployment
- User onboarding materials

## 🛠️ Technical Architecture

### **Enhanced Tech Stack**
- **Next.js 15.5.2** with App Router + Turbopack
- **React 19.1.0** with TypeScript 5
- **Supabase** (PostgreSQL + Auth + Real-time)
- **Shadcn/ui + Tailwind CSS 4**
- **Monaco Editor** for template editing
- **React Hook Form + Zod** for form validation
- **Framer Motion** for animations
- **Vercel** deployment

### **Database Schema**
```
categories (hierarchical tree)
    ↓
formulas (templates with category_id)
    ↓
variables (form field definitions)
    ↓
statics (reusable content blocks)
    ↓
contexts (user default values)
```

### **Component Architecture**
```
app/
├── (auth)/
│   ├── dashboard/          # Main prompt builder interface
│   ├── categories/         # Category management
│   ├── variables/          # Variable definitions
│   ├── statics/           # Static content blocks
│   ├── formulas/          # Formula templates
│   └── contexts/          # User default contexts
├── prompt/[id]/           # Public prompt viewing
├── api/                   # API routes for complex operations
└── components/
    ├── ui/                # Shadcn components
    ├── category-tree/     # Hierarchical navigation
    ├── variable-form/     # Dynamic form builder
    ├── monaco-editor/     # Formula template editor
    ├── template-preview/  # Live prompt preview
    └── real-time-provider/ # Collaboration features
```

## 🎨 UI Layout Design

### **Main Interface (3-Panel Layout)**
```
┌─────────────────────────────────────────────┐
│ Header: Auth + Theme + Export               │
├─────────────┬───────────────┬───────────────┤
│ Category    │ Formula       │ Live Preview  │
│ Tree        │ Builder       │ Panel         │
│             │               │               │
│ - Dev       │ Variables:    │ Generated     │
│   - Agent   │ [Form Fields] │ Prompt:       │
│     - Init  │               │ [Rendered     │
│             │ Statics:      │  Template]    │
│             │ [Editor]      │               │
│             │               │ Export:       │
│             │ Template:     │ [Copy/Save]   │
│             │ [Monaco]      │               │
└─────────────┴───────────────┴───────────────┘
```

## 🔧 Key Features

### **Collaborative Editing**
- Real-time updates via Supabase subscriptions
- User presence indicators
- Conflict resolution for simultaneous edits

### **Smart Template Builder**
- Variable autocomplete with `{variable_name}`
- Static content insertion with `{static:name}`
- Syntax highlighting for template syntax
- Live validation and error highlighting

### **Context Management**
- User-specific default values
- Project-specific contexts
- Quick context switching
- Import/export context presets

### **Advanced Form Handling**
- Dynamic form generation based on variable types
- Conditional field visibility
- Real-time validation with Zod schemas
- Auto-save drafts

## 📦 Required Dependencies

```json
{
  "dependencies": {
    "next": "^15.5.2",
    "react": "^19.1.0",
    "react-dom": "^19.1.0",
    "typescript": "^5.0.0",
    "@supabase/supabase-js": "^2.45.0",
    "@supabase/auth-helpers-nextjs": "^0.10.0",
    "react-hook-form": "^7.52.0",
    "zod": "^3.23.0",
    "@hookform/resolvers": "^3.6.0",
    "framer-motion": "^11.5.0",
    "@monaco-editor/react": "^4.6.0",
    "tailwindcss": "^4.0.0",
    "class-variance-authority": "^0.7.0",
    "clsx": "^2.1.0",
    "tailwind-merge": "^2.4.0"
  },
  "devDependencies": {
    "@types/node": "^20.0.0",
    "@types/react": "^18.3.0",
    "@types/react-dom": "^18.3.0",
    "eslint": "^8.57.0",
    "eslint-config-next": "^15.5.2",
    "prettier": "^3.3.0",
    "prettier-plugin-tailwindcss": "^0.6.0",
    "@testing-library/react": "^16.0.0",
    "@testing-library/jest-dom": "^6.4.0",
    "jest": "^29.7.0",
    "@playwright/test": "^1.44.0"
  }
}
```

## 🎯 Success Criteria

### **Core Functionality:**
- [ ] All CRUD operations working for 5 element types
- [ ] Real-time collaborative editing
- [ ] Template interpolation with variable/static substitution
- [ ] User authentication and authorization
- [ ] Export/import functionality

### **Performance & Quality:**
- [ ] Page load time <3 seconds
- [ ] Real-time updates <100ms latency
- [ ] Mobile-responsive design
- [ ] Accessibility compliance (WCAG 2.1 AA)
- [ ] Test coverage >80%

### **User Experience:**
- [ ] Intuitive prompt building workflow
- [ ] Professional code editing experience
- [ ] Smooth animations and interactions
- [ ] Comprehensive error handling
- [ ] Clear user feedback and validation

## 🚀 Quick Start Commands

```bash
# Initialize project
npx create-next-app@latest coderef-app --typescript --tailwind --app

# Install dependencies
npm install @supabase/supabase-js @supabase/auth-helpers-nextjs
npm install react-hook-form @hookform/resolvers zod
npm install framer-motion @monaco-editor/react

# Database setup
# 1. Run database-schema.sql in Supabase SQL Editor
# 2. Run database-seed-data.sql for initial data

# Development
npm run dev
```

## 🎉 Expected Outcomes

**End Result**: Professional prompt engineering platform featuring:
- Visual builder for complex prompt templates
- Real-time collaborative editing
- Advanced template editing with Monaco Editor
- Robust form validation and type safety
- Smooth animations and professional UX
- Production-ready security and performance

**AI Agent Requirements**: The plan is structured for systematic implementation by AI agents, with clear deliverables and technical specifications for each phase.