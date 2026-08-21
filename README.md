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
└── Fiori Elements
    └── Blog CRUD UI
