# blog-abap-rap-app
End-to-end ABAP RAP Blog application demonstrating CDS Views, associations, managed behavior, OData V4, and Fiori Elements CRUD.

# SAP ABAP RAP Blog CRUD Application

A complete **SAP ABAP RAP-based Blog CRUD application** demonstrating database tables, CDS views, RAP behavior definitions, OData services, and a Fiori Elements UI.

## Project Structure

```text
sap-abap-rap-blog-crud
│
├── Database Tables
│   ├── ZBLOG
│   └── ZBLOG_COMMENT
│
├── CDS Views
│   ├── ZI_BLOG
│   ├── ZI_BLOG_COMMENT
│   └── ZC_BLOG
│
├── Behavior
│   ├── ZBP_I_BLOG
│   └── Projection Behavior
│
├── Service
│   ├── ZUI_BLOG
│   └── ZUI_BLOG_O4
│
```
## Application Architecture

```text
Database Tables
      │
      ├── ZBLOG
      └── ZBLOG_COMMENT
             │
             ▼
       CDS Data Model
             │
             ├── ZI_BLOG
             ├── ZI_BLOG_COMMENT
             └── Associations
                    │
                    ▼
          RAP Business Object
                    │
             ┌──────┴──────┐
             │             │
       Behavior Def.   Behavior Impl.
             │             │
             └──────┬──────┘
                    ▼
             Projection Layer
                    │
                    ▼
             Service Definition
                 ZUI_BLOG
                    │
                    ▼
             Service Binding
               ZUI_BLOG_O4
                    │
                    ▼
             OData V4 Service
                    │
                    ▼
             Fiori Elements
                    │
                    ▼
             Blog CRUD UI
└── Fiori Elements
    └── Blog CRUD UI
```

# Features
Create Blog
Read Blog
Update Blog
Delete Blog
Create and manage Blog Comments
CDS associations between Blog and Comments
RAP Business Object implementation
OData V4 service
Fiori Elements-based UI
Managed RAP implementation
Standard RAP CRUD operations
Technologies
SAP ABAP
ABAP Cloud / SAP BTP ABAP Environment
Core Data Services (CDS)
ABAP RESTful Application Programming Model (RAP)
OData V4
Fiori Elements
Eclipse ADT
abapGit
GitHub
Main Components
1. Database Tables

ZBLOG

Stores the main blog information.

Typical fields:

CLIENT
BLOG_ID
TITLE
CONTENT
AUTHOR
CREATED_AT
CREATED_BY
CHANGED_AT
CHANGED_BY

ZBLOG_COMMENT

Stores comments associated with blogs.

Typical fields:

CLIENT
COMMENT_ID
BLOG_ID
COMMENT_TEXT
AUTHOR
CREATED_AT
CREATED_BY
2. CDS Data Model

The interface CDS views form the RAP business object data model.

ZI_BLOG
   │
   └── _Comment
          │
          ▼
   ZI_BLOG_COMMENT

The Blog entity has a composition/association with its comments.

3. RAP Behavior

The RAP behavior layer defines transactional operations such as:

CREATE
UPDATE
DELETE
READ

The behavior implementation is handled by:

ZBP_I_BLOG

A projection behavior is used for exposing the business object through the projection layer.

4. Service Layer

The service definition exposes the projection CDS entities.

ZUI_BLOG

The service binding exposes the service as an OData V4 endpoint.

ZUI_BLOG_O4
5. Fiori Elements

The final application provides a standard Fiori Elements interface for Blog CRUD operations.

Users can:

View blog list
Open blog details
Create blogs
Edit blogs
Delete blogs
Manage comments
Learning Objectives

This project is designed to demonstrate an end-to-end RAP development flow:

Table
  ↓
CDS Interface View
  ↓
CDS Projection View
  ↓
Behavior Definition
  ↓
Behavior Implementation
  ↓
Service Definition
  ↓
Service Binding
  ↓
Fiori Elements
Development Environment

Recommended tools:

Eclipse IDE
ABAP Development Tools (ADT)
SAP BTP ABAP Environment / ABAP Trial
abapGit
GitHub
Project Goal

The goal of this project is to build a real-world-style SAP ABAP RAP Blog application while demonstrating the complete development lifecycle from database persistence to a Fiori Elements CRUD application.
