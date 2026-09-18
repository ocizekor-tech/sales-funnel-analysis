# E-Commerce Sales Funnel & Conversion Analysis

## Project Overview

This project analyses customer behaviour across an e-commerce sales funnel to understand how users progress from their initial page view to completing a purchase.

Using **SQL in Google BigQuery**, I analysed customer event data across five stages of the purchasing journey:

**Page View → Add to Cart → Checkout → Payment → Purchase**

The analysis focuses on identifying customer drop-off, measuring conversion rates, comparing traffic-source performance, analysing revenue and understanding how long customers take to convert.

The results were then visualised in an interactive **Power BI dashboard** to communicate the key findings and business insights.

## Business Questions

The analysis was designed to answer the following questions:

1. How effectively are customers progressing through the sales funnel?
2. At which stage does the largest customer drop-off occur?
3. Which traffic sources generate the highest conversion rates?
4. Which traffic sources generate the most revenue and value per visitor?
5. How long does it take customers to progress from their first page view to purchase?
6. What opportunities could the business investigate to improve conversion and revenue performance?

---

## Tools Used

- **Google BigQuery** – SQL querying and data analysis
- **SQL** – Data aggregation, CTEs, conditional aggregation and funnel analysis
- **Power BI** – Dashboard development and data visualisation
- **DAX** – Measures and percentage formatting within Power BI

---

## Dataset

The dataset contains e-commerce customer event data including:

- User ID
- Event type
- Event timestamp
- Traffic source
- Purchase amount

Customer activity was analysed across five key funnel events:

| Funnel Stage | Event |
|---|---|
| 1 | Page View |
| 2 | Add to Cart |
| 3 | Checkout |
| 4 | Payment |
| 5 | Purchase |

---

## Key Performance Indicators

| KPI | Result |
|---|---:|
| Total Visitors | 5,000 |
| Total Buyers | 826 |
| Overall Conversion Rate | 16.52% |
| Total Revenue | $87.98K |
| Average Order Value | $106.51 |
| Average Journey Time | 24.63 minutes |

---

## Funnel Analysis

The customer funnel contained:

| Stage | Users |
|---|---:|
| Page View | 5,000 |
| Add to Cart | 1,553 |
| Checkout | 1,103 |
| Payment | 899 |
| Purchase | 826 |

The largest customer drop-off occurred at the beginning of the funnel.

Only **31.1% of visitors progressed from page view to add-to-cart**, meaning approximately **68.9% did not progress to the cart stage**.

Customers who progressed further through the funnel converted at substantially higher rates. In particular, approximately **92% of customers who reached the payment stage completed their purchase**.

This suggests that the strongest opportunity for improving overall conversion lies toward the beginning of the customer journey.

---

## Traffic Source Analysis

Traffic-source performance varied considerably.

| Traffic Source | Visitors | Buyers | Purchase Conversion Rate |
|---|---:|---:|---:|
| Email | 522 | 177 | 33.91% |
| Paid Ads | 968 | 204 | 21.07% |
| Organic | 2,038 | 343 | 16.83% |
| Social | 1,472 | 102 | 6.93% |

**Email** generated the highest purchase conversion rate at **33.91%**, despite having the lowest traffic volume.

**Social** generated 1,472 visitors but converted only **6.93%** into buyers, making it the lowest-converting traffic source in the dataset.

---

## Revenue Analysis

Revenue performance tells a slightly different story from conversion performance.

| Traffic Source | Revenue | Revenue per Visitor |
|---|---:|---:|
| Organic | $37.28K | $18.29 |
| Paid Ads | $21.49K | $22.20 |
| Email | $17.88K | $34.25 |
| Social | $11.33K | $7.70 |

**Organic traffic generated the greatest total revenue at approximately $37.28K**, supported by its considerably larger visitor volume.

However, **Email generated the highest revenue per visitor at $34.25**, indicating particularly strong value from the visitors arriving through this channel.

Social produced the lowest revenue per visitor at approximately **$7.70**.

---

## Customer Journey Analysis

Among customers who completed a purchase:

- Average Page View → Add to Cart time: **11.16 minutes**
- Average Add to Cart → Purchase time: **13.47 minutes**
- Average total Page View → Purchase journey: **24.63 minutes**

This provides a benchmark for how long converting customers typically take to complete the purchasing journey.

---

## Business Recommendations

### 1. Prioritise Early-Funnel Optimisation

The largest observed customer loss occurs between **Page View and Add to Cart**, with approximately 68.9% of visitors failing to progress.

The business should investigate factors that may influence early-stage engagement, including:

- Product-page content
- Product imagery
- Pricing presentation
- Calls-to-action
- Page performance
- Landing-page relevance

Potential changes should be evaluated through controlled experiments such as **A/B testing** rather than assuming a single factor is responsible for the drop-off.

### 2. Explore Expansion of Email Marketing

Email produced the highest observed purchase conversion rate (**33.91%**) and revenue per visitor (**$34.25**).

The business could investigate opportunities to expand this channel while monitoring whether its performance remains strong at greater scale.

Potential strategies to test include personalised recommendations, retention campaigns, abandoned-cart communications and targeted promotions.

### 3. Investigate Social Traffic Quality

Social generated substantial traffic but recorded the lowest purchase conversion rate (**6.93%**) and revenue per visitor (**$7.70**).

Further analysis should examine social performance at a more granular level, including:

- Platform
- Campaign
- Audience segment
- Advertisement
- Landing page

The current dataset does not include customer acquisition cost or brand-awareness metrics, so the results alone do not establish whether social activity is unprofitable.

### 4. Evaluate Marketing Efficiency Alongside Customer Acquisition Cost

Traffic sources should not be evaluated using conversion rate alone.

Future analysis should incorporate **customer acquisition cost (CAC), contribution margin and customer lifetime value (CLV)** to determine whether each acquisition channel generates sustainable profitability.

---

## Power BI Dashboard

The Power BI dashboard presents the main findings through:

- KPI cards for visitors, buyers, revenue, conversion rate, average order value and journey time
- Customer conversion funnel
- Revenue by traffic source
- Purchase conversion rate by traffic source
- Revenue per visitor by traffic source
- Key business insights

### Dashboard Preview

![E-Commerce Sales Funnel Dashboard]([images/dashboard.png](https://github.com/ocizekor-tech/sales-funnel-analysis/blob/main/sales-funnel-image.png))

funnel analysis sql = https://console.cloud.google.com/bigquery?ws=!1m7!1m6!12m5!1m3!1sproject-b8490b6c-35e9-4fd3-ad2!2seurope-west2!3sba0b8700-1687-4097-ad79-96e790caed57!2e1 

---

## Limitations

This analysis should be interpreted within the limitations of the available dataset.

The dataset does not contain information such as:

- Marketing spend / customer acquisition cost
- Product costs and profit margins
- Customer lifetime value
- Individual social platforms or campaigns
- Product-level performance
- Customer demographics

Therefore, the analysis identifies patterns and opportunities for further investigation rather than establishing the causes of customer behaviour.

---

## Conclusion

The analysis identified **early-funnel engagement as the largest observed conversion challenge**, with only 31.1% of visitors progressing to add-to-cart.

Traffic-source analysis also revealed an important distinction between **traffic volume and traffic quality**. Organic generated the greatest total revenue, while Email achieved the highest conversion rate and revenue per visitor. Social attracted substantial traffic but produced considerably lower conversion and revenue per visitor.

Together, these findings suggest opportunities to improve early-funnel engagement, investigate the scalability of high-performing email activity and better understand the quality and targeting of social traffic.
