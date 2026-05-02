# 🏪 Superstore SQL Business Analytics
 
Comprehensive retail analytics project using **SQL Server** to analyze 9,994 orders across 4 years, delivering actionable insights on revenue optimization, customer segmentation, and profit leakage identification.
 
 ## 🎯 Project Overview
 
This project demonstrates advanced SQL analytical capabilities through a complete retail business intelligence solution:
 
- **Data Volume:** 9,994 orders, 1,850+ products, 793 customers
- **Time Span:** 4 years of transactional data
- **Scope:** 4 regions, 49 states, 3 product categories, 17 sub-categories
- **Techniques:** Window functions, CTEs, views, aggregations, ranking

---
 
## 💼 Business Impact
 
| Analysis | Finding | Recommendation | Potential Impact |
|----------|---------|----------------|------------------|
| **Product Leakage** | 3 sub-categories losing money (Tables: -$17,725) | Discontinue or re-price loss-making products | Save ~$18K annually |
| **Discount Strategy** | High discounts (>20%) correlate with profit loss | Cap discounts at 15%, implement tiered pricing | +12% margin improvement |
| **Customer Segmentation** | Top 10 customers = 15% of revenue | VIP loyalty program for high-value customers | +$50K retention revenue |
| **Regional Performance** | West region: 31.6% revenue, 14.2% margin | Replicate West region best practices in South | +$75K profit potential |
| **Product Segmentation** | Phones & Chairs = "Star" products (high revenue + profit) | Increase inventory, promotional focus | +25% category growth |

---
 
## 🛠️ Tech Stack
 
- **Database:** Microsoft SQL Server
- **Analysis:** T-SQL (Window Functions, CTEs, Subqueries, Joins)
- **Visualization:** HTML Dashboard (Executive Summary)
- **Tools:** SQL Server Management Studio (SSMS)

---
 
## 📊 SQL Techniques Demonstrated
 
### Advanced SQL Features
✅ **Window Functions:** Running totals, rankings, ROW_NUMBER(), RANK()  
✅ **Common Table Expressions (CTEs):** Modular query design  
✅ **Aggregate Functions:** SUM(), AVG(), COUNT() with GROUP BY  
✅ **Conditional Logic:** CASE statements for segmentation  
✅ **Views:** Reusable base views for consistent analysis  
✅ **String Functions:** FORMAT() for date formatting  
✅ **Null Handling:** NULLIF() for divide-by-zero prevention  
 
### Business Analytics Queries
- Core KPIs (revenue, profit, margin)
- Contribution analysis (category revenue %)
- Product segmentation (Star/Leakage/Niche/Drop)
- Customer RFM analysis
- Time-series trends (monthly revenue/profit)
- Top/bottom performers
- Regional performance comparison
- Discount impact analysis

---
 
## 📁 Project Structure
 
```
superstore-sql-analysis/
├── 01_setup/                       # Database initialization
│   ├── 01_create_database.sql      # Creates store_analysis DB
│   ├── 02_create_table.sql         # Defines orders table schema
│   └── Validating_Table.sql        # Data quality checks
├── 02_views/                       # Reusable views
│   ├── Base_View.sql               # Main analytical view
│   └── Region_Summary.sql          # Regional aggregates
├── 03_core_analysis/               # Essential business queries
│   ├── Core_KPI.sql                # Revenue, profit, margin %
│   ├── Region_Analysis.sql         # Regional performance
│   ├── Product_Segmentation.sql    # Star/Leakage/Niche/Drop matrix
│   ├── Customer_Analysis.sql       # Top customers, repeat rate
│   └── Time_Trend.sql              # Monthly trends
├── 04_advanced_analysis/           # Deep-dive analytics
│   ├── Contribution_Analysis.sql   # Category contribution %
│   ├── Discount_Analysis.sql       # Discount impact on profit
│   ├── Product_Leakage.sql         # Loss-making products
│   ├── Performance_Flag.sql        # Critical/Low/Healthy flags
│   ├── Efficiency_Metrices.sql     # AOV, profit per order
│   ├── Running_Total.sql           # Cumulative daily sales
│   ├── Ranking.sql                 # Product profitability ranks
│   └── Top_Bottom_Analysis.sql     # Best/worst performers
├── data/
│   └── orders.csv                  # Raw data
├── dashboard/
│   └── Superstore_Executive_Dashboard.html
└── README.md
```
 ---

## 🚀 Quick Start
 
### Prerequisites
- SQL Server 2019+ (or SQL Server Express - free)
- SQL Server Management Studio (SSMS)
 
### Setup Instructions
 
```sql
-- 1. Create Database
Execute: 01_setup/01_create_database.sql
 
-- 2. Create Table
Execute: 01_setup/02_create_table.sql
 
-- 3. Import Data
-- In SSMS: Right-click orders table → Tasks → Import Data
-- Select orders.csv
-- Map columns appropriately
 
-- 4. Validate Data
Execute: 01_setup/Validating_Table.sql
-- Should return 9,994 rows
 
-- 5. Create Views
Execute: 02_views/Base_View.sql
Execute: 02_views/Region_Summary.sql
 
-- 6. Run Analyses
-- Execute queries in 03_core_analysis/ and 04_advanced_analysis/
```
---

## 📈 Key Findings
 
### Revenue Analysis
- **Total Revenue:** $2.30M
- **Total Profit:** $286K
- **Overall Margin:** 12.47%
- **Top Category:** Technology (36.4% of revenue)
 
### Regional Performance
| Region | Revenue | Profit | Margin % |
|--------|---------|--------|----------|
| West | $725K | $103K | 14.2% |
| East | $679K | $82K | 12.1% |
| Central | $501K | $38K | 7.5% |
| South | $392K | $45K | 11.5% |
 
### Product Segmentation
- **Star Products:** Phones, Chairs (high revenue + high profit)
- **Hidden Leakage:** Tables, Bookcases (high revenue BUT negative profit)
- **Niche Opportunity:** Fasteners, Labels (low revenue BUT positive profit)
- **Drop Candidates:** Machines, Supplies (low revenue + low/negative profit)
 
### Customer Insights
- **Top 10 Customers:** Generate 15% of total revenue
- **Repeat Customer Rate:** 67% (healthy loyalty)
- **Average Order Value:** $230

---
 
## 🎓 Learning Outcomes
 
Through this project, I demonstrated:
 
✅ **SQL Proficiency:** Advanced T-SQL, window functions, CTEs, complex joins  
✅ **Business Acumen:** Identified $18K profit leakage, recommended tactical pricing  
✅ **Analytical Thinking:** Segmented products into actionable quadrants (Star/Leakage/Niche/Drop)  
✅ **Data-Driven Insights:** Quantified discount impact, regional disparities, customer concentration  
✅ **Professional Documentation:** Clean code structure, comprehensive README  
 
---

## 📄 License
 
MIT License - Free to use for learning and portfolio purposes.
 
---
 
⭐ Star this repo if you found it useful!  

