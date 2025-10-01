# InlineTech: From Pandemic Spike to Sustainable Growth  
*(Built with synthetic e-commerce orders data for portfolio demonstration)*  

---

## Executive Summary  
At InlineTech, I conducted a **revenue and retention analysis** to understand why growth slowed after a pandemic-driven spike.  
To ensure rigor, I built an end-to-end workflow across **Excel, SQL, and Power BI**:

- **Excel** → cleaned messy exports, validated KPIs, and stress-tested logic.  
- **SQL** → standardized and enriched the dataset (orders, customers, geo lookup, order status) with calculated fields for loyalty, refunds, repeat purchases, and product categories.  
- **Power BI** → designed an interactive dashboard with filters for year, product, region, and loyalty, highlighting key drivers of revenue volatility.  

The analysis revealed that InlineTech’s growth plateau was driven by **product concentration in laptops/monitors, low repeat purchasing, and over-reliance on direct acquisition channels.** Recommendations to diversify product mix, expand loyalty enrollment, and rebalance marketing channels could help stabilize revenue and retention.  

---

## Dataset Structure  
The dataset consisted of four entities: **orders, customers, order_status, and geo_lookup.**  
<img width="520" height="314" alt="ERD (2)" src="https://github.com/user-attachments/assets/ff9476fb-3a4b-4167-8d41-8c93cf3d2635" />

---

## Tools, Skills & Methodology  

### 1. Excel → Data Cleaning & Validation  
- Used formulas (`IF`, `AND`, `COUNTIFS`, `SUMIFS`) to clean and cross-check exports.  
- Identified issues such as duplicate product naming, refund dates in the future, and nulls in key dimensions.  
- Created pivot tables to validate totals and reconcile refund rate, repeat purchase rate, and AOV.  

### 2. SQL → Data Cleaning & Joins  
- Standardized product categories (`Laptop`, `Monitor`, `Headphones`, `Other`).  
- Created calculated fields:  
  - Refund flags and coverage %.  
- Joined **orders ↔ customers ↔ geo_lookup ↔ order_status** for enriched analysis.  

### 3. Power BI → Visualization & Storytelling  
- KPI cards: **Total Revenue ($28M)**, **AOV ($303)**, **Repeat Purchase Rate (19.8%)**, **Total Orders (108K)**.  
- Trend visuals for **Total Revenue (YoY)** and **AOV**.  
- Product Mix split by **Revenue & Loyalty**.  
- Donut chart for **Marketing Channel share**.  
- Filters enabled by **Year, Product, Region, Loyalty**.  

---

## Insights Summary  

- **Revenue Volatility** → Revenue surged in 2020–21, then plateaued in 2022, signaling over-reliance on acquisition campaigns.  
- **AOV Instability** → Big-ticket products (laptops/monitors) drove spikes, but lack of accessories weakened sustainable growth.  
- **Product Mix Risk** → Laptops + Monitors = ~95% of sales, leaving the portfolio overly concentrated.  
- **Loyalty Program Impact** → Loyalty customers repeated faster (1.6 months vs 2.3 months) but made up <40% of revenue.  
- **Channel Concentration** → 83% of revenue came from Direct, with minimal contribution from Email, Affiliate, or Social.  
- **Refund Coverage** → Monitor refunds were high (~18–22%), but coverage gaps after 2021 limited visibility.  

---

## Recommendations  

1. **Rebalance Product Mix**  
   - Bundle accessories (e.g., headphones with laptops) to increase repeat purchasing.  
   - Improve monitor content/support to reduce high return rates.  

2. **Expand Loyalty Enrollment**  
   - Default opt-in at checkout.  
   - Provide basic perks to increase participation and drive retention.  

3. **Diversify Marketing Channels**  
   - Reduce dependence on Direct by investing in Email and Affiliate campaigns.  
   - Launch targeted campaigns in weak months (Feb/Oct globally; Apr/Jul in LATAM).  

4. **Strengthen Refund Tracking**  
   - Reinstate >95% refund coverage.  
   - Capture return reasons for product/QA improvements.  

---

## Next Steps  
- **Phase 1:** Monitor monthly KPIs and highlight at-risk product categories (monitors, laptops).  
- **Phase 2:** Launch loyalty enrollment campaign and accessory bundles.  
- **Phase 3:** Scale diversified channel campaigns and track retention uplift.  

---

## Impact  
By quantifying InlineTech’s **post-pandemic plateau**, this project demonstrated that growth was not simply about acquisition, but retention:  

- Revenue concentration in **Direct channel** and **laptops/monitors** left the business fragile.  
- Under-utilized **loyalty programs** and weak accessory sales limited repeat revenue.  
- Addressing these drivers could improve **repeat purchase rate** and stabilize **AOV**, shifting InlineTech from one-time spikes to sustainable growth.  

---

## Dashboard  
The completed interactive dashboard was built in Power BI with filters for **Year, Product, Region, and Loyalty Program.**  
<img width="572" height="320" alt="image" src="https://github.com/user-attachments/assets/e7cd7e08-1d6b-4936-b4cd-645da30c9d95" />

---
