# 📱 Phonetopia-Kenya-DB

**Phonetopia-Kenya-DB** is a relational database system designed for Phonetopia Kenya — a mobile phone retail and trade-in business. This system helps manage phones, customers, trade-ins, orders, deliveries, employees, suppliers, and expenses.

---

## 📌 Project Description

This project creates the database structure for a phone shop in Kenya. It is ideal for tracking:

- Phones and accessories
- Trade-in devices from customers
- Supplier details
- Customer purchases and delivery fulfillment
- Employees and their roles
- Business expenses

The schema was designed in **MySQL** using relational principles and foreign key constraints to maintain data integrity.

---

## 🛠️ How to Set Up / Run the Project

To use this project:

1. **Clone or download this repository.**.

2. **Open MySQL Workbench**, phpMyAdmin, or your preferred MySQL tool.

3. **Import the SQL file** using:

   ```sql
   C:\Users\HP\Desktop\Databases\Week 8  SQL Assignment;
---

## 🧩 Entity Relationship Diagram (ERD)
Here's a visual representation of how all the tables relate:

🔗 Click to view ![ER Diagram](https://mermaid.ink/svg/pako:eNqdVttu4jAQ_RXLz4UNlFvzVpV0hbYtCOhqt0KKTDyAVcdObacqvfz7OiFNIJfVdnmBZG7neI5neMOBpIBd3Gq1VuIpBrV30RYEKGIAEYG8-RiNGdkqEqI10UCRFMjsAOknjhJ_BhrJjX3FNKLEkMRpJRRsQIEIQLsrgVALrfA14-Cib9FOCjAyYsR_BLEnPl23ba4VXomsLpNiyULr23W6_ZbTb3XOl52B2z13e6O2ffewEilaUBmwpAJC3u3sZvrb8xbo7fAi-TBhEIQRl3sAn1E0-1HYtFFMbNGGKW18QUKomDhpsqQsfBGHa1Dovpo0kpolRA6Gj8PX4n42u5l48wpCHUcRZ6AaENYiCKQwJDA-hITxGmssjNqflL-6XHrfp_NJ9YQC2-ytVPuG-rk5AZKzzbLO5tPx_dWykjNSksYW379QKmO4PgqgELCQcJuPBaUQbWTw6D_FRBhm9oVtLSUHq12mfaMItY0XPnC2ZWsOzQd_fcrr6n6xnN7WNCuIbd2wsVmbmPP_0wyhVIHWJyiW88ux50_uKihyYiUUZYTX1TqSU58dwIT28h-JhyaXPs-cPFX7AM-Ex9ZC_eQHnKCdzsc1ByYVrZ7W33CWL-2JHGxpY6dDlvUUY0bQcmLPdpL5IZidpM32uhNPOfiTpXfbRMRAWMcmp1mmcnQTyqaqdj-PORbM-Eeaz9DNJ3UnrBj92vColWJWwvs18-4WNWP0JQKhm6YoBR0oFhUzr2Z-VFmSMJlTJQF-Fip6myEbezeTn17dAMs7-pW-5KdWc0c0qOeTeZMiy8vUyk4bYuJCTOWt9P7easm3zzvi2o24I4Jy0MnqO504VdeIk6DwzAzHbpliE990MzCRe-cTusGfiYDH1G52JnIoxarIgvIkaYVDQ9lrAanYbXUB2ZxtplrMuQMiuzxtjQbCRzpIvLOuWALr_WdAdk_qA4jWbCusv5EHf3yGt1YN2N0QruEM25lkt6p9xqnOVtj-4bG3CKfViHpMoj5sUETEg5Qhdo2KbZiS8XaXJ4mjRCXZX5TcBYQV3VWieuwOnDQFdt_wi33qtTu9nnPRH_Wdc6c7GJ3hPXaH7c5o2Bv0e87gojfodoYfZ_g1rem0R0PHGY76o6H90e8PPv4AN7794A..)


---

| Table Name       | Description                                                            |
| ---------------- | ---------------------------------------------------------------------- |
| **employees**    | Stores staff names, roles, and contacts.                               |
| **suppliers**    | Information about vendors who supply phones.                           |
| **categories**   | Defines phone categories like New, Refurbished, or Trade-In.           |
| **products**     | Stores inventory of phones and accessories, including price and stock. |
| **customers**    | Customer profile info: name, contact, location.                        |
| **trade\_ins**   | Devices customers trade in, linked to customer and evaluation info.    |
| **orders**       | Records of customer purchases.                                         |
| **order\_items** | Breakdown of items in each order, including quantity and price.        |
| **riders**       | Delivery personnel who fulfill orders.                                 |
| **deliveries**   | Tracks which orders are delivered, pending, or picked up.              |
| **expenses**     | Records business costs like rent, salaries, or utilities.              |

---
## ✅ Key Features
📦 Inventory Management

🔄 Trade-in Tracking System

🧾 Sales and Order Processing

🚚 Delivery Fulfillment via Riders or Pickup Points

💼 Employee and Supplier Management

💰 Expense Logging and Reporting

---
## 🙌 Credits
Built by Ian, a passionate learner and aspiring cloud/database professional.
Inspired by real-world mobile phone retail challenges in Kenya.

---
## 📬 Contact
Have suggestions, want to collaborate, or need help?

Email: iancliff15@gmail.com

LinkedIn: linkedin.com/in/ianwende




