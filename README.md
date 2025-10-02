# InlineTech: From Pandemic Spike to Sustainable Growth  
*(Built with synthetic data to protect confidentiality, modeled on real work at Deloitte)*  

---

## Business Problem  
InlineTech, a global e-commerce company, saw explosive **pandemic-driven growth in 2020–21**, fueled by laptops and monitors. But by 2022, **growth stalled**, revenue plateaued, repeat purchases lagged, and leadership lacked clarity on whether the slowdown was a market correction or a deeper structural issue.  

As an **Advisory Analyst at Deloitte**, I conducted a **revenue and retention analysis** to pinpoint the root causes of the slowdown and advise leadership on how to shift from **short-term acquisition spikes** to **sustainable retention-driven growth**.  

---

## Executive Summary  
The investigation revealed that InlineTech’s slowdown was not random, it stemmed from **structural weaknesses in product mix, loyalty adoption, and channel dependence**:  

- **95% of revenue concentrated in laptops/monitors**, creating fragility.  
- **Repeat purchasing was low**, with loyalty underutilized (<40% of revenue).  
- **83% of revenue from Direct acquisition**, leaving growth overly reliant on a single channel.  

To surface these drivers, I built an end-to-end workflow across **Excel, SQL, and Power BI**:  

- **Excel** → cleaned messy exports, validated KPIs, reconciled refund and repeat logic.  
- **SQL** → standardized product categories, joined orders/customers/geo data, created calculated fields for refunds, loyalty, and repeat purchases.  
- **Power BI** → designed an interactive dashboard with KPIs, filters, and visuals to highlight revenue volatility, product concentration, and retention gaps.  

The findings showed that InlineTech’s growth plateau was **structural, not cyclical**, requiring a rebalanced product mix, loyalty expansion, and channel diversification.  

---

## Dataset Structure  
The dataset consisted of four entities: **orders, customers, order_status, and geo_lookup.**  
<img width="520" height="314" alt="ERD (2)" src="https://github.com/user-attachments/assets/ff9476fb-3a4b-4167-8d41-8c93cf3d2635" />

---

## Tools, Skills & Methodology  

### 1. Excel → Data Cleaning & Validation  
- Cleaned exports (`IF`, `COUNTIFS`, `SUMIFS`) to flag duplicates, missing values, invalid refund dates.  
- Built pivot tables to validate totals (revenue, refunds, AOV, repeat rate).  
- Purpose: act as a **QA sandbox** before scaling into SQL.  

### 2. SQL → Data Cleaning, Joins, and Enrichment  
- Standardized product categories: **Laptop, Monitor, Headphones, Other**.  
- Created fields for **refund flags, loyalty enrollment, repeat purchases**.  
- Joined **orders ↔ customers ↔ geo_lookup ↔ order_status** into a clean enriched dataset.  

### 3. Power BI → Visualization & Storytelling  
- KPI cards: **Total Revenue ($28M)**, **AOV ($303)**, **Repeat Purchase Rate (19.8%)**, **Total Orders (108K)**.  
- Time-series charts for **YoY Revenue** and **AOV trends**.  
- Product mix and loyalty contribution splits.  
- Donut chart for **Marketing Channel share**.  
- Interactive filters for **Year, Product, Region, Loyalty** to enable drilldowns.  

---

## Insights Summary  

From a consulting perspective, the analysis revealed **systemic risks in InlineTech’s revenue model**:  

### 1. Pandemic Spike → Unsustainable Growth  
- Revenue surged in 2020–21, then plateaued in 2022.  
- Growth was **acquisition-heavy, not retention-driven**.  

### 2. AOV Volatility  
- High **AOV ($303)** inflated by large one-off laptop/monitor purchases.  
- Weak accessory sales made AOV unstable.  

### 3. Fragile Product Mix  
- **95% of revenue from laptops/monitors**.  
- High monitor refund rates (**18–22%**) amplified exposure.  

### 4. Loyalty Program Underutilized  
- Loyalty members repeated faster (1.6 vs 2.3 months).  
- Yet loyalty revenue share was **<40%**, leaving upside untapped.  

### 5. Over-Reliance on Direct Channel  
- **83% of revenue flowed through Direct**.  
- Minimal lift from Email, Affiliate, or Social.  
- When Direct slowed, total revenue collapsed.  

### 6. Refund Blind Spots  
- Post-2021, refund tracking fell below 95% coverage.  
- Missing return reasons limited QA and product improvements.  

---

**Key Takeaway:**  
InlineTech’s growth plateau was not just market-driven, it reflected **structural weaknesses**:  
- A fragile product mix,  
- Under-leveraged loyalty,  
- And channel concentration.  

By **expanding loyalty, bundling accessories, and diversifying acquisition channels**, InlineTech could convert pandemic spikes into **repeatable, sustainable revenue growth**.  

---

## Recommendations  

1. **Rebalance Product Mix**  
   - Bundle accessories (e.g., headphones with laptops) to encourage repeat purchases.  
   - Improve monitor product support to reduce returns.  

2. **Expand Loyalty Enrollment**  
   - Default opt-in at checkout.  
   - Offer tiered perks to accelerate adoption and repeat sales.  

3. **Diversify Marketing Channels**  
   - Reduce reliance on Direct by scaling Email and Affiliate campaigns.  
   - Target weak months (Feb/Oct globally, Apr/Jul LATAM) with promotions.  

4. **Strengthen Refund Tracking**  
   - Reinstate >95% refund coverage.  
   - Capture structured return reasons to support QA/product improvements.  

---

## Next Steps  
- **Phase 1 (Quick Wins):** Track KPIs monthly, flag at-risk product categories.  
- **Phase 2 (Growth Levers):** Launch loyalty campaigns and accessory bundles.  
- **Phase 3 (Scale & Monitor):** Diversify channels, measure retention uplift, and track AOV stability.  

---

## Impact  
As part of Deloitte’s Advisory practice, I helped InlineTech reframe its problem: growth wasn’t slowing due to the market alone — it was **fragile because of retention gaps and over-concentration**.  

- Surfaced how **Direct channel dependence + laptop/monitor reliance** left revenue exposed.  
- Showed how **loyalty and accessories** could stabilize AOV and increase retention.  
- Delivered leadership a roadmap to pivot from **short-term acquisition gains** to **long-term sustainable growth**.  

---

## Dashboard  
The completed interactive dashboard was built in Power BI.  You can download and explore it locally using **Power BI Desktop**:  
[Download InlineTech Power BI Dashboard (.pbix)](./dashboard/InlineTech_Dashboard.pbix)  

<img width="572" height="320" alt="image" src="https://github.com/user-attachments/assets/c9058d7b-c6c7-408c-9a3b-4958051f5d0d" />



