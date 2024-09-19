Fraud Detection in SQL
Overview
This project focuses on detecting potentially fraudulent transactions from a dataset using SQL queries. By analyzing transaction patterns, user behavior, and various fraud indicators, the system flags suspicious activities for further investigation. The project is designed to demonstrate SQL proficiency and provide insights into how fraud detection algorithms work in real-world applications.

The data consists of two tables:

Users – Contains information about each user, such as email, phone number, address, and registration date.
Transactions – Contains details about user transactions, including amount, date, type (debit/credit), location, and whether the transaction is flagged as fraud.
Project Goals
The goal of this project is to build a series of SQL queries that will:

Identify high-risk transactions.
Detect unusual patterns of behavior.
Flag users that match common fraud profiles.
Provide insights into fraud-prone activities using structured query analysis.

SQL Tasks
The project contains 10 SQL queries that aim to detect fraud in the transaction dataset. Each query addresses a different fraud detection task, such as identifying users with high-value transactions, detecting users making many low-value transactions, or finding users making transactions from multiple locations on the same day.

Key Tasks
Identify users with single high-value transactions

Finds transactions greater than 1000 units.
Find users making many transactions on the same day

Detects users making more than 2 transactions on the same day.
Find users performing transactions in different locations on the same day

Flags users transacting from multiple locations on the same day.
Detect users with a high number of low-value transactions

Identifies users who frequently make small transactions under 100 units.
Flag users with a high total transaction amount over a month

Detects users with total transactions exceeding 2000 units in a month.
Identify users with suspicious behavior right after registration

Flags users who made large transactions shortly after account creation.
Find duplicate users based on email or phone number

Detects users sharing the same email or phone number.
List users sharing the same physical address

Flags users sharing the same address, which may indicate coordinated fraud.
Detect inactive users who suddenly make large transactions

Identifies users inactive for 90 days or more who suddenly make large transactions.
Summarize users with multiple fraud indicators

Combines various fraud patterns to identify users with multiple signs of fraud



