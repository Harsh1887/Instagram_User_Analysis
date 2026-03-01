# 📸 Instagram Analytics: Marketing & Investor Insights

A SQL-based data analysis project that extracts actionable insights from an Instagram-like relational database. The queries are designed to support marketing strategies and investor reporting by uncovering user behavior, engagement patterns, and platform health metrics.

---

## 📌 Project Overview

This project analyzes the `ig_clone` database to answer key business questions around user activity, content performance, and platform integrity. Insights are derived using targeted SQL queries covering user loyalty, engagement, hashtag trends, and bot detection.

---

## 🗂️ Database Schema

The project uses the following tables:

| Table | Description |
|---|---|
| `users` | Registered user accounts |
| `photos` | Photos posted by users |
| `comments` | Comments made on photos |
| `likes` | Likes given to photos |
| `tags` | Available hashtags |
| `photo_tags` | Many-to-many relation between photos and tags |

---

## 🔍 Analysis Queries

### 📣 A) Marketing Analysis

| # | Business Question | SQL Goal |
|---|---|---|
| 1 | **Loyal User Reward** | Find the top 5 oldest (earliest registered) users |
| 2 | **Inactive User Engagement** | Identify users who have never posted a photo |
| 3 | **Contest Winner** | Find the user with the most likes on a single photo |
| 4 | **Hashtag Research** | Identify the top 5 most-used hashtags |
| 5 | **Ad Campaign Timing** | Determine the day of the week with the most user registrations |

### 📊 B) Investor / Engagement Metrics

| # | Business Question | SQL Goal |
|---|---|---|
| 6 | **User Listings** | List all registered users |
| 7 | **Photo Count** | Total number of photos on the platform |
| 8 | **Comments per Photo** | Count of comments grouped by photo |
| 9 | **Average Posts per User** | Measure overall user engagement |
| 10 | **Bot & Fake Account Detection** | Flag users who have liked every single photo |

---

## 🛠️ Approach

- **Requirement Analysis** — Each business task was translated into a clear SQL objective.
- **Data Exploration** — Database structure was reviewed; joins and aggregations were planned accordingly.
- **Query Design** — Clean, modular queries using `JOIN`, `GROUP BY`, `LEFT JOIN`, and subqueries to handle edge cases.
- **Performance Consideration** — Queries are optimized for readability and efficiency; indexes are recommended for larger datasets.
- **Validation** — Each query output was verified against sample data for accuracy.

---

## 🚀 How to Run

1. **Set up the database**  
   Import the `ig_clone` database into your MySQL environment.

2. **Select the database**
   ```sql
   USE ig_clone;
   ```

3. **Run the queries**  
   Execute `instagram_analysis.sql` in your SQL client (MySQL Workbench, DBeaver, or CLI):
   ```bash
   mysql -u your_username -p ig_clone < instagram_analysis.sql
   ```

---

## 💡 Key Insights

- **Loyal Users** — The 5 longest-standing users can be rewarded to boost retention.
- **Inactive Users** — Users with no posts can be re-engaged via targeted campaigns.
- **Contest Winner** — The photo with the highest like count identifies the most viral content creator.
- **Top Hashtags** — High-frequency hashtags like `#smile`, `#beach`, etc., can guide content strategy to maximize reach.
- **Best Day to Advertise** — The weekday with the highest sign-ups is the optimal window for ad campaign launches.
- **Bot Detection** — Users who have liked every single photo are flagged as potential bots or fake accounts.

---

## 🧰 Tech Stack

- **Database:** MySQL
- **Language:** SQL
- **Tools:** MySQL Workbench / Any SQL Client

---

## 📁 Project Structure

```
instagram-analytics/
│
├── instagram_analysis.sql     # All SQL queries
├── Instagram_Analytics.docx  # Detailed report with query outputs
└── README.md                  # Project documentation
```

---

## 👤 Author

Feel free to connect or contribute if you find this project useful!

---

## 📄 License

This project is open-source and available under the [MIT License](LICENSE).
