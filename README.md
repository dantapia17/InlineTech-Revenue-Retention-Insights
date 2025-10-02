# InlineTech: From Pandemic Spike to Sustainable Growth  
*(Built with synthetic data to protect confidentiality, modeled on real work at Deloitte)*  

---

## Executive Summary  
For InlineTech, a global e-commerce company, I conducted a **revenue and retention analysis** to understand why growth slowed after a pandemic-driven spike.  
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

The analysis surfaced **systemic risks in InlineTech’s growth model**, showing that the post-pandemic slowdown was not random but rooted in product, customer, and channel dynamics:  

### 1. Pandemic Spike → Unsustainable Growth  
- Revenue surged in **2020–21** due to laptop/monitor demand but **plateaued in 2022** once acquisition-driven campaigns lost steam.  
- The trend confirms growth was **spike-driven, not retention-driven**.  

### 2. Average Order Value (AOV) Volatility  
- **High AOV ($303)** was inflated by large purchases (laptops, monitors).  
- The lack of accessories/low-ticket add-ons made AOV **unstable across months/years**, exposing InlineTech to demand swings in big-ticket items.  

### 3. Product Mix Concentration = Fragile Portfolio  
- **~95% of revenue** came from **Laptops + Monitors**, leaving minimal diversification.  
- This dependence amplified refund shocks (monitors with **18–22% return rates**) and suppressed repeat buying opportunities.  

### 4. Loyalty Program Underutilized  
- **Loyalty customers repeated faster (1.6 months vs 2.3 months)**, proving the program works.  
- Yet, they accounted for **<40% of revenue**, leaving retention gains largely untapped.  

### 5. Over-Reliance on Direct Channel  
- **83% of revenue** flowed through **Direct acquisition**, with limited lift from Email, Affiliate, or Social.  
- This over-concentration made InlineTech’s funnel vulnerable: when Direct slowed, **overall revenue stalled**.  

### 6. Refund Coverage Gaps = Blind Spots  
- **Monitor refunds** were consistently high but **post-2021 refund tracking fell below 95% coverage**.  
- Missing return reasons limited the ability to act on QA/product improvements, weakening future resilience.  

---

**Key Takeaway:**  
InlineTech’s slowdown wasn’t just market-driven — it reflected **structural weaknesses**: too much dependence on Direct, a fragile product mix, and under-leveraged loyalty. By **expanding loyalty, rebalancing channels, and bundling accessories**, InlineTech could convert pandemic-era spikes into **repeatable, sustainable growth**.  

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
The completed interactive dashboard was built in Power BI.  
You can download and explore it locally using **Power BI Desktop**:  [Download InlineTech Power BI Dashboard (.pbix)](./dashboard/InlineTech_Dashboard.pbix) 

<img width="572" height="320" alt="image" src="https://github.com/user-attachments/assets/c9058d7b-c6c7-408c-9a3b-4958051f5d0d" />

---
