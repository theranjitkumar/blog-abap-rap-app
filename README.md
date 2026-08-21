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
