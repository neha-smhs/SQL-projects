Restaurant Operations Analysis

Problem Statement

Modern restaurants generate vast amounts of operational data—customer orders, inventory levels, staff schedules, and sales patterns. Yet many restaurant managers lack visibility into key operational metrics. This SQL analysis transforms raw restaurant data into actionable business intelligence.

Business Questions Answered
- Which menu items drive revenue and profit?
- How do customer ordering patterns vary by time and location?
- What inventory optimization opportunities exist?
- Which staff members perform best during peak hours?
- How can we forecast demand more accurately?

---

Approach

Data-Driven Operations Analysis

This project uses SQL to answer real restaurant management questions through exploratory analysis, aggregation, and advanced query techniques.

Analysis Structure
1. Data Exploration: Understand the restaurant database schema and data quality
2. Basic Metrics: Calculate fundamental KPIs (total revenue, order count, average check size)
3. Customer Insights: Analyze ordering patterns, frequency, and preferences
4. Menu Performance: Identify top-performing and underperforming items
5. Operational Efficiency: Evaluate inventory and staff utilization
6. Advanced Analysis: Multi-dimensional views for strategic decisions

---

Database Overview

Restaurant Operations Database

Core Tables

Customers
- customer_id: Unique identifier
- name: Customer name
- email: Contact email
- phone: Phone number
- join_date: When customer joined
- Tracks customer base and demographics

Orders
- order_id: Unique identifier
- customer_id: Reference to customer
- order_date: Date and time of order
- location_id: Which restaurant location
- staff_id: Employee who took order
- total_amount: Order total
- Captures all order transactions

OrderItems
- orderitem_id: Unique identifier
- order_id: Reference to order
- menu_item_id: Reference to menu item
- quantity: Number ordered
- unit_price: Price per item
- Details of items within each order

Menu
- menu_item_id: Unique identifier
- name: Item name
- description: Item description
- category: Type (appetizer, main, dessert, beverage)
- price: Current price
- cost: Cost to prepare
- All available menu items

Inventory
- inventory_id: Unique identifier
- menu_item_id: Reference to menu item
- location_id: Which location
- quantity_on_hand: Current stock
- reorder_level: Minimum stock threshold
- Stock levels by location

Staff
- staff_id: Unique identifier
- name: Employee name
- position: Role (server, cook, manager)
- location_id: Assigned location
- hire_date: Employment start date
- salary: Compensation
- Employee roster

Locations
- location_id: Unique identifier
- name: Restaurant name
- address: Physical address
- manager_id: Manager staff_id
- opening_date: When location opened
- Multiple restaurant locations

Relationships
- Customers → Orders (one-to-many)
- Orders → OrderItems (one-to-many)
- OrderItems → Menu (many-to-one)
- Orders → Staff (many-to-one)
- Orders → Locations (many-to-one)
- Staff → Locations (many-to-one)
- Inventory → Menu & Locations (many-to-one)

See: restaurant_db_data_dictionary.csv for complete column reference

---

Query Structure

Part1.sql - Data Exploration & Validation

Basic Queries
- Count total customers, orders, menu items
- Date range of data (oldest to newest order)
- Active locations and staff count
- Data quality checks (null values, duplicates)

Exploratory Queries
- Revenue by location and time period
- Most popular menu items by order frequency
- Customer order frequency distribution
- Average order value and check size
- Staff activity (orders processed, peak times)

Output: Understanding of data completeness and quality

---

Part2.sql - Aggregation & Business Metrics

Revenue Analysis
- Total revenue by location
- Revenue by menu category
- Revenue trends by month/quarter
- Revenue per staff member

Customer Analysis
- Repeat customer rate
- Customer lifetime value
- Average orders per customer
- Customer segmentation by spend

Menu Performance
- Top 10 items by revenue
- Top 10 items by order frequency
- Bottom performers (candidates for removal)
- Menu category contribution to revenue
- Profitability by item (price - cost)

Operational Metrics
- Orders per day/week
- Average order value trends
- Peak ordering times
- Customer acquisition rate

Output: KPIs and dashboards for management review

---

Part3.sql - Advanced Analysis & Insights

Window Functions
- Rank menu items by revenue and frequency
- Running totals of revenue by date
- Customer order sequence analysis
- Year-over-year comparisons

Complex Joins
- Customer who made specific purchases
- Staff performance with location context
- Inventory levels vs. sales velocity
- Multi-location trend analysis

Subqueries & CTEs
- Customers who haven't ordered recently (churn risk)
- High-value customers for loyalty programs
- Inventory optimization analysis
- Staff performance benchmarking

Advanced Insights
- Demand forecasting patterns
- Cannibalization analysis (items competing for same customer)
- Cross-sell opportunities
- Operational bottlenecks

Output: Strategic recommendations for management

---

How to Run

Prerequisites
- SQL database (MySQL, PostgreSQL, SQL Server, SQLite)
- SQL client or IDE (DBeaver, Workbench, pgAdmin, VS Code)
- About 5-10 minutes

Step 1: Database Setup

1. Open your SQL client
2. Create new connection to your database
3. Open file: create_restaurant_db.sql
4. Execute all commands
5. Wait for completion (will create tables and populate sample data)

Verify Setup
Execute this query to verify:

SELECT COUNT(*) as table_count FROM information_schema.tables 
WHERE table_schema = 'restaurant_db';

