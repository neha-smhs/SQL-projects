SQL Projects Portfolio

Practical SQL analysis demonstrating data querying, aggregation, and business intelligence techniques. This repository showcases real-world problem-solving using SQL—from data exploration to actionable business insights.

---

My SQL Philosophy

SQL is the foundation of data work. Before you build ML models or dashboards, you need to understand your data and ask the right questions.

Every query should answer a business question. I focus on:
- Clear, readable queries that others can understand
- Performance optimization for large datasets
- Business-relevant insights, not just technical correctness
- Documentation that explains the why, not just the what

---

Projects

Restaurant Operations Analysis
Real-world restaurant data analysis exploring customer behavior, order patterns, menu performance, and operational metrics. Multiple SQL queries organized by business question.

See: Restaurant Operation Analysis/

---

What You'll Find

SQL Queries
- Exploratory queries for understanding data structure
- Aggregation and grouping for business metrics
- Joins and subqueries for complex analysis
- Window functions and CTEs for advanced techniques

Database Setup
- Complete database schema with sample data
- Data dictionary for reference
- Ready-to-run setup scripts

Documentation
- Each project includes detailed README
- Explains business context and query purpose
- Step-by-step execution guide

---

Quick Start

Prerequisites
- SQL database (MySQL, PostgreSQL, SQL Server, SQLite)
- SQL client or IDE
- Basic SQL knowledge

Database Setup

1. Download database creation script:
   Restaurant Operation Analysis/create_restaurant_db.sql

2. In your SQL environment, run:
   - Open the script file
   - Execute all commands
   - Database and tables will be created with sample data

3. Verify setup:
   SELECT COUNT(*) FROM [table_name];

Running Queries

1. Navigate to project folder:
   Restaurant Operation Analysis/

2. Open query files in order:
   - Part1.sql (foundational exploration)
   - Part2.sql (aggregation and metrics)
   - Part3.sql (advanced analysis)

3. Copy query and execute in your SQL environment

4. Modify parameters to explore:
   - Date ranges
   - Filters
   - Aggregation levels

---

SQL Techniques Demonstrated

Joins
- INNER, LEFT, RIGHT joins
- Self joins for comparative analysis
- Multiple join combinations

Aggregation & Grouping
- GROUP BY with multiple columns
- HAVING clauses for filtered aggregates
- SUM, AVG, COUNT, MAX, MIN functions

Window Functions
- ROW_NUMBER, RANK, DENSE_RANK
- Running totals and moving averages
- Partitioning for complex calculations

Common Table Expressions (CTEs)
- Readable subqueries with WITH clauses
- Multiple CTEs in single query
- Simplified complex logic

Subqueries
- Correlated and non-correlated subqueries
- IN, EXISTS, scalar subqueries
- Query optimization techniques

Date Functions
- Date calculations and filtering
- Period comparisons
- Trend analysis

---

Database Schema Overview

Restaurant Operations Database

Core Tables
- Customers: Customer demographics and details
- Orders: Order records with timestamps
- OrderItems: Line items within orders
- Menu: Available menu items
- Inventory: Stock and availability
- Staff: Employee information
- Locations: Restaurant locations

Relationships
- Customers → Orders → OrderItems
- Orders → Menu (via OrderItems)
- Orders → Locations
- Staff → Locations

See: restaurant_db_data_dictionary.csv for complete schema details

---

Learning Outcomes

After working through these queries, you'll understand:
- How to structure queries for readability and performance
- Real-world database design for business operations
- Answering business questions with data
- Advanced SQL techniques (CTEs, window functions, subqueries)
- Translating business requirements into SQL logic

---

Recommended Sequence

1. Study create_restaurant_db.sql
   - Understand the database structure
   - Review table relationships
   - Note available columns and data types

2. Run Part1.sql
   - Basic exploratory queries
   - Understand data distributions
   - Get comfortable with the dataset

3. Run Part2.sql
   - Aggregate data for business metrics
   - Practice GROUP BY and filtering
   - Identify key patterns

4. Run Part3.sql
   - Advanced analysis with CTEs and window functions
   - Complex multi-step logic
   - Business insights and recommendations

5. Experiment
   - Modify queries to explore different questions
   - Combine techniques from different parts
   - Build your own analysis queries

---

How to Use These Queries

For Learning
- Study query structure and logic
- Understand the business question each query answers
- Adapt queries to different datasets
- Practice SQL optimization

For Reference
- Use as templates for similar analyses
- Adapt JOIN patterns to your schema
- Reference aggregation and window function techniques
- Build on these patterns for new problems

For Your Own Data
- Modify table and column names
- Adjust WHERE clauses for your business logic
- Combine query patterns for custom analysis
- Scale techniques to larger datasets

---

Why SQL Matters

SQL is universal across organizations. Whether you're a data analyst, data scientist, or engineer:
- Every data project starts with SQL
- Performance directly impacts dashboards and models
- Clear queries are maintainable queries
- Business understanding requires data exploration

This portfolio demonstrates SQL competency in a professional context.

---

Key Insights from Analysis

Restaurant Operations
[See Restaurant Operation Analysis/README.md for detailed findings]

---

Technologies & Tools

Database Engines
- MySQL
- PostgreSQL
- SQL Server
- SQLite

SQL Clients
- MySQL Workbench
- pgAdmin
- SQL Server Management Studio
- DBeaver
- VS Code (with SQL extensions)

---

Future Enhancements

Advanced optimization (query plans, indexes)
Data warehouse schema (star/snowflake design)
ETL process documentation
Performance benchmarking
Real-time analytics queries

---

Contact & Collaboration

Questions about SQL analysis or need help optimizing queries? Let's connect:

Email: msneha.gem@gmail.com
LinkedIn: linkedin.com/in/fnu-neha
GitHub: github.com/neha-smhs

---

Files Guide

create_restaurant_db.sql
- Complete database schema
- Table creation with relationships
- Sample data insertion
- Ready-to-run setup script

restaurant_db_data_dictionary.csv
- Column names and descriptions
- Data types
- Business definitions

Part1.sql
- Exploratory queries
- Data validation
- Understanding distributions

Part2.sql
- Aggregation and grouping
- Business metrics calculation
- Trend analysis

Part3.sql
- Advanced techniques
- Complex multi-table analysis
- Business insights and recommendations