Expected result: 7 tables (customers, orders, orderitems, menu, inventory, staff, locations)

---

Step 2: Run Analysis Queries

Part 1 - Exploration (10-15 minutes)

1. Open: Restaurant Operation Analysis/Part1.sql
2. Copy first query
3. Paste into SQL client
4. Execute (usually Ctrl+Enter or Cmd+Enter)
5. Review results
6. Continue with next query
7. Take notes on data patterns

Key Questions to Answer
- How many total customers and orders?
- What's the date range of data?
- How many locations and staff members?
- Any data quality issues?

---

Part 2 - Aggregation (15-20 minutes)

1. Open: Restaurant Operation Analysis/Part2.sql
2. Execute queries in sequence
3. Look for:
   - Which menu items generate most revenue?
   - Which staff members process most orders?
   - What's the repeat customer rate?
   - Peak ordering times?

Key Insights to Extract
- Top and bottom performing menu items
- Seasonal trends
- Customer behavior patterns
- Staff productivity

---

Part 3 - Advanced Analysis (20-30 minutes)

1. Open: Restaurant Operation Analysis/Part3.sql
2. Study more complex query patterns
3. Window functions and CTEs
4. Advanced joins and subqueries

Key Learnings
- How to rank and compare data
- Running totals and trend analysis
- Customer segmentation from transactional data
- Actionable business recommendations

---

Reproducibility

To replicate this analysis:
1. Use create_restaurant_db.sql exactly as provided
2. Run queries in order (Part 1 → 2 → 3)
3. Results will be identical to expected output
4. Modify date ranges or filters to explore different periods

---

SQL Techniques Demonstrated

Joins
- INNER JOIN for matching records
- LEFT JOIN for all records from left table
- Self joins for comparisons
- Multiple joins in single query

GROUP BY & Aggregation
- Single and multiple column grouping
- SUM, AVG, COUNT, MAX, MIN
- HAVING clause for filtering aggregates
- NULL handling in aggregates

Window Functions
- ROW_NUMBER for ranking
- RANK and DENSE_RANK for tied rankings
- LAG and LEAD for comparing rows
- Running totals with SUM() OVER
- Partitioning for segment analysis

CTEs (Common Table Expressions)
- WITH clause for readable subqueries
- Multiple CTEs in single query
- Recursive CTEs (if applicable)
- Simplified complex logic

Subqueries
- Scalar subqueries in SELECT
- IN and EXISTS for filtering
- Correlated subqueries
- Performance considerations

Date Functions
- Date arithmetic (DATE_ADD, DATE_SUB)
- DATEDIFF for period calculations
- DATE_TRUNC for grouping by period
- EXTRACT for year, month, day

---

Key Findings Framework

Complete analysis by documenting:

Revenue Impact
- Total revenue and trends
- Top revenue-generating items
- Seasonal patterns

Customer Behavior
- Repeat customer rate
- Average order frequency
- Customer segments

Menu Performance
- Top 10 items by volume
- Top 10 items by revenue
- Profitability breakdown
- Menu optimization recommendations

Operational Efficiency
- Order processing rate
- Staff productivity
- Inventory turnover
- Peak time management

---

Learning Outcomes

After completing this analysis, you'll be able to:
- Design and navigate a realistic restaurant database schema
- Write exploratory queries to understand data
- Aggregate data into business metrics and KPIs
- Use advanced SQL (CTEs, window functions, subqueries)
- Answer real business questions with data
- Translate SQL results into actionable recommendations
- Optimize queries for performance

---

Adapting to Your Own Data

Structure
- Modify table and column names
- Adjust JOIN conditions for your schema
- Update WHERE clauses for your business logic

Scale
- Test on larger datasets
- Monitor query performance
- Add indexes for optimization

Extend
- Add additional tables (suppliers, expenses, etc.)
- Build on these queries for custom analysis
- Integrate with BI tools (Tableau, Power BI)

---

Technologies Used

Database Engines: MySQL, PostgreSQL, SQL Server, SQLite
SQL Clients: DBeaver, MySQL Workbench, pgAdmin, VS Code
Version Control: Git (queries tracked in repository)

---

Next Steps

Optimization
- Add database indexes for performance
- Analyze query execution plans
- Test with larger datasets

Automation
- Schedule queries as daily/weekly reports
- Export results to dashboards
- Set up alerts for KPI changes

Integration
- Connect to visualization tools (Tableau, Power BI)
- Build automated reporting pipelines
- Create real-time KPI monitoring

---

Contact

Questions about this SQL analysis or need help with queries?

Email: msneha.gem@gmail.com
LinkedIn: linkedin.com/in/fnu-neha
GitHub: github.com/neha-smhs

---

Files Reference

create_restaurant_db.sql (551 KB)
- Complete database schema
- All table definitions with constraints
- Sample data (1000+ records)
- Ready to execute

restaurant_db_data_dictionary.csv
- All column names and descriptions
- Data types and constraints
- Business definitions
- Reference guide

Part1.sql (1.2 KB)
- 8-10 exploratory queries
- Data validation
- Understanding distributions

Part2.sql (1 KB)
- Aggregation and grouping
- Business metrics
- KPI calculations

Part3.sql (1.6 KB)
- Advanced techniques
- Complex analysis
- Strategic insights
